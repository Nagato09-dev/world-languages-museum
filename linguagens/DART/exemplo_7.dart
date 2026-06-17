void main() {
  try {
    int res = 12 ~/ 0;
  } catch (e) {
    print("Erro: $e");
  }
}