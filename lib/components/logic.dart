String tampil1 = "Tap here", tampil2 = "Tap here", operat  = "+", hasil = "Result";
int kincir = 0;
var temp;

void shift(int a) {
  kincir = a;
}

String input(String a) {
  if (kincir == 0) {
    tampil1 = a;
    return tampil1;
  }
  else {
    tampil2 = a;
    return tampil2;
  }
}

String oper(String op) {
  operat = op;
  return operat;
}

String hitung() {
  switch (operat) {
    case "-" :
      temp = int.parse(tampil1)-int.parse(tampil2);
      break;
    case "*" :
      temp = int.parse(tampil1)*int.parse(tampil2);
      break;
    case "/" :
      temp = int.parse(tampil1)/int.parse(tampil2);
      break;
    default:
      temp = int.parse(tampil1)+int.parse(tampil2);
    break;
  }
  hasil = "$temp";
  return hasil;
}