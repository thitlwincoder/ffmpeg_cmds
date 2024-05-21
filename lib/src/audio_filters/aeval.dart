import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Modify an audio signal according to the specified expressions.
///
/// This filter accepts one or more expressions (one for each channel), which are evaluated and used to modify a corresponding audio signal.
///
/// It accepts the following parameters:
///
/// Note: this filter is slow. For faster processing you should use a dedicated filter.
class Aeval extends Filter {
  /// Aeval
  Aeval({
    this.exprs,
    this.channelLayout,
    this.c,
    this.ch,
    this.n,
    this.s,
    this.t,
    this.nbInChannels,
    this.nbOutChannels,
  });

  /// Set the ’|’-separated expressions list for each separate channel. If the number of input channels is greater than the number of expressions, the last specified expression is used for the remaining output channels.
  Object? exprs;

  Object? channelLayout, c;

  /// channel number of the current expression
  Object? ch;

  /// number of the evaluated sample, starting from 0
  Object? n;

  /// sample rate
  Object? s;

  /// time of the evaluated sample expressed in seconds
  Object? t;

  /// input and output number of channels
  Object? nbInChannels;

  /// the value of input channel with number CH
  Object? nbOutChannels;

  @override
  String get name => 'aeval';

  @override
  Map<String, dynamic> get options => {
        'exprs': exprs,
        'channel_layout': channelLayout,
        'c': c,
        'ch': ch,
        'n': n,
        's': s,
        't': t,
        'nb_in_channels': nbInChannels,
        'nb_out_channels': nbOutChannels,
      };
}
