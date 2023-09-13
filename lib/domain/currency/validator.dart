String? currencyValidator(String? input) {
  if (input == null) {
    return 'Value is empty';
  }
  if (double.tryParse(input) == null) {
    return "Only digits and a decimal point are allowed";
  }
  return null;
}
