import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

void main() {
  final Filter text = DrawText(
    fontsize: 30,
    text: 'hello world',
    fontfile: 'FreeSerif.ttf',
  );

  final cmds = [
    '-f',
    'lavfi',
    '-vf',
    text,
    '-t',
    10,
    'output',
    '-y',
  ];

  print(cmds);
}
