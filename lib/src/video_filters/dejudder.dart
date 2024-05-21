import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Remove judder produced by partially interlaced telecined content.
///
/// The option available in this filter is:
class Dejudder extends Filter {
  /// Dejudder
  Dejudder({this.cycle});

  /// Specify the length of the window over which the judder repeats./// Accepts any integer greater than 1. Useful values are:
  /// - `4` If the original was telecined from 24 to 30 fps (Film to NTSC).
  /// - `5` If the original was telecined from 25 to 30 fps (PAL to NTSC).
  /// - `20` If a mixture of the two.

  /// The default is ‘/// 4’.
  Object? cycle;

  @override
  String get name => 'dejudder';

  @override
  Map<String, dynamic> get options => {'cycle': cycle};
}
