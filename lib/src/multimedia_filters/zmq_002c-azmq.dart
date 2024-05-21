import 'package:ffmpeg_cmds/ffmpeg_cmds.dart';

/// Receive commands sent through a libzmq client, and forward them to filters in the filtergraph.
///
/// The received message must be in the form:
///
/// Upon reception, the message is processed and the corresponding command is injected into the filtergraph. Depending on the result, the filter will send a reply to the client, adopting the format:
class Zmq002cAzmq extends Filter {
  /// Zmq002cAzmq
  Zmq002cAzmq();

  @override
  String get name => 'zmq_002c-azmq';

  @override
  Map<String, dynamic> get options => {};
}
