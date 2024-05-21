import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Scroll input video horizontally and/or vertically by constant speed.
///
/// The filter accepts the following options:
class Scroll extends Filter {
  /// Scroll
  Scroll({
    this.horizontal,
    this.h,
    this.vertical,
    this.v,
    this.hpos,
    this.vpos,
  });

  /// Set the horizontal scrolling speed. Default is 0. Allowed range is from -1 to 1. Negative values changes scrolling direction.
  Object? horizontal, h;

  /// Set the vertical scrolling speed. Default is 0. Allowed range is from -1 to 1. Negative values changes scrolling direction.
  Object? vertical, v;

  /// Set the initial horizontal scrolling position. Default is 0. Allowed range is from 0 to 1.
  Object? hpos;

  /// Set the initial vertical scrolling position. Default is 0. Allowed range is from 0 to 1.
  Object? vpos;

  @override
  String get name => 'scroll';

  @override
  Map<String, dynamic> get options => {
        'horizontal': horizontal,
        'h': h,
        'vertical': vertical,
        'v': v,
        'hpos': hpos,
        'vpos': vpos,
      };
}
