try {
  throw new Error('Algo deu errado');
} catch (e) {
  console.error(e.message);
}