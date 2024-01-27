import 'dart:io';

void main() {
  bool continueProgram = true;
  while (continueProgram) {
    print("Select an option:");
    print('1:Length conversion:');
    print('2:Temperature conversion:');
    print('3:Time conversion:');
    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        lengthConversion();
        break;
      case 2:
        temperatureConversion();
        break;
      case 3:
        timeConversion();
        break;
      default:
        print('Invalid option.Please try again!');
        break;
    }

    stdout.write('Do you want to continue? (yes/no): ');
    String userInput = stdin.readLineSync()!.toLowerCase();
    continueProgram = userInput == 'yes';
  }
}

void lengthConversion() {
  print("Select a length conversion option:");
  print('1:Meter to Kilometer:');
  print('2:Kilometer to Meter:');
  print('3:Feet to Inches:');
  print('4:Inches to Feet:');
  print('5:Centimeter to Meter:');
  print('6:Meter to Centimeter:');
  int lengthOption = int.parse(stdin.readLineSync()!);
  if (lengthOption == 1) {
    stdout.write('Enter Length in Meter:');
    double length = double.parse(stdin.readLineSync()!);
    double result = length / 1000;
    print("Length in Kilometer:$result");
  } else if (lengthOption == 2) {
    stdout.write('Enter Length in Kilometer:');
    double length = double.parse(stdin.readLineSync()!);
    double result = length * 1000;
    print("Length in Meter:$result");
  }
  if (lengthOption == 3) {
    stdout.write('Enter Length in Feet:');
    double length = double.parse(stdin.readLineSync()!);
    double result = length * 12;
    print("Length in Inches:$result");
  } else if (lengthOption == 4) {
    stdout.write('Enter Length in Inches:');
    double length = double.parse(stdin.readLineSync()!);
    double result = length / 12;
    print("Length in Feet:$result");
  }
  if (lengthOption == 5) {
    stdout.write('Enter Length in Centimeter:');
    double length = double.parse(stdin.readLineSync()!);
    double result = length / 100;
    print("Length in Meter:$result");
  } else if (lengthOption == 6) {
    stdout.write('Enter Length in Meter:');
    double length = double.parse(stdin.readLineSync()!);
    double result = length * 100;
    print("Length in Centimeter:$result");
  }
}

void temperatureConversion() {
  print("Select a temperature conversion program:");
  print('1:Farenheit to Celsius:');
  print('2:Celsius to Farenheit');
  int temperatureOption = int.parse(stdin.readLineSync()!);
  if (temperatureOption == 1) {
    stdout.write('Enter temperature in Farenheit:');
    double temperature = double.parse(stdin.readLineSync()!);
    double result = (temperature * 9 / 5) + 32;
    print("Temperature in Celsius:$result");
  } else if (temperatureOption == 2) {
    stdout.write('Enter temperature in Celsius:');
    double temperature = double.parse(stdin.readLineSync()!);
    double result = (temperature - 32) * 5 / 9;
    print("Temperature in Farenheit:$result");
  }
}

void timeConversion() {
  print("Select a time conversion program:");
  print('1:Seconds to Minutes:');
  print('2:Minutes to Seconds:');
  print('3:Minutes to Hours:');
  print('4:Seconds to Hours:');
  print('5:Milliseconds to Minutes:');
  print('6:Milliseconds to Hours:');
  int timeOption = int.parse(stdin.readLineSync()!);
  if (timeOption == 1) {
    stdout.write('Enter time in Seconds:');
    double time = double.parse(stdin.readLineSync()!);
    double result = time / 60;
    print("Time in minutes:$result");
  } else if (timeOption == 2) {
    stdout.write('Enter time in Minutes:');
    double time = double.parse(stdin.readLineSync()!);
    double result = time * 60;
    print("Time in seconds:$result");
  }
  if (timeOption == 3) {
    stdout.write('Enter time in Minutes:');
    double time = double.parse(stdin.readLineSync()!);
    double result = time / 60;
    print("Time in hours:$result");
  } else if (timeOption == 4) {
    stdout.write('Enter time in Seconds:');
    double time = double.parse(stdin.readLineSync()!);
    double result = time / 3600;
    print("Time in hours:$result");
  }
  if (timeOption == 5) {
    stdout.write('Enter time in Milliseconds:');
    double time = double.parse(stdin.readLineSync()!);
    double result = time / 60000;
    print("Time in minutes:$result");
  } else if (timeOption == 6) {
    stdout.write('Enter time in Milliseconds:');
    double time = double.parse(stdin.readLineSync()!);
    double result = time / 36000000;
    print("Time in hours:$result");
  }
}
