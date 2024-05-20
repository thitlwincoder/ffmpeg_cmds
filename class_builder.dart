import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';

class ClassBuilder {
  ClassBuilder({
    required this.name,
    required this.docs,
    required this.maps,
  });

  final String name;
  final List<String> docs;
  final Map<String, String?> maps;

  void build(String path) {
    final cleanDocs = <String>[
      "import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';",
    ];

    for (var i = 0; i < docs.length; i++) {
      if (i != 0) cleanDocs.add('///');

      final e = docs[i];

      cleanDocs.add('/// ${e.trim().replaceAll('\n', ' ')}');
    }

    final options = <String, String>{};
    final fields = <Field>[];
    final parameters = <Parameter>[];

    for (final name in maps.keys) {
      final key = name.camelCase;

      options["'$name'"] = key;

      fields.add(
        Field(
          (b) => b
            ..name = key
            ..type = const Reference('Object?')
            ..docs.add(maps[name] ?? ''),
        ),
      );
      parameters.add(
        Parameter(
          (b) => b
            ..name = key
            ..toThis = true
            ..named = true,
        ),
      );
    }

    final constructor = Constructor(
      (b) => b
        ..docs.add('/// ${name.pascalCase}')
        ..optionalParameters.addAll(parameters),
    );

    final nameMethod = Method(
      (b) => b
        ..name = 'name'
        ..lambda = true
        ..type = MethodType.getter
        ..body = Code("'$name'")
        ..annotations.add(const CodeExpression(Code('override')))
        ..returns = const Reference('String'),
    );
    final optionMethod = Method(
      (b) => b
        ..name = 'options'
        ..lambda = true
        ..type = MethodType.getter
        ..body = Code(options.toString())
        ..annotations.add(const CodeExpression(Code('override')))
        ..returns = const Reference('Map<String, dynamic>'),
    );

    final filter = Class(
      (b) => b
        ..name = name.pascalCase
        ..extend = const Reference('Filter')
        ..docs.addAll(cleanDocs)
        ..constructors.add(constructor)
        ..methods.addAll([nameMethod, optionMethod])
        ..fields.addAll(fields),
    );

    final emitter = DartEmitter();
    final code = DartFormatter().format('${filter.accept(emitter)}');

    File(path)
      ..create()
      ..writeAsString(code);
  }
}
