String limitLength(String value, int length) {
  if(value.length < length) return value;

  return "${value.substring(0, length - 3)}...";
}