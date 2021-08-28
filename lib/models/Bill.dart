import 'package:cassino_pay/models/Person.dart';

class Bill {
  late double total;
  late List<Person> people;
  DateTime? createdAt;

  Bill({
    this.total = 0,
    this.people = const []
  });
}