
FOR <variavel> := <valorInicial> TO <valorFinal> [STEP <passo>]
    <bloco de comandos>
    [LOOP]
    [EXIT]
NEXT <variavel>

// Exibe de 1 a 5
FOR nI := 1 TO 5
    ConOut("Valor: " + Str(nI, 2))
NEXT nI

// 15 12 9 6 3 0
FOR nCont := 15 TO 0 STEP -3
    MsgAlert(Str(nCont, 3))
NEXT nCont

Local aNomes := {"Ana", "Bruno", "Carlos"}

FOR nI := 1 TO Len(aNomes)
    ConOut("Nome: " + aNomes[nI])
NEXT nI

Local nSoma := 0
FOR nCnt := 1 TO 10
    nSoma += nCnt
NEXT nCnt
// Resultado: nSoma = 55


FOR nI := 1 TO 3
    FOR nJ := 1 TO 3
        ConOut(Str(nI, 2) + " x " + Str(nJ, 2) + " = " + Str(nI * nJ, 2))
    NEXT nJ
NEXT nI


//Cenário real: percorrer aCols ignorando linhas excluídas
FOR nI := 1 TO Len(aCols)
    // Se a linha foi marcada como excluída, pula
    If aCols[nI, Len(aCols[nI])] == "*"
        Loop
    EndIf

    // Processa os dados da linha
    aCols[nI, GetFieldPos("D1_PEDIDO")] := "PED001"
NEXT nI
