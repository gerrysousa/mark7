#language: pt

@sprint3
Funcionalidade: Remover uma tarefa
    Para que eu possa deixar meu painel organizado
    Sendo um usuário que possui uma tarefa indesejada
    Posso excluir tarefas

    @login 
    Cenario: Apagar uma tarefa

        Dado que tenho uma tarefa indesejada
            | nome | Tarefa Indesejada |
            | data | 25/06/2018        |
        Quando eu solicito a exclusão desta tarefa
        E confirmo a ação de exclusão
        Então esta tarefa não deve ser exibida na lista

    @login @teste
    Cenario: Desistir da remoção

        Dado que tenho uma tarefa indesejada
            | nome | Tarefa Desejada |
            | data | 25/06/2018      |
        Quando eu solicito a exclusão desta tarefa
        Mas eu cancelo esta ação
        Então esta tarefa permanece na lista