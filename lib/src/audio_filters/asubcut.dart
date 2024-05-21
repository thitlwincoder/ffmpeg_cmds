import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Cut subwoofer frequencies.
///
/// This filter allows to set custom, steeper roll off than highpass filter, and thus is able to more attenuate frequency content in stop-band.
///
/// The filter accepts the following options:
class Asubcut extends Filter {
  /// Asubcut
  Asubcut({
    this.cutoff,
    this.order,
    this.level,
  });

  /// Set cutoff frequency in Hertz. Allowed range is 2 to 200. Default value is 20.
  Object? cutoff;

  /// Set filter order. Available values are from 3 to 20. Default value is 10.
  Object? order;

  /// Set input gain level. Allowed range is from 0 to 1. Default value is 1.
  Object? level;

  @override
  String get name => 'asubcut';

  @override
  Map<String, dynamic> get options =>
      {'cutoff': cutoff, 'order': order, 'level': level};
}
