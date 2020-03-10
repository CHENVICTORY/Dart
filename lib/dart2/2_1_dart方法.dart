

void  bublle(F f){
    f(1,'bb');
}



 // 使用typedef关键字定义一个类型， 定义一个F类型，
 // 实际上F类型就是一个函数，接收两个参数，一个int，一个String，返回一个void
typedef void F(int a ,String b );


/**
 * 方法与对象
 *
 */
void main(){
  Function bubble = bublle;// 所有方法都可以视为一个对象，可以直接赋值给Function
  bubble((int a ,String b){
    print("int is :$a");
    print("String is :$b");
  });







}

