import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

///
/// Draw a text string or text from a specified file on top of a video,
/// using the libfreetype library.
///
class DrawText implements Filter {
  /// DrawText
  DrawText({
    this.box,
    this.boxborderw,
    this.boxcolor,
    this.lineSpacing,
    this.textAlign,
    this.yAlign,
    this.borderw,
    this.bordercolor,
    this.expansion,
    this.basetime,
    this.fixBounds,
    this.fontcolor,
    this.fontcolorExpr,
    this.font,
    this.fontfile,
    this.alpha,
    this.fontsize,
    this.textShaping,
    this.ftLoadFlags,
    this.shadowcolor,
    this.boxw,
    this.boxh,
    this.shadowx,
    this.shadowy,
    this.startNumber,
    this.tabsize,
    this.timecode,
    this.timecodeRate,
    this.rate,
    this.r,
    this.tc24hmax,
    this.text,
    this.textfile,
    this.textSource,
    this.reload,
    this.x,
    this.y,
  });

  /// Used to draw a box around text using the background color. The value must be either `1` (enable) or `0` (disable).
  ///
  /// The default value of [box] is `0`.
  int? box;

  /// Set the width of the border to be drawn around the box using boxcolor.
  /// The value must be specified using one of the following formats:
  /// - `boxborderw=10` set the width of all the borders to 10
  /// - `boxborderw=10|20` set the width of the top and bottom borders to 10 and the width of the left and right borders to 20
  /// - `boxborderw=10|20|30` set the width of the top border to 10, the width of the bottom border to 30 and the width of the left and right borders to 20
  /// - `boxborderw=10|20|30|40` set the borders width to 10 (top), 20 (right), 30 (bottom), 40 (left)
  ///
  /// The default value of [boxborderw] is `0`.
  int? boxborderw;

  /// The color to be used for drawing box around text. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual.](https://ffmpeg.org/ffmpeg-utils.html#color-syntax)
  ///
  /// The default value of [boxcolor] is `white`.
  String? boxcolor;

  /// Set the line spacing in pixels. The default value of [lineSpacing] is `0`.
  int? lineSpacing;

  /// Set the vertical and horizontal alignment of the text with respect to the box boundaries. The value is combination of flags, one for the vertical alignment (T=top, M=middle, B=bottom) and one for the horizontal alignment (L=left, C=center, R=right). Please note that tab characters are only supported with the left horizontal alignment.
  String? textAlign;

  /// Specify what the y value is referred to. Possible values are:
  /// - `text` the top of the highest glyph of the first text line is placed at y
  /// - `baseline` the baseline of the first text line is placed at y
  /// - `font` the baseline of the first text line is placed at y plus the ascent (in pixels) defined in the font metrics
  ///
  /// The default value of [yAlign] is `text` for backward compatibility.
  String? yAlign;

  /// Set the width of the border to be drawn around the text using [bordercolor]. The default value of [borderw] is `0`.
  int? borderw;

  /// Set the color to be used for drawing border around text. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual.](https://ffmpeg.org/ffmpeg-utils.html#color-syntax)
  ///
  /// The default value of bordercolor is `black`.
  String? bordercolor;

  /// Select how the text is expanded. Can be either `none`, `strftime` (deprecated) or `normal` (default). See the [Text expansion](https://ffmpeg.org/ffmpeg-filters.html#drawtext_005fexpansion) section below for details.
  String? expansion;

  /// Set a start time for the count. Value is in microseconds. Only applied in the deprecated `strftime` expansion mode. To emulate in normal expansion mode use the `pts` function, supplying the start time (in seconds) as the second argument.
  String? basetime;

  /// If `true`, check and fix text coords to avoid clipping.
  bool? fixBounds;

  /// The color to be used for drawing fonts. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual.](https://ffmpeg.org/ffmpeg-utils.html#color-syntax)
  ///
  /// The default value of [fontcolor] is `black`.
  String? fontcolor;

  /// String which is expanded the same way as text to obtain dynamic [fontcolor] value. By default this option has empty value and is not processed. When this option is set, it overrides [fontcolor] option.
  String? fontcolorExpr;

  /// The font family to be used for drawing [text]. By default `Sans`.
  String? font;

  /// The font file to be used for drawing [text]. The path must be included. This parameter is mandatory if the fontconfig support is disabled.
  String? fontfile;

  /// Draw the text applying alpha blending. The value can be a number between `0.0` and `1.0`. The expression accepts the same variables x, y as well. The default value is `1`. Please see [fontcolorExpr].
  double? alpha;

  /// The font size to be used for drawing [text]. The default value of [fontsize] is `16`.
  int? fontsize;

