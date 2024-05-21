import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Unsharp extends Filter {
  /// Unsharp
  Unsharp();

  @override
  String get name => 'unsharp';

  @override
  Map<String, dynamic> get options => {};
}
