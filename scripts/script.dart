import 'dart:io';

import 'package:html/parser.dart';
import 'package:html2md/html2md.dart' as html2md;
import 'package:mason_logger/mason_logger.dart';

import '../class_builder.dart';

abstract class Script {
  Script();

  int get index;

  String get path;

  bool get test => false;

  bool get force => false;

  void init() {
    if (force) {
      Directory(path)
        ..deleteSync(recursive: true)
        ..createSync();
    }

    final filters = File('./filters.html');
    final html = filters.readAsStringSync();

    final soup = parse(html);

    var ul = soup.querySelectorAll('ul.no-bullet');

    ul = ul.where((e) => e.children.length > 5).toList();

    final d = ul[index];

    if (test) {
      print('${d.children.length}');
      return;
    }

    final li = d.querySelectorAll('li');

    final logger = Logger(level: Level.verbose);

    final progress = logger.progress('Generating Audio Filters');

    for (final e in li) {
      final key = e
          .querySelector('a')!
          .attributes['data-savepage-href']!
          .replaceFirst('#', '');

      final name = key.replaceAll(RegExp('005f|-1'), '');

      progress.update('$name Generating');

      try {
        if (key.toLowerCase().contains(RegExp('command|example'))) continue;

        final data = getData(html, key);

        ClassBuilder(
          name: name,
          docs: data.docs,
          maps: data.maps,
          force: force,
        ).build('$path/$name.dart');

        progress.complete('$name Success');
      } catch (e) {
        progress.fail('$name Fail');

        continue;
      }
    }
  }

  ({List<String> docs, Map<String, String?> maps}) getData(
    String html,
    String key,
  ) {
    final soup = parse(html.split('<span id="$key">')[1].split('<span')[0]);

    final children = soup.body?.children ?? [];

    final docs = <String>[];

    final maps = <String, String?>{};

    for (final e in children) {
      final eChildren = e.children;

      if (eChildren.isEmpty) {
        docs.add(html2md.convert(e.innerHtml));
        continue;
      }

      for (var i = 0; i < eChildren.length; i++) {
        final children = eChildren[i].children;
        if (children.isEmpty) continue;

        final tag = children.first.localName;
        final name = children.first.text;

        if (tag == 'samp') {
          maps[name] = null;
        } else if (tag == 'p') {
          final key = maps.keys.firstWhere((e) => maps[e] == null);

          maps[key] = html2md.convert(
            eChildren[i].innerHtml,
            rules: [
              html2md.Rule(
                'add-cmd',
                filterFn: (node) {
                  return node.nodeName == 'p' || node.nodeName == 'samp';
                },
                replacement: (content, node) {
                  return '/// $content';
                },
              ),
              html2md.Rule(
                'set-data',
                filterFn: (node) {
                  return node.nodeName == 'dl';
                },
                replacement: (content, node) {
                  final buffer = StringBuffer()..writeln();
                  final nodes = node.childNodes().toList();

                  for (var i = 0; i < nodes.length; i++) {
                    final n = nodes[i];

                    final text = n.textContent.trim();

                    if (n.nodeName == 'dt') {
                      if (i != 0) {
                        final nodeName = nodes[i - 1].nodeName;
                        if (nodeName != 'p' && nodeName != 'dd') {
                          buffer.writeln();
                        }
                      }
                      buffer.write(
                        '/// - `${text.replaceAll(RegExp('‘|’'), '')}`',
                      );
                    } else {
                      buffer.writeln(' $text');
                    }
                  }

                  buffer.writeln();

                  return buffer.toString();
                },
              ),
            ],
          );
        }
      }
    }

    return (docs: docs, maps: maps);
  }
}
