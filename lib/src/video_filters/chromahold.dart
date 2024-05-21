import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove all color information for all colors except for certain one.
///
/// The filter accepts the following options:
class Chromahold extends Filter {
  /// Chromahold
  Chromahold({
    this.color,
    this.similarity,
    this.blend,
    this.yuv,
  });

  /// The color which will not be replaced with neutral chroma.
  Object? color;

  /// Similarity percentage with the above color. 0.01 matches only the exact key color, while 1.0 matches everything.
  Object? similarity;

  /// Blend percentage. 0.0 makes pixels either fully gray, or not gray at all. Higher values result in more preserved color.
  Object? blend;

  /// Signals that the color passed is already in YUV instead of RGB./// Literal colors like "green" or "red" don’t make sense with this enabled anymore. This can be used to pass exact YUV values as hexadecimal numbers.
  Object? yuv;

  @override
  String get name => 'chromahold';

  @override
  Map<String, dynamic> get options =>
      {'color': color, 'similarity': similarity, 'blend': blend, 'yuv': yuv};
}
