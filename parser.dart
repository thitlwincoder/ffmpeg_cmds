import 'dart:io';

import 'package:args/args.dart';
import 'package:html/parser.dart';

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

  for (final e in children) {
    final eChildren = e.children;

    if (eChildren.isEmpty) {
      docs.add(e.text);
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
        maps[key] = '/// ${name.trim().replaceAll('\n', ' ')}';
      }
    }
  }

  ClassBuilder(name: key!, docs: docs, maps: maps).build(path!);
}
