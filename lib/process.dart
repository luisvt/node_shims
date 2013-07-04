library process;

import "dart:io";
import "dart:io" as io;
import "dart:async";
import "path.dart";

void exit([int code=0]) => io.exit(code);

IOSink get stdout => io.stdout;

IOSink get stderr => io.stderr;

Stream get stdin => io.stdin;

List<String> get argv => new Options().arguments;

String get execPath => join([cwd(), new Options().script]);

String cwd() => Directory.current.path;

Map<String,String> get env => Platform.environment;

void chdir(String directory){
  Directory.current = directory;
}
