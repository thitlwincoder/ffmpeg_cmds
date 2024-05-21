import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply variable blur filter by using 2nd video stream to set blur radius. The 2nd stream must have the same dimensions.
///
/// This filter accepts the following options:
class Varblur extends Filter {
  /// Varblur
  Varblur({
    this.minR,
    this.maxR,
    this.planes,
  });

  /// Set min allowed radius. Allowed range is from 0 to 254. Default is 0.
  Object? minR;

  /// Set max allowed radius. Allowed range is from 1 to 255. Default is 8.
  Object? maxR;

  /// Set which planes to process. By default, all are used.
  Object? planes;

  @override
  String get name => 'varblur';

  @override
  Map<String, dynamic> get options =>
      {'min_r': minR, 'max_r': maxR, 'planes': planes};
}
