try {
  throw new Error("Erro Deno");
} catch (e) {
  console.error(e.message);
}