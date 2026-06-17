try do
  raise "Erro"
rescue
  e -> IO.puts(e.message)
end