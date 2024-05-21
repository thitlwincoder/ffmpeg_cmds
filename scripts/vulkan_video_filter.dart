import 'script.dart';

class VulkanVideoFilter extends Script {
  @override
  int get index => 6;

  @override
  String get path => 'lib/src/vaapi_video_filters';
}

void main() {
  VulkanVideoFilter().init();
}
