const express = require("express");
const hospitalController = require("../controllers/hospitalController");

const router = express.Router();

router.get("", hospitalController.getHospitals);
router.get("/:hospitalId", hospitalController.getAvailable);

module.exports = router;
