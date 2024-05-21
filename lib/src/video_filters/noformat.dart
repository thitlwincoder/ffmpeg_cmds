import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Force libavfilter not to use any of the specified pixel formats for the input to the next filter.
///
/// It accepts the following parameters:
class Noformat extends Filter {
  /// Noformat
  Noformat({this.pixFmts});

  /// A ’|’-separated list of pixel format names, such as pix_fmts=yuv420p|monow|rgb24".
  Object? pixFmts;

  @override
  String get name => 'noformat';

  @override
  Map<String, dynamic> get options => {'pix_fmts': pixFmts};
}
