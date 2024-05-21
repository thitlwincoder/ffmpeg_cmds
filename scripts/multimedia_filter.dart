import 'script.dart';

class MultimediaFilter extends Script {
  @override
  int get index => 8;

  @override
  String get path => 'lib/src/multimedia_filters';
}

void main() {
  MultimediaFilter().init();
}
