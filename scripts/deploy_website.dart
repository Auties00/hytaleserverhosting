import 'dart:io';

const webPath = 'D:\\hosting\\build\\web';
const gitPath = 'C:\\Users\\alaut\\auties00.github.io';
const buildPath = 'D:\\hosting\\scripts\\build.bat';
const upgradeSitePath = 'D:\\hosting\\scripts\\upgrade_site.bat';

void main() {
  print("Starting to deploy application...");
  print("Building web app...");
  var buildResult = Process.runSync(buildPath, []);
  print('Build output:${buildResult.stdout}\nBuild errors:${buildResult.stderr}\n');

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
  var result = Process.runSync(upgradeSitePath, []);
  print('Build output:${result.stdout}\nBuild errors:${result.stderr}');
  print("Process completed with exit code ${result.exitCode}");
}
