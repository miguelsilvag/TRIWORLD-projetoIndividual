var database = require("../database/config");

function listar() {
    var instrucao = `SELECT * FROM estatisticas WHERE tipo = ${tipo};`;
    return database.executar(instrucao);
}

module.exports = {
    listar,
   
}