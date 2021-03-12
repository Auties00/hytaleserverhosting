import 'dart:io';

const webPath = 'D:\\hosting\\build\\web';
const gitPath = 'C:\\Users\\alaut\\auties00.github.io';
const upgradeSitePath = 'D:\\hosting\\scripts\\upgrade_site.bat';

void main() {
  print("Starting to deploy application...");
  print("Building web app...");

  var buildResult = Process.runSync("flutter build web --release", []);
  print('Build output:${buildResult.stdout}\nBuild errors:\n${buildResult.stderr}\n');

  print("Cleaning last build...");
  Directory(gitPath).listSync()
      .where((element) => !element.path.endsWith(".git"))
      .forEach((element) => element.deleteSync(recursive: true));

  print("Copying new build...");
  Directory(webPath).listSync(recursive: true)
      .where((element) => FileSystemEntity.typeSync(element.path) == FileSystemEntityType.file)
      .forEach((element) => File(element.path.replaceAll(webPath, gitPath))..createSync(recursive: true));

  print("Applying changes for github pages...");
  var result = Process.runSync(upgradeSitePath, []);

  print('Build output:\n${result.stdout}\nBuild errors:\n${result.stderr}');
  print("Process completed with exit code ${result.exitCode}");
}
