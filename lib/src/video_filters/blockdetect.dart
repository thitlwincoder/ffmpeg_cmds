import 'package:ffmpeg_cmds/src/filter.dart';

/// Determines blockiness of frames without altering the input frames.
///
/// Based on Remco Muijs and Ihor Kirenko: "A no-reference blocking artifact measure for adaptive video processing." 2005 13th European signal processing conference.
class BlockDetect implements Filter {
  /// BlockDetect
  BlockDetect({
    this.periodMin,
    this.periodMax,
    this.planes,
  });

  /// Set minimum and maximum values for determining pixel grids (periods). Default values are [3,24].
  int? periodMin, periodMax;

  /// Set planes to filter. Default is first only.
  int? planes;

  @override
  String get name => 'blockdetect';

  @override
  Map<String, dynamic> get options => {
        'period_min': periodMin,
        'period_max': periodMax,
        'planes': planes,
      };
}
