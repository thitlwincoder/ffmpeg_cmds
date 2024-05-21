import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a wavelet based denoiser.
///
/// It transforms each frame from the video input into the wavelet domain, using Cohen-Daubechies-Feauveau 9/7. Then it applies some filtering to the obtained coefficients. It does an inverse wavelet transform after. Due to wavelet properties, it should give a nice smoothed result, and reduced noise, without blurring picture features.
///
/// This filter accepts the following options:
class Vaguedenoiser extends Filter {
  /// Vaguedenoiser
  Vaguedenoiser({
    this.threshold,
    this.method,
    this.nsteps,
    this.percent,
    this.planes,
    this.type,
  });

  /// The filtering strength. The higher, the more filtered the video will be. Hard thresholding can use a higher threshold than soft thresholding before the video looks overfiltered. Default value is 2.
  Object? threshold;

  /// The filtering method the filter will use./// It accepts the following values:
  /// - `hard` All values under the threshold will be zeroed.
  /// - `soft` All values under the threshold will be zeroed. All values above will be reduced by the threshold.
  /// - `garrote` Scales or nullifies coefficients - intermediary between (more) soft and (less) hard thresholding.

  /// Default is garrote.
  Object? method;

  /// Number of times, the wavelet will decompose the picture. Picture can’t be decomposed beyond a particular point (typically, 8 for a 640x480 frame - as 2^9 = 512 > 480). Valid values are integers between 1 and 32. Default value is 6.
  Object? nsteps;

  /// Partial of full denoising (limited coefficients shrinking), from 0 to 100. Default value is 85.
  Object? percent;

  /// A list of the planes to process. By default all planes are processed.
  Object? planes;

  /// The threshold type the filter will use./// It accepts the following values:
  /// - `universal` Threshold used is same for all decompositions.
  /// - `bayes` Threshold used depends also on each decomposition coefficients.

  /// Default is universal.
  Object? type;

  @override
  String get name => 'vaguedenoiser';

  @override
  Map<String, dynamic> get options => {
        'threshold': threshold,
        'method': method,
        'nsteps': nsteps,
        'percent': percent,
        'planes': planes,
        'type': type,
      };
}
