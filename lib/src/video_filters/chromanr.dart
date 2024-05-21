import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Reduce chrominance noise.
///
/// The filter accepts the following options:
class Chromanr extends Filter {
  /// Chromanr
  Chromanr({
    this.thres,
    this.sizew,
    this.sizeh,
    this.stepw,
    this.steph,
    this.threy,
    this.threu,
    this.threv,
    this.distance,
  });

  /// Set threshold for averaging chrominance values. Sum of absolute difference of Y, U and V pixel components of current pixel and neighbour pixels lower than this threshold will be used in averaging. Luma component is left unchanged and is copied to output. Default value is 30. Allowed range is from 1 to 200.
  Object? thres;

  /// Set horizontal radius of rectangle used for averaging. Allowed range is from 1 to 100. Default value is 5.
  Object? sizew;

  /// Set vertical radius of rectangle used for averaging. Allowed range is from 1 to 100. Default value is 5.
  Object? sizeh;

  /// Set horizontal step when averaging. Default value is 1. Allowed range is from 1 to 50. Mostly useful to speed-up filtering.
  Object? stepw;

  /// Set vertical step when averaging. Default value is 1. Allowed range is from 1 to 50. Mostly useful to speed-up filtering.
  Object? steph;

  /// Set Y threshold for averaging chrominance values. Set finer control for max allowed difference between Y components of current pixel and neigbour pixels. Default value is 200. Allowed range is from 1 to 200.
  Object? threy;

  /// Set U threshold for averaging chrominance values. Set finer control for max allowed difference between U components of current pixel and neigbour pixels. Default value is 200. Allowed range is from 1 to 200.
  Object? threu;

  /// Set V threshold for averaging chrominance values. Set finer control for max allowed difference between V components of current pixel and neigbour pixels. Default value is 200. Allowed range is from 1 to 200.
  Object? threv;

  /// Set distance type used in calculations.
  /// - `manhattan` Absolute difference.
  /// - `euclidean` Difference squared.

  /// Default distance type is manhattan.
  Object? distance;

  @override
  String get name => 'chromanr';

  @override
  Map<String, dynamic> get options => {
        'thres': thres,
        'sizew': sizew,
        'sizeh': sizeh,
        'stepw': stepw,
        'steph': steph,
        'threy': threy,
        'threu': threu,
        'threv': threv,
        'distance': distance,
      };
}
