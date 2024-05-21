import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply Overcomplete Wavelet denoiser.
///
/// The filter accepts the following options:
class Owdenoise extends Filter {
  /// Owdenoise
  Owdenoise({
    this.depth,
    this.lumaStrength,
    this.ls,
    this.chromaStrength,
    this.cs,
  });

  /// Set depth./// Larger depth values will denoise lower frequency components more, but slow down filtering./// Must be an int in the range 8-16, default is `8`.
  Object? depth;

  /// Set luma strength./// Must be a double value in the range 0-1000, default is `1.0`.
  Object? lumaStrength, ls;

  /// Set chroma strength./// Must be a double value in the range 0-1000, default is `1.0`.
  Object? chromaStrength, cs;

  @override
  String get name => 'owdenoise';

  @override
  Map<String, dynamic> get options => {
        'depth': depth,
        'luma_strength': lumaStrength,
        'ls': ls,
        'chroma_strength': chromaStrength,
        'cs': cs,
      };
}
