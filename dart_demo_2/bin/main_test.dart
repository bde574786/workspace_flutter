String? descriptiona1; // 가능
// String descriptiona1; 불가능
// String descriptional2 = null;
String? descriptional2 = null; // 가능

void main(List<String> args) {
  print(result);
}

var count = 0;
int fibonacci(int n) {
  print(count);

  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(5);
