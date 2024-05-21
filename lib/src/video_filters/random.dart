import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Random extends Filter {
  /// Random
  Random({
    this.frames,
    this.seed,
  });

  /// Set size in number of frames of internal cache, in range from `2` to `512`. Default is `30`.
  Object? frames;

  /// Set seed for random number generator, must be an integer included between `0` and `UINT32_MAX`. If not specified, or if explicitly set to less than `0`, the filter will try to use a good random seed on a best effort basis.
  Object? seed;

  @override
  String get name => 'random';

  @override
  Map<String, dynamic> get options => {'frames': frames, 'seed': seed};
}
