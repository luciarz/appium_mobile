*** Settings ***
Resource        ../Infra/base.robot

*** Variables ***
${resultado_final}          id=com.hld.anzenbokusucal:id/editText
${btn_adicao}                 id=com.hld.anzenbokusucal:id/op_mul
${btn_subtracao}                id=com.hld.anzenbokusucal:id/op_mul
${btn_multiplicacao}        id=com.hld.anzenbokusucal:id/op_mul
${btn_divisao}              id=com.hld.anzenbokusucal:id/op_mul

*** Keywords ***
Click digito
    [Arguments]     ${digito}
    Click Text      ${digito}

Click Adicao
    Click Element       ${btn_adicao} 

Click Subtracao
    Click Element       ${btn_subtracao}  

Click Multiplicacao
    Click Element       ${btn_multiplicacao}        

Click Divisao
    Click Element       ${btn_divisao}  

Verificar resultado
    [Arguments]         ${resultado_esperado}
    ${resultado}        Get Text            ${resultado_final}
    Should Be Equal as Numbers    ${resultado}        ${resultado_esperado}

Abrir o app
    Log to console      Abriu o app

Clicar em       
    [Arguments]     ${digito}
    Click digito    ${digito}

Clicar na multiplicacao
    Clicar Multiplicacao

Clicar na adicao
    Clicar Adicao

Clicar na subtracao
    Clicar Subtracao

Clicar na divisao
    Clicar Divisao

Dever se apresentado 
    [Arguments]             ${resultado_final}
    Verificar resultado     ${resultado_final}
