import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// To help deal with sources that only have static HDR10 metadata (or no tagging whatsoever), libplacebo uses its own internal frame analysis compute shader to analyze source frames and adapt the tone mapping function in realtime. If this is too slow, or if exactly reproducible frame-perfect results are needed, it’s recommended to turn this feature off.
class PeakDetection extends Filter {
  /// PeakDetection
  PeakDetection({
    this.peakDetect,
    this.smoothingPeriod,
    this.minimumPeak,
    this.sceneThresholdLow,
    this.sceneThresholdHigh,
    this.percentile,
  });

  /// Enable HDR peak detection. Ignores static MaxCLL/MaxFALL values in favor of dynamic detection from the input. Note that the detected values do not get written back to the output frames, they merely guide the internal tone mapping process. Enabled by default.
  Object? peakDetect;

  /// Peak detection smoothing period, between `0.0` and `1000.0`. Higher values result in peak detection becoming less responsive to changes in the input. Defaults to `100.0`.
  Object? smoothingPeriod;

  /// Lower bound on the detected peak (relative to SDR white), between `0.0` and `100.0`. Defaults to `1.0`.
  Object? minimumPeak;

  /// Lower and upper thresholds for scene change detection. Expressed in a logarithmic scale between `0.0` and `100.0`. Default to `5.5` and `10.0`, respectively. Setting either to a negative value disables this functionality.
  Object? sceneThresholdLow;

  /// Which percentile of the frame brightness histogram to use as the source peak for tone-mapping. Defaults to `99.995`, a fairly conservative value. Setting this to `100.0` disables frame histogram measurement and instead uses the true peak brightness for tone-mapping.
  Object? sceneThresholdHigh;

  Object? percentile;

  @override
  String get name => 'Peak-detection';

  @override
  Map<String, dynamic> get options => {
        'peak_detect': peakDetect,
        'smoothing_period': smoothingPeriod,
        'minimum_peak': minimumPeak,
        'scene_threshold_low': sceneThresholdLow,
        'scene_threshold_high': sceneThresholdHigh,
        'percentile': percentile,
      };
}
