//声明一个变量

void main(){
  int i;
  String s;
  print(i);
  print("s:"+s);

  Object o; //使用Object表示任意类型
  o = "ChenGUO";
  o=1;


  Object p = "";
  p = 1;



  var v = "Lance";
  //v = 1; // v 已经声明为String类型，不能在重新修改类型

  var m ; // 这个时候 var
  m = "Chen";
  m = 1;


  dynamic  z = "LiuHong"; // dynamic 关键字是在 运行时确定变量类型
  z= 1;

  Object x =1;  // x 为object类型
  var y =1;// y 在编译时确定为 int类型，并且在后续不能再次进行修改。
  dynamic xy= 1; //


  //final 和cons的区别
  final int  shu =1;
  final sh =1;
  //sh =2//不可以修改sh的值

  const  shuzi =1;
  //shuzi =2; 不可以修改shuzi的值，

  //final声明的 运行时常量
  //const为编译时常量

  const con = shuzi;
  //const ccc = shu;//  数是运行时确定的，不能给编译时变量赋值

}

void test(a){ // 这个时候a就是一个动态类型

}