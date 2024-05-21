import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Turns a static background into transparency.
///
/// The filter accepts the following option:
class Backgroundkey extends Filter {
  /// Backgroundkey
  Backgroundkey({
    this.threshold,
    this.similarity,
    this.blend,
  });

  /// Threshold for scene change detection.
  Object? threshold;

  /// Similarity percentage with the background.
  Object? similarity;

  /// Set the blend amount for pixels that are not similar.
  Object? blend;

  @override
  String get name => 'backgroundkey';

  @override
  Map<String, dynamic> get options =>
      {'threshold': threshold, 'similarity': similarity, 'blend': blend};
}
