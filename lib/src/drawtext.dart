///
/// Draw a text string or text from a specified file on top of a video,
/// using the libfreetype library.
///
class DrawText {
  /// DrawText
  DrawText({
    this.box,
    this.boxborderw,
    this.boxcolor,
    this.lineSpacing,
    this.textAlign,
  });

  /// Used to draw a box around text using the background color. The value must be either 1 (enable) or 0 (disable).
  ///
  /// The default value of box is `0`.
  int? box;

  /// Set the width of the border to be drawn around the box using boxcolor.
  /// The value must be specified using one of the following formats:
  /// - `boxborderw=10` set the width of all the borders to 10
  /// - `boxborderw=10|20` set the width of the top and bottom borders to 10 and the width of the left and right borders to 20
  /// - `boxborderw=10|20|30` set the width of the top border to 10, the width of the bottom border to 30 and the width of the left and right borders to 20
  /// - `boxborderw=10|20|30|40` set the borders width to 10 (top), 20 (right), 30 (bottom), 40 (left)
  ///
  /// The default value of boxborderw is `0`.
  int? boxborderw;

  /// The color to be used for drawing box around text. For the syntax of this option, check the [(ffmpeg-utils)"Color" section in the ffmpeg-utils manual.](https://ffmpeg.org/ffmpeg-utils.html#color-syntax)
  ///
  /// The default value of boxcolor is `white`.
  String? boxcolor;

  /// Set the line spacing in pixels. The default value of line_spacing is `0`.
  int? lineSpacing;

  /// Set the vertical and horizontal alignment of the text with respect to the box boundaries. The value is combination of flags, one for the vertical alignment (T=top, M=middle, B=bottom) and one for the horizontal alignment (L=left, C=center, R=right). Please note that tab characters are only supported with the left horizontal alignment.
  String? textAlign;
}
