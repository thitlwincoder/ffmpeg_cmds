import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Cut super frequencies.
///
/// The filter accepts the following options:
class Asupercut extends Filter {
  /// Asupercut
  Asupercut({
    this.cutoff,
    this.order,
    this.level,
  });

  /// Set cutoff frequency in Hertz. Allowed range is 20000 to 192000. Default value is 20000.
  Object? cutoff;

  /// Set filter order. Available values are from 3 to 20. Default value is 10.
  Object? order;

  /// Set input gain level. Allowed range is from 0 to 1. Default value is 1.
  Object? level;

  @override
  String get name => 'asupercut';

  @override
  Map<String, dynamic> get options =>
      {'cutoff': cutoff, 'order': order, 'level': level};
}
