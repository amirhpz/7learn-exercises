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

class Student extends Person with Courses{
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

class Teacher extends Person with Courses{
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

mixin Courses {
  List<String> _courses=[];

  List<String> get courses => _courses;

  set courses(List<String> newCourses){
    _courses = newCourses;
  }

  void setLessons(){

  }
}

double f2c(double f)=> (f-32)/1.8;

void cube(List<double> list){
  List<double> result=[];
  for(double item in list){
    result.add(item*item*item);
  }
  print(result);
}
class Course{
  List<int> scores =[50, 96, 57, 68, 52, 87, 97, 43, 81, 30, 75, 60, 59];
  double get average {
    return (scores.reduce((a,b)=>a+b))/ scores.length;
  }

  bool isPassed(int score){
    if(score<60){
      return false;
    }
    else{
      if(score< average-5){
        return false;
      }
      else return true;
    }
  }
}


void main(){
  // var person = Teacher('ali', 203, 09121640685, 'address', 200000, Certificate.master);
  // person.printInfo();
  // print(person.work());
  // print(f2c(10));
  // cube([3,2,1]);

  // List<int> mylist = [4,2,5,1,6,8,4,3,5];
  // int five = 5;
  // for(int i=0;i<mylist.length;i++){
  //   mylist[i]+=five;
  // }
  // List newlist = mylist.where((e)=>(e%2==0)).toList();
  // print(newlist);

  // var course = new Course();
  // print(course.average);
  // print(course.isPassed(70));

  // String flutter = '        Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017.         ';
  // List<String> a = flutter.split('.');
  // int b = flutter.lastIndexOf('Flutter');
  // bool c = flutter.contains('Facebook');
  // String d =flutter.trimLeft();

  List fruits = <String> ['pineapple', 'lime', 'apricot', 'cranberry', 'watermelon', 'apple'];
  List newFruits = <String> ['apple', 'banana', 'peach', 'coconut', 'lemon', 'fig'];
  fruits.sort();
  fruits.insert(3, 'kiwi');
  fruits.remove('watermelon');
  int limeIndex = fruits.indexOf('lime');
  List combinedFruits = (fruits.toSet()..addAll(newFruits)).toList();
  List num = combinedFruits.map(((item)=>item.length)).toList();
  print(combinedFruits);
  print(num);
}