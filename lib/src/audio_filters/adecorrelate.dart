import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply decorrelation to input audio stream.
///
/// The filter accepts the following options:
class Adecorrelate extends Filter {
  /// Adecorrelate
  Adecorrelate({
    this.stages,
    this.seed,
  });

  /// Set decorrelation stages of filtering. Allowed range is from 1 to 16. Default value is 6.
  Object? stages;

  /// Set random seed used for setting delay in samples across channels.
  Object? seed;

  @override
  String get name => 'adecorrelate';

  @override
  Map<String, dynamic> get options => {'stages': stages, 'seed': seed};
}
