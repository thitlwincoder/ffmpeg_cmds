import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Linearly increases the difference between left and right channels which adds some sort of "live" effect to playback.
///
/// The filter accepts the following options:
class Extrastereo extends Filter {
  /// Extrastereo
  Extrastereo({
    this.m,
    this.c,
  });

  /// Sets the difference coefficient (default: 2.5). 0.0 means mono sound (average of both channels), with 1.0 sound will be unchanged, with -1.0 left and right channels will be swapped.
  Object? m;

  /// Enable clipping. By default is enabled.
  Object? c;

  @override
  String get name => 'extrastereo';

  @override
  Map<String, dynamic> get options => {'m': m, 'c': c};
}
