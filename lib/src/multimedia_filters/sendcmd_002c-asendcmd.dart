import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Send commands to filters in the filtergraph.
///
/// These filters read commands to be sent to other filters in the filtergraph.
///
/// These filters accept the following options:
class Sendcmd002cAsendcmd extends Filter {
  /// Sendcmd002cAsendcmd
  Sendcmd002cAsendcmd({
    this.commands,
    this.c,
    this.filename,
    this.f,
  });

  /// Set the commands to be read and sent to the other filters.
  Object? commands, c;

  /// Set the filename of the commands to be read and sent to the other filters.
  Object? filename, f;

  @override
  String get name => 'sendcmd_002c-asendcmd';

  @override
  Map<String, dynamic> get options =>
      {'commands': commands, 'c': c, 'filename': filename, 'f': f};
}
