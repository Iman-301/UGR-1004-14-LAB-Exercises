import 'dart:io';

void main(){
  print('enetr first num');
  double number1=double.parse(stdin.readLineSync()!);
  print('choose an operation from +, -, *, /');
  String operation=stdin.readLineSync()!;
  print('enter second number');
  double number2=double.parse(stdin.readLineSync()!);
  
  double result;
  switch (operation){
    case '+':
    result=number1+number2;
    break;
    case '-':
    result=number1-number2;
    break;
    case '*':
    result=number1*number2;
    break;
    case '/':
    result=number1/number2;
    break;
    default:
    print('invalid operation');
    return;
  }
  print('the answer is: $result');

}