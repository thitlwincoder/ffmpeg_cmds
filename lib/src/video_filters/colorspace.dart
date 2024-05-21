import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Convert colorspace, transfer characteristics or color primaries. Input video needs to have an even size.
///
/// The filter accepts the following options:
class Colorspace extends Filter {
  /// Colorspace
  Colorspace();

  @override
  String get name => 'colorspace';

  @override
  Map<String, dynamic> get options => {};
}
