import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Visualize information exported by some codecs.
///
/// The filter accepts the following option:
class Codecview extends Filter {
  /// Codecview
  Codecview({
    this.block,
    this.mv,
    this.qp,
    this.mvType,
    this.mvt,
    this.frameType,
    this.ft,
  });

  /// Display block partition structure using the luma plane.
  Object? block;

  /// Set motion vectors to visualize./// Available flags for mv are:
  /// - `pf` forward predicted MVs of P-frames
  /// - `bf` forward predicted MVs of B-frames
  /// - `bb` backward predicted MVs of B-frames
  Object? mv;

  /// Display quantization parameters using the chroma planes.
  Object? qp;

  /// Set motion vectors type to visualize. Includes MVs from all frames unless specified by frame_type option./// Available flags for mv_type are:
  /// - `fp` forward predicted MVs
  /// - `bp` backward predicted MVs
  Object? mvType, mvt;

  /// Set frame type to visualize motion vectors of./// Available flags for frame_type are:
  /// - `if` intra-coded frames (I-frames)
  /// - `pf` predicted frames (P-frames)
  /// - `bf` bi-directionally predicted frames (B-frames)
  Object? frameType, ft;

  @override
  String get name => 'codecview';

  @override
  Map<String, dynamic> get options => {
        'block': block,
        'mv': mv,
        'qp': qp,
        'mv_type': mvType,
        'mvt': mvt,
        'frame_type': frameType,
        'ft': ft,
      };
}
