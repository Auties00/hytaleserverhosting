import 'dart:io';

const webPath = 'E:\\hosting\\build\\web';
const gitPath = 'C:\\Users\\alaut\\auties00.github.io';

void main() {
  print("Starting to deploy application...");
  print("Building web app...");
  Process.runSync('E:\\hosting\\scripts\\build.bat', []);

  print("Cleaning last build...");
  var git = Directory(gitPath);
  for (var entry in git.listSync()) {
    if (!entry.path.endsWith('.git')) {
      entry.deleteSync(recursive: true);
    }
  }

  print("Copying new build...");
  var web = Directory(webPath);
  for (var entry in web.listSync(recursive: true)) {
    if (FileSystemEntity.typeSync(entry.path) == FileSystemEntityType.file) {
      File(entry.path.replaceAll(webPath, gitPath))
        ..createSync(recursive: true)
        ..writeAsBytesSync(File(entry.path).readAsBytesSync());
    }
  }

  print("Applying changes for github pages...");
  var result = Process.runSync('E:\\hosting\\scripts\\upgrade_site.bat', []);
  print("Process completed with exit code ${result.exitCode}");
}
