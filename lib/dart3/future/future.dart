import 'dart:io';
void printt(String s){

}
void main() {
  Future.delayed(Duration(seconds: 1)).then((t) {
    print("hhh");
  });

  Future.microtask(() {
    print("hello");
  });

  File f = new File(r"D:\新建文本文档1.txt");
  Future<String> future = f.readAsString();


  future.then((var s) {
    print(s);
    return "readSuccess";
  }).catchError((e, stack) {
    print(e);
  });


}
