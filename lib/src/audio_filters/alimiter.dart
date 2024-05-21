import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The limiter prevents an input signal from rising over a desired threshold. This limiter uses lookahead technology to prevent your signal from distorting. It means that there is a small delay after the signal is processed. Keep in mind that the delay it produces is the attack time you set.
///
/// The filter accepts the following options:
class Alimiter extends Filter {
  /// Alimiter
  Alimiter({
    this.levelIn,
    this.levelOut,
    this.limit,
    this.attack,
    this.release,
    this.asc,
    this.ascLevel,
    this.level,
    this.latency,
  });

  /// Set input gain. Default is 1.
  Object? levelIn;

  /// Set output gain. Default is 1.
  Object? levelOut;

  /// Don’t let signals above this level pass the limiter. Default is 1.
  Object? limit;

  /// The limiter will reach its attenuation level in this amount of time in milliseconds. Default is 5 milliseconds.
  Object? attack;

  /// Come back from limiting to attenuation 1.0 in this amount of milliseconds. Default is 50 milliseconds.
  Object? release;

  /// When gain reduction is always needed ASC takes care of releasing to an average reduction level rather than reaching a reduction of 0 in the release time.
  Object? asc;

  /// Select how much the release time is affected by ASC, 0 means nearly no changes in release time while 1 produces higher release times.
  Object? ascLevel;

  /// Auto level output signal. Default is enabled. This normalizes audio back to 0dB if enabled.
  Object? level;

  /// Compensate the delay introduced by using the lookahead buffer set with attack parameter. Also flush the valid audio data in the lookahead buffer when the stream hits EOF.
  Object? latency;

  @override
  String get name => 'alimiter';

  @override
  Map<String, dynamic> get options => {
        'level_in': levelIn,
        'level_out': levelOut,
        'limit': limit,
        'attack': attack,
        'release': release,
        'asc': asc,
        'asc_level': ascLevel,
        'level': level,
        'latency': latency,
      };
}
