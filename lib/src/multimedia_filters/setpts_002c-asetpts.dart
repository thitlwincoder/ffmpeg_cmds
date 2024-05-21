import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Change the PTS (presentation timestamp) of the input frames.
///
/// This filter accepts the following options:
///
/// The expression is evaluated through the eval API and can contain the following constants:
class Setpts002cAsetpts extends Filter {
  /// Setpts002cAsetpts
  Setpts002cAsetpts({
    this.expr,
    this.frameRate,
    this.fr,
    this.pts,
    this.N,
    this.nbConsumedSamples,
    this.nbSamples,
    this.S,
    this.sampleRate,
    this.sr,
    this.startpts,
    this.startt,
    this.interlaced,
    this.T,
    this.pos,
    this.prevInpts,
    this.prevInt,
    this.prevOutpts,
    this.prevOutt,
    this.rtctime,
    this.rtcstart,
    this.tb,
    this.tChange,
  });

  /// The expression which is evaluated for each frame to construct its timestamp.
  Object? expr;

  /// frame rate, only defined for constant frame-rate video
  Object? frameRate, fr;

  /// The presentation timestamp in input
  Object? pts;

  /// The count of the input frame for video or the number of consumed samples, not including the current frame for audio, starting from 0.
  Object? N;

  /// The number of consumed samples, not including the current frame (only audio)
  Object? nbConsumedSamples;

  /// The number of samples in the current frame (only audio)
  Object? nbSamples, s;

  /// The audio sample rate.
  Object? sampleRate, sr;

  /// The PTS of the first frame.
  Object? startpts;

  /// the time in seconds of the first frame
  Object? startt;

  /// State whether the current frame is interlaced.
  Object? interlaced;

  /// the time in seconds of the current frame
  Object? T;

  /// original position in the file of the frame, or undefined if undefined for the current frame; deprecated, do not use
  Object? pos;

  /// The previous input PTS.
  Object? prevInpts;

  /// previous input time in seconds
  Object? prevInt;

  /// The previous output PTS.
  Object? prevOutpts;

  /// previous output time in seconds
  Object? prevOutt;

  /// The wallclock (RTC) time in microseconds. This is deprecated, use time(0) instead.
  Object? rtctime;

  /// The wallclock (RTC) time at the start of the movie in microseconds.
  Object? rtcstart;

  /// The timebase of the input timestamps.
  Object? tb;

  /// Time of the first frame after command was applied or time of the first frame if no commands.
  Object? tChange;

  @override
  String get name => 'setpts_002c-asetpts';

  @override
  Map<String, dynamic> get options => {
        'expr': expr,
        'FRAME_RATE': frameRate,
        'FR': fr,
        'PTS': pts,
        'N': N,
        'NB_CONSUMED_SAMPLES': nbConsumedSamples,
        'NB_SAMPLES': nbSamples,
        'S': S,
        'SAMPLE_RATE': sampleRate,
        'SR': sr,
        'STARTPTS': startpts,
        'STARTT': startt,
        'INTERLACED': interlaced,
        'T': T,
        'POS': pos,
        'PREV_INPTS': prevInpts,
        'PREV_INT': prevInt,
        'PREV_OUTPTS': prevOutpts,
        'PREV_OUTT': prevOutt,
        'RTCTIME': rtctime,
        'RTCSTART': rtcstart,
        'TB': tb,
        'T_CHANGE': tChange,
      };
}
