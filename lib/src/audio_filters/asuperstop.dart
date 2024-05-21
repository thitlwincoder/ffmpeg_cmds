import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply high order Butterworth band-stop filter.
///
/// The filter accepts the following options:
class Asuperstop extends Filter {
  /// Asuperstop
  Asuperstop({
    this.centerf,
    this.order,
    this.qfactor,
    this.level,
  });

  /// Set center frequency in Hertz. Allowed range is 2 to 999999. Default value is 1000.
  Object? centerf;

  /// Set filter order. Available values are from 4 to 20. Default value is 4.
  Object? order;

  /// Set Q-factor. Allowed range is from 0.01 to 100. Default value is 1.
  Object? qfactor;

  /// Set input gain level. Allowed range is from 0 to 2. Default value is 1.
  Object? level;

  @override
  String get name => 'asuperstop';

  @override
  Map<String, dynamic> get options =>
      {'centerf': centerf, 'order': order, 'qfactor': qfactor, 'level': level};
}
