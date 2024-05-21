import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// It accepts the following option:
class Showpalette extends Filter {
  /// Showpalette
  Showpalette({this.s});

  /// Set the size of the box used to represent one palette color entry. Default is `30` (for a `30x30` pixel box).
  Object? s;

  @override
  String get name => 'showpalette';

  @override
  Map<String, dynamic> get options => {'s': s};
}
