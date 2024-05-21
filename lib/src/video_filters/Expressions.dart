import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Expressions extends Filter {
  /// Expressions
  Expressions({
    this.w,
    this.h,
    this.n,
    this.pts,
    this.r,
    this.t,
    this.tb,
  });

  /// input width and height
  Object? w;

  /// the number of input frame, starting from 0
  Object? h;

  /// the PTS (Presentation TimeStamp) time of the filtered video frame, expressed in TB units, NAN if undefined
  Object? n;

  /// frame rate of the input video, NAN if the input frame rate is unknown
  Object? pts;

  /// the PTS (Presentation TimeStamp) of the filtered video frame, expressed in seconds, NAN if undefined
  Object? r;

  /// time base of the input video
  Object? t;

  Object? tb;

  @override
  String get name => 'Expressions';

  @override
  Map<String, dynamic> get options =>
      {'w': w, 'h': h, 'n': n, 'pts': pts, 'r': r, 't': t, 'tb': tb};
}
