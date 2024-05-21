import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter can only analyze streams which have sample format is double-precision floating point. The input stream will be converted to this specification, if needed. Users may need to insert aformat and/or aresample filters after this filter to obtain the original parameters.
///
/// The filter accepts the following options:
class Ebur128 extends Filter {
  /// Ebur128
  Ebur128({
    this.video,
    this.size,
    this.meter,
    this.metadata,
    this.framelog,
    this.peak,
    this.dualmono,
    this.panlaw,
    this.target,
    this.gauge,
    this.scale,
    this.integrated,
    this.range,
    this.lraLow,
    this.lraHigh,
    this.samplePeak,
    this.truePeak,
  });

  /// Activate the video output. The audio stream is passed unchanged whether this option is set or no. The video stream will be the first output stream if activated. Default is `0`.
  Object? video;

  /// Set the video size. This option is for video only. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax). Default and minimum resolution is `640x480`.
  Object? size;

  /// Set the EBU scale meter. Default is `9`. Common values are `9` and `18`, respectively for EBU scale meter +9 and EBU scale meter +18. Any other integer value between this range is allowed.
  Object? meter;

  /// Set metadata injection. If set to `1`, the audio input will be segmented into 100ms output frames, each of them containing various loudness information in metadata. All the metadata keys are prefixed with `lavfi.r128.`./// Default is `0`.
  Object? metadata;

  /// Force the frame logging level./// Available values are:
  /// - `quiet` logging disabled
  /// - `info` information logging level
  /// - `verbose` verbose logging level

  /// By default, the logging level is set to info. If the /// video or the /// metadata options are set, it switches to verbose.
  Object? framelog;

  /// Set peak mode(s)./// Available modes can be cumulated (the option is a `flag` type). Possible values are:
  /// - `none` Disable any peak mode (default).
  /// - `sample` Enable sample-peak mode.Simple peak mode looking for the higher sample value. It logs a message for sample-peak (identified by SPK).
  /// - `true` Enable true-peak mode.If enabled, the peak lookup is done on an over-sampled version of the input stream for better peak accuracy. It logs a message for true-peak. (identified by TPK) and true-peak per frame (identified by FTPK). This mode requires a build with libswresample.
  Object? peak;

  /// Treat mono input files as "dual mono". If a mono file is intended for playback on a stereo system, its EBU R128 measurement will be perceptually incorrect. If set to `true`, this option will compensate for this effect. Multi-channel input files are not affected by this option.
  Object? dualmono;

  /// Set a specific pan law to be used for the measurement of dual mono files. This parameter is optional, and has a default value of -3.01dB.
  Object? panlaw;

  /// Set a specific target level (in LUFS) used as relative zero in the visualization. This parameter is optional and has a default value of -23LUFS as specified by EBU R128. However, material published online may prefer a level of -16LUFS (e.g. for use with podcasts or video platforms).
  Object? target;

  /// Set the value displayed by the gauge. Valid values are `momentary` and s `shortterm`. By default the momentary value will be used, but in certain scenarios it may be more useful to observe the short term value instead (e.g. live mixing).
  Object? gauge;

  /// Sets the display scale for the loudness. Valid parameters are `absolute` (in LUFS) or `relative` (LU) relative to the target. This only affects the video output, not the summary or continuous log output.
  Object? scale;

  /// Read-only exported value for measured integrated loudness, in LUFS.
  Object? integrated;

  /// Read-only exported value for measured loudness range, in LU.
  Object? range;

  /// Read-only exported value for measured LRA low, in LUFS.
  Object? lraLow;

  /// Read-only exported value for measured LRA high, in LUFS.
  Object? lraHigh;

  /// Read-only exported value for measured sample peak, in dBFS.
  Object? samplePeak;

  /// Read-only exported value for measured true peak, in dBFS.
  Object? truePeak;

  @override
  String get name => 'ebur128';

  @override
  Map<String, dynamic> get options => {
        'video': video,
        'size': size,
        'meter': meter,
        'metadata': metadata,
        'framelog': framelog,
        'peak': peak,
        'dualmono': dualmono,
        'panlaw': panlaw,
        'target': target,
        'gauge': gauge,
        'scale': scale,
        'integrated': integrated,
        'range': range,
        'lra_low': lraLow,
        'lra_high': lraHigh,
        'sample_peak': samplePeak,
        'true_peak': truePeak,
      };
}
