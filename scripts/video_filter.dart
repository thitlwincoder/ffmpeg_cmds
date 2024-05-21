import 'script.dart';

class VideoFilter extends Script {
  @override
  int get index => 3;

  @override
  String get path => 'lib/src/video_filters';

  @override
  bool get force => true;
}

void main() {
  VideoFilter().init();
}
