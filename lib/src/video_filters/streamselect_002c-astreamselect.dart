import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Select video or audio streams.
///
/// The filter accepts the following options:
class Streamselect002cAstreamselect extends Filter {
  /// Streamselect002cAstreamselect
  Streamselect002cAstreamselect({
    this.inputs,
    this.map,
  });

  /// Set number of inputs. Default is 2.
  Object? inputs;

  /// Set input indexes to remap to outputs.
  Object? map;

  @override
  String get name => 'streamselect_002c-astreamselect';

  @override
  Map<String, dynamic> get options => {'inputs': inputs, 'map': map};
}
