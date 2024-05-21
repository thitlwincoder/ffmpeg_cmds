import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Mix channels with specific gain levels. The filter accepts the output channel layout followed by a set of channels definitions.
///
/// This filter is also designed to efficiently remap the channels of an audio stream.
///
/// If the ‘=’ in a channel specification is replaced by ‘<’, then the gains for that specification will be renormalized so that the total is 1, thus avoiding clipping noise.
class Pan1 extends Filter {
  /// Pan1
  Pan1({
    this.l,
    this.outdef,
    this.outName,
    this.gain,
    this.inName,
  });

  /// output channel layout or number of channels
  Object? l;

  /// output channel specification, of the form: "out_name=\[gain*\]in_name\[(+-)\[gain*\]in_name...\]"
  Object? outdef;

  /// output channel to define, either a channel name (FL, FR, etc.) or a channel number (c0, c1, etc.)
  Object? outName;

  /// multiplicative coefficient for the channel, 1 leaving the volume unchanged
  Object? gain;

  /// input channel to use, see out_name for details; it is not possible to mix named and numbered input channels
  Object? inName;

  @override
  String get name => 'pan-1';

  @override
  Map<String, dynamic> get options => {
        'l': l,
        'outdef': outdef,
        'out_name': outName,
        'gain': gain,
        'in_name': inName,
      };
}
