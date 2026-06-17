#Include 'Protheus.ch'

User Function Cond()
    Local nVal := 15
    
    If nVal > 10
        MsgAlert("Maior que 10")
    Else
        MsgAlert("Menor ou igual a 10")
    EndIf
Return
