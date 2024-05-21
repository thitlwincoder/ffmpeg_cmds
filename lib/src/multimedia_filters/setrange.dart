import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Force color range for the output video frame.
///
/// The filter accepts the following options:
class Setrange extends Filter {
  /// Setrange
  Setrange({this.range});

  /// Available values are:
  /// - `auto` Keep the same color range property.
  /// - `unspecified, unknown` Set the color range as unspecified.
  /// - `limited, tv, mpeg` Set the color range as limited.
  /// - `full, pc, jpeg` Set the color range as full.
  Object? range;

  @override
  String get name => 'setrange';

  @override
  Map<String, dynamic> get options => {'range': range};
}
