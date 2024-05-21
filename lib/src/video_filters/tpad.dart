import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Temporarily pad video frames.
///
/// The filter accepts the following options:
class Tpad extends Filter {
  /// Tpad
  Tpad({
    this.start,
    this.stop,
    this.startMode,
    this.stopMode,
    this.startDuration,
    this.stopDuration,
    this.color,
  });

  /// Specify number of delay frames before input video stream. Default is 0.
  Object? start;

  /// Specify number of padding frames after input video stream. Set to -1 to pad indefinitely. Default is 0.
  Object? stop;

  /// Set kind of frames added to beginning of stream. Can be either add or clone. With add frames of solid-color are added. With clone frames are clones of first frame. Default is add.
  Object? startMode;

  /// Set kind of frames added to end of stream. Can be either add or clone. With add frames of solid-color are added. With clone frames are clones of last frame. Default is add.
  Object? stopMode;

  /// Specify the duration of the start/stop delay. See [(ffmpeg-utils)the Time duration section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#time-duration-syntax) for the accepted syntax. These options override start and stop. Default is 0.
  Object? startDuration, stopDuration;

  /// Specify the color of the padded area. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax)./// The default value of color is "black".
  Object? color;

  @override
  String get name => 'tpad';

  @override
  Map<String, dynamic> get options => {
        'start': start,
        'stop': stop,
        'start_mode': startMode,
        'stop_mode': stopMode,
        'start_duration': startDuration,
        'stop_duration': stopDuration,
        'color': color,
      };
}
