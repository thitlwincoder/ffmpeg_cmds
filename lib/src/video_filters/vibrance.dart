import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Boost or alter saturation.
///
/// The filter accepts the following options:
class Vibrance extends Filter {
  /// Vibrance
  Vibrance({
    this.intensity,
    this.rbal,
    this.gbal,
    this.bbal,
    this.rlum,
    this.glum,
    this.blum,
    this.alternate,
  });

  /// Set strength of boost if positive value or strength of alter if negative value. Default is 0. Allowed range is from -2 to 2.
  Object? intensity;

  /// Set the red balance. Default is 1. Allowed range is from -10 to 10.
  Object? rbal;

  /// Set the green balance. Default is 1. Allowed range is from -10 to 10.
  Object? gbal;

  /// Set the blue balance. Default is 1. Allowed range is from -10 to 10.
  Object? bbal;

  /// Set the red luma coefficient.
  Object? rlum;

  /// Set the green luma coefficient.
  Object? glum;

  /// Set the blue luma coefficient.
  Object? blum;

  /// If `intensity` is negative and this is set to 1, colors will change, otherwise colors will be less saturated, more towards gray.
  Object? alternate;

  @override
  String get name => 'vibrance';

  @override
  Map<String, dynamic> get options => {
        'intensity': intensity,
        'rbal': rbal,
        'gbal': gbal,
        'bbal': bbal,
        'rlum': rlum,
        'glum': glum,
        'blum': blum,
        'alternate': alternate,
      };
}
