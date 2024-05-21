import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply audio surround upmix filter.
///
/// This filter allows to produce multichannel output from audio stream.
///
/// The filter accepts the following options:
class Surround extends Filter {
  /// Surround
  Surround({
    this.chlOut,
    this.chlIn,
    this.levelIn,
    this.levelOut,
    this.lfe,
    this.lfeLow,
    this.lfeHigh,
    this.lfeMode,
    this.smooth,
    this.angle,
    this.focus,
    this.fcIn,
    this.fcOut,
    this.flIn,
    this.flOut,
    this.frIn,
    this.frOut,
    this.slIn,
    this.slOut,
    this.srIn,
    this.srOut,
    this.blIn,
    this.blOut,
    this.brIn,
    this.brOut,
    this.bcIn,
    this.bcOut,
    this.lfeIn,
    this.lfeOut,
    this.allx,
    this.ally,
    this.fcx,
    this.flx,
    this.frx,
    this.blx,
    this.brx,
    this.slx,
    this.srx,
    this.bcx,
    this.fcy,
    this.fly,
    this.fry,
    this.bly,
    this.bry,
    this.sly,
    this.sry,
    this.bcy,
    this.winSize,
    this.winFunc,
    this.overlap,
  });

  /// Set output channel layout. By default, this is 5.1./// See [(ffmpeg-utils)the Channel Layout section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#channel-layout-syntax) for the required syntax.
  Object? chlOut;

  /// Set input channel layout. By default, this is stereo./// See [(ffmpeg-utils)the Channel Layout section in the ffmpeg-utils(1) manual](https://ffmpeg.org/ffmpeg-utils.html#channel-layout-syntax) for the required syntax.
  Object? chlIn;

  /// Set input volume level. By default, this is 1.
  Object? levelIn;

  /// Set output volume level. By default, this is 1.
  Object? levelOut;

  /// Enable LFE channel output if output channel layout has it. By default, this is enabled.
  Object? lfe;

  /// Set LFE low cut off frequency. By default, this is 128 Hz.
  Object? lfeLow;

  /// Set LFE high cut off frequency. By default, this is 256 Hz.
  Object? lfeHigh;

  /// Set LFE mode, can be add or sub. Default is add. In add mode, LFE channel is created from input audio and added to output. In sub mode, LFE channel is created from input audio and added to output but also all non-LFE output channels are subtracted with output LFE channel.
  Object? lfeMode;

  /// Set temporal smoothness strength, used to gradually change factors when transforming stereo sound in time. Allowed range is from 0.0 to 1.0. Useful to improve output quality with focus option values greater than 0.0. Default is 0.0. Only values inside this range and without edges are effective.
  Object? smooth;

  /// Set angle of stereo surround transform, Allowed range is from 0 to 360. Default is 90.
  Object? angle;

  /// Set focus of stereo surround transform, Allowed range is from -1 to 1. Default is 0.
  Object? focus;

  /// Set front center input volume. By default, this is 1.
  Object? fcIn;

  /// Set front center output volume. By default, this is 1.
  Object? fcOut;

  /// Set front left input volume. By default, this is 1.
  Object? flIn;

  /// Set front left output volume. By default, this is 1.
  Object? flOut;

  /// Set front right input volume. By default, this is 1.
  Object? frIn;

  /// Set front right output volume. By default, this is 1.
  Object? frOut;

  /// Set side left input volume. By default, this is 1.
  Object? slIn;

  /// Set side left output volume. By default, this is 1.
  Object? slOut;

  /// Set side right input volume. By default, this is 1.
  Object? srIn;

  /// Set side right output volume. By default, this is 1.
  Object? srOut;

  /// Set back left input volume. By default, this is 1.
  Object? blIn;

  /// Set back left output volume. By default, this is 1.
  Object? blOut;

  /// Set back right input volume. By default, this is 1.
  Object? brIn;

  /// Set back right output volume. By default, this is 1.
  Object? brOut;

  /// Set back center input volume. By default, this is 1.
  Object? bcIn;

  /// Set back center output volume. By default, this is 1.
  Object? bcOut;

  /// Set LFE input volume. By default, this is 1.
  Object? lfeIn;

  /// Set LFE output volume. By default, this is 1.
  Object? lfeOut;

  /// Set spread usage of stereo image across X axis for all channels. Allowed range is from -1 to 15. By default this value is negative -1, and thus unused.
  Object? allx;

  /// Set spread usage of stereo image across Y axis for all channels. Allowed range is from -1 to 15. By default this value is negative -1, and thus unused.
  Object? ally;

  Object? fcx, flx, frx, blx, brx, slx, srx, bcx;

  Object? fcy, fly, fry, bly, bry, sly, sry, bcy;

  /// Set window size. Allowed range is from 1024 to 65536. Default size is 4096.
  Object? winSize;

  /// Set window function./// It accepts the following values:
  /// - `rect`
  /// - `bartlett`
  /// - `hann, hanning`
  /// - `hamming`
  /// - `blackman`
  /// - `welch`
  /// - `flattop`
  /// - `bharris`
  /// - `bnuttall`
  /// - `bhann`
  /// - `sine`
  /// - `nuttall`
  /// - `lanczos`
  /// - `gauss`
  /// - `tukey`
  /// - `dolph`
  /// - `cauchy`
  /// - `parzen`
  /// - `poisson`
  /// - `bohman`
  /// - `kaiser`
  /// Default is `hann`.
  Object? winFunc;

  /// Set window overlap. If set to 1, the recommended overlap for selected window function will be picked. Default is `0.5`.
  Object? overlap;

  @override
  String get name => 'surround';

  @override
  Map<String, dynamic> get options => {
        'chl_out': chlOut,
        'chl_in': chlIn,
        'level_in': levelIn,
        'level_out': levelOut,
        'lfe': lfe,
        'lfe_low': lfeLow,
        'lfe_high': lfeHigh,
        'lfe_mode': lfeMode,
        'smooth': smooth,
        'angle': angle,
        'focus': focus,
        'fc_in': fcIn,
        'fc_out': fcOut,
        'fl_in': flIn,
        'fl_out': flOut,
        'fr_in': frIn,
        'fr_out': frOut,
        'sl_in': slIn,
        'sl_out': slOut,
        'sr_in': srIn,
        'sr_out': srOut,
        'bl_in': blIn,
        'bl_out': blOut,
        'br_in': brIn,
        'br_out': brOut,
        'bc_in': bcIn,
        'bc_out': bcOut,
        'lfe_in': lfeIn,
        'lfe_out': lfeOut,
        'allx': allx,
        'ally': ally,
        'fcx': fcx,
        'flx': flx,
        'frx': frx,
        'blx': blx,
        'brx': brx,
        'slx': slx,
        'srx': srx,
        'bcx': bcx,
        'fcy': fcy,
        'fly': fly,
        'fry': fry,
        'bly': bly,
        'bry': bry,
        'sly': sly,
        'sry': sry,
        'bcy': bcy,
        'win_size': winSize,
        'win_func': winFunc,
        'overlap': overlap,
      };
}
