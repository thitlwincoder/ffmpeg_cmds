import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Adjust the input audio volume.
///
/// It accepts the following parameters:
///
/// The volume expression can contain the following parameters.
class Volume extends Filter {
  /// Volume
  Volume({
    this.volume,
    this.precision,
    this.replaygain,
    this.replaygainPreamp,
    this.replaygainNoclip,
    this.eval,
    this.n,
    this.nbChannels,
    this.nbConsumedSamples,
    this.nbSamples,
    this.pos,
    this.pts,
    this.sampleRate,
    this.startpts,
    this.startt,
    this.t,
    this.tb,
  });

  /// last set volume value
  Object? volume;

  /// This parameter represents the mathematical precision./// It determines which input sample formats will be allowed, which affects the precision of the volume scaling.
  /// - `fixed` 8-bit fixed-point; this limits input sample format to U8, S16, and S32.
  /// - `float` 32-bit floating-point; this limits input sample format to FLT. (default)
  /// - `double` 64-bit floating-point; this limits input sample format to DBL.
  Object? precision;

  /// Choose the behaviour on encountering ReplayGain side data in input frames.
  /// - `drop` Remove ReplayGain side data, ignoring its contents (the default).
  /// - `ignore` Ignore ReplayGain side data, but leave it in the frame.
  /// - `track` Prefer the track gain, if present.
  /// - `album` Prefer the album gain, if present.
  Object? replaygain;

  /// Pre-amplification gain in dB to apply to the selected replaygain gain./// Default value for replaygain_preamp is 0.0.
  Object? replaygainPreamp;

  /// Prevent clipping by limiting the gain applied./// Default value for replaygain_noclip is 1.
  Object? replaygainNoclip;

  /// Set when the volume expression is evaluated./// It accepts the following values:
  /// - `once` only evaluate expression once during the filter initialization, or when the ‘volume’ command is sent
  /// - `frame` evaluate expression for each incoming frame

  /// Default value is ‘/// once’.
  Object? eval;

  /// frame number (starting at zero)
  Object? n;

  /// number of channels
  Object? nbChannels;

  /// number of samples consumed by the filter
  Object? nbConsumedSamples;

  /// number of samples in the current frame
  Object? nbSamples;

  /// original frame position in the file; deprecated, do not use
  Object? pos;

  /// frame PTS
  Object? pts;

  /// sample rate
  Object? sampleRate;

  /// PTS at start of stream
  Object? startpts;

  /// time at start of stream
  Object? startt;

  /// frame time
  Object? t;

  /// timestamp timebase
  Object? tb;

  @override
  String get name => 'volume';

  @override
  Map<String, dynamic> get options => {
        'volume': volume,
        'precision': precision,
        'replaygain': replaygain,
        'replaygain_preamp': replaygainPreamp,
        'replaygain_noclip': replaygainNoclip,
        'eval': eval,
        'n': n,
        'nb_channels': nbChannels,
        'nb_consumed_samples': nbConsumedSamples,
        'nb_samples': nbSamples,
        'pos': pos,
        'pts': pts,
        'sample_rate': sampleRate,
        'startpts': startpts,
        'startt': startt,
        't': t,
        'tb': tb,
      };
}
