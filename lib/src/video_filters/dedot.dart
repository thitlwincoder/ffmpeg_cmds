import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce cross-luminance (dot-crawl) and cross-color (rainbows) from video.
///
/// It accepts the following options:
class Dedot extends Filter {
  /// Dedot
  Dedot({
    this.m,
    this.lt,
    this.tl,
    this.tc,
    this.ct,
  });

  /// Set mode of operation. Can be combination of dotcrawl for cross-luminance reduction and/or rainbows for cross-color reduction.
  Object? m;

  /// Set spatial luma threshold. Lower values increases reduction of cross-luminance.
  Object? lt;

  /// Set tolerance for temporal luma. Higher values increases reduction of cross-luminance.
  Object? tl;

  /// Set tolerance for chroma temporal variation. Higher values increases reduction of cross-color.
  Object? tc;

  /// Set temporal chroma threshold. Lower values increases reduction of cross-color.
  Object? ct;

  @override
  String get name => 'dedot';

  @override
  Map<String, dynamic> get options =>
      {'m': m, 'lt': lt, 'tl': tl, 'tc': tc, 'ct': ct};
}
