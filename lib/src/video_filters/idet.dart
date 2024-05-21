import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Detect video interlacing type.
///
/// This filter tries to detect if the input frames are interlaced, progressive, top or bottom field first. It will also try to detect fields that are repeated between adjacent frames (a sign of telecine).
///
/// Single frame detection considers only immediately adjacent frames when classifying each frame. Multiple frame detection incorporates the classification history of previous frames.
///
/// The filter will log these metadata values:
///
/// The filter accepts the following options:
class Idet extends Filter {
  /// Idet
  Idet({
    this.singleCurrentFrame,
    this.singleTff,
    this.multipleTff,
    this.singleBff,
    this.multipleCurrentFrame,
    this.multipleBff,
    this.singleProgressive,
    this.multipleProgressive,
    this.singleUndetermined,
    this.multipleUndetermined,
    this.repeatedCurrentFrame,
    this.repeatedNeither,
    this.repeatedTop,
    this.repeatedBottom,
    this.intlThres,
    this.progThres,
    this.repThres,
    this.halfLife,
    this.analyzeInterlacedFlag,
  });

  /// Detected type of current frame using single-frame detection. One of: “tff” (top field first), “bff” (bottom field first), “progressive”, or “undetermined”
  Object? singleCurrentFrame;

  /// Cumulative number of frames detected as top field first using single-frame detection.
  Object? singleTff;

  /// Cumulative number of frames detected as top field first using multiple-frame detection.
  Object? multipleTff;

  /// Cumulative number of frames detected as bottom field first using single-frame detection.
  Object? singleBff;

  /// Detected type of current frame using multiple-frame detection. One of: “tff” (top field first), “bff” (bottom field first), “progressive”, or “undetermined”
  Object? multipleCurrentFrame;

  /// Cumulative number of frames detected as bottom field first using multiple-frame detection.
  Object? multipleBff;

  /// Cumulative number of frames detected as progressive using single-frame detection.
  Object? singleProgressive;

  /// Cumulative number of frames detected as progressive using multiple-frame detection.
  Object? multipleProgressive;

  /// Cumulative number of frames that could not be classified using single-frame detection.
  Object? singleUndetermined;

  /// Cumulative number of frames that could not be classified using multiple-frame detection.
  Object? multipleUndetermined;

  /// Which field in the current frame is repeated from the last. One of “neither”, “top”, or “bottom”.
  Object? repeatedCurrentFrame;

  /// Cumulative number of frames with no repeated field.
  Object? repeatedNeither;

  /// Cumulative number of frames with the top field repeated from the previous frame’s top field.
  Object? repeatedTop;

  /// Cumulative number of frames with the bottom field repeated from the previous frame’s bottom field.
  Object? repeatedBottom;

  /// Set interlacing threshold.
  Object? intlThres;

  /// Set progressive threshold.
  Object? progThres;

  /// Threshold for repeated field detection.
  Object? repThres;

  /// Number of frames after which a given frame’s contribution to the statistics is halved (i.e., it contributes only 0.5 to its classification). The default of 0 means that all frames seen are given full weight of 1.0 forever.
  Object? halfLife;

  /// When this is not 0 then idet will use the specified number of frames to determine if the interlaced flag is accurate, it will not count undetermined frames. If the flag is found to be accurate it will be used without any further computations, if it is found to be inaccurate it will be cleared without any further computations. This allows inserting the idet filter as a low computational method to clean up the interlaced flag
  Object? analyzeInterlacedFlag;

  @override
  String get name => 'idet';

  @override
  Map<String, dynamic> get options => {
        'single.current_frame': singleCurrentFrame,
        'single.tff': singleTff,
        'multiple.tff': multipleTff,
        'single.bff': singleBff,
        'multiple.current_frame': multipleCurrentFrame,
        'multiple.bff': multipleBff,
        'single.progressive': singleProgressive,
        'multiple.progressive': multipleProgressive,
        'single.undetermined': singleUndetermined,
        'multiple.undetermined': multipleUndetermined,
        'repeated.current_frame': repeatedCurrentFrame,
        'repeated.neither': repeatedNeither,
        'repeated.top': repeatedTop,
        'repeated.bottom': repeatedBottom,
        'intl_thres': intlThres,
        'prog_thres': progThres,
        'rep_thres': repThres,
        'half_life': halfLife,
        'analyze_interlaced_flag': analyzeInterlacedFlag,
      };
}
