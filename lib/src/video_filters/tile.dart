import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Tile extends Filter {
  /// Tile
  Tile();

  @override
  String get name => 'tile';

  @override
  Map<String, dynamic> get options => {};
}
