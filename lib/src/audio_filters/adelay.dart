import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Delay one or more audio channels.
///
/// Samples in delayed channel are filled with silence.
///
/// The filter accepts the following option:
class Adelay extends Filter {
  /// Adelay
  Adelay({
    this.delays,
    this.all,
  });

  /// Set list of delays in milliseconds for each channel separated by ’|’. Unused delays will be silently ignored. If number of given delays is smaller than number of channels all remaining channels will not be delayed. If you want to delay exact number of samples, append ’S’ to number. If you want instead to delay in seconds, append ’s’ to number.
  Object? delays;

  /// Use last set delay for all remaining channels. By default is disabled. This option if enabled changes how option `delays` is interpreted.
  Object? all;

  @override
  String get name => 'adelay';

  @override
  Map<String, dynamic> get options => {'delays': delays, 'all': all};
}
