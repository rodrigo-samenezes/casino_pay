import 'package:cassino_pay/models/Person.dart';

class Bill {
  late String localName;
  late double total;
  late List<Person> people;
  DateTime? createdAt;

  Bill({
    required this.localName,
    this.total = 0,
    this.people = const [],
    this.createdAt
  });

  double evaluatePartOfPersonIndex(int index) {
    return 0.23;
  }

  double getValueOfPerson(int index) {
    return this.total*this.evaluatePartOfPersonIndex(index);
  }
}