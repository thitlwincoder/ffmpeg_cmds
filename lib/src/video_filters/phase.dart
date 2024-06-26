import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Delay interlaced video by one field time so that the field order changes.
///
/// The intended use is to fix PAL movies that have been captured with the opposite field order to the film-to-video transfer.
///
/// A description of the accepted parameters follows.
class Phase extends Filter {
  /// Phase
  Phase({this.mode});

  /// Set phase mode./// It accepts the following values:
  /// - `t` Capture field order top-first, transfer bottom-first. Filter will delay the bottom field.
  /// - `b` Capture field order bottom-first, transfer top-first. Filter will delay the top field.
  /// - `p` Capture and transfer with the same field order. This mode only exists for the documentation of the other options to refer to, but if you actually select it, the filter will faithfully do nothing.
  /// - `a` Capture field order determined automatically by field flags, transfer opposite. Filter selects among ‘t’ and ‘b’ modes on a frame by frame basis using field flags. If no field information is available, then this works just like ‘u’.
  /// - `u` Capture unknown or varying, transfer opposite. Filter selects among ‘t’ and ‘b’ on a frame by frame basis by analyzing the images and selecting the alternative that produces best match between the fields.
  /// - `T` Capture top-first, transfer unknown or varying. Filter selects among ‘t’ and ‘p’ using image analysis.
  /// - `B` Capture bottom-first, transfer unknown or varying. Filter selects among ‘b’ and ‘p’ using image analysis.
  /// - `A` Capture determined by field flags, transfer unknown or varying. Filter selects among ‘t’, ‘b’ and ‘p’ using field flags and image analysis. If no field information is available, then this works just like ‘U’. This is the default mode.
  /// - `U` Both capture and transfer unknown or varying. Filter selects among ‘t’, ‘b’ and ‘p’ using image analysis only.
  Object? mode;

  @override
  String get name => 'phase';

  @override
  Map<String, dynamic> get options => {'mode': mode};
}
