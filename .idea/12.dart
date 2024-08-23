enum Jalali {
  farvardin,
  ordibehesht,
  khordad,
  tir,
  mordad,
  shahrivar,
  mehr,
  aban,
  azar,
  dey,
  bahman,
  esfand,
}

extension JalaliExtension on Jalali{
  String get name{
    switch (this){
      case Jalali.farvardin:
        return 'فروردین';
        break;
      case Jalali.ordibehesht:
        return 'اردیبهشت';
        break;
      case Jalali.khordad:
        return 'خرداد';
        break;
      case Jalali.tir:
        return 'تیر';
      case Jalali.mordad:
        return 'مرداد';
      case Jalali.shahrivar:
        return 'شهریور';
      case Jalali.mehr:
        return 'مهر';
      case Jalali.aban:
        return 'آبان';
      case Jalali.azar:
        return 'آذر';
      case Jalali.dey:
        return 'دی';
      case Jalali.bahman:
        return 'بهمن';
      case Jalali.esfand:
        return 'اسفند';
      default:
        return 'نداریم!';
    }
  }
  int get dayCount{
    switch(this){
      case Jalali.farvardin:
      case Jalali.ordibehesht:
      case Jalali.khordad:
      case Jalali.tir:
      case Jalali.mordad:
      case Jalali.shahrivar:
        return 31;
      case Jalali.mehr:
      case Jalali.aban:
      case Jalali.azar:
      case Jalali.dey:
      case Jalali.bahman:
        return 30;
      case Jalali.esfand:
        return 29;
    }
  }
}
void main(){
  var test = Jalali.esfand.dayCount;
  print(test);
}