import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The QR code is generated from the provided text or text pattern. The corresponding QR code is scaled and put in the video output according to the specified output size options.
///
/// In case no text is specified, the QR code is not generated, but an empty colored output is returned instead.
///
/// This source accepts the following options:
class Qrencodesrc extends Filter {
  /// Qrencodesrc
  Qrencodesrc({
    this.qrcodeWidth,
    this.q,
    this.paddedQrcodeWidth,
    this.Q,
    this.rate,
    this.r,
    this.caseSensitive,
    this.cs,
    this.level,
    this.l,
    this.expansion,
    this.text,
    this.textfile,
    this.backgroundColor,
    this.bc,
    this.foregroundColor,
    this.fc,
  });

  /// Specify an expression for the width of the rendered QR code, with and without padding. The qrcode_width expression can reference the value set by the padded\_qrcode\_width expression, and vice versa. By default padded\_qrcode\_width is set to qrcode_width, meaning that there is no padding./// These expressions are evaluated only once, when initializing the source. See the [qrencode Expressions](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005fexpressions) section for details./// Note that some of the constants are missing for the source (for example the x or t or ¸n), since they only makes sense when evaluating the expression for each frame rather than at initialization time.
  Object? qrcodeWidth, q;

  /// Specify the frame rate of the sourced video, as the number of frames generated per second. It has to be a string in the format frame\_rate\_num/frame\_rate\_den, an integer number, a floating point number or a valid video frame rate abbreviation. The default value is "25".
  Object? paddedQrcodeWidth, q;

  /// Instruct libqrencode to use case sensitive encoding. This is enabled by default. This can be disabled to reduce the QR encoding size.
  Object? rate, r;

  /// Specify the QR encoding error correction level. With an higher correction level, the encoding size will increase but the code will be more robust to corruption. Lower level is L./// It accepts the following values:
  /// - `L`
  /// - `M`
  /// - `Q`
  /// - `H`
  Object? caseSensitive, cs;

  /// Select how the input text is expanded. Can be either `none`, or `normal` (default). See the [qrencode Text expansion](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005ftext_005fexpansion) section for details.
  Object? level, l;

  /// Define the text to be rendered. In case neither is specified, no QR is encoded (just an empty colored frame)./// In case expansion is enabled, the text is treated as a text template, using the qrencode expansion mechanism. See the [qrencode Text expansion](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005ftext_005fexpansion) section for details.
  Object? expansion;

  /// Set the QR code and background color. The default value of foreground_color is "black", the default value of background_color is "white"./// For the syntax of the color options, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax).
  Object? text;

  Object? textfile;

  Object? backgroundColor, bc;

  Object? foregroundColor, fc;

  @override
  String get name => 'qrencodesrc';

  @override
  Map<String, dynamic> get options => {
        'qrcode_width': qrcodeWidth,
        'q': q,
        'padded_qrcode_width': paddedQrcodeWidth,
        'Q': Q,
        'rate': rate,
        'r': r,
        'case_sensitive': caseSensitive,
        'cs': cs,
        'level': level,
        'l': l,
        'expansion': expansion,
        'text': text,
        'textfile': textfile,
        'background_color': backgroundColor,
        'bc': bc,
        'foreground_color': foregroundColor,
        'fc': fc,
      };
}
