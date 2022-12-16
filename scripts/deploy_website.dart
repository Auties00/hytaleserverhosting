import 'dart:io';

const projectDir = 'C:\\Users\\alaut\\Desktop\\hosting';
const webPath = '$projectDir\\build\\web';
const gitPath = 'C:\\Users\\alaut\\auties00.github.io';

void main() {
  print("Starting to deploy application...");

  print("Building web app...");
  var buildResult = Process.runSync('$projectDir\\scripts\\build.bat', []);
  if(buildResult.exitCode != 0){
    print("Cannot build web app: ${buildResult.stderr}");
    exit(1);
  }
  print("Output: ${buildResult.stdout}");

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
  var result = Process.runSync('$projectDir\\scripts\\upgrade_site.bat', []);
  print("Process completed with exit code ${result.exitCode}");
  print("Output: ${result.stdout}");
}
