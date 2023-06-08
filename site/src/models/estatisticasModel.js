var database = require("../database/config");

function listar(tipo, ano, posicao) {
    var instrucao = `SELECT * FROM estatisticas WHERE tipo = '${tipo}' AND ano = '${ano}' AND posição = '${posicao}'`;
    return database.executar(instrucao);
}


function buscarUltimasMedidas(iddados) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT * FROM dados`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select * from dados join estatisticas on fkdados = idestatisticas where iddados = fkdados;`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}


   

module.exports = {
    listar,
    buscarUltimasMedidas
   
}
