import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Display time domain statistical information about the audio channels. Statistics are calculated and displayed for each audio channel and, where applicable, an overall figure is also given.
///
/// It accepts the following option:
///
/// A description of the measure keys follow:
class Astats1 extends Filter {
  /// Astats1
  Astats1({
    this.length,
    this.metadata,
    this.reset,
    this.measurePerchannel,
    this.measureOverall,
    this.none,
    this.all,
    this.bitDepth,
    this.crestFactor,
    this.dCOffset,
    this.dynamicRange,
    this.entropy,
    this.flatFactor,
    this.maxDifference,
    this.maxLevel,
    this.meanDifference,
    this.minDifference,
    this.minLevel,
    this.noiseFloor,
    this.noiseFloorCount,
    this.numberOfInfs,
    this.numberOfNaNs,
    this.numberOfDenormals,
    this.numberOfSamples,
    this.peakCount,
    this.absPeakCount,
    this.peakLevel,
    this.rMSDifference,
    this.rMSLevel,
    this.rMSPeak,
    this.rMSTrough,
    this.zeroCrossings,
    this.zeroCrossingsRate,
  });

  /// Short window length in seconds, used for peak and trough RMS measurement. Default is `0.05` (50 milliseconds). Allowed range is `\[0 - 10\]`.
  Object? length;

  /// Set metadata injection. All the metadata keys are prefixed with `lavfi.astats.X`, where `X` is channel number starting from 1 or string `Overall`. Default is disabled./// Available keys for each channel are: Bit_depth Crest_factor DC_offset Dynamic_range Entropy Flat_factor Max_difference Max_level Mean_difference Min_difference Min_level Noise_floor Noise\_floor\_count Number\_of\_Infs Number\_of\_NaNs Number\_of\_denormals Peak_count Abs\_Peak\_count Peak_level RMS_difference RMS_peak RMS_trough Zero_crossings Zero\_crossings\_rate/// and for `Overall`: Bit_depth DC_offset Entropy Flat_factor Max_difference Max_level Mean_difference Min_difference Min_level Noise_floor Noise\_floor\_count Number\_of\_Infs Number\_of\_NaNs Number\_of\_denormals Number\_of\_samples Peak_count Abs\_Peak\_count Peak_level RMS_difference RMS_level RMS_peak RMS_trough/// For example, a full key looks like `lavfi.astats.1.DC_offset` or `lavfi.astats.Overall.Peak_count`./// Read below for the description of the keys.
  Object? metadata;

  /// Set the number of frames over which cumulative stats are calculated before being reset. Default is disabled.
  Object? reset;

  /// Select the parameters which are measured per channel. The metadata keys can be used as flags, default is /// all which measures everything. /// none disables all per channel measurement.
  Object? measurePerchannel;

  /// Select the parameters which are measured overall. The metadata keys can be used as flags, default is /// all which measures everything. /// none disables all overall measurement.
  Object? measureOverall;

  /// no measures
  Object? none;

  /// all measures
  Object? all;

  /// overall bit depth of audio, i.e. number of bits used for each sample
  Object? bitDepth;

  /// standard ratio of peak to RMS level (note: not in dB)
  Object? crestFactor;

  Object? dCOffset;

  /// measured dynamic range of audio in dB
  Object? dynamicRange;

  /// entropy measured across whole audio, entropy of value near 1.0 is typically measured for white noise
  Object? entropy;

  /// flatness (i.e. consecutive samples with the same value) of the signal at its peak levels (i.e. either Min_level or Max_level)
  Object? flatFactor;

  /// maximal difference between two consecutive samples
  Object? maxDifference;

  /// maximal sample level
  Object? maxLevel;

  /// mean difference between two consecutive samples, i.e. the average of each difference between two consecutive samples
  Object? meanDifference;

  /// minimal difference between two consecutive samples
  Object? minDifference;

  /// minimal sample level
  Object? minLevel;

  /// minimum local peak measured in dBFS over a short window
  Object? noiseFloor;

  /// number of occasions (not the number of samples) that the signal attained Noise floor
  Object? noiseFloorCount;

  /// number of samples with an infinite value
  Object? numberOfInfs;

  Object? numberOfNaNs;

  /// number of samples with a subnormal value
  Object? numberOfDenormals;

  /// number of samples
  Object? numberOfSamples;

  /// number of occasions (not the number of samples) that the signal attained either Min_level or Max_level
  Object? peakCount;

  /// number of occasions that the absolute samples taken from the signal attained max absolute value of Min_level and Max_level
  Object? absPeakCount;

  /// standard peak level measured in dBFS
  Object? peakLevel;

  Object? rMSDifference;

  Object? rMSLevel;

  Object? rMSPeak;

  Object? rMSTrough;

  Object? zeroCrossings;

  Object? zeroCrossingsRate;

  @override
  String get name => 'astats-1';

  @override
  Map<String, dynamic> get options => {
        'length': length,
        'metadata': metadata,
        'reset': reset,
        'measure_perchannel': measurePerchannel,
        'measure_overall': measureOverall,
        'none': none,
        'all': all,
        'Bit_depth': bitDepth,
        'Crest_factor': crestFactor,
        'DC_offset': dCOffset,
        'Dynamic_range': dynamicRange,
        'Entropy': entropy,
        'Flat_factor': flatFactor,
        'Max_difference': maxDifference,
        'Max_level': maxLevel,
        'Mean_difference': meanDifference,
        'Min_difference': minDifference,
        'Min_level': minLevel,
        'Noise_floor': noiseFloor,
        'Noise_floor_count': noiseFloorCount,
        'Number_of_Infs': numberOfInfs,
        'Number_of_NaNs': numberOfNaNs,
        'Number_of_denormals': numberOfDenormals,
        'Number_of_samples': numberOfSamples,
        'Peak_count': peakCount,
        'Abs_Peak_count': absPeakCount,
        'Peak_level': peakLevel,
        'RMS_difference': rMSDifference,
        'RMS_level': rMSLevel,
        'RMS_peak': rMSPeak,
        'RMS_trough': rMSTrough,
        'Zero crossings': zeroCrossings,
        'Zero crossings rate': zeroCrossingsRate,
      };
}
