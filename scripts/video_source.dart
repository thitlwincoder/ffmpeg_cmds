import 'script.dart';

class VideoSource extends Script {
  @override
  int get index => 7;

  @override
  String get path => 'lib/src/video_sources';
}

void main() {
  VideoSource().init();
}
