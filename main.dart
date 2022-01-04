import 'dart:io';

import 'dart:math';

void main() {
  // conceived();
  guess();
}

int min = 0;
int max = 100;
var counter = 1;
conceived([int x = 50]){
  counter++;
  print('Is it  ${x}?');
  var inputNum = stdin.readLineSync()!;
  if(inputNum == 'less'){
    max = x;
    x = min + (Random().nextInt(max-min));
    conceived(x);
  }else if(inputNum == 'greater'){
    min = x;
    x = min + (Random().nextInt(max-min));
    conceived(x);
  }else if(inputNum == 'yes'){
    print('Got it in ${counter} steps!');
    return;
  }
}

var progNum = Random().nextInt(100);
var progNumCount = 1;
guess(){
  progNumCount++;

  print('Угадай число :)');

  var answer = int.parse(stdin.readLineSync()!);
  if (progNum < answer) {
    print('less');
    guess();
  }else if(progNum > answer){
    print('greater');
    guess();
  }else if(progNum == answer){
    print('yes, got it in ${progNumCount} steps!');
    return;
  }
}