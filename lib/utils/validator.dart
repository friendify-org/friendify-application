typedef Validator = String Function(String value);
typedef Validtors = List<Validator>;
typedef ValidatorCreator = Validator Function();

ValidatorCreator isEmailAddress = () {
  return (value) {
    if (value.isEmpty) {
      return "Email can not be empty";
    }
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if (!emailValid) {
      return "Email of user must be an email address";
    }
    return "";
  };
};

ValidatorCreator validPassword = () {
  return (value) {
    if (value.isEmpty) {
      return "Password can not be empty";
    }
    if (value.length < 8) {
      return "Password must have >= 8 character";
    }
    return "";
  };
};

ValidatorCreator validOtpCode = () {
  return (value) {
    if (value.isEmpty) {
      return "Otp code can not be empty";
    }
    if (value.length != 6) {
      return "Otp code must have 6 character";
    }
    return "";
  };
};
