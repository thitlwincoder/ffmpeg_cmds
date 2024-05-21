import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply feedback video filter.
///
/// This filter pass cropped input frames to 2nd output. From there it can be filtered with other video filters. After filter receives frame from 2nd input, that frame is combined on top of original frame from 1st input and passed to 1st output.
///
/// The typical usage is filter only part of frame.
///
/// The filter accepts the following options:
class Feedback extends Filter {
  /// Feedback
  Feedback({
    this.x,
    this.y,
    this.w,
    this.h,
  });

  /// Set the top left crop position.
  Object? x;

  /// Set the crop size.
  Object? y;

  Object? w;

  Object? h;

  @override
  String get name => 'feedback';

  @override
  Map<String, dynamic> get options => {'x': x, 'y': y, 'w': w, 'h': h};
}
