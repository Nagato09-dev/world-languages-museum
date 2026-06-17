(condition-case err
    (error "Erro Emacs")
  (error (message "Erro capturado: %s" err)))