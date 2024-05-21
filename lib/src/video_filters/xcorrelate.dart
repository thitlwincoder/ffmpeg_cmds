import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply normalized cross-correlation between first and second input video stream.
///
/// Second input video stream dimensions must be lower than first input video stream.
///
/// The filter accepts the following options:
class Xcorrelate extends Filter {
  /// Xcorrelate
  Xcorrelate({
    this.planes,
    this.secondary,
  });

  /// Set which planes to process.
  Object? planes;

  /// Set which secondary video frames will be processed from second input video stream, can be first or all. Default is all.
  Object? secondary;

  @override
  String get name => 'xcorrelate';

  @override
  Map<String, dynamic> get options =>
      {'planes': planes, 'secondary': secondary};
}
