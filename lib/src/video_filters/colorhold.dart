import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove all color information for all RGB colors except for certain one.
///
/// The filter accepts the following options:
class Colorhold extends Filter {
  /// Colorhold
  Colorhold({
    this.color,
    this.similarity,
    this.blend,
  });

  /// The color which will not be replaced with neutral gray.
  Object? color;

  /// Similarity percentage with the above color. 0.01 matches only the exact key color, while 1.0 matches everything.
  Object? similarity;

  /// Blend percentage. 0.0 makes pixels fully gray. Higher values result in more preserved color.
  Object? blend;

  @override
  String get name => 'colorhold';

  @override
  Map<String, dynamic> get options =>
      {'color': color, 'similarity': similarity, 'blend': blend};
}
