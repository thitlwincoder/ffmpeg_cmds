import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Provide a frei0r source.
///
/// This source accepts the following parameters:
///
/// For example, to generate a frei0r partik0l source with size 200x200 and frame rate 10 which is overlaid on the overlay filter main input:
class Frei0rSrc extends Filter {
  /// Frei0rSrc
  Frei0rSrc({
    this.size,
    this.framerate,
    this.filterName,
    this.filterParams,
  });

  /// The size of the video to generate. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax).
  Object? size;

  /// The framerate of the generated video. It may be a string of the form num/den or a frame rate abbreviation.
  Object? framerate;

  /// The name to the frei0r source to load. For more information regarding frei0r and how to set the parameters, read the [frei0r](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#frei0r) section in the video filters documentation.
  Object? filterName;

  /// A ’|’-separated list of parameters to pass to the frei0r source.
  Object? filterParams;

  @override
  String get name => 'frei0r_src';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        'framerate': framerate,
        'filter_name': filterName,
        'filter_params': filterParams,
      };
}
