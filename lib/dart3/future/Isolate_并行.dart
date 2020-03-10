
import 'dart:io';
import 'dart:isolate';
void main(){

  Isolate.spawn(t1, "haha");
  Isolate.spawn(t2, 'bobo');


}
void t1( s){
  print(s);
  sleep(Duration(seconds: 5));
  print(s);
}

void t2( b){
  print(b);
  sleep(Duration(seconds: 5));


}