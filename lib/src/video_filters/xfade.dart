import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Apply cross fade from one input video stream to another input video stream. The cross fade is applied for specified duration.
///
/// Both inputs must be constant frame-rate and have the same resolution, pixel format, frame rate and timebase.
class Xfade extends Filter {
  /// Xfade
  Xfade({
    this.transition,
    this.duration,
    this.offset,
    this.expr,
  });

  /// Set one of available transition effects:
  /// - custom
  /// - fade
  /// - wipeleft
  /// - wiperight
  /// - wipeup
  /// - wipedown
  /// - slideleft
  /// - slideright
  /// - slideup
  /// - slidedown
  /// - circlecrop
  /// - rectcrop
  /// - distance
  /// - fadeblack
  /// - fadewhite
  /// - radial
  /// - smoothleft
  /// - smoothright
  /// - smoothup
  /// - smoothdown
  /// - circleopen
  /// - circleclose
  /// - vertopen
  /// - vertclose
  /// - horzopen
  /// - horzclose
  /// - dissolve
  /// - pixelize
  /// - diagtl
  /// - diagtr
  /// - diagbl
  /// - diagbr
  /// - hlslice
  /// - hrslice
  /// - vuslice
  /// - vdslice
  /// - hblur
  /// - fadegrays
  /// - wipetl
  /// - wipetr
  /// - wipebl
  /// - wipebr
  /// - squeezeh
  /// - squeezev
  /// - zoomin
  /// - fadefast
  /// - fadeslow
  /// - hlwind
  /// - hrwind
  /// - vuwind
  /// - vdwind
  /// - coverleft
  /// - coverright
  /// - coverup
  /// - coverdown
  /// - revealleft
  /// - revealright
  /// - revealup
  /// - revealdown
  ///
  /// Default transition effect is `fade`.
  String? transition;

  /// Set cross fade duration in seconds. Range is 0 to 60 seconds. Default duration is `1` second.
  int? duration;

  /// Set cross fade start relative to first input stream in seconds. Default offset is `0`.
  int? offset;

  /// Set expression for custom transition effect.
  ///
  /// The expressions can use the following variables and functions:
  ///
  /// `X`
  /// `Y`
  /// The coordinates of the current sample.
  ///
  /// `W`
  /// `H`
  /// The width and height of the image.
  ///
  /// `P`
  /// Progress of transition effect.
  ///
  /// `PLANE`
  /// Currently processed plane.
  ///
  /// `A`
  /// Return value of first input at current location and plane.
  ///
  /// `B`
  /// Return value of second input at current location and plane.
  ///
  /// `a0(x, y)`
  /// `a1(x, y)`
  /// `a2(x, y)`
  /// `a3(x, y)`
  /// Return the value of the pixel at location (x,y) of the first/second/third/fourth component of first input.
  ///
  /// `b0(x, y)`
  /// `b1(x, y)`
  /// `b2(x, y)`
  /// `b3(x, y)`
  /// Return the value of the pixel at location (x,y) of the first/second/third/fourth component of second input.
  String? expr;

  @override
  String get name => 'xfade';

  @override
  Map<String, dynamic> get options => {
        'transition': transition,
        'duration': duration,
        'offset': offset,
        'expr': expr,
      };
}
