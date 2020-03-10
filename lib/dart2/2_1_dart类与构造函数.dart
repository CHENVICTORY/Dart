
// dart文件或者库用小写加横线的方式进行命名
// 类使用大写驼峰命名
// 方法或者属性名称  methodCameName 形式命名
class Point{
  // 如果某一个类是 ‘_’ 下划线开头，表明这个类是私有的
  int _x ;  // 下划线开头命名的属性是私有属性
  int y;

 void p(){

 }


  Point(this._x, this.y);

  Point.m(this.y); //由于Dart中的方法不允许重载， 这种形式的构造方法我们称之为命名构造方法

  void _print(){// 下划线开头的方法是私有的
    print(_x);
    print(y);
  }
}

class  RedrictCons{
   RedrictCons(int a ,String);

   // 重定向构造方法 , 重定向构造方法只能从命名构造方法指向构造方法
  RedrictCons.a():this(1,'hua');
}
