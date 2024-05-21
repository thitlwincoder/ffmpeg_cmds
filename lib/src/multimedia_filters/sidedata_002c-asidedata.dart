import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Delete frame side data, or select frames based on it.
///
/// This filter accepts the following options:
class Sidedata002cAsidedata extends Filter {
  /// Sidedata002cAsidedata
  Sidedata002cAsidedata({
    this.mode,
    this.type,
  });

  /// Set mode of operation of the filter./// Can be one of the following:
  /// - `select` Select every frame with side data of type.
  /// - `delete` Delete side data of type. If type is not set, delete all side data in the frame.
  Object? mode;

  /// Set side data type used with all modes. Must be set for `select` mode. For the list of frame side data types, refer to the `AVFrameSideDataType` enum in /// libavutil/frame.h. For example, to choose `AV\_FRAME\_DATA_PANSCAN` side data, you must specify `PANSCAN`.
  Object? type;

  @override
  String get name => 'sidedata_002c-asidedata';

  @override
  Map<String, dynamic> get options => {'mode': mode, 'type': type};
}
