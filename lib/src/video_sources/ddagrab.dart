import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Captures the Windows Desktop via Desktop Duplication API.
///
/// It accepts the following options:
class Ddagrab extends Filter {
  /// Ddagrab
  Ddagrab({
    this.outputIdx,
    this.drawMouse,
    this.framerate,
    this.videoSize,
    this.offsetX,
    this.offsetY,
    this.outputFmt,
    this.dupFrames,
  });

  /// DXGI Output Index to capture./// Usually corresponds to the index Windows has given the screen minus one, so it’s starting at 0./// Defaults to output 0.
  Object? outputIdx;

  /// Whether to draw the mouse cursor./// Defaults to true./// Only affects hardware cursors. If a game or application renders its own cursor, it’ll always be captured.
  Object? drawMouse;

  /// Maximum framerate at which the desktop will be captured - the interval between successive frames will not be smaller than the inverse of the framerate. When dup_frames is true (the default) and the desktop is not being updated often enough, the filter will duplicate a previous frame. Note that there is no background buffering going on, so when the filter is not polled often enough then the actual inter-frame interval may be significantly larger./// Defaults to 30 FPS.
  Object? framerate;

  /// Specify the size of the captured video./// Defaults to the full size of the screen./// Cropped from the bottom/right if smaller than screen size.
  Object? videoSize;

  /// Horizontal offset of the captured video.
  Object? offsetX;

  /// Vertical offset of the captured video.
  Object? offsetY;

  /// Desired filter output format. Defaults to 8 Bit BGRA./// It accepts the following values:
  /// - `auto` Passes all supported output formats to DDA and returns what DDA decides to use.
  /// - `8bit`
  /// - `bgra` 8 Bit formats always work, and DDA will convert to them if necessary.
  /// - `10bit`
  /// - `x2bgr10` Filter initialization will fail if 10 bit format is requested but unavailable.
  Object? outputFmt;

  /// When this option is set to true (the default), the filter will duplicate frames when the desktop has not been updated in order to maintain approximately constant target framerate. When this option is set to false, the filter will wait for the desktop to be updated (inter-frame intervals may vary significantly in this case).
  Object? dupFrames;

  @override
  String get name => 'ddagrab';

  @override
  Map<String, dynamic> get options => {
        'output_idx': outputIdx,
        'draw_mouse': drawMouse,
        'framerate': framerate,
        'video_size': videoSize,
        'offset_x': offsetX,
        'offset_y': offsetY,
        'output_fmt': outputFmt,
        'dup_frames': dupFrames,
      };
}
