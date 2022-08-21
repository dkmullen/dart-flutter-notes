class ValidationMixin {
  String? validateEmail(value) {
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value.length < 4) {
      return 'Minimum length: 4 characters';
    }
    return null;
  }
}
