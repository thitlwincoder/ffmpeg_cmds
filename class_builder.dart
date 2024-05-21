import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';

class ClassBuilder {
  ClassBuilder({
    required this.name,
    required this.docs,
    required this.maps,
    required this.force,
  });

  final String name;
  final bool force;
  final List<String> docs;
  final Map<String, String?> maps;

  void build(String path) {
    if (!force) {
      if (File(path).existsSync()) {
        return;
      }
    }

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

    void addField(String name) {
      fields.add(
        Field(
          (b) => b
            ..name = name
            ..type = const Reference('Object?')
            ..docs.add(
              maps.entries
                      .where(
                        (e) => name.snakeCase.trim() == e.key.snakeCase.trim(),
                      )
                      .firstOrNull
                      ?.value ??
                  '',
            ),
        ),
      );
    }

    void addParameter(String name) {
      parameters.add(
        Parameter(
          (b) => b
            ..name = name
            ..toThis = true
            ..named = true,
        ),
      );
    }

    for (final name in maps.keys) {
      addField(
        name.split(',').map((e) => e.length > 1 ? e.camelCase : e).join(', '),
      );

      for (var e in name.split(',')) {
        e = e.trim();
        final key = e.length > 1 ? e.camelCase : e;

        options["'$e'"] = key;
        addParameter(key);
      }
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
