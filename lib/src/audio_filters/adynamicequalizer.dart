import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply dynamic equalization to input audio stream.
///
/// A description of the accepted options follows.
class Adynamicequalizer extends Filter {
  /// Adynamicequalizer
  Adynamicequalizer({
    this.threshold,
    this.dfrequency,
    this.dqfactor,
    this.tfrequency,
    this.tqfactor,
    this.attack,
    this.release,
    this.ratio,
    this.makeup,
    this.range,
    this.mode,
    this.dftype,
    this.tftype,
    this.auto,
    this.precision,
  });

  /// Set the detection threshold used to trigger equalization. Threshold detection is using detection filter. Default value is 0. Allowed range is from 0 to 100.
  Object? threshold;

  /// Set the detection frequency in Hz used for detection filter used to trigger equalization. Default value is 1000 Hz. Allowed range is between 2 and 1000000 Hz.
  Object? dfrequency;

  /// Set the detection resonance factor for detection filter used to trigger equalization. Default value is 1. Allowed range is from 0.001 to 1000.
  Object? dqfactor;

  /// Set the target frequency of equalization filter. Default value is 1000 Hz. Allowed range is between 2 and 1000000 Hz.
  Object? tfrequency;

  /// Set the target resonance factor for target equalization filter. Default value is 1. Allowed range is from 0.001 to 1000.
  Object? tqfactor;

  /// Set the amount of milliseconds the signal from detection has to rise above the detection threshold before equalization starts. Default is 20. Allowed range is between 1 and 2000.
  Object? attack;

  /// Set the amount of milliseconds the signal from detection has to fall below the detection threshold before equalization ends. Default is 200. Allowed range is between 1 and 2000.
  Object? release;

  /// Set the ratio by which the equalization gain is raised. Default is 1. Allowed range is between 0 and 30.
  Object? ratio;

  /// Set the makeup offset by which the equalization gain is raised. Default is 0. Allowed range is between 0 and 100.
  Object? makeup;

  /// Set the max allowed cut/boost amount. Default is 50. Allowed range is from 1 to 200.
  Object? range;

  /// Set the mode of filter operation, can be one of the following:
  /// - `listen` Output only isolated detection signal.
  /// - `cutbelow` Cut frequencies below detection threshold.
  /// - `cutabove` Cut frequencies above detection threshold.
  /// - `boostbelow` Boost frequencies below detection threshold.
  /// - `boostabove` Boost frequencies above detection threshold.

  /// Default mode is ‘/// cutbelow’.
  Object? mode;

  /// Set the type of detection filter, can be one of the following:
  /// - `bandpass`
  /// - `lowpass`
  /// - `highpass`
  /// - `peak`
  /// Default type is ‘/// bandpass’.
  Object? dftype;

  /// Set the type of target filter, can be one of the following:
  /// - `bell`
  /// - `lowshelf`
  /// - `highshelf`
  /// Default type is ‘/// bell’.
  Object? tftype;

  /// Automatically gather threshold from detection filter. By default is ‘/// disabled’. This option is useful to detect threshold in certain time frame of input audio stream, in such case option value is changed at runtime./// Available values are:
  /// - `disabled` Disable using automatically gathered threshold value.
  /// - `off` Stop picking threshold value.
  /// - `on` Start picking threshold value.
  /// - `adaptive` Adaptively pick threshold value, by calculating sliding window entropy.
  Object? auto;

  /// Set which precision to use when processing samples.
  /// - `auto` Auto pick internal sample format depending on other filters.
  /// - `float` Always use single-floating point precision sample format.
  /// - `double` Always use double-floating point precision sample format.
  Object? precision;

  @override
  String get name => 'adynamicequalizer';

  @override
  Map<String, dynamic> get options => {
        'threshold': threshold,
        'dfrequency': dfrequency,
        'dqfactor': dqfactor,
        'tfrequency': tfrequency,
        'tqfactor': tqfactor,
        'attack': attack,
        'release': release,
        'ratio': ratio,
        'makeup': makeup,
        'range': range,
        'mode': mode,
        'dftype': dftype,
        'tftype': tftype,
        'auto': auto,
        'precision': precision,
      };
}
