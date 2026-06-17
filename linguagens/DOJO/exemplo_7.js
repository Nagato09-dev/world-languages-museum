try {
  throw new Error("Erro Dojo");
} catch (e) {
  console.log(e.message);
}