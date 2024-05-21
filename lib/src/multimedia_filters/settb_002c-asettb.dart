import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Set the timebase to use for the output frames timestamps. It is mainly useful for testing timebase configuration.
///
/// It accepts the following parameters:
class Settb002cAsettb extends Filter {
  /// Settb002cAsettb
  Settb002cAsettb({
    this.expr,
    this.tb,
  });

  /// The expression which is evaluated into the output timebase.
  Object? expr, tb;

  @override
  String get name => 'settb_002c-asettb';

  @override
  Map<String, dynamic> get options => {'expr': expr, 'tb': tb};
}
