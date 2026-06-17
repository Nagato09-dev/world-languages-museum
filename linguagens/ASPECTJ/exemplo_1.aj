public aspect Hello {
  pointcut mainMethod() : execution(public static void main(String[]));
  before() : mainMethod() {
    System.out.println("Olá Mundo");
  }
}