try
  JSON.parse('invalido')
catch e
  console.log "Erro: #{e.message}"