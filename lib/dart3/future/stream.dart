import 'dart:io';

void main() {
  File f = new File(r'D:\Bypass_1.13.84.zip');
  File dest = new File(r'D:\Bypass_1.13.85.zip');
  IOSink destFile = dest.openWrite(mode: FileMode.write);
  Stream<List<int>> openRead = f.openRead();
  var s = openRead.listen((data) {
    destFile.add(data);
  });
  s.pause(Future.delayed(Duration(seconds: 3), () {
    s.resume();
  }));

}

void printer(t) {
  print(t);
}
