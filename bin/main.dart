import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

void main() {
  final text = DrawText(
    fontsize: 30,
    text: 'hello world',
    fontfile: 'FreeSerif.ttf',
    x: 'if(eq(mod(t,30),0),rand(0,(w-text_w)),x)',
    y: 'if(eq(mod(t,30),0),rand(0,(h-text_h)),y)',
  );
}
