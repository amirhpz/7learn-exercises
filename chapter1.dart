abstract class Person{
  final String _name;
  final double _id;
  final double _tel;
  final String _address;
  Person(this._name,this._id,this._tel,this._address);

  String get name=> _name;
  double get id => _id;
  double get tel => _tel;
  String get address => _address;

  void printInfo();
  String work();
}

class Student extends Person {
  final double stid;
  final String field;
  Student(super.name, super.id, super.tel, super.address, this.stid, this.field);
  Student.English(super.name,super.id,super.tel,super.address,this.stid, {this.field='English literature'});

  @override
  void printInfo(){
    print('name: $name');
    print('phone number: $tel');
    print('id: $id');
    print('address: $address');
    print('student id: $stid');
    print('field of Study: $field');
  }
  @override
  String work(){
    return 'Studying';
  }
}

class Teacher extends Person {
  final double salary;
  final Certificate degree;
  Teacher(super.name, super.id, super.tel, super.address, this.salary, this.degree);

  @override
  void printInfo() {
    print('name: $name,id: $id,phone: $tel,address: $address,salary: $salary,degree: $degree');
  }

  @override
  String work() {
    return 'teaching';
  }
}

enum Certificate {
  diploma,
  bachelor,
  master,
  phd,
}

void main(){
  var person = Teacher('ali', 203, 09121640685, 'address', 200000, Certificate.master);
  person.printInfo();
  print(person.work());
}