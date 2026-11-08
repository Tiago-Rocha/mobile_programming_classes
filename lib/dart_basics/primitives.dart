void main() {
  NumbersDemo.run();
  StringsDemo.run();
  BooleansDemo.run();
  ListsDemo.run();
  SetsDemo.run();
  MapsDemo.run();
  TypeCheckingDemo.run();
}

class NumbersDemo {
  static void run() {
    int integerNumber = 42;
    double floatingNumber = 3.14159;
    num genericNumber = 100.2;

    print('Integer: $integerNumber');
    print('Double: $floatingNumber');
    print('Num: $genericNumber');
  }
}

class StringsDemo {
  static void run() {
    int integerNumber = 42;
    String singleQuoteString = 'Hello World';
    String doubleQuoteString = "Dart Programming";
    String multilineString = '''
    This is a
    multiline string
  ''';
    String interpolatedString = 'The answer is $integerNumber';

    print('Single quote: $singleQuoteString');
    print('Double quote: $doubleQuoteString');
    print('Multiline: $multilineString');
    print('Interpolated: $interpolatedString');
  }
}

class BooleansDemo {
  static void run() {
    bool isTrue = true;
    bool isFalse = false;
    bool? nullableBool = true;

    print('True: $isTrue');
    print('False: $isFalse');
    print('Nullable bool: $nullableBool');
  }
}

class ListsDemo {
  static void run() {
    List<int> intList = [1, 2, 3, 4, 5];
    List<String> stringList = ['apple', 'banana', 'orange'];
    List<Object> mixedList = [1, 'hello', true, 3.14];
    var growableList = <String>[];

    print('Int list: $intList');
    print('String list: $stringList');
    print('Mixed list: $mixedList');
    print('Growable list (initially empty): $growableList');
  }
}

class SetsDemo {
  static void run() {
    Set<String> stringSet = {'red', 'green', 'blue', 'blue'};
    List<int> numbersWithDuplicates = [1, 2, 3, 3];
    Set<int> dedupedIntSet = {...numbersWithDuplicates};

    print('String set: $stringSet');
    print('Int set created from $numbersWithDuplicates: $dedupedIntSet');
  }
}

class MapsDemo {
  static void run() {
    Map<String, int> stringIntMap = {'first': 1, 'second': 2, 'third': 3};
    Map<String, dynamic> mixedMap = {
      'name': 'John',
      'age': 30,
      'isActive': true,
    };

    print('String-Int map: $stringIntMap');
    print('Mixed map: $mixedMap');
  }
}

class TypeCheckingDemo {
  static void run() {
    Object integerNumber = 42;
    Object floatingNumber = 3.14159;
    Object fruits = ['apple', 'banana'];

    print('integerNumber is int: ${integerNumber is num}');
    print('floatingNumber is double: ${floatingNumber is double}');
    print('fruits is List<String>: ${fruits is List<String>}');
  }
}
