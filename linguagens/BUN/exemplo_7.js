try {
  throw new Error("Erro");
} catch (e) {
  console.error(e.message);
}