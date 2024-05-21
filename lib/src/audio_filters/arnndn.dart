import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce noise from speech using Recurrent Neural Networks.
///
/// This filter accepts the following options:
class Arnndn extends Filter {
  /// Arnndn
  Arnndn({
    this.model,
    this.m,
    this.mix,
  });

  Object? model, m;

  /// Set how much to mix filtered samples into final output. Allowed range is from -1 to 1. Default value is 1. Negative values are special, they set how much to keep filtered noise in the final filter output. Set this option to -1 to hear actual noise removed from input signal.
  Object? mix;

  @override
  String get name => 'arnndn';

  @override
  Map<String, dynamic> get options => {'model': model, 'm': m, 'mix': mix};
}
