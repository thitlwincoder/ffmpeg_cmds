import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Deinterlace the input video ("w3fdif" stands for "Weston 3 Field Deinterlacing Filter").
///
/// Based on the process described by Martin Weston for BBC R&D, and implemented based on the de-interlace algorithm written by Jim Easterbrook for BBC R&D, the Weston 3 field deinterlacing filter uses filter coefficients calculated by BBC R&D.
///
/// There are two sets of filter coefficients, so called "simple" and "complex". Which set of filter coefficients is used can be set by passing an optional parameter:
class W3fdif extends Filter {
  /// W3fdif
  W3fdif({
    this.filter,
    this.mode,
    this.parity,
    this.deint,
  });

  /// Set the interlacing filter coefficients. Accepts one of the following values:
  /// - `simple` Simple filter coefficient set.
  /// - `complex` More-complex filter coefficient set.

  /// Default value is ‘/// complex’.
  Object? filter;

  /// The interlacing mode to adopt. It accepts one of the following values:
  /// - `frame` Output one frame for each frame.
  /// - `field` Output one frame for each field.

  /// The default value is `field`.
  Object? mode;

  /// The picture field parity assumed for the input interlaced video. It accepts one of the following values:
  /// - `tff` Assume the top field is first.
  /// - `bff` Assume the bottom field is first.
  /// - `auto` Enable automatic detection of field parity.

  /// The default value is `auto`. If the interlacing is unknown or the decoder does not export this information, top field first will be assumed.
  Object? parity;

  /// Specify which frames to deinterlace. Accepts one of the following values:
  /// - `all` Deinterlace all frames,
  /// - `interlaced` Only deinterlace frames marked as interlaced.

  /// Default value is ‘/// all’.
  Object? deint;

  @override
  String get name => 'w3fdif';

  @override
  Map<String, dynamic> get options =>
      {'filter': filter, 'mode': mode, 'parity': parity, 'deint': deint};
}
