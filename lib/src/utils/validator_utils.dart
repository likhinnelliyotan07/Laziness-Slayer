class ValidatorUtils {
  // Email validation
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email address";
    }
    return null;
  }

  // Password validation
  static String? validatePassword(String? value, {int minLength = 8}) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < minLength) {
      return "Password must be at least $minLength characters long";
    }
    return null;
  }

  // Confirm Password validation
  static String? validateConfirmPassword(
      String? value, String? originalPassword) {
    if (value == null || value.isEmpty) {
      return "Confirm password is required";
    }
    if (value != originalPassword) {
      return "Passwords do not match";
    }
    return null;
  }

  // First Name validation
  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return "First name is required";
    }
    if (value.length < 2) {
      return "First name must be at least 2 characters long";
    }
    return null;
  }

  // Last Name validation
  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return "Last name is required";
    }
    if (value.length < 2) {
      return "Last name must be at least 2 characters long";
    }
    return null;
  }

  // Number validation
  static String? validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Number is required";
    }
    if (!RegExp(r'^\d+$').hasMatch(value)) {
      return "Enter a valid number";
    }
    return null;
  }

  // Date of Birth validation
  static String? validateDateOfBirth(String? value) {
    if (value == null || value.isEmpty) {
      return "Date of birth is required";
    }
    try {
      DateTime.parse(value);
    } catch (e) {
      return "Enter a valid date in YYYY-MM-DD format";
    }
    return null;
  }

  // Age validation
  static String? validateAge(String? value,
      {int minAge = 18, int maxAge = 100}) {
    if (value == null || value.isEmpty) {
      return "Age is required";
    }
    final int? age = int.tryParse(value);
    if (age == null || age < minAge || age > maxAge) {
      return "Enter a valid age between $minAge and $maxAge";
    }
    return null;
  }

  // Quantity validation
  static String? validateQuantity(String? value,
      {int min = 1, int max = 1000}) {
    if (value == null || value.isEmpty) {
      return "Quantity is required";
    }
    final int? quantity = int.tryParse(value);
    if (quantity == null || quantity < min || quantity > max) {
      return "Enter a quantity between $min and $max";
    }
    return null;
  }

  // TextField validation with min/max length
  static String? validateTextField(String? value,
      {int minLength = 1, int maxLength = 100}) {
    if (value == null || value.isEmpty) {
      return "Field is required";
    }
    if (value.length < minLength) {
      return "Field must be at least $minLength characters long";
    }
    if (value.length > maxLength) {
      return "Field must be at most $maxLength characters long";
    }
    return null;
  }
}
