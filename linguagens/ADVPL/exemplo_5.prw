#Include 'Protheus.ch'

User Function Calc()
    Local nRes := Somar(10, 20)
    Alert("Soma: " + cValToChar(nRes))
Return

Static Function Somar(n1, n2)
Return (n1 + n2)
