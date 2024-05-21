import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Deinterlace the input video ("estdif" stands for "Edge Slope Tracing Deinterlacing Filter").
///
/// Spatial only filter that uses edge slope tracing algorithm to interpolate missing lines. It accepts the following parameters:
class Estdif extends Filter {
  /// Estdif
  Estdif({
    this.mode,
    this.parity,
    this.deint,
    this.rslope,
    this.redge,
    this.ecost,
    this.mcost,
    this.dcost,
    this.interp,
  });

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
  /// - `all` Deinterlace all frames.
  /// - `interlaced` Only deinterlace frames marked as interlaced.

  /// The default value is `all`.
  Object? deint;

  /// Specify the search radius for edge slope tracing. Default value is 1. Allowed range is from 1 to 15.
  Object? rslope;

  /// Specify the search radius for best edge matching. Default value is 2. Allowed range is from 0 to 15.
  Object? redge;

  /// Specify the edge cost for edge matching. Default value is 2. Allowed range is from 0 to 50.
  Object? ecost;

  /// Specify the middle cost for edge matching. Default value is 1. Allowed range is from 0 to 50.
  Object? mcost;

  /// Specify the distance cost for edge matching. Default value is 1. Allowed range is from 0 to 50.
  Object? dcost;

  /// Specify the interpolation used. Default is 4-point interpolation. It accepts one of the following values:
  /// - `2p` Two-point interpolation.
  /// - `4p` Four-point interpolation.
  /// - `6p` Six-point interpolation.
  Object? interp;

  @override
  String get name => 'estdif';

  @override
  Map<String, dynamic> get options => {
        'mode': mode,
        'parity': parity,
        'deint': deint,
        'rslope': rslope,
        'redge': redge,
        'ecost': ecost,
        'mcost': mcost,
        'dcost': dcost,
        'interp': interp,
      };
}
