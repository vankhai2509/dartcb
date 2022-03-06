String s1 = "How are you?";
String s2 = "I\'m fine";
var s3 = "$s1 - $s2" ;
int x = 10;
int y = x*2;
//array
List<int> numbers = [1,2,3,6,8,19];
List<String> stringNumbers = numbers.map((number){
  return 'value = $number';
}).toList();