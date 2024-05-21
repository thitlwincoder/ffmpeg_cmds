import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Display frequency domain statistical information about the audio channels. Statistics are calculated and stored as metadata for each audio channel and for each audio frame.
///
/// It accepts the following option:
///
/// A list of each metadata key follows:
class Aspectralstats extends Filter {
  /// Aspectralstats
  Aspectralstats({
    this.winSize,
    this.winFunc,
    this.overlap,
    this.measure,
    this.mean,
    this.variance,
    this.centroid,
    this.spread,
    this.skewness,
    this.kurtosis,
    this.entropy,
    this.flatness,
    this.crest,
    this.flux,
    this.slope,
    this.decrease,
    this.rolloff,
  });

  /// Set the window length in samples. Default value is 2048. Allowed range is from 32 to 65536.
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

  /// Set window overlap. Allowed range is from `0` to `1`. Default value is `0.5`.
  Object? overlap;

  /// Select the parameters which are measured. The metadata keys can be used as flags, default is /// all which measures everything. /// none disables all measurement.
  Object? measure;

  Object? mean;

  Object? variance;

  Object? centroid;

  Object? spread;

  Object? skewness;

  Object? kurtosis;

  Object? entropy;

  Object? flatness;

  Object? crest;

  Object? flux;

  Object? slope;

  Object? decrease;

  Object? rolloff;

  @override
  String get name => 'aspectralstats';

  @override
  Map<String, dynamic> get options => {
        'win_size': winSize,
        'win_func': winFunc,
        'overlap': overlap,
        'measure': measure,
        'mean': mean,
        'variance': variance,
        'centroid': centroid,
        'spread': spread,
        'skewness': skewness,
        'kurtosis': kurtosis,
        'entropy': entropy,
        'flatness': flatness,
        'crest': crest,
        'flux': flux,
        'slope': slope,
        'decrease': decrease,
        'rolloff': rolloff,
      };
}
