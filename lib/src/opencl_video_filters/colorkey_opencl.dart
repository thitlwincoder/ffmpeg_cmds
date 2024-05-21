import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// RGB colorspace color keying.
///
/// The filter accepts the following options:
class ColorkeyOpencl extends Filter {
  /// ColorkeyOpencl
  ColorkeyOpencl({
    this.color,
    this.similarity,
    this.blend,
  });

  /// The color which will be replaced with transparency.
  Object? color;

  /// Similarity percentage with the key color./// 0.01 matches only the exact key color, while 1.0 matches everything.
  Object? similarity;

  /// Blend percentage./// 0.0 makes pixels either fully transparent, or not transparent at all./// Higher values result in semi-transparent pixels, with a higher transparency the more similar the pixels color is to the key color.
  Object? blend;

  @override
  String get name => 'colorkey_opencl';

  @override
  Map<String, dynamic> get options =>
      {'color': color, 'similarity': similarity, 'blend': blend};
}
