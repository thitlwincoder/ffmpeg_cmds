import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce various flashes in video, so to help users with epilepsy.
///
/// It accepts the following options:
class Photosensitivity extends Filter {
  /// Photosensitivity
  Photosensitivity({
    this.frames,
    this.f,
    this.threshold,
    this.t,
    this.skip,
    this.bypass,
  });

  /// Set how many frames to use when filtering. Default is 30.
  Object? frames, f;

  /// Set detection threshold factor. Default is 1. Lower is stricter.
  Object? threshold, t;

  /// Set how many pixels to skip when sampling frames. Default is 1. Allowed range is from 1 to 1024.
  Object? skip;

  /// Leave frames unchanged. Default is disabled.
  Object? bypass;

  @override
  String get name => 'photosensitivity';

  @override
  Map<String, dynamic> get options => {
        'frames': frames,
        'f': f,
        'threshold': threshold,
        't': t,
        'skip': skip,
        'bypass': bypass,
      };
}
