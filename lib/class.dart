void main(){
  var sakib = Human();
  print(sakib.name);
  print(sakib.phone);
  sakib.name = "Nazmus-Sakib";
  print(sakib.name);
}

class Human{
  Human();
  var name = "Abdullah";
  var phone = "01716260866";
}