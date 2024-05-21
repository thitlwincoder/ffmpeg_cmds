import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce broadband noise from input samples using Wavelets.
///
/// A description of the accepted options follows.
class Afwtdn extends Filter {
  /// Afwtdn
  Afwtdn({
    this.sigma,
    this.levels,
    this.wavet,
    this.percent,
    this.profile,
    this.adaptive,
    this.samples,
    this.softness,
  });

  /// Set the noise sigma, allowed range is from 0 to 1. Default value is 0. This option controls strength of denoising applied to input samples. Most useful way to set this option is via decibels, eg. -45dB.
  Object? sigma;

  /// Set the number of wavelet levels of decomposition. Allowed range is from 1 to 12. Default value is 10. Setting this too low make denoising performance very poor.
  Object? levels;

  /// Set wavelet type for decomposition of input frame. They are sorted by number of coefficients, from lowest to highest. More coefficients means worse filtering speed, but overall better quality. Available wavelets are:
  /// - `sym2`
  /// - `sym4`
  /// - `rbior68`
  /// - `deb10`
  /// - `sym10`
  /// - `coif5`
  /// - `bl3`
  Object? wavet;

  /// Set percent of full denoising. Allowed range is from 0 to 100 percent. Default value is 85 percent or partial denoising.
  Object? percent;

  /// If enabled, first input frame will be used as noise profile. If first frame samples contain non-noise performance will be very poor.
  Object? profile;

  /// If enabled, input frames are analyzed for presence of noise. If noise is detected with high possibility then input frame profile will be used for processing following frames, until new noise frame is detected.
  Object? adaptive;

  /// Set size of single frame in number of samples. Allowed range is from 512 to 65536. Default frame size is 8192 samples.
  Object? samples;

  /// Set softness applied inside thresholding function. Allowed range is from 0 to 10. Default softness is 1.
  Object? softness;

  @override
  String get name => 'afwtdn';

  @override
  Map<String, dynamic> get options => {
        'sigma': sigma,
        'levels': levels,
        'wavet': wavet,
        'percent': percent,
        'profile': profile,
        'adaptive': adaptive,
        'samples': samples,
        'softness': softness,
      };
}
