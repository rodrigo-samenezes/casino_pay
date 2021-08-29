class Person {
  final String name;
  final int coins;

  Person({required this.name, this.coins = 500});

  @override
  String toString() {
    return 'Person{name: $name, coins: $coins}';
  }
}
