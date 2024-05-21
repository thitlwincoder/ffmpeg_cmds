import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following option:
class Weave002cDoubleweave extends Filter {
  /// Weave002cDoubleweave
  Weave002cDoubleweave({this.firstField});

  /// Set first field. Available values are:
  /// - `top, t` Set the frame as top-field-first.
  /// - `bottom, b` Set the frame as bottom-field-first.
  Object? firstField;

  @override
  String get name => 'weave_002c-doubleweave';

  @override
  Map<String, dynamic> get options => {'first_field': firstField};
}
