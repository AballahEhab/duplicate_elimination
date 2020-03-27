import 'dart:io';

main(List<String> arguments){

  print('\n**********~Welcome to Duplicate Elimination~**********\n');

  List non_duplicates = List();

  bool is_a_duplicate ;

  for(int counter = 0 ; counter<5 ; counter++ ){

    is_a_duplicate = false;

    print('\nPlease enter a number between 10 and 100 ,inclusive.');

    num input = num.parse(stdin.readLineSync()) ;

    if(input >= 10 && input <= 100 ){

      for(int index = 0 ; index< non_duplicates.length; index++){

        if(input == non_duplicates[index]){

          is_a_duplicate = true;

        }
      }

      if(!is_a_duplicate){
        non_duplicates.add(input);
      }
    }else{
      print('\nSorry, The number you entered is out of range ,try agian');
      counter--;
    }
    print(non_duplicates);
  }
}