void main(){

  SingletonData varA = SingletonData();
  SingletonData varB = SingletonData();
  print(varA.test);
  varA.setTest('a');
  print(varA.test);
  print(varB.test);


}

class SingletonData{
  SingletonData.internal();
  static final _singleton = SingletonData.internal();

  String? _test;
  String? get test=>_test;

  void setTest(var newValue){
    _test = newValue;
  }
  factory SingletonData(){
    return _singleton;
  }
}