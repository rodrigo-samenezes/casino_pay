import 'package:cassino_pay/models/Person.dart';

const int BASE_POINTS = 500;

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

  void addPerson(String name) {
    people.add(Person(name: name, coins: BASE_POINTS));
  }

  double evaluatePartOfPersonIndex(int index) {
    Person person = people[index];
    int maxPoints = BASE_POINTS*people.length;
    int baseTotalPoints = (maxPoints - BASE_POINTS)*people.length;
    int invertedPoints = maxPoints - person.coins;
    return invertedPoints/baseTotalPoints;
  }

  double getValueOfPerson(int index) {
    return this.total*this.evaluatePartOfPersonIndex(index);
  }
}