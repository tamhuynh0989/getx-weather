class ValidationResult {
  ValidationResult({required this.isValid, required this.errorMessage});

  bool isValid;
  String? errorMessage;

  static ValidationResult ok() {
    return ValidationResult(isValid: true, errorMessage: null);
  }

  static ValidationResult error(String errorMsg) {
    return ValidationResult(isValid: false, errorMessage: errorMsg);
  }
}
