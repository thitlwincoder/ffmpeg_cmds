import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Ass extends Filter {
  /// Ass
  Ass({this.shaping});

  /// Set the shaping engine/// Available values are:
  /// - `auto` The default libass shaping engine, which is the best available.
  /// - `simple` Fast, font-agnostic shaper that can do only substitutions
  /// - `complex` Slower shaper using OpenType for substitutions and positioning

  /// The default is `auto`.
  Object? shaping;

  @override
  String get name => 'ass';

  @override
  Map<String, dynamic> get options => {'shaping': shaping};
}
