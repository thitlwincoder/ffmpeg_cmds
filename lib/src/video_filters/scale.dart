import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Scale (resize) the input video, using the libswscale library.
///
/// The scale filter forces the output display aspect ratio to be the same of the input, by changing the output sample aspect ratio.
///
/// If the input image format is different from the format requested by the next filter, the scale filter will convert the input to the requested format.
///
/// Examples:
///
/// - Scale the input video to a size of 200x100
///
///   `scale=w=200:h=100`
///
/// - Specify a size abbreviation for the output size:
///
///   `scale=size=qcif`
class Scale implements Filter {
  /// Scale
  Scale({
    this.width,
    this.w,
    this.height,
    this.h,
    this.eval,
    this.interl,
    this.flags,
    this.param0,
    this.param1,
    this.size,
    this.s,
    this.inColorMatrix,
    this.outColorMatrix,
    this.inRange,
    this.outRange,
    this.forceOriginalAspectRatio,
    this.forceDivisibleBy,
  });

  /// Set the output video dimension expression. Default value is the input dimension.
  ///
  /// If the width or w value is 0, the input width is used for the output. If the height or h value is 0, the input height is used for the output.
  ///
  /// If one and only one of the values is -n with n >= 1, the scale filter will use a value that maintains the aspect ratio of the input image, calculated from the other specified dimension. After that it will, however, make sure that the calculated dimension is divisible by n and adjust the value if necessary.
  ///
  /// If both values are -n with n >= 1, the behavior will be identical to both values being set to 0 as previously detailed.
  int? width, w, height, h;

  /// Specify when to evaluate width and height expression. It accepts the following values:
  ///
  /// `init`
  /// Only evaluate expressions once during the filter initialization or when a command is processed.
  ///
  /// `frame`
  /// Evaluate expressions for each incoming frame.
  ///
  /// Default value is `init`
  String? eval;

  /// Set the interlacing mode. It accepts the following values:
  ///
  /// `1`
  /// Force interlaced aware scaling.
  ///
  /// `0`
  /// Do not apply interlaced scaling.
  ///
  /// `-1`
  /// Select interlaced aware scaling depending on whether the source frames are flagged as interlaced or not.
  ///
  /// Default value is `0`.
  int? interl;

  /// Set libswscale scaling flags. See [(ffmpeg-scaler)the ffmpeg-scaler manual](https://ffmpeg.org/ffmpeg-scaler.html#sws_005fparams) for the complete list of values. If not explicitly specified the filter applies the default flags.
  String? flags;

  /// Set libswscale input parameters for scaling algorithms that need them. See [(ffmpeg-scaler)the ffmpeg-scaler manual](https://ffmpeg.org/ffmpeg-scaler.html#sws_005fparams) for the complete documentation. If not explicitly specified the filter applies empty parameters.
  String? param0, param1;

  /// Set the video size. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax).
  String? size, s;

  /// Set in/output YCbCr color space type.
  ///
  /// This allows the autodetected value to be overridden as well as allows forcing a specific value used for the output and encoder.
  ///
  /// If not specified, the color space type depends on the pixel format.
  ///
  /// Possible values:
  ///
  /// `auto`
  /// Choose automatically.
  ///
  /// `bt709`
  /// Format conforming to International Telecommunication Union (ITU) Recommendation BT.709.
  ///
  /// `fcc`
  /// Set color space conforming to the United States Federal Communications Commission (FCC) Code of Federal Regulations (CFR) Title 47 (2003) 73.682 (a).
  ///
  /// `bt601, bt470, smpte170m`
  /// Set color space conforming to:
  /// - ITU Radiocommunication Sector (ITU-R) Recommendation BT.601
  /// - ITU-R Rec. BT.470-6 (1998) Systems B, B1, and G
  /// - Society of Motion Picture and Television Engineers (SMPTE) ST 170:2004
  ///
  /// `smpte240m`
  /// Set color space conforming to SMPTE ST 240:1999.
  ///
  /// `bt2020`
  /// Set color space conforming to ITU-R BT.2020 non-constant luminance system.
  String? inColorMatrix, outColorMatrix;

  /// Set in/output YCbCr sample range.
  ///
  /// This allows the autodetected value to be overridden as well as allows forcing a specific value used for the output and encoder. If not specified, the range depends on the pixel format. Possible values:
  ///
  /// `auto/unknown`
  /// Choose automatically.
  ///
  /// `jpeg/full/pc`
  /// Set full range (0-255 in case of 8-bit luma).
  ///
  /// `mpeg/limited/tv`
  /// Set "MPEG" range (16-235 in case of 8-bit luma).
  String? inRange, outRange;

  /// Enable decreasing or increasing output video width or height if necessary to keep the original aspect ratio. Possible values:
  ///
  /// `disable`
  /// Scale the video as specified and disable this feature.
  ///
  /// `decrease`
  /// The output video dimensions will automatically be decreased if needed.
  ///
  /// `increase`
  /// The output video dimensions will automatically be increased if needed.
  ///
  /// One useful instance of this option is that when you know a specific device’s maximum allowed resolution, you can use this to limit the output video to that, while retaining the aspect ratio. For example, device A allows 1280x720 playback, and your video is 1920x800. Using this option (set it to decrease) and specifying 1280x720 to the command line makes the output 1280x533.
  ///
  /// Please note that this is a different thing than specifying -1 for w or h, you still need to specify the output resolution for this option to work.
  String? forceOriginalAspectRatio;

  /// Ensures that both the output dimensions, width and height, are divisible by the given integer when used together with [forceOriginalAspectRatio]. This works similar to using `-n` in the w and h options.
  ///
  /// This option respects the value set for [forceOriginalAspectRatio], increasing or decreasing the resolution accordingly. The video’s aspect ratio may be slightly modified.
  ///
  /// This option can be handy if you need to have a video fit within or exceed a defined resolution using [forceOriginalAspectRatio] but also have encoder restrictions on width or height divisibility.
  String? forceDivisibleBy;

  @override
  String get name => 'scale';

  @override
  Map<String, dynamic> get options => {
        'width': width,
        'w': w,
        'height': height,
        'h': h,
        'eval': eval,
        'interl': interl,
        'flags': flags,
        'param0': param0,
        'param1': param1,
        'size': size,
        's': s,
        'in_color_matrix': inColorMatrix,
        'out_color_matrix': outColorMatrix,
        'in_range': inRange,
        'out_range': outRange,
        'force_original_aspect_ratio': forceOriginalAspectRatio,
        'force_divisible_by': forceDivisibleBy,
      };
}
