import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce audio bit resolution.
///
/// This filter is bit crusher with enhanced functionality. A bit crusher is used to audibly reduce number of bits an audio signal is sampled with. This doesn’t change the bit depth at all, it just produces the effect. Material reduced in bit depth sounds more harsh and "digital". This filter is able to even round to continuous values instead of discrete bit depths. Additionally it has a D/C offset which results in different crushing of the lower and the upper half of the signal. An Anti-Aliasing setting is able to produce "softer" crushing sounds.
///
/// Another feature of this filter is the logarithmic mode. This setting switches from linear distances between bits to logarithmic ones. The result is a much more "natural" sounding crusher which doesn’t gate low signals for example. The human ear has a logarithmic perception, so this kind of crushing is much more pleasant. Logarithmic crushing is also able to get anti-aliased.
///
/// The filter accepts the following options:
class Acrusher extends Filter {
  /// Acrusher
  Acrusher({
    this.levelIn,
    this.levelOut,
    this.bits,
    this.mix,
    this.mode,
    this.dc,
    this.aa,
    this.samples,
    this.lfo,
    this.lforange,
    this.lforate,
  });

  /// Set level in.
  Object? levelIn;

  /// Set level out.
  Object? levelOut;

  /// Set bit reduction.
  Object? bits;

  /// Set mixing amount.
  Object? mix;

  /// Can be linear: lin or logarithmic: log.
  Object? mode;

  /// Set DC.
  Object? dc;

  /// Set anti-aliasing.
  Object? aa;

  /// Set sample reduction.
  Object? samples;

  /// Enable LFO. By default disabled.
  Object? lfo;

  /// Set LFO range.
  Object? lforange;

  /// Set LFO rate.
  Object? lforate;

  @override
  String get name => 'acrusher';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'level_out': levelOut,
        'bits': bits,
        'mix': mix,
        'mode': mode,
        'dc': dc,
        'aa': aa,
        'samples': samples,
        'lfo': lfo,
        'lforange': lforange,
        'lforate': lforate,
      };
}
