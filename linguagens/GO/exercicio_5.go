// Exercício 5: Contagem Regressiva - Faça uma contagem regressiva de 10 até 0, exibindo cada número e 'FOGO!' ao final.

package main
import "fmt"
func main() {
    for i := 10; i >= 0; i-- {
        fmt.Println(i)
    }
    fmt.Println("FOGO!")
}
