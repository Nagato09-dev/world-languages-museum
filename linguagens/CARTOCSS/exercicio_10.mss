#exercicio_layer {
  // Ordenação não é um conceito de estilo direto em CartoCSS.
  // A ordem de renderização é controlada por outras propriedades ou pela ordem das camadas.
  // Exemplo de estilização baseada em um valor que poderia ser 'ordenado':
  [rank=1] { marker-fill: gold; }
  [rank=2] { marker-fill: silver; }
  [rank=3] { marker-fill: bronze; }
}
