import 'script.dart';

class AudioSource extends Script {
  @override
  int get index => 2;

  @override
  String get path => 'lib/src/audio_sources';
}

void main() {
  AudioSource().init();
}
