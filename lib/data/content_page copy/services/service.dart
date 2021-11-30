import '../../default_api.dart';

class ServiceImp extends DefaultApi implements Service {
  ServiceImp({String defaultPath = ''}) : super(defaultPath);
}

abstract class Service {}
