import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Mix successive video frames.
///
/// A description of the accepted options follows.
class Tmix extends Filter {
  /// Tmix
  Tmix({
    this.frames,
    this.weights,
    this.scale,
    this.planes,
  });

  /// The number of successive frames to mix. If unspecified, it defaults to 3.
  Object? frames;

  /// Specify weight of each input video frame. Each weight is separated by space. If number of weights is smaller than number of frames last specified weight will be used for all remaining unset weights.
  Object? weights;

  /// Specify scale, if it is set it will be multiplied with sum of each weight multiplied with pixel values to give final destination pixel value. By default scale is auto scaled to sum of weights.
  Object? scale;

  /// Set which planes to filter. Default is all. Allowed range is from 0 to 15.
  Object? planes;

  @override
  String get name => 'tmix';

  @override
  Map<String, dynamic> get options =>
      {'frames': frames, 'weights': weights, 'scale': scale, 'planes': planes};
}