  /// If set to 1, attempt to shape the text (for example, reverse the order of right-to-left text and join Arabic characters) before drawing it. Otherwise, just draw the text exactly as given. By default 1 (if supported).
  int? textShaping;

  /// The flags to be used for loading the fonts.
  ///
  /// The flags map the corresponding flags supported by libfreetype, and are a combination of the following values:
  ///
  /// - default
  /// - no_scale
  /// - no_hinting
  /// - render
  /// - no_bitmap
  /// - vertical_layout
  /// - force_autohint
  /// - crop_bitmap
  /// - pedantic
  /// - ignore_global_advance_width
  /// - no_recurse
  /// - ignore_transform
  /// - monochrome
  /// - linear_design
  /// - no_autohint
  ///
  /// Default value is `default`.
  ///
  /// For more information consult the documentation for the FT_LOAD_* libfreetype flags.

  String? ftLoadFlags;

  /// The color to be used for drawing a shadow behind the drawn [text]. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual.](https://ffmpeg.org/ffmpeg-utils.html#color-syntax)
  ///
  /// The default value of [shadowcolor] is `black`.
  String? shadowcolor;

  /// Set the width of the box to be drawn around [text]. The default value of [boxw] is computed automatically to match the [text] width
  int? boxw;

  /// Set the height of the box to be drawn around [text]. The default value of [boxh] is computed automatically to match the [text] height
  int? boxh;

  /// The x offset for the text shadow position with respect to the position of the [text]. They can be either positive or negative values. The default value of [shadowx] is `0`.
  int? shadowx;

  /// The y offset for the text shadow position with respect to the position of the [text]. They can be either positive or negative values. The default value of [shadowy] is `0`.
  int? shadowy;

  /// The starting frame number for the n/frame_num variable. The default value is `0`.
  int? startNumber;

  /// The size in number of spaces to use for rendering the tab. Default value is `4`.
  int? tabsize;

  /// Set the initial timecode representation in `hh:mm:ss[:;.]ff` format. It can be used with or without textoption must be specified
  String? timecode;

  /// Set the timecode frame rate (timecode only). Value will be rounded to nearest integer. Minimum value is `1`. Drop-frame timecode is supported for frame rates `30` & `60`.
  int? timecodeRate, rate, r;

  /// If set to `1`, the output of the [timecode] option will wrap around at 24 hours. Default is `0` (disabled).
  int? tc24hmax;

  /// The text string to be drawn. The text must be a sequence of UTF-8 encoded characters. This parameter is mandatory if no file is specified with the parameter [textfile].
  String? text;

  /// A text file containing text to be drawn. The text must be a sequence of UTF-8 encoded characters.
  ///
  /// This parameter is mandatory if no text string is specified with the parameter text.
  ///
  /// If both [text] and [textfile] are specified, an error is thrown.
  String? textfile;

  /// Text source should be set as side_data_detection_bboxes if you want to use text data in detection bboxes of side data.
  ///
  /// If text source is set, [text] and [textfile] will be ignored and still use text data in detection bboxes of side data. So please do not use this parameter if you are not sure about the text source.
  String? textSource;

  /// The [textfile] will be reloaded at specified frame interval. Be sure to update [textfile] atomically, or it may be read partially, or even fail. Range is 0 to INT_MAX. Default is `0`.
  int? reload;

  /// The expressions which specify the offsets where text will be drawn within the video frame. They are relative to the top/left border of the output image.
  ///
  /// The default value of x and y is `0`.
  Object? x, y;

  @override
  String get name => 'drawtext';

  @override
  Map<String, dynamic> get options => {
        'box': box,
        'boxborderw': boxborderw,
        'boxcolor': boxcolor,
        'line_spacing': lineSpacing,
        'text_align': textAlign,
        'y_align': yAlign,
        'borderw': borderw,
        'bordercolor': bordercolor,
        'expansion': expansion,
        'basetime': basetime,
        'fix_bounds': fixBounds,
        'fontcolor': fontcolor,
        'fontcolor_expr': fontcolorExpr,
        'font': font,
        'fontfile': fontfile,
        'alpha': alpha,
        'fontsize': fontsize,
        'text_shaping': textShaping,
        'ft_load_flags': ftLoadFlags,
        'shadowcolor': shadowcolor,
        'boxw': boxw,
        'boxh': boxh,
        'shadowx': shadowx,
        'shadowy': shadowy,
        'start_number': startNumber,
        'tabsize': tabsize,
        'timecode': timecode,
        'timecode_rate': timecodeRate,
        'rate': rate,
        'r': r,
        'tc24hmax': tc24hmax,
        'text': text,
        'textfile': textfile,
        'text_source': textSource,
        'reload': reload,
        'x': x,
        'y': y,
      };
}
