import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Add noise on video input frame.
///
/// The filter accepts the following options:
class Noise extends Filter {
  /// Noise
  Noise({
    this.allSeed,
    this.c0Seed,
    this.c1Seed,
    this.c2Seed,
    this.c3Seed,
    this.allStrength,
    this.alls,
    this.c0Strength,
    this.c0s,
    this.c1Strength,
    this.c1s,
    this.c2Strength,
    this.c2s,
    this.c3Strength,
    this.c3s,
    this.allFlags,
    this.allf,
    this.c0Flags,
    this.c0f,
    this.c1Flags,
    this.c1f,
    this.c2Flags,
    this.c2f,
    this.c3Flags,
    this.c3f,
  });

  /// Set noise seed for specific pixel component or all pixel components in case of all_seed. Default value is `123457`.
  Object? allSeed;

  /// Set noise strength for specific pixel component or all pixel components in case all_strength. Default value is `0`. Allowed range is \[0, 100\].
  Object? c0Seed;

  /// Set pixel component flags or set flags for all components if all_flags. Available values for component flags are:
  /// - `a` averaged temporal noise (smoother)
  /// - `p` mix random noise with a (semi)regular pattern
  /// - `t` temporal noise (noise pattern changes between frames)
  /// - `u` uniform noise (gaussian otherwise)
  Object? c1Seed;

  Object? c2Seed;

  Object? c3Seed;

  Object? allStrength, alls;

  Object? c0Strength, c0s;

  Object? c1Strength, c1s;

  Object? c2Strength, c2s;

  Object? c3Strength, c3s;

  Object? allFlags, allf;

  Object? c0Flags, c0f;

  Object? c1Flags, c1f;

  Object? c2Flags, c2f;

  Object? c3Flags, c3f;

  @override
  String get name => 'noise';

  @override
  Map<String, dynamic> get options => {
        'all_seed': allSeed,
        'c0_seed': c0Seed,
        'c1_seed': c1Seed,
        'c2_seed': c2Seed,
        'c3_seed': c3Seed,
        'all_strength': allStrength,
        'alls': alls,
        'c0_strength': c0Strength,
        'c0s': c0s,
        'c1_strength': c1Strength,
        'c1s': c1s,
        'c2_strength': c2Strength,
        'c2s': c2s,
        'c3_strength': c3Strength,
        'c3s': c3s,
        'all_flags': allFlags,
        'allf': allf,
        'c0_flags': c0Flags,
        'c0f': c0f,
        'c1_flags': c1Flags,
        'c1f': c1f,
        'c2_flags': c2Flags,
        'c2f': c2f,
        'c3_flags': c3Flags,
        'c3f': c3f,
      };
}
