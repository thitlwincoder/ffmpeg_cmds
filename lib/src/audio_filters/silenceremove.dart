import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove silence from the beginning, middle or end of the audio.
///
/// The filter accepts the following options:
class Silenceremove extends Filter {
  /// Silenceremove
  Silenceremove({
    this.startPeriods,
    this.startDuration,
    this.startThreshold,
    this.startSilence,
    this.startMode,
    this.stopPeriods,
    this.stopDuration,
    this.stopThreshold,
    this.stopSilence,
    this.stopMode,
    this.detection,
    this.window,
    this.timestamp,
  });

  /// This value is used to indicate if audio should be trimmed at beginning of the audio. A value of zero indicates no silence should be trimmed from the beginning. When specifying a non-zero value, it trims audio up until it finds non-silence. Normally, when trimming silence from beginning of audio the start_periods will be `1` but it can be increased to higher values to trim all audio up to specific count of non-silence periods. Default value is `0`.
  Object? startPeriods;

  /// Specify the amount of time that non-silence must be detected before it stops trimming audio. By increasing the duration, bursts of noises can be treated as silence and trimmed off. Default value is `0`.
  Object? startDuration;

  /// This indicates what sample value should be treated as silence. For digital audio, a value of `0` may be fine but for audio recorded from analog, you may wish to increase the value to account for background noise. Can be specified in dB (in case "dB" is appended to the specified value) or amplitude ratio. Default value is `0`.
  Object? startThreshold;

  /// Specify max duration of silence at beginning that will be kept after trimming. Default is 0, which is equal to trimming all samples detected as silence.
  Object? startSilence;

  /// Specify mode of detection of silence end at start of multi-channel audio. Can be any or all. Default is any. With any, any sample from any channel that is detected as non-silence will trigger end of silence trimming at start of audio stream. With all, only if every sample from every channel is detected as non-silence will trigger end of silence trimming at start of audio stream, limited usage.
  Object? startMode;

  /// Set the count for trimming silence from the end of audio. When specifying a positive value, it trims audio after it finds specified silence period. To remove silence from the middle of a file, specify a stop_periods that is negative. This value is then treated as a positive value and is used to indicate the effect should restart processing as specified by stop_periods, making it suitable for removing periods of silence in the middle of the audio. Default value is `0`.
  Object? stopPeriods;

  /// Specify a duration of silence that must exist before audio is not copied any more. By specifying a higher duration, silence that is wanted can be left in the audio. Default value is `0`.
  Object? stopDuration;

  /// This is the same as /// start_threshold but for trimming silence from the end of audio. Can be specified in dB (in case "dB" is appended to the specified value) or amplitude ratio. Default value is `0`.
  Object? stopThreshold;

  /// Specify max duration of silence at end that will be kept after trimming. Default is 0, which is equal to trimming all samples detected as silence.
  Object? stopSilence;

  /// Specify mode of detection of silence start after start of multi-channel audio. Can be any or all. Default is all. With any, any sample from any channel that is detected as silence will trigger start of silence trimming after start of audio stream, limited usage. With all, only if every sample from every channel is detected as silence will trigger start of silence trimming after start of audio stream.
  Object? stopMode;

  /// Set how is silence detected.
  /// - `avg` Mean of absolute values of samples in moving window.
  /// - `rms` Root squared mean of absolute values of samples in moving window.
  /// - `peak` Maximum of absolute values of samples in moving window.
  /// - `median` Median of absolute values of samples in moving window.
  /// - `ptp` Absolute of max peak to min peak difference of samples in moving window.
  /// - `dev` Standard deviation of values of samples in moving window.

  /// Default value is `rms`.
  Object? detection;

  /// Set duration in number of seconds used to calculate size of window in number of samples for detecting silence. Using `0` will effectively disable any windowing and use only single sample per channel for silence detection. In that case it may be needed to also set /// start_silence and/or /// stop_silence to nonzero values with also /// start_duration and/or /// stop_duration to nonzero values. Default value is `0.02`. Allowed range is from `0` to `10`.
  Object? window;

  /// Set processing mode of every audio frame output timestamp.
  /// - `write` Full timestamps rewrite, keep only the start time for the first output frame.
  /// - `copy` Non-dropped frames are left with same timestamp as input audio frame.

  /// Defaults value is `write`.
  Object? timestamp;

  @override
  String get name => 'silenceremove';

  @override
  Map<String, dynamic> get options => {
        'start_periods': startPeriods,
        'start_duration': startDuration,
        'start_threshold': startThreshold,
        'start_silence': startSilence,
        'start_mode': startMode,
        'stop_periods': stopPeriods,
        'stop_duration': stopDuration,
        'stop_threshold': stopThreshold,
        'stop_silence': stopSilence,
        'stop_mode': stopMode,
        'detection': detection,
        'window': window,
        'timestamp': timestamp,
      };
}
