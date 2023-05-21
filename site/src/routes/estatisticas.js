var express = require("express");
var router = express.Router();

var estatisticasController = require("../controllers/estatisticasController");

router.get("/listar", function(req, res) {
    estatisticasController.listar(req, res);
});

router.post("/listar", function (req, res) {
    estatisticasController.listar(req, res);
})

router.get("/listar/:idteste", function (req, res) {
    estatisticasController.buscarUltimasMedidas(req, res);
});




module.exports = router;