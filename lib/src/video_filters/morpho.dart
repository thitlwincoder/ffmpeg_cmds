import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// This filter allows to apply main morphological grayscale transforms, erode and dilate with arbitrary structures set in second input stream.
///
/// A description of accepted options follows,
class Morpho extends Filter {
  /// Morpho
  Morpho({
    this.mode,
    this.planes,
    this.structure,
  });

  /// Set morphological transform to apply, can be:
  /// - `erode`
  /// - `dilate`
  /// - `open`
  /// - `close`
  /// - `gradient`
  /// - `tophat`
  /// - `blackhat`
  /// Default is `erode`.
  Object? mode;

  /// Set planes to filter, by default all planes except alpha are filtered.
  Object? planes;

  /// Set which structure video frames will be processed from second input stream, can be first or all. Default is all.
  Object? structure;

  @override
  String get name => 'morpho';

  @override
  Map<String, dynamic> get options =>
      {'mode': mode, 'planes': planes, 'structure': structure};
}
