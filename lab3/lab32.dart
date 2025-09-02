class Animal {
  void animalSound() {
    print("animal sound");
  }
}

class Cat extends Animal {
  @override
  void animalSound() {
    print("meow");
  }
}

void main() {
  Animal a = Animal();
  a.animalSound();
  Cat c = Cat();
  c.animalSound();
}
