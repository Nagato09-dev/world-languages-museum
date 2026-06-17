try {
  throw new Error("Erro");
} catch (e:Error) {
  trace(e.message);
}