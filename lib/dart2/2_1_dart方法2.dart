
//可选位置参数：
void  chaneParameterFunction([int a,String b , var c ]){

  b??="default";
  c ??= "hello world";
  print("int parameter :$a \n,String Parameter:$b \n,Var Parameter:$c");
  print("-"*5);
}


//可选位置参数：
void  chaneParameterFunction2 ([int a= 5,String b="haha" , var c="coucou" ]){

  b??="default";
  c ??= "hello world";
  print("int parameter :$a \n,String Parameter:$b \n,Var Parameter:$c");
  print("-"*5);
}

//可选命名参数，调用的时候使用键值对形式进行传递  ，此种函数也可以设置默认参数
void  chaneParameterFunction3 ({int a,String b , var c  }){

  b??="default";
  c ??= "hello world";
  print("int parameter :$a \n,String Parameter:$b \n,Var Parameter:$c");
  print("-"*5);
}

void main(){
  Function f = chaneParameterFunction2;
  f();
  f(1);
  f(1,"hello");



}