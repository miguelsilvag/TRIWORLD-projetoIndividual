var estatisticasModel = require("../models/estatisticasModel");

var sessoes = [];

function listar(req, res) {
    var tipo = req.body.tipoServer;
    var ano = req.body.anoServer;
    var posicao = req.body.posiçãoServer;

    estatisticasModel.listar(tipo, ano, posicao)
    .then(function (resultado) {
        if(resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado foi encontrado!")
        }
    }).catch(
        function(erro) {
            console.log(erro);
            console.log("Houve um erro ao realizar a consulta! Erro: ", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        }
    );
}



module.exports = {
    listar
    
}
