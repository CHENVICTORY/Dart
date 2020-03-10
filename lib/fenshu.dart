class Fenshu {
  num _fenzi;
  num _fenmu;

  Fenshu(this._fenzi, this._fenmu);

  Fenshu.fromMap(Map m)
      : _fenzi = m['fenzi'],
        _fenmu = m['fenmu'];

  Fenshu operator +(Fenshu f2) {



    num fenZiTarget = _fenzi*f2._fenmu + f2._fenzi*_fenmu;
    num fenMuTarget = _fenmu *f2._fenmu;
    return Fenshu(fenZiTarget, fenMuTarget);
  }

  Fenshu operator *(Fenshu f2) {
    return Fenshu(_fenzi * f2._fenzi, _fenmu * f2._fenmu);
  }

  void printSelf() {
    print("print self: $_fenzi, $_fenmu");

    print(" es: ${_fenzi % _fenmu}");
    if (_fenzi % _fenmu == 0) {
      print("current is  :${_fenzi / _fenmu}");
    } else {
      print(" can not be divided");
      int gongyue = findMax(_fenzi, _fenmu);
      print("gongyue:$gongyue");
      if (gongyue > 1) {
        _fenzi = _fenzi / gongyue;
        _fenmu = _fenmu / gongyue ;
        print("$_fenzi,$_fenmu");
      }
      print("current is 2: $_fenzi \/ $_fenmu");
    }
  }

  num findMax(num1, num2) {
    print("find max:");
    int max = 1;
    num maxmum = num1;
    if (num2 > num1) {
      maxmum = num2;
    }
    maxmum = maxmum / 2 + 1;
    for (int i = 1; i < maxmum; i++) {
      if ((num1 % i == 0) && (num2 % i == 0)) {
        print(" for max i:$i");
        max = i;
      }
    }

    print("max divicer is :$max");
    return max;
  }
}

void main() {
  Fenshu f1 = new Fenshu(14, 7);
  f1.printSelf();
  print(" result is :$f1");

  Fenshu f2 = Fenshu(3, 9);
  f2.printSelf();
  Fenshu f3 = f1 *f2;
  f3.printSelf();

  Fenshu f4 =f1 + f2;
  f4.printSelf();
}
