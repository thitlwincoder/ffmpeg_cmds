import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Synthesize audio from 2 input video spectrums, first input stream represents magnitude across time and second represents phase across time. The filter will transform from frequency domain as displayed in videos back to time domain as presented in audio output.
///
/// The filter accepts the following options:
class Spectrumsynth extends Filter {
  /// Spectrumsynth
  Spectrumsynth({
    this.sampleRate,
    this.channels,
    this.scale,
    this.slide,
    this.winFunc,
    this.overlap,
    this.orientation,
  });

  /// Specify sample rate of output audio, the sample rate of audio from which spectrum was generated may differ.
  Object? sampleRate;

  /// Set number of channels represented in input video spectrums.
  Object? channels;

  /// Set scale which was used when generating magnitude input spectrum. Can be `lin` or `log`. Default is `log`.
  Object? scale;

  /// Set slide which was used when generating inputs spectrums. Can be `replace`, `scroll`, `fullframe` or `rscroll`. Default is `fullframe`.
  Object? slide;

  /// Set window function used for resynthesis.
  Object? winFunc;

  /// Set window overlap. In range `\[0, 1\]`. Default is `1`, which means optimal overlap for selected window function will be picked.
  Object? overlap;

  /// Set orientation of input videos. Can be `vertical` or `horizontal`. Default is `vertical`.
  Object? orientation;

  @override
  String get name => 'spectrumsynth';

  @override
  Map<String, dynamic> get options => {
        'sample_rate': sampleRate,
        'channels': channels,
        'scale': scale,
        'slide': slide,
        'win_func': winFunc,
        'overlap': overlap,
        'orientation': orientation,
      };
}
