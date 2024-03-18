import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply normalized cross-correlation between first and second input video stream.
///
/// Second input video stream dimensions must be lower than first input video stream.
class XCorrelate implements Filter {
  /// XCorrelate
  XCorrelate({
    this.planes,
    this.secondary,
  });

  /// Set which planes to process.
  int? planes;

  /// Set which secondary video frames will be processed from second input video stream, can be `first` or `all`. Default is `all`.
  String? secondary;

  @override
  String get name => 'xcorrelate';

  @override
  Map<String, dynamic> get options => {
        'planes': planes,
        'secondary': secondary,
      };
}
