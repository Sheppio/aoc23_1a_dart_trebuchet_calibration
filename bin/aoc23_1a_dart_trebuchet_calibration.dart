import 'dart:async';
import 'dart:io';

void main(List<String> arguments) async {
  // https://adventofcode.com/2023/day/1/input
  var input = await File('assets/input.txt')
      .readAsString()
      .then((value) => value.split('\n'));
  print(input);
  var sum = 0;
  for (var element in input) {
    var nums = <int>[];
    for (var char in element.split('')) {
      var tmp = int.tryParse(char);
      if (tmp != null) nums.add(tmp);
    }
    final first = nums.first;
    final last = nums.last;
    final calibCode = int.parse('$first$last');
    sum += calibCode;
    print('$element --> ${nums.join()} --> $calibCode --> $sum');
  }
  print(
      "\n${''.padLeft(21, '-')}\nThe answer is '$sum'\n${''.padLeft(21, '-')}");
}
