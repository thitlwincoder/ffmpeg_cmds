import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Change the frame rate by interpolating new video output frames from the source frames.
///
/// This filter is not designed to function correctly with interlaced media. If you wish to change the frame rate of interlaced media then you are required to deinterlace before this filter and re-interlace after this filter.
///
/// A description of the accepted options follows.
class Framerate extends Filter {
  /// Framerate
  Framerate({
    this.fps,
    this.interpStart,
    this.interpEnd,
    this.scene,
    this.flags,
  });

  /// Specify the output frames per second. This option can also be specified as a value alone. The default is `50`.
  Object? fps;

  /// Specify the start of a range where the output frame will be created as a linear interpolation of two frames. The range is \[`0`-`255`\], the default is `15`.
  Object? interpStart;

  /// Specify the end of a range where the output frame will be created as a linear interpolation of two frames. The range is \[`0`-`255`\], the default is `240`.
  Object? interpEnd;

  /// Specify the level at which a scene change is detected as a value between 0 and 100 to indicate a new scene; a low value reflects a low probability for the current frame to introduce a new scene, while a higher value means the current frame is more likely to be one. The default is `8.2`.
  Object? scene;

  /// Specify flags influencing the filter process./// Available value for flags is:
  /// - `scene_change_detect, scd` Enable scene change detection using the value of the option scene. This flag is enabled by default.
  Object? flags;

  @override
  String get name => 'framerate';

  @override
  Map<String, dynamic> get options => {
        'fps': fps,
        'interp_start': interpStart,
        'interp_end': interpEnd,
        'scene': scene,
        'flags': flags,
      };
}
