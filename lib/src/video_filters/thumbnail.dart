import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Select the most representative frame in a given sequence of consecutive frames.
///
/// The filter accepts the following options:
class Thumbnail extends Filter {
  /// Thumbnail
  Thumbnail({
    this.n,
    this.log,
  });

  /// Set the frames batch size to analyze; in a set of n frames, the filter will pick one of them, and then handle the next batch of n frames until the end. Default is `100`.
  Object? n;

  /// Set the log level to display picked frame stats. Default is `info`.
  Object? log;

  @override
  String get name => 'thumbnail';

  @override
  Map<String, dynamic> get options => {'n': n, 'log': log};
}
