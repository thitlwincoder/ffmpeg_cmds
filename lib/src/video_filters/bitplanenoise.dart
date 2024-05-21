import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Show and measure bit plane noise.
///
/// The filter accepts the following options:
class Bitplanenoise extends Filter {
  /// Bitplanenoise
  Bitplanenoise({
    this.bitplane,
    this.filter,
  });

  /// Set which plane to analyze. Default is `1`.
  Object? bitplane;

  /// Filter out noisy pixels from `bitplane` set above. Default is disabled.
  Object? filter;

  @override
  String get name => 'bitplanenoise';

  @override
  Map<String, dynamic> get options => {'bitplane': bitplane, 'filter': filter};
}
