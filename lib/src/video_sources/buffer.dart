import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Buffer video frames, and make them available to the filter chain.
///
/// It accepts the following parameters:
///
/// For example:
///
/// Alternatively, the options can be specified as a flat string, but this syntax is deprecated:
class Buffer extends Filter {
  /// Buffer
  Buffer({
    this.videoSize,
    this.width,
    this.height,
    this.pixFmt,
    this.timeBase,
    this.frameRate,
    this.colorspace,
    this.range,
    this.pixelAspect,
    this.sar,
    this.hwFramesCtx,
  });

  /// Specify the size (width and height) of the buffered video frames. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax).
  Object? videoSize;

  /// The input video width.
  Object? width;

  /// The input video height.
  Object? height;

  /// A string representing the pixel format of the buffered video frames. It may be a number corresponding to a pixel format, or a pixel format name.
  Object? pixFmt;

  /// Specify the timebase assumed by the timestamps of the buffered frames.
  Object? timeBase;

  /// Specify the frame rate expected for the video stream.
  Object? frameRate;

  /// A string representing the color space of the buffered video frames. It may be a number corresponding to a color space, or a color space name.
  Object? colorspace;

  /// A string representing the color range of the buffered video frames. It may be a number corresponding to a color range, or a color range name.
  Object? range;

  /// The sample (pixel) aspect ratio of the input video.
  Object? pixelAspect, sar;

  /// When using a hardware pixel format, this should be a reference to an AVHWFramesContext describing input frames.
  Object? hwFramesCtx;

  @override
  String get name => 'buffer';

  @override
  Map<String, dynamic> get options => {
        'video_size': videoSize,
        'width': width,
        'height': height,
        'pix_fmt': pixFmt,
        'time_base': timeBase,
        'frame_rate': frameRate,
        'colorspace': colorspace,
        'range': range,
        'pixel_aspect': pixelAspect,
        'sar': sar,
        'hw_frames_ctx': hwFramesCtx,
      };
}
