void main() {
  List<int> origianlList = [3, 5, 2, 6, 8,  -1,9, 23, 5];

  int length = origianlList.length;

  for (int i = 0; i < origianlList.length; ++i) {
    for (var j = 0; j < origianlList.length - i - 1; ++j) {
      if (origianlList[j] > origianlList[j + 1]) {
        int change = origianlList[j];
        origianlList[j] =  origianlList[j + 1] ;
        origianlList[j + 1] = change;
      }
    }

  }
  print(origianlList);
}
