// task 1

void main() {
  List<int> numbers = [10, 20, 23, 45, 96, 10, 21, 22, 21];

  List<int> uniqueNumbers =
      numbers.toSet().toList(); //  list to a Set and then back to a List

  uniqueNumbers.sort((a, b) => b.compareTo(a)); // Reverse

  print(uniqueNumbers);
}
