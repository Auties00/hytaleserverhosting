import 'dart:io';

const webPath = 'C:\\Users\\Ale\\Desktop\\Coding\\Dart\\1) Flutter\\projects\\hosting\\build\\web';
const gitPath = 'C:\\Users\\Ale\\auties00.github.io';

void main() {
  var build = Process.runSync('C:\\Users\\Ale\\Desktop\\Coding\\Dart\\1) Flutter\\projects\\hosting\\build.bat', []);
  print(build.stdout);
  print(build.stderr);

  var git = Directory(gitPath);
  for (var entry in git.listSync()) {
    if (!entry.path.endsWith('.git')) {
      entry.deleteSync(recursive: true);
    }
  }

  var web = Directory(webPath);
  for (var entry in web.listSync(recursive: true)) {
    if (FileSystemEntity.typeSync(entry.path) == FileSystemEntityType.file) {
      File(entry.path.replaceAll(webPath, gitPath))
        ..createSync(recursive: true)
        ..writeAsBytesSync(File(entry.path).readAsBytesSync());
    }
  }

  var result = Process.runSync('C:\\Users\\Ale\\Desktop\\Coding\\Dart\\1) Flutter\\projects\\hosting\\upgrade_site.bat', []);
  print(result.stdout);
  print(result.stderr);
  print(result.exitCode);
}
