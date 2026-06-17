-- Alloy não tem loops, usa quantificadores
fact { all n: Node | n.value > 0 }