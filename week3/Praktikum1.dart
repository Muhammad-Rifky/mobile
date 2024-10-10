void main() {
  //langkah1();
  //langkah2();
  //bag3Langkah1dan3();
  bag4Langkah1dan3();
}

void langkah1() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }
}

void langkah2() {
  String test = "true";
  if (test == "true") {
    print("kebenaran");
  }
}

void bag3Langkah1dan3() {
  //bagian 3 langkah 1
  int counter = 0;
  while (counter < 33) {
    print(counter);
    counter++;
  }

  do {
    print(counter);
    counter++;
  } while (counter < 77);
}

void bag4Langkah1dan3() {
  for (int index = 10; index < 27; index++) {
    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
