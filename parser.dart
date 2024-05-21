// import 'dart:io';

// import 'package:args/args.dart';
// import 'package:html/parser.dart';
// import 'package:html2md/html2md.dart' as html2md;
// import 'package:mason_logger/mason_logger.dart';

// import 'class_builder.dart';

// Future<void> main(List<String> args) async {
//   final parser = ArgParser()
//     ..addOption('name', abbr: 'n')
//     ..addOption('path', abbr: 'p');

//   final results = parser.parse(args);

//   if (!results.wasParsed('name') || !results.wasParsed('path')) return;

//   // final key = results.option('name');
//   final path = results.option('path');

//   final filters = File('./filters.html');
//   final html = await filters.readAsString();

//   final soup = parse(html);

//   var ul = soup.querySelectorAll('ul.no-bullet');

//   ul = ul.where((e) => e.children.length > 10).toList();

//   for (var e in ul) {
//     print(e.children.length);
//   }

//   return;

//   final audio = ul[2];

//   final li = audio.querySelectorAll('li');

//   for (final e in li) {
//     print(e.innerHtml);
//     print('-' * 20);
//   }

//   final logger = Logger(level: Level.verbose);

//   final progress = logger.progress('Generating Audio Filters');

//   for (final e in li) {
//     final key = e
//         .querySelector('a')!
//         .attributes['data-savepage-href']!
//         .replaceFirst('#', '');

//     progress.update('$key Generating');

//     try {
//       if (key.toLowerCase().contains(RegExp('command|example'))) continue;

//       final data = getData(html, key);

//       ClassBuilder(
//         name: key,
//         docs: data.docs,
//         maps: data.maps,
//       ).build('$path/$key.dart');

//       progress.complete('$key Success');
//     } catch (e) {
//       progress.fail('$key Fail');

//       continue;
//     }
//   }
// }
