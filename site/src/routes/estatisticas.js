var express = require("express");
var router = express.Router();

var estatisticaController = require("../controllers/estatisticasController;");

router.get("/listar", function(req, res) {
    estatisticaController.listar(req, res);
});


module.exports = router;