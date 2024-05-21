import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reorder and/or duplicate video planes.
///
/// It accepts the following parameters:
///
/// The first plane has the index 0. The default is to keep the input unchanged.
class Shuffleplanes extends Filter {
  /// Shuffleplanes
  Shuffleplanes({
    this.map0,
    this.map1,
    this.map2,
    this.map3,
  });

  /// The index of the input plane to be used as the first output plane.
  Object? map0;

  /// The index of the input plane to be used as the second output plane.
  Object? map1;

  /// The index of the input plane to be used as the third output plane.
  Object? map2;

  /// The index of the input plane to be used as the fourth output plane.
  Object? map3;

  @override
  String get name => 'shuffleplanes';

  @override
  Map<String, dynamic> get options =>
      {'map0': map0, 'map1': map1, 'map2': map2, 'map3': map3};
}
