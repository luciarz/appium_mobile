*** Settings ***
Resource            ../Pages/CalculatorPage.robot
#Suite Setup         Open Test Application
#Suite Teardown      Close Test Application


*** Test Cases ***
Realizar Multiplicacao
    Abrir o app
    Clicar em       3
    Clicar na multiplicacao
    Clicar em       5
    Clicar em       =
    Dever se apresentado    15
    
Realizar Adicao
    Abrir o app
    Clicar em       3
    Clicar na adicao
    Clicar em       5
    Clicar em       =
    Dever se apresentado    8
    
Realizar Subtracao
    Abrir o app
    Clicar em       5
    Clicar na subtracao
    Clicar em       3
    Clicar em       =
    Dever se apresentado    2

Realizar Divisao
    Abrir o app
    Clicar em       15
    Clicar na divisao
    Clicar em       3
    Clicar em       =
    Dever se apresentado    5


