import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Create new frames by copying the top and bottom fields from surrounding frames supplied as numbers by the hint file.
class Fieldhint extends Filter {
  /// Fieldhint
  Fieldhint({
    this.hint,
    this.mode,
  });

  /// Set file containing hints: absolute/relative frame numbers./// There must be one line for each frame in a clip. Each line must contain two numbers separated by the comma, optionally followed by `-` or `+`. Numbers supplied on each line of file can not be out of \[N-1,N+1\] where N is current frame number for `absolute` mode or out of \[-1, 1\] range for `relative` mode. First number tells from which frame to pick up top field and second number tells from which frame to pick up bottom field./// If optionally followed by `+` output frame will be marked as interlaced, else if followed by `-` output frame will be marked as progressive, else it will be marked same as input frame. If optionally followed by `t` output frame will use only top field, or in case of `b` it will use only bottom field. If line starts with `#` or `;` that line is skipped.
  Object? hint;

  /// Can be item `absolute` or `relative` or `pattern`. Default is `absolute`. The `pattern` mode is same as `relative` mode, except at last entry of file if there are more frames to process than `hint` file is seek back to start.
  Object? mode;

  @override
  String get name => 'fieldhint';

  @override
  Map<String, dynamic> get options => {'hint': hint, 'mode': mode};
}
