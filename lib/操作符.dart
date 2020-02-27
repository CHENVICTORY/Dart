
void main(){

  /**
   * 类型判定操作符
   */
   num i = 1;
   int j = i as int;
   print("$j");


  /**
   * 类判定操作符
   */

  Object m = 1;
  print(m is int);
  print(m is! String);


  /**
   * 赋值操作符
   */

  String s ;
  if(s ==null){
    print('s is null.');
    //s = "k123";
  }
  print(s);
  s ??="345";// 如果s有值，不做任何操作，如果没有值，那么就给s赋值 “345”;
  print(s);


  /**
   * 链式调用
   */

  Builder b =  new Builder();
  b..add()..minus();

  /**
   * 安全操作符  ？.
   *
   */

  String nString ;
  print(nString?.length); // 如果nString 为null，那么就返回null
}


class Builder{
  void add(){
      print("Builder add");
  }

  void minus(){
print("Builder minus");
  }
}