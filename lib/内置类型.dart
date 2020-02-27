
void main(){
  int a =0xfffffffffffffff;
  double  b =1.223;
  print(a);

  // 字符串
  String s = "lll";
  int ch = 111;
  print("${s}s的数字形式是：$ch");

  //使用单引号声明字符串
  String pp = 'hello';

  String ppp = ' nihao , "pp"';
  String pppp = "nihao ,'ppp'";
  String ppppp = " ''jj''";
  String pppppp = '\'hhh\'';
  print("$pppppp");

  String oo = r'\n';// 使用r前缀声明这个字符串时原格式输出
  String ooo = '\\n';// 使用转义字符串进行声明
  print("nihao,$oo,balabala");
  print("nihao-$ooo-kkk");

  String i = '''--\t\n--''';
  // 如果用三引号进行声明， 引号内的所有都按原格式输出，可以换行等等
  String ii = """\n
    dksjfk
  dsfd\n
  """;

  print("$i");
  print("$ii");

  //输出 转义字符


  // bool类型


  // 数组List
  List<int> li = new List(3);

  List<int> ll = [1,2,3,4];
  List<List<int>> lll = [[1,2],[2,3]];

  int ll_0 = ll[0];// 像数组一样进行取数值

  print("current list iterator:");
  for (int o in ll) {
    print("$o\t");

  }


  for (var j = 0; j < ll.length; ++j) {
    var o = ll[j];
    print("$o\t");

  }

print("currentList print ----------");
  List<int> contList = const [1,2,3];

  //contList.add(44); // contList 是一个不可变list，不可以修改其中的对象的值

  // const 修饰的时 [1,2,3] list，这个list不可变
  // 如果 const 修饰的是 contList ，contList就不能引用其他list
  //contList.removeAt(0); //  这里也是提示contList是不可变的不可以进行修改
  for (var o in contList) {
    print(" item:$o");
  }


Map m = new Map();
  Map map = {1:2,12:3};
  int value = map[1];
  print("key 1,Value:$value");
  map[1] = 90;
  print("key 1,Value:${map[1]}");
  Map<int,int> map1 = {1:23,4:56};


  // 新的数据类型
  /**
   *  Unicode Runes  特殊字符表示类 使用unicode来表示特殊的字符
   */


  /**
   * Symbol 标识符
   */

  Symbol aaa = #A;
  print(aaa.runtimeType);



}
