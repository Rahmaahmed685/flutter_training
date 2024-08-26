class Validator {
  static String? validateName(String? value) {
    if (value!.isEmpty) {
      return "Field is required";
    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
      return "Please enter correct name";
    } else {
      return null;
    }
  }
  static String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Field is required";
    } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return "Please Enter Valid Email";
    } else {
      return null;
    }
  }

  static bool passwordValidate(String pass) {
    String password = pass.trim();
    if (RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  static String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Field is required';
    } else if(value.length < 6){
      return "Password must be at least 6 characters";
    } else {
      bool result = passwordValidate(value);
      if (result) {
        return null;
      } else {
        return "password should contain capital,small,special characters";
      }
    }
  }

  static String? validateAnotherField(String? value) {
    if (value!.isEmpty) {
      return "Field is required";
    } else {
      return null;
    }
  }
}