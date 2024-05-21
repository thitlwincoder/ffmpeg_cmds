import 'script.dart';

class AudioFilter extends Script {
  @override
  int get index => 1;

  @override
  String get path => 'lib/src/audio_filters';
}

void main() {
  AudioFilter().init();
}
