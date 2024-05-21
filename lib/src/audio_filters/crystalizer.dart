import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Simple algorithm for audio noise sharpening.
///
/// This filter linearly increases differences between each audio sample.
///
/// The filter accepts the following options:
class Crystalizer extends Filter {
  /// Crystalizer
  Crystalizer({
    this.i,
    this.c,
  });

  /// Sets the intensity of effect (default: 2.0). Must be in range between -10.0 to 0 (unchanged sound) to 10.0 (maximum effect). To inverse filtering use negative value.
  Object? i;

  /// Enable clipping. By default is enabled.
  Object? c;

  @override
  String get name => 'crystalizer';

  @override
  Map<String, dynamic> get options => {'i': i, 'c': c};
}
