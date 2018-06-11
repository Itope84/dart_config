library config_parser_yaml;

import 'dart:async';
import 'package:yaml/yaml.dart' as YAML;

import '../config.dart';

class YamlConfigParser implements ConfigParser {

  @override
  Map<String, dynamic> parse(String configText) {
    var map = YAML.loadYaml(configText);
    print('YMAL result is ${map.runtimeType}');
    if(map is Map<String, dynamic>) {
      print('YMAL result is a Map');
      return map;
    } else {
      print('YMAL result NOT is a Map');
      return {};
    }
  }
}