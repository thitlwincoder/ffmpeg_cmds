import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The QR code is generated from the provided text or text pattern. The corresponding QR code is scaled and overlayed into the video output according to the specified options.
///
/// In case no text is specified, no QR code is overlaied.
///
/// This filter accepts the following options:
class Qrencode extends Filter {
  /// Qrencode
  Qrencode({
    this.qrcodeWidth,
    this.q,
    this.paddedQrcodeWidth,
    this.Q,
    this.x,
    this.y,
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

  /// Specify an expression for the width of the rendered QR code, with and without padding. The qrcode_width expression can reference the value set by the padded\_qrcode\_width expression, and vice versa. By default padded\_qrcode\_width is set to qrcode_width, meaning that there is no padding./// These expressions are evaluated for each new frame./// See the [qrencode Expressions](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005fexpressions) section for details.
  Object? qrcodeWidth, q;

  /// Specify an expression for positioning the padded QR code top-left corner. The x expression can reference the value set by the y expression, and vice./// By default x and y are set set to 0, meaning that the QR code is placed in the top left corner of the input./// These expressions are evaluated for each new frame./// See the [qrencode Expressions](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005fexpressions) section for details.
  Object? paddedQrcodeWidth, q;

  /// Instruct libqrencode to use case sensitive encoding. This is enabled by default. This can be disabled to reduce the QR encoding size.
  Object? x;

  /// Specify the QR encoding error correction level. With an higher correction level, the encoding size will increase but the code will be more robust to corruption. Lower level is L./// It accepts the following values:
  /// - `L`
  /// - `M`
  /// - `Q`
  /// - `H`
  Object? y;

  /// Select how the input text is expanded. Can be either `none`, or `normal` (default). See the [qrencode Text expansion](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005ftext_005fexpansion) section below for details.
  Object? caseSensitive, cs;

  /// Define the text to be rendered. In case neither is specified, no QR is encoded (just an empty colored frame)./// In case expansion is enabled, the text is treated as a text template, using the qrencode expansion mechanism. See the [qrencode Text expansion](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#qrencode_005ftext_005fexpansion) section below for details.
  Object? level, l;

  /// Set the QR code and background color. The default value of foreground_color is "black", the default value of background_color is "white"./// For the syntax of the color options, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#color-syntax).
  Object? expansion;

  Object? text;

  Object? textfile;

  Object? backgroundColor, bc;

  Object? foregroundColor, fc;

  @override
  String get name => 'qrencode';

  @override
  Map<String, dynamic> get options => {
        'qrcode_width': qrcodeWidth,
        'q': q,
        'padded_qrcode_width': paddedQrcodeWidth,
        'Q': Q,
        'x': x,
        'y': y,
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
