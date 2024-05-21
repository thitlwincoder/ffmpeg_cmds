import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Loop video frames.
///
/// The filter accepts the following options:
class Loop extends Filter {
  /// Loop
  Loop({
    this.loop,
    this.size,
    this.start,
    this.time,
  });

  /// Set the number of loops. Setting this value to -1 will result in infinite loops. Default is 0.
  Object? loop;

  /// Set maximal size in number of frames. Default is 0.
  Object? size;

  /// Set first frame of loop. Default is 0.
  Object? start;

  /// Set the time of loop start in seconds. Only used if option named start is set to `-1`.
  Object? time;

  @override
  String get name => 'loop';

  @override
  Map<String, dynamic> get options =>
      {'loop': loop, 'size': size, 'start': start, 'time': time};
}
