library config_default_server;

import 'config.dart';
import 'dart:async';
import 'loaders/config_loader_filesystem.dart';
import 'parsers/config_parser_yaml.dart';

Future<Map> loadConfig(
    [String filename = "config.yaml", Future<String> Function(String) loader]) {
  var config = new Config(filename, loader, new YamlConfigParser());

  return config.readConfig();
}
