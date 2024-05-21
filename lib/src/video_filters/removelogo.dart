import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Suppress a TV station logo, using an image file to determine which pixels comprise the logo. It works by filling in the pixels that comprise the logo with neighboring pixels.
///
/// The filter accepts the following options:
///
/// Pixels in the provided bitmap image with a value of zero are not considered part of the logo, non-zero pixels are considered part of the logo. If you use white (255) for the logo and black (0) for the rest, you will be safe. For making the filter bitmap, it is recommended to take a screen capture of a black frame with the logo visible, and then using a threshold filter followed by the erode filter once or twice.
///
/// If needed, little splotches can be fixed manually. Remember that if logo pixels are not covered, the filter quality will be much reduced. Marking too many pixels as part of the logo does not hurt as much, but it will increase the amount of blurring needed to cover over the image and will destroy more information than necessary, and extra pixels will slow things down on a large logo.
class Removelogo extends Filter {
  /// Removelogo
  Removelogo({
    this.filename,
    this.f,
  });

  /// Set the filter bitmap file, which can be any image format supported by libavformat. The width and height of the image file must match those of the video stream being processed.
  Object? filename, f;

  @override
  String get name => 'removelogo';

  @override
  Map<String, dynamic> get options => {'filename': filename, 'f': f};
}
