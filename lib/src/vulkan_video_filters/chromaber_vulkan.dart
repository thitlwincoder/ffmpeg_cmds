import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply an effect that emulates chromatic aberration. Works best with RGB inputs, but provides a similar effect with YCbCr inputs too.
class ChromaberVulkan extends Filter {
  /// ChromaberVulkan
  ChromaberVulkan({
    this.distX,
    this.distY,
  });

  /// Horizontal displacement multiplier. Each chroma pixel’s position will be multiplied by this amount, starting from the center of the image. Default is `0`.
  Object? distX;

  /// Similarly, this sets the vertical displacement multiplier. Default is `0`.
  Object? distY;

  @override
  String get name => 'chromaber_vulkan';

  @override
  Map<String, dynamic> get options => {'dist_x': distX, 'dist_y': distY};
}
