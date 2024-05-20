import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Stack video inputs into custom layout.
///
/// All streams must be of same pixel format.
class XStack extends Filter {
  /// XStack
  XStack({
    this.inputs,
    this.layout,
    this.grid,
    this.shortest,
    this.fill,
  });

  /// Set number of input streams. Default is `2`.
  int? inputs;

  /// Specify layout of inputs. This option requires the desired layout configuration to be explicitly set by the user. This sets position of each video input in output. Each input is separated by ’|’. The first number represents the column, and the second number represents the row. Numbers start at 0 and are separated by ’_’. Optionally one can use wX and hX, where X is video input from which to take width or height. Multiple values can be used when separated by ’+’. In such case values are summed together.
  ///
  /// Note that if inputs are of different sizes gaps may appear, as not all of the output video frame will be filled. Similarly, videos can overlap each other if their position doesn’t leave enough space for the full frame of adjoining videos.
  ///
  /// For 2 inputs, a default layout of `0_0|w0_0` (equivalent to `grid=2x1`) is set. In all other cases, a [layout] or a [grid] must be set by the user. Either [grid] or [layout] can be specified at a time. Specifying both will result in an error.
  String? layout;

  /// Specify a fixed size grid of inputs. This option is used to create a fixed size grid of the input streams. Set the grid size in the form `COLUMNSxROWS`. There must be `ROWS * COLUMNS` input streams and they will be arranged as a grid with ROWS rows and COLUMNS columns. When using this option, each input stream within a row must have the same height and all the rows must have the same width.
  ///
  /// If [grid] is set, then [inputs] option is ignored and is implicitly set to `ROWS * COLUMNS`.
  ///
  /// For 2 inputs, a default grid of `2x1` (equivalent to `layout=0_0|w0_0`) is set. In all other cases, a layout or a grid must be set by the user. Either [grid] or [layout] can be specified at a time. Specifying both will result in an error.
  String? grid;

  /// If set to 1, force the output to terminate when the shortest input terminates. Default value is `0`.
  int? shortest;

  /// If set to valid color, all unused pixels will be filled with that color. By default fill is set to none, so it is disabled.
  String? fill;

  @override
  String get name => 'xstack';

  @override
  Map<String, dynamic> get options => {
        'inputs': inputs,
        'layout': layout,
        'grid': grid,
        'shortest': shortest,
        'fill': fill,
      };
}
