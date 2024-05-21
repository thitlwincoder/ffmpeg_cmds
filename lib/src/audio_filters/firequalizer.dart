import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply FIR Equalization using arbitrary frequency response.
///
/// The filter accepts the following option:
class Firequalizer extends Filter {
  /// Firequalizer
  Firequalizer({
    this.gain,
    this.gainEntry,
    this.delay,
    this.accuracy,
    this.wfunc,
    this.fixed,
    this.multi,
    this.zeroPhase,
    this.scale,
    this.dumpfile,
    this.dumpscale,
    this.fft2,
    this.minPhase,
  });

  /// Set gain curve equation (in dB). The expression can contain variables:
  /// - `f` the evaluated frequency
  /// - `sr` sample rate
  /// - `ch` channel number, set to 0 when multichannels evaluation is disabled
  /// - `chid` channel id, see libavutil/channel_layout.h, set to the first channel id when multichannels evaluation is disabled
  /// - `chs` number of channels
  /// - `chlayout` channel_layout, see libavutil/channel_layout.h

  /// and functions:
  /// - `gain_interpolate(f)` interpolate gain on frequency f based on gain_entry
  /// - `cubic_interpolate(f)` same as gain_interpolate, but smoother

  /// This option is also available as command. Default is `gain_interpolate(f)`.
  Object? gain;

  /// Set gain entry for gain_interpolate function. The expression can contain functions:
  /// - `entry(f, g)` store gain entry at frequency f with value g

  /// This option is also available as command.
  Object? gainEntry;

  /// Set filter delay in seconds. Higher value means more accurate. Default is `0.01`.
  Object? delay;

  /// Set filter accuracy in Hz. Lower value means more accurate. Default is `5`.
  Object? accuracy;

  /// Set window function. Acceptable values are:
  /// - `rectangular` rectangular window, useful when gain curve is already smooth
  /// - `hann` hann window (default)
  /// - `hamming` hamming window
  /// - `blackman` blackman window
  /// - `nuttall3` 3-terms continuous 1st derivative nuttall window
  /// - `mnuttall3` minimum 3-terms discontinuous nuttall window
  /// - `nuttall` 4-terms continuous 1st derivative nuttall window
  /// - `bnuttall` minimum 4-terms discontinuous nuttall (blackman-nuttall) window
  /// - `bharris` blackman-harris window
  /// - `tukey` tukey window
  Object? wfunc;

  /// If enabled, use fixed number of audio samples. This improves speed when filtering with large delay. Default is disabled.
  Object? fixed;

  /// Enable multichannels evaluation on gain. Default is disabled.
  Object? multi;

  /// Enable zero phase mode by subtracting timestamp to compensate delay. Default is disabled.
  Object? zeroPhase;

  /// Set scale used by gain. Acceptable values are:
  /// - `linlin` linear frequency, linear gain
  /// - `linlog` linear frequency, logarithmic (in dB) gain (default)
  /// - `loglin` logarithmic (in octave scale where 20 Hz is 0) frequency, linear gain
  /// - `loglog` logarithmic frequency, logarithmic gain
  Object? scale;

  /// Set file for dumping, suitable for gnuplot.
  Object? dumpfile;

  /// Set scale for dumpfile. Acceptable values are same with scale option. Default is linlog.
  Object? dumpscale;

  /// Enable 2-channel convolution using complex FFT. This improves speed significantly. Default is disabled.
  Object? fft2;

  /// Enable minimum phase impulse response. Default is disabled.
  Object? minPhase;

  @override
  String get name => 'firequalizer';

  @override
  Map<String, dynamic> get options => {
        'gain': gain,
        'gain_entry': gainEntry,
        'delay': delay,
        'accuracy': accuracy,
        'wfunc': wfunc,
        'fixed': fixed,
        'multi': multi,
        'zero_phase': zeroPhase,
        'scale': scale,
        'dumpfile': dumpfile,
        'dumpscale': dumpscale,
        'fft2': fft2,
        'min_phase': minPhase,
      };
}
