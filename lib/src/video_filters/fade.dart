import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a fade-in/out effect to the input video.
///
/// It accepts the following parameters:
class Fade extends Filter {
  /// Fade
  Fade({
    this.type,
    this.t,
    this.startFrame,
    this.s,
    this.nbFrames,
    this.n,
    this.alpha,
    this.startTime,
    this.st,
    this.duration,
    this.d,
    this.color,
    this.c,
  });

  /// The effect type can be either "in" for a fade-in, or "out" for a fade-out effect. Default is `in`.
  Object? type, t;

  /// Specify the number of the frame to start applying the fade effect at. Default is 0.
  Object? startFrame, s;

  /// The number of frames that the fade effect lasts. At the end of the fade-in effect, the output video will have the same intensity as the input video. At the end of the fade-out transition, the output video will be filled with the selected /// color. Default is 25.
  Object? nbFrames, n;

  /// If set to 1, fade only alpha channel, if one exists on the input. Default value is 0.
  Object? alpha;

  /// Specify the timestamp (in seconds) of the frame to start to apply the fade effect. If both start\_frame and start\_time are specified, the fade will start at whichever comes last. Default is 0.
  Object? startTime, st;

  /// The number of seconds for which the fade effect has to last. At the end of the fade-in effect the output video will have the same intensity as the input video, at the end of the fade-out transition the output video will be filled with the selected /// color. If both duration and nb\_frames are specified, duration is used. Default is 0 (nb\_frames is used by default).
  Object? duration, d;

  /// Specify the color of the fade. Default is "black".
  Object? color, c;

  @override
  String get name => 'fade';

  @override
  Map<String, dynamic> get options => {
        'type': type,
        't': t,
        'start_frame': startFrame,
        's': s,
        'nb_frames': nbFrames,
        'n': n,
        'alpha': alpha,
        'start_time': startTime,
        'st': st,
        'duration': duration,
        'd': d,
        'color': color,
        'c': c,
      };
}
