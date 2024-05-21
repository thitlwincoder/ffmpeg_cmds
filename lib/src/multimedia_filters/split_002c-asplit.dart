import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Split input into several identical outputs.
///
/// The filter accepts a single parameter which specifies the number of outputs. If unspecified, it defaults to 2.
class Split002cAsplit extends Filter {
  /// Split002cAsplit
  Split002cAsplit();

  @override
  String get name => 'split_002c-asplit';

  @override
  Map<String, dynamic> get options => {};
}
