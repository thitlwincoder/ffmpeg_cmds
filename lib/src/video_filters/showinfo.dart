import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Show a line containing various information for each input video frame. The input video is not modified.
///
/// This filter supports the following options:
///
/// The following values are shown in the output:
class Showinfo extends Filter {
  /// Showinfo
  Showinfo({
    this.checksum,
    this.uduSeiAsAscii,
    this.n,
    this.pts,
    this.ptsTime,
    this.fmt,
    this.sar,
    this.s,
    this.i,
    this.iskey,
    this.type,
    this.planeChecksum,
    this.mean,
    this.stdev,
  });

  /// The Adler-32 checksum (printed in hexadecimal) of all the planes of the input frame.
  Object? checksum;

  /// Try to print user data unregistered SEI as ascii character when possible, in hex format otherwise.
  Object? uduSeiAsAscii;

  /// The (sequential) number of the input frame, starting from 0.
  Object? n;

  /// The Presentation TimeStamp of the input frame, expressed as a number of time base units. The time base unit depends on the filter input pad.
  Object? pts;

  /// The Presentation TimeStamp of the input frame, expressed as a number of seconds.
  Object? ptsTime;

  /// The pixel format name.
  Object? fmt;

  /// The sample aspect ratio of the input frame, expressed in the form num/den.
  Object? sar;

  /// The size of the input frame. For the syntax of this option, check the [(ffmpeg-utils)"Video size" section in the ffmpeg-utils manual](https://ffmpeg.org/ffmpeg-utils.html#video-size-syntax).
  Object? s;

  /// The type of interlaced mode ("P" for "progressive", "T" for top field first, "B" for bottom field first).
  Object? i;

  /// This is 1 if the frame is a key frame, 0 otherwise.
  Object? iskey;

  /// The picture type of the input frame ("I" for an I-frame, "P" for a P-frame, "B" for a B-frame, or "?" for an unknown type). Also refer to the documentation of the `AVPictureType` enum and of the `av\_get\_picture\_type\_char` function defined in /// libavutil/avutil.h.
  Object? type;

  /// The Adler-32 checksum (printed in hexadecimal) of each plane of the input frame, expressed in the form "\[c0 c1 c2 c3\]".
  Object? planeChecksum;

  /// The mean value of pixels in each plane of the input frame, expressed in the form "\[mean0 mean1 mean2 mean3\]".
  Object? mean;

  /// The standard deviation of pixel values in each plane of the input frame, expressed in the form "\[stdev0 stdev1 stdev2 stdev3\]".
  Object? stdev;

  @override
  String get name => 'showinfo';

  @override
  Map<String, dynamic> get options => {
        'checksum': checksum,
        'udu_sei_as_ascii': uduSeiAsAscii,
        'n': n,
        'pts': pts,
        'pts_time': ptsTime,
        'fmt': fmt,
        'sar': sar,
        's': s,
        'i': i,
        'iskey': iskey,
        'type': type,
        'plane_checksum': planeChecksum,
        'mean': mean,
        'stdev': stdev,
      };
}
