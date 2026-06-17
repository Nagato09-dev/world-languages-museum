try {
  throw Error.for_message("Erro Eq");
} catch(e) {
  Log.display(e.get_message());
}