block ()
  error("Erro Dylan");
exception (e :: <error>)
  format-out("Erro capturado");
end block;