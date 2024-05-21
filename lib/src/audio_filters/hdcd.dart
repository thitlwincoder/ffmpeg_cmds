import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Decodes High Definition Compatible Digital (HDCD) data. A 16-bit PCM stream with embedded HDCD codes is expanded into a 20-bit PCM stream.
///
/// The filter supports the Peak Extend and Low-level Gain Adjustment features of HDCD, and detects the Transient Filter flag.
///
/// The filter accepts the following options:
class Hdcd extends Filter {
  /// Hdcd
  Hdcd({
    this.disableAutoconvert,
    this.processStereo,
    this.cdtMs,
    this.forcePe,
    this.analyzeMode,
  });

  /// Disable any automatic format conversion or resampling in the filter graph.
  Object? disableAutoconvert;

  /// Process the stereo channels together. If target\_gain does not match between channels, consider it invalid and use the last valid target\_gain.
  Object? processStereo;

  /// Set the code detect timer period in ms.
  Object? cdtMs;

  /// Always extend peaks above -3dBFS even if PE isn’t signaled.
  Object? forcePe;

  /// Replace audio with a solid tone and adjust the amplitude to signal some specific aspect of the decoding process. The output file can be loaded in an audio editor alongside the original to aid analysis./// `analyze\_mode=pe:force\_pe=true` can be used to see all samples above the PE level./// Modes are:
  /// - `0, off` Disabled
  /// - `1, lle` Gain adjustment level at each sample
  /// - `2, pe` Samples where peak extend occurs
  /// - `3, cdt` Samples where the code detect timer is active
  /// - `4, tgm` Samples where the target gain does not match between channels
  Object? analyzeMode;

  @override
  String get name => 'hdcd';

  @override
  Map<String, dynamic> get options => {
        'disable_autoconvert': disableAutoconvert,
        'process_stereo': processStereo,
        'cdt_ms': cdtMs,
        'force_pe': forcePe,
        'analyze_mode': analyzeMode,
      };
}
