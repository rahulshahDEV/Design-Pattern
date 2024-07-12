enum EmployeeType { programmer, hrmanager, security }

abstract class Employee {
  void level();
  void salary();
  void work();
  // factory method pattern
  factory Employee(EmployeeType type) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hrmanager:
        return HrManager();
      case EmployeeType.security:
        return SecurityGuard();
      default:
        return CEO();
    }
  }
}

class CEO implements Employee {
  @override
  void work() {
    print('CEO');
  }

  @override
  void level() {
    // TODO: implement level
  }

  @override
  void salary() {
    // TODO: implement salary
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print('Coding...');
  }

  @override
  void level() {
    // TODO: implement level
  }

  @override
  void salary() {
    // TODO: implement salary
  }
}

class HrManager implements Employee {
  @override
  void work() {
    print('recruiting....');
  }

  @override
  void level() {
    // TODO: implement level
  }

  @override
  void salary() {
    // TODO: implement salary
  }
}

class SecurityGuard implements Employee {
  @override
  void work() {
    print('Guarding....');
  }

  @override
  void level() {
    // TODO: implement level
  }

  @override
  void salary() {
    // TODO: implement salary
  }
}
