import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reorder pixels in video frames.
///
/// This filter accepts the following options:
class Shufflepixels extends Filter {
  /// Shufflepixels
  Shufflepixels({
    this.direction,
    this.d,
    this.mode,
    this.m,
    this.width,
    this.w,
    this.height,
    this.h,
    this.seed,
    this.s,
  });

  /// Set shuffle direction. Can be forward or inverse direction. Default direction is forward.
  Object? direction, d;

  /// Set shuffle mode. Can be horizontal, vertical or block mode.
  Object? mode, m;

  /// Set shuffle block_size. In case of horizontal shuffle mode only width part of size is used, and in case of vertical shuffle mode only height part of size is used.
  Object? width, w;

  /// Set random seed used with shuffling pixels. Mainly useful to set to be able to reverse filtering process to get original input. For example, to reverse forward shuffle you need to use same parameters and exact same seed and to set direction to inverse.
  Object? height, h;

  Object? seed, s;

  @override
  String get name => 'shufflepixels';

  @override
  Map<String, dynamic> get options => {
        'direction': direction,
        'd': d,
        'mode': mode,
        'm': m,
        'width': width,
        'w': w,
        'height': height,
        'h': h,
        'seed': seed,
        's': s,
      };
}
