# Use try/catch para lidar com uma divisão por zero simulada
try
  throw new Error('Divisão por zero')
catch e
  console.log e.message