// Amiga E usa verificação de erro via exceções básicas
PROC main() HANDLE
  Throw("ERRO", 1)
EXCEPT
  WriteF('Erro capturado\n')
ENDPROC