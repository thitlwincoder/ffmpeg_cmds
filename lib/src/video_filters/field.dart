import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Extract a single field from an interlaced image using stride arithmetic to avoid wasting CPU time. The output frames are marked as non-interlaced.
///
/// The filter accepts the following options:
class Field extends Filter {
  /// Field
  Field({this.type});

  /// Specify whether to extract the top (if the value is `0` or `top`) or the bottom field (if the value is `1` or `bottom`).
  Object? type;

  @override
  String get name => 'field';

  @override
  Map<String, dynamic> get options => {'type': type};
}
