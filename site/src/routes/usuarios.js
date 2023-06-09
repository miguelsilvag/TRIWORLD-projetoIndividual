var express = require("express");
var router = express.Router();

var usuarioController = require("../controllers/usuarioController");

router.get("/", function (req, res) {
    usuarioController.testar(req, res);
});

//Recebendo os dados do html e direcionando para a função cadastrar de usuarioController.js
router.post("/cadastrar", function (req, res) {
    usuarioController.cadastrar(req, res);
})

router.post("/autenticar", function (req, res) {
    usuarioController.entrar(req, res);
});


router.post("/cadastrarPontuacao", function (req, res) {
    usuarioController.cadastrarPontuacao(req, res);
})

router.get("/listarPontuacao", function (req, res) {
    usuarioController.listarPontuacao(req, res);
});


module.exports = router;