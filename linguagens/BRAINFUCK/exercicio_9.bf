 Exercício 9: Geração de Senha - Gere uma senha aleatória de 8 caracteres (letras e números).

let senha = Math.random().toString(36).slice(-8);
console.log(senha);
