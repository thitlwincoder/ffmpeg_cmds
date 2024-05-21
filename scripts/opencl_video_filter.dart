import 'script.dart';

class OpenCLVideoFilter extends Script {
  @override
  int get index => 4;

  @override
  String get path => 'lib/src/opencl_video_filters';

  @override
  bool get force => true;
}

void main() {
  OpenCLVideoFilter().init();
}
