import 'dart:io';

main(){
  print("""Enter your choice
  1- Sum
  2- differance
  3- multiply
  4- Divide""");


  int choice = int.parse(stdin.readLineSync());
  final calculator_manager = Calculator(1);


  if(choice == 1){
    print("Enter number1");
    double x = double.parse(stdin.readLineSync());
    print("Enter number2");
    double y = double.parse(stdin.readLineSync());
    print(calculator_manager.sum(Calculator(x),Calculator(y)));
  }
  else if(choice == 2){
    print("Enter number1");
    double x = double.parse(stdin.readLineSync());
    print("Enter number2");
    double y = double.parse(stdin.readLineSync());
    print(calculator_manager.differance(Calculator(x),Calculator(y)));
  }
  else if(choice == 3){
    print("Enter number1");
    double x = double.parse(stdin.readLineSync());
    print("Enter number2");
    double y = double.parse(stdin.readLineSync());
    print(calculator_manager.multiply(Calculator(x),Calculator(y)));
  }
  else if(choice == 4){
    print("Enter number1");
    double x = double.parse(stdin.readLineSync());
    print("Enter number2");
    double y = double.parse(stdin.readLineSync());
    print(calculator_manager.divide(Calculator(x),Calculator(y)));
  }
}

class Calculator{
    
    double number;
    Calculator(this.number);

  //funcs
  double sum(Calculator num1, Calculator num2){
    return num1 + num2;
  }
  double multiply(Calculator num1, Calculator num2){
    return num1 * num2;
  }
  double differance(Calculator num1, Calculator num2){
    return num1 - num2;
  }
  double divide(Calculator num1, Calculator num2){
    return num1 / num2;
  }
  //ops
  double operator +(Calculator obj){
    return this.number + obj.number;
  }

  double operator -(Calculator obj){
    return this.number - obj.number;
  }

  double operator /(Calculator obj){
    return this.number / obj.number;
  }

  double operator *(Calculator obj){
    return this.number * obj.number;
  }
}
