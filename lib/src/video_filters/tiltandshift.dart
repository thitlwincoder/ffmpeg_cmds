import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// What happens when you invert time and space?
///
/// Normally a video is composed of several frames that represent a different instant of time and shows a scence that evolves in the space captured by the frame. This filter is the antipode of that concept, taking inspiration by tilt and shift photography.
///
/// A filtered frame contains the whole timeline of events composing the sequence, and this is obtained by placing a slice of pixels from each frame into a single one. However, since there are no infinite-width frames, this is done up the width of the input frame, and a video is recomposed by shifting away one column for each subsequent frame. In order to map space to time, the filter tilts each input frame as well, so that motion is preseved. This is accomplished by progressively selecting a different column from each input frame.
///
/// The end result is a sort of inverted parralax, so that far away objects move much faster that the ones in the front. The ideal conditions for this video effect are when there is either very little motion and the backgroud is static, or when there is a lot of motion and a very wide depth of field (eg. wide panorama, while moving on a train).
///
/// The filter accepts the following parameters:
///
/// Normally the filter shifts and tils from the very first frame, and stops when the last one is received. However, before filtering starts, normal video may be preseved, so that the effect is slowly shifted in its place. Similarly, the last video frame may be reconstructed at the end. Alternatively it is possible to just start and end with black.
class Tiltandshift extends Filter {
  /// Tiltandshift
  Tiltandshift({
    this.tilt,
    this.start,
    this.end,
    this.hold,
    this.pad,
    this.none,
    this.frame,
    this.black,
  });

  /// Tilt video while shifting (default). When unset, video will be sliding a static image, composed of the first column of each frame.
  Object? tilt;

  /// What to do at the start of filtering (see below).
  Object? start;

  /// What to do at the end of filtering (see below).
  Object? end;

  /// How many columns should pass through before start of filtering.
  Object? hold;

  /// How many columns should be inserted before end of filtering.
  Object? pad;

  /// Filtering is starts immediately and ends when the last frame is received.
  Object? none;

  /// The first frames or the very last frame are kept intact during processing.
  Object? frame;

  /// Black is padded at the beginning or at the end of filtering.
  Object? black;

  @override
  String get name => 'tiltandshift';

  @override
  Map<String, dynamic> get options => {
        'tilt': tilt,
        'start': start,
        'end': end,
        'hold': hold,
        'pad': pad,
        'none': none,
        'frame': frame,
        'black': black,
      };
}
