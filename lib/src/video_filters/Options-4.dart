import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

class Options4 extends Filter {
  /// Options4
  Options4({
    this.input,
    this.smoothing,
    this.optalgo,
    this.maxshift,
    this.maxangle,
    this.crop,
    this.invert,
    this.relative,
    this.zoom,
    this.optzoom,
    this.zoomspeed,
    this.interpol,
    this.tripod,
    this.debug,
  });

  /// Set path to the file used to read the transforms. Default value is /// transforms.trf.
  Object? input;

  /// Set the number of frames (value*2 + 1) used for lowpass filtering the camera movements. Default value is 10./// For example a number of 10 means that 21 frames are used (10 in the past and 10 in the future) to smoothen the motion in the video. A larger value leads to a smoother video, but limits the acceleration of the camera (pan/tilt movements). 0 is a special case where a static camera is simulated.
  Object? smoothing;

  /// Set the camera path optimization algorithm./// Accepted values are:
  /// - `gauss` gaussian kernel low-pass filter on camera motion (default)
  /// - `avg` averaging on transformations
  Object? optalgo;

  /// Set maximal number of pixels to translate frames. Default value is -1, meaning no limit.
  Object? maxshift;

  /// Set maximal angle in radians (degree*PI/180) to rotate frames. Default value is -1, meaning no limit.
  Object? maxangle;

  /// Specify how to deal with borders that may be visible due to movement compensation./// Available values are:
  /// - `keep` keep image information from previous frame (default)
  /// - `black` fill the border black
  Object? crop;

  /// Invert transforms if set to 1. Default value is 0.
  Object? invert;

  /// Consider transforms as relative to previous frame if set to 1, absolute if set to 0. Default value is 0.
  Object? relative;

  /// Set percentage to zoom. A positive value will result in a zoom-in effect, a negative value in a zoom-out effect. Default value is 0 (no zoom).
  Object? zoom;

  /// Set optimal zooming to avoid borders./// Accepted values are:
  /// - `0` disabled
  /// - `1` optimal static zoom value is determined (only very strong movements will lead to visible borders) (default)
  /// - `2` optimal adaptive zoom value is determined (no borders will be visible), see zoomspeed

  /// Note that the value given at zoom is added to the one calculated here.
  Object? optzoom;

  /// Set percent to zoom maximally each frame (enabled when /// optzoom is set to 2). Range is from 0 to 5, default value is 0.25.
  Object? zoomspeed;

  /// Specify type of interpolation./// Available values are:
  /// - `no` no interpolation
  /// - `linear` linear only horizontal
  /// - `bilinear` linear in both directions (default)
  /// - `bicubic` cubic in both directions (slow)
  Object? interpol;

  /// Enable virtual tripod mode if set to 1, which is equivalent to `relative=0:smoothing=0`. Default value is 0./// Use also `tripod` option of [vidstabdetect](file:///D:/Projects/Personal/ffmpeg_cmds/filters.html#vidstabdetect).
  Object? tripod;

  /// Increase log verbosity if set to 1. Also the detected global motions are written to the temporary file /// global_motions.trf. Default value is 0.
  Object? debug;

  @override
  String get name => 'Options-4';

  @override
  Map<String, dynamic> get options => {
        'input': input,
        'smoothing': smoothing,
        'optalgo': optalgo,
        'maxshift': maxshift,
        'maxangle': maxangle,
        'crop': crop,
        'invert': invert,
        'relative': relative,
        'zoom': zoom,
        'optzoom': optzoom,
        'zoomspeed': zoomspeed,
        'interpol': interpol,
        'tripod': tripod,
        'debug': debug,
      };
}
