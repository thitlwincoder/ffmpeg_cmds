import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// The filter accepts the following options:
class Sofalizer extends Filter {
  /// Sofalizer
  Sofalizer({
    this.sofa,
    this.gain,
    this.rotation,
    this.elevation,
    this.radius,
    this.type,
    this.speakers,
    this.lfegain,
    this.framesize,
    this.normalize,
    this.interpolate,
    this.minphase,
    this.anglestep,
    this.radstep,
  });

  /// Set the SOFA file used for rendering.
  Object? sofa;

  /// Set gain applied to audio. Value is in dB. Default is 0.
  Object? gain;

  /// Set rotation of virtual loudspeakers in deg. Default is 0.
  Object? rotation;

  /// Set elevation of virtual speakers in deg. Default is 0.
  Object? elevation;

  /// Set distance in meters between loudspeakers and the listener with near-field HRTFs. Default is 1.
  Object? radius;

  /// Set processing type. Can be time or freq. time is processing audio in time domain which is slow. freq is processing audio in frequency domain which is fast. Default is freq.
  Object? type;

  /// Set custom positions of virtual loudspeakers. Syntax for this option is: <CH> <AZIM> <ELEV>\[|<CH> <AZIM> <ELEV>|...\]. Each virtual loudspeaker is described with short channel name following with azimuth and elevation in degrees. Each virtual loudspeaker description is separated by ’|’. For example to override front left and front right channel positions use: ’speakers=FL 45 15|FR 345 15’. Descriptions with unrecognised channel names are ignored.
  Object? speakers;

  /// Set custom gain for LFE channels. Value is in dB. Default is 0.
  Object? lfegain;

  /// Set custom frame size in number of samples. Default is 1024. Allowed range is from 1024 to 96000. Only used if option ‘/// type’ is set to freq.
  Object? framesize;

  /// Should all IRs be normalized upon importing SOFA file. By default is enabled.
  Object? normalize;

  /// Should nearest IRs be interpolated with neighbor IRs if exact position does not match. By default is disabled.
  Object? interpolate;

  /// Minphase all IRs upon loading of SOFA file. By default is disabled.
  Object? minphase;

  /// Set neighbor search angle step. Only used if option interpolate is enabled.
  Object? anglestep;

  /// Set neighbor search radius step. Only used if option interpolate is enabled.
  Object? radstep;

  @override
  String get name => 'sofalizer';

  @override
  Map<String, dynamic> get options => {
        'sofa': sofa,
        'gain': gain,
        'rotation': rotation,
        'elevation': elevation,
        'radius': radius,
        'type': type,
        'speakers': speakers,
        'lfegain': lfegain,
        'framesize': framesize,
        'normalize': normalize,
        'interpolate': interpolate,
        'minphase': minphase,
        'anglestep': anglestep,
        'radstep': radstep,
      };
}
