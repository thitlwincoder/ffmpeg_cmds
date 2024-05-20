import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Generate an Audio/Video Sync Test.
///
/// Generated stream periodically shows flash video frame and emits beep in audio. Useful to inspect A/V sync issues.
class AvSyncTest extends Filter {
  /// AvSyncTest
  AvSyncTest({
    this.size,
    this.s,
    this.framerate,
    this.fr,
    this.samplerate,
    this.sr,
    this.amplitude,
    this.a,
    this.period,
    this.p,
    this.delay,
    this.dl,
    this.cycle,
    this.c,
    this.duration,
    this.d,
    this.fg,
    this.bg,
    this.ag,
  });

  /// Set output video size. Default value is `hd720`.
  String? size, s;

  /// Set output video frame rate. Default value is `30`.
  int? framerate, fr;

  /// Set output audio sample rate. Default value is `44100`.
  int? samplerate, sr;

  /// Set output audio beep amplitude. Default value is `0.7`.
  double? amplitude, a;

  /// Set output audio beep period in seconds. Default value is `3`.
  int? period, p;

  /// Set output video flash delay in number of frames. Default value is `0`.
  int? delay, dl;

  /// Enable cycling of video delays, by default is disabled.
  bool? cycle, c;

  /// Set stream output duration. By default duration is unlimited.
  int? duration, d;

  /// Set foreground/background/additional color.
  String? fg, bg, ag;

  @override
  String get name => 'avsynctest';

  @override
  Map<String, dynamic> get options => {
        'size': size,
        's': s,
        'framerate': framerate,
        'fr': fr,
        'samplerate': samplerate,
        'sr': sr,
        'amplitude': amplitude,
        'a': a,
        'period': period,
        'p': p,
        'delay': delay,
        'dl': dl,
        'cycle': cycle,
        'c': c,
        'duration': duration,
        'd': d,
        'fg': fg,
        'bg': bg,
        'ag': ag,
      };
}
