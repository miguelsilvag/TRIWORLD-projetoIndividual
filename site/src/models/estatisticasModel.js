var database = require("../database/config");

function listar(tipo, ano, posicao) {
    var instrucao = `SELECT * FROM estatisticas WHERE tipo = '${tipo}' AND ano = '${ano}' AND posição = '${posicao}'`;
    return database.executar(instrucao);
}


function buscarUltimasMedidas(idteste) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT * FROM teste`;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select golsMarcados, golsSofridos, mediaDePublico from teste join estatisticas on fkteste =  ${idteste};`;
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
