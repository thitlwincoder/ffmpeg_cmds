import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply audio Virtual Bass filter.
///
/// This filter accepts stereo input and produce stereo with LFE (2.1) channels output. The newly produced LFE channel have enhanced virtual bass originally obtained from both stereo channels. This filter outputs front left and front right channels unchanged as available in stereo input.
///
/// The filter accepts the following options:
class Virtualbass extends Filter {
  /// Virtualbass
  Virtualbass({
    this.cutoff,
    this.strength,
  });

  /// Set the virtual bass cutoff frequency. Default value is 250 Hz. Allowed range is from 100 to 500 Hz.
  Object? cutoff;

  /// Set the virtual bass strength. Allowed range is from 0.5 to 3. Default value is 3.
  Object? strength;

  @override
  String get name => 'virtualbass';

  @override
  Map<String, dynamic> get options => {'cutoff': cutoff, 'strength': strength};
}
