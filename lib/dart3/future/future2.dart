import 'dart:io';

void main() {
  Future t = Future.delayed(Duration(seconds: 3));
  t.then((results) {
    print(results);
  });


  File f = new File(r"D:\新建文本文档1.txt");
  f.readAsLines().then((line){
    print(line);
  },onError: (e){
    print(e);
  }).catchError((e,stack){
    print("printError");
    print(e);
  })  ;
}
