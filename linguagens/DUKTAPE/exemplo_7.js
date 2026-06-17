try {
  throw new Error("Erro Duktape");
} catch (e) {
  print(e.stack || e);
}