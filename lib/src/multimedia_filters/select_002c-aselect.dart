import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Select frames to pass in output.
///
/// This filter accepts the following options:
///
/// The expression can contain the following constants:
///
/// The default value of the select expression is "1".
class Select002cAselect extends Filter {
  /// Select002cAselect
  Select002cAselect({
    this.expr,
    this.e,
    this.outputs,
    this.n,
    this.n,
    this.selectedN,
    this.prevSelectedN,
    this.tb,
    this.pts,
    this.t,
    this.prevPts,
    this.prevSelectedPts,
    this.prevSelectedT,
    this.startPts,
    this.startT,
    this.pictType(videoOnly),
    this.interlaceType(videoOnly),
    this.consumedSampleN(audioOnly),
    this.samplesN(audioOnly),
    this.sampleRate(audioOnly),
    this.key,
    this.pos,
    this.scene(videoOnly),
    this.concatdecSelect,
  });

  /// Set expression, which is evaluated for each input frame./// If the expression is evaluated to zero, the frame is discarded./// If the evaluation result is negative or NaN, the frame is sent to the first output; otherwise it is sent to the output with index `ceil(val)-1`, assuming that the input index starts from 0./// For example a value of `1.2` corresponds to the output with index `ceil(1.2)-1 = 2-1 = 1`, that is the second output.
  Object? expr, e;

  /// Set the number of outputs. The output to which to send the selected frame is based on the result of the evaluation. Default value is 1.
  Object? outputs, n;

  /// The (sequential) number of the filtered frame, starting from 0.
  Object? n;

  /// The (sequential) number of the selected frame, starting from 0.
  Object? selectedN;

  /// The sequential number of the last selected frame. It’s NAN if undefined.
  Object? prevSelectedN;

  /// The timebase of the input timestamps.
  Object? tb;

  /// The PTS (Presentation TimeStamp) of the filtered frame, expressed in TB units. It’s NAN if undefined.
  Object? pts;

  /// The PTS of the filtered frame, expressed in seconds. It’s NAN if undefined.
  Object? t;

  /// The PTS of the previously filtered frame. It’s NAN if undefined.
  Object? prevPts;

  /// The PTS of the last previously filtered frame. It’s NAN if undefined.
  Object? prevSelectedPts;

  /// The PTS of the last previously selected frame, expressed in seconds. It’s NAN if undefined.
  Object? prevSelectedT;

  /// The first PTS in the stream which is not NAN. It remains NAN if not found.
  Object? startPts;

  /// The first PTS, in seconds, in the stream which is not NAN. It remains NAN if not found.
  Object? startT;

  Object? pictType(videoOnly);

  Object? interlaceType(videoOnly);

  Object? consumedSampleN(audioOnly);

  Object? samplesN(audioOnly);

  Object? sampleRate(audioOnly);

  /// This is 1 if the filtered frame is a key-frame, 0 otherwise.
  Object? key;

  /// the position in the file of the filtered frame, -1 if the information is not available (e.g. for synthetic video); deprecated, do not use
  Object? pos;

  Object? scene(videoOnly);

  /// The concat demuxer can select only part of a concat input file by setting an inpoint and an outpoint, but the output packets may not be entirely contained in the selected interval. By using this variable, it is possible to skip frames generated by the concat demuxer which are not exactly contained in the selected interval./// This works by comparing the frame pts against the lavf.concat.start_time and the lavf.concat.duration packet metadata values which are also present in the decoded frames./// The concatdec_select variable is -1 if the frame pts is at least start\_time and either the duration metadata is missing or the frame pts is less than start\_time + duration, 0 otherwise, and NaN if the start_time metadata is missing./// That basically means that an input frame is selected if its pts is within the interval set by the concat demuxer.
  Object? concatdecSelect;

  @override
  String get name => 'select_002c-aselect';

  @override
  Map<String, dynamic> get options => {
        'expr': expr,
        'e': e,
        'outputs': outputs,
        'n': n,
        'selected_n': selectedN,
        'prev_selected_n': prevSelectedN,
        'TB': tb,
        'pts': pts,
        't': t,
        'prev_pts': prevPts,
        'prev_selected_pts': prevSelectedPts,
        'prev_selected_t': prevSelectedT,
        'start_pts': startPts,
        'start_t': startT,
        'pict_type (video only)': pictType(videoOnly),
        'interlace_type (video only)': interlaceType(videoOnly),
        'consumed_sample_n (audio only)': consumedSampleN(audioOnly),
        'samples_n (audio only)': samplesN(audioOnly),
        'sample_rate (audio only)': sampleRate(audioOnly),
        'key': key,
        'pos': pos,
        'scene (video only)': scene(videoOnly),
        'concatdec_select': concatdecSelect,
      };
}
