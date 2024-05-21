import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Set read/write permissions for the output frames.
///
/// These filters are mainly aimed at developers to test direct path in the following filter in the filtergraph.
///
/// The filters accept the following options:
class Perms002cAperms extends Filter {
  /// Perms002cAperms
  Perms002cAperms({
    this.mode,
    this.seed,
  });

  /// Select the permissions mode./// It accepts the following values:
  /// - `none` Do nothing. This is the default.
  /// - `ro` Set all the output frames read-only.
  /// - `rw` Set all the output frames directly writable.
  /// - `toggle` Make the frame read-only if writable, and writable if read-only.
  /// - `random` Set each output frame read-only or writable randomly.
  Object? mode;

  /// Set the seed for the random mode, must be an integer included between `0` and `UINT32_MAX`. If not specified, or if explicitly set to `-1`, the filter will try to use a good random seed on a best effort basis.
  Object? seed;

  @override
  String get name => 'perms_002c-aperms';

  @override
  Map<String, dynamic> get options => {'mode': mode, 'seed': seed};
}
