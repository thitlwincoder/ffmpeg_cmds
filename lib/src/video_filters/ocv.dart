import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply a video transform using libopencv.
///
/// It accepts the following parameters:
///
/// Several libopencv filters are supported; see the following subsections.
class Ocv extends Filter {
  /// Ocv
  Ocv({
    this.filterName,
    this.filterParams,
  });

  /// The name of the libopencv filter to apply.
  Object? filterName;

  /// The parameters to pass to the libopencv filter. If not specified, the default values are assumed.
  Object? filterParams;

  @override
  String get name => 'ocv';

  @override
  Map<String, dynamic> get options =>
      {'filter_name': filterName, 'filter_params': filterParams};
}
