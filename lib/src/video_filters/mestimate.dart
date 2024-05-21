import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Estimate and export motion vectors using block matching algorithms. Motion vectors are stored in frame side data to be used by other filters.
///
/// This filter accepts the following options:
class Mestimate extends Filter {
  /// Mestimate
  Mestimate({
    this.method,
    this.mbSize,
    this.searchParam,
  });

  /// Specify the motion estimation method. Accepts one of the following values:
  /// - `esa` Exhaustive search algorithm.
  /// - `tss` Three step search algorithm.
  /// - `tdls` Two dimensional logarithmic search algorithm.
  /// - `ntss` New three step search algorithm.
  /// - `fss` Four step search algorithm.
  /// - `ds` Diamond search algorithm.
  /// - `hexbs` Hexagon-based search algorithm.
  /// - `epzs` Enhanced predictive zonal search algorithm.
  /// - `umh` Uneven multi-hexagon search algorithm.

  /// Default value is ‘/// esa’.
  Object? method;

  /// Macroblock size. Default `16`.
  Object? mbSize;

  /// Search parameter. Default `7`.
  Object? searchParam;

  @override
  String get name => 'mestimate';

  @override
  Map<String, dynamic> get options =>
      {'method': method, 'mb_size': mbSize, 'search_param': searchParam};
}
