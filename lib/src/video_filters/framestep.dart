import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Select one frame every N-th frame.
///
/// This filter accepts the following option:
class Framestep extends Filter {
  /// Framestep
  Framestep({this.step});

  /// Select frame after every `step` frames. Allowed values are positive integers higher than 0. Default value is `1`.
  Object? step;

  @override
  String get name => 'framestep';

  @override
  Map<String, dynamic> get options => {'step': step};
}
