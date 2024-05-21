import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// This filter has some handy utilities to manage stereo signals, for converting M/S stereo recordings to L/R signal while having control over the parameters or spreading the stereo image of master track.
///
/// The filter accepts the following options:
class Stereotools extends Filter {
  /// Stereotools
  Stereotools({
    this.levelIn,
    this.levelOut,
    this.balanceIn,
    this.balanceOut,
    this.softclip,
    this.mutel,
    this.muter,
    this.phasel,
    this.phaser,
    this.mode,
    this.slev,
    this.sbal,
    this.mlev,
    this.mpan,
    this.base,
    this.delay,
    this.sclevel,
    this.phase,
    this.bmodeIn,
    this.bmodeOut,
  });

  /// Set input level before filtering for both channels. Defaults is 1. Allowed range is from 0.015625 to 64.
  Object? levelIn;

  /// Set output level after filtering for both channels. Defaults is 1. Allowed range is from 0.015625 to 64.
  Object? levelOut;

  /// Set input balance between both channels. Default is 0. Allowed range is from -1 to 1.
  Object? balanceIn;

  /// Set output balance between both channels. Default is 0. Allowed range is from -1 to 1.
  Object? balanceOut;

  /// Enable softclipping. Results in analog distortion instead of harsh digital 0dB clipping. Disabled by default.
  Object? softclip;

  /// Mute the left channel. Disabled by default.
  Object? mutel;

  /// Mute the right channel. Disabled by default.
  Object? muter;

  /// Change the phase of the left channel. Disabled by default.
  Object? phasel;

  /// Change the phase of the right channel. Disabled by default.
  Object? phaser;

  /// Set stereo mode. Available values are:
  /// - `lr>lr` Left/Right to Left/Right, this is default.
  /// - `lr>ms` Left/Right to Mid/Side.
  /// - `ms>lr` Mid/Side to Left/Right.
  /// - `lr>ll` Left/Right to Left/Left.
  /// - `lr>rr` Left/Right to Right/Right.
  /// - `lr>l+r` Left/Right to Left + Right.
  /// - `lr>rl` Left/Right to Right/Left.
  /// - `ms>ll` Mid/Side to Left/Left.
  /// - `ms>rr` Mid/Side to Right/Right.
  /// - `ms>rl` Mid/Side to Right/Left.
  /// - `lr>l-r` Left/Right to Left - Right.
  Object? mode;

  /// Set level of side signal. Default is 1. Allowed range is from 0.015625 to 64.
  Object? slev;

  /// Set balance of side signal. Default is 0. Allowed range is from -1 to 1.
  Object? sbal;

  /// Set level of the middle signal. Default is 1. Allowed range is from 0.015625 to 64.
  Object? mlev;

  /// Set middle signal pan. Default is 0. Allowed range is from -1 to 1.
  Object? mpan;

  /// Set stereo base between mono and inversed channels. Default is 0. Allowed range is from -1 to 1.
  Object? base;

  /// Set delay in milliseconds how much to delay left from right channel and vice versa. Default is 0. Allowed range is from -20 to 20.
  Object? delay;

  /// Set S/C level. Default is 1. Allowed range is from 1 to 100.
  Object? sclevel;

  /// Set the stereo phase in degrees. Default is 0. Allowed range is from 0 to 360.
  Object? phase;

  Object? bmodeIn, bmodeOut;

  @override
  String get name => 'stereotools';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'level_out': levelOut,
        'balance_in': balanceIn,
        'balance_out': balanceOut,
        'softclip': softclip,
        'mutel': mutel,
        'muter': muter,
        'phasel': phasel,
        'phaser': phaser,
        'mode': mode,
        'slev': slev,
        'sbal': sbal,
        'mlev': mlev,
        'mpan': mpan,
        'base': base,
        'delay': delay,
        'sclevel': sclevel,
        'phase': phase,
        'bmode_in': bmodeIn,
        'bmode_out': bmodeOut,
      };
}
