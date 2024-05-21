import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Freeze video frames.
///
/// This filter freezes video frames using frame from 2nd input.
///
/// The filter accepts the following options:
class Freezeframes extends Filter {
  /// Freezeframes
  Freezeframes({
    this.first,
    this.last,
    this.replace,
  });

  /// Set number of first frame from which to start freeze.
  Object? first;

  /// Set number of last frame from which to end freeze.
  Object? last;

  /// Set number of frame from 2nd input which will be used instead of replaced frames.
  Object? replace;

  @override
  String get name => 'freezeframes';

  @override
  Map<String, dynamic> get options =>
      {'first': first, 'last': last, 'replace': replace};
}
