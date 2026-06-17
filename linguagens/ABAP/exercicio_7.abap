TRY.
    DATA(res) = 1 / 0.
  CATCH cx_sy_zerodivide.
    WRITE 'Erro'.
ENDTRY.