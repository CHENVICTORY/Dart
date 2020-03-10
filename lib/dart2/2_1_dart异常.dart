
void throwExcept(){
  throw new Exception("Exception happend");
}

int throwDifferentExcept(int a){
  if(a <0){
    throw "minus";
  }else if(a < 10){
    throw a;
  }else if(a < 15){
    throw print;

  }
  return a;
}


void main(){

  try{
    throwExcept();
  }catch(e){
    print(e.runtimeType);
    print(e);
  }
  print('4'*7);

  try{
    throwExcept();
  }catch(e,m){
    print(e.runtimeType);
    print(e);
    print(m.runtimeType);
    print(m);
  }
  print('4'*7);

 // throwExcept();


  //根据不通的异常类型进行不通的处理

  try{}
  on Exception catch(e,stack){// 可以抛出一个异常

  }

  on int catch(e,stackInfo){// 可以直接抛出一个对象

  }
  on Function catch(fun,stack){// 也可以抛出一个方法（dart中，方法也是对象）
    fun();
  }

}