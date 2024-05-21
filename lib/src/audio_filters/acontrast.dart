import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Simple audio dynamic range compression/expansion filter.
///
/// The filter accepts the following options:
class Acontrast extends Filter {
  /// Acontrast
  Acontrast({this.contrast});

  /// Set contrast. Default is 33. Allowed range is between 0 and 100.
  Object? contrast;

  @override
  String get name => 'acontrast';

  @override
  Map<String, dynamic> get options => {'contrast': contrast};
}
