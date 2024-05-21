import 'dart:io';

import 'package:args/args.dart';
import 'package:html/parser.dart';
import 'package:html2md/html2md.dart' as html2md;

import 'class_builder.dart';

Future<void> main(List<String> args) async {
  final parser = ArgParser()
    ..addOption('name', abbr: 'n')
    ..addOption('path', abbr: 'p');

  final results = parser.parse(args);

  if (!results.wasParsed('name') || !results.wasParsed('path')) return;

  final key = results.option('name');
  final path = results.option('path');

  final filters = File('./filters.html');
  var html = await filters.readAsString();

  html = html.split('<span id="$key">')[1].split('<span')[0];

  final soup = parse(html);

  final children = soup.body?.children ?? [];

  final docs = <String>[];

  final maps = <String, String?>{};

  // for (final e in children) {
  //   var tag = e.localName;

  //   if (tag == 'p') {
  //     docs.add(e.text);
  //   } else if (tag == 'dl') {
  //     for (var i = 0; i < e.children.length; i++) {
  //       final d = e.children[i];

  //       if (tag == 'dt') {
  //         maps[d.text] = null;
  //       } else {
  //         print(d.querySelectorAll('code').map((e) => ,));
  //         print('-' * 20);
  //       }

  //       // if (i.isEven) {
  //       //   maps[d.text] = null;
  //       // } else {
  //       //   final child = e.children[i - 1];
  //       //   print(d.innerHtml);
  //       // }

  //       // if (i == 0) {
  //       //   maps[d.text] = null;
  //       // } else {
  //       //   final child = e.children[i - 1];

  //       //   print(d.innerHtml);
  //       //   print('-' * 20);

  //       //   // maps[child.text.trim()] = d.innerHtml.trim();
  //       // }
  //     }
  //   }
  // }

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
                  if (i.isEven) {
                    buffer.write('/// - `${n.textContent}`');
                  } else {
                    buffer.writeln(' ${n.textContent}');
                  }
                }
                buffer.writeln('///');
                return buffer.toString();
              },
            ),
          ],
        );
      }
    }
  }

  ClassBuilder(name: key!, docs: docs, maps: maps).build(path!);
}
