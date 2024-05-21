import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply spectral dynamic range controller filter to input audio stream.
///
/// A description of the accepted options follows.
class Adrc extends Filter {
  /// Adrc
  Adrc({
    this.transfer,
    this.attack,
    this.release,
    this.channels,
  });

  /// Set the transfer expression./// The expression can contain the following constants:
  /// - `ch` current channel number
  /// - `sn` current sample number
  /// - `nb_channels` number of channels
  /// - `t` timestamp expressed in seconds
  /// - `sr` sample rate
  /// - `p` current frequency power value, in dB
  /// - `f` current frequency in Hz

  /// Default value is `p`.
  Object? transfer;

  /// Set the attack in milliseconds. Default is `50` milliseconds. Allowed range is from 1 to 1000 milliseconds.
  Object? attack;

  /// Set the release in milliseconds. Default is `100` milliseconds. Allowed range is from 5 to 2000 milliseconds.
  Object? release;

  /// Set which channels to filter, by default `all` channels in audio stream are filtered.
  Object? channels;

  @override
  String get name => 'adrc';

  @override
  Map<String, dynamic> get options => {
        'transfer': transfer,
        'attack': attack,
        'release': release,
        'channels': channels,
      };
}
