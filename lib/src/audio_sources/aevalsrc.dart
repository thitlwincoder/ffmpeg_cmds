import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate an audio signal specified by an expression.
///
/// This source accepts in input one or more expressions (one for each channel), which are evaluated and used to generate a corresponding audio signal.
///
/// This source accepts the following options:
class Aevalsrc extends Filter {
  /// Aevalsrc
  Aevalsrc({
    this.exprs,
    this.channelLayout,
    this.c,
    this.duration,
    this.d,
    this.nbSamples,
    this.n,
    this.sampleRate,
    this.s,
  });

  /// Set the ’|’-separated expressions list for each separate channel. In case the /// channel_layout option is not specified, the selected channel layout depends on the number of provided expressions. Otherwise the last specified expression is applied to the remaining output channels.
  Object? exprs;

  Object? channelLayout, c;

  Object? duration, d;

  Object? nbSamples, n;

  Object? sampleRate, s;

  @override
  String get name => 'aevalsrc';

  @override
  Map<String, dynamic> get options => {
        'exprs': exprs,
        'channel_layout': channelLayout,
        'c': c,
        'duration': duration,
        'd': d,
        'nb_samples': nbSamples,
        'n': n,
        'sample_rate': sampleRate,
        's': s,
      };
}
