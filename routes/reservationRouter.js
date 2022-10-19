const express = require("express");
const reservationController = require("../controllers/reservationController");

const router = express.Router();

router.post("", reservationController.createReservation);
router.get("/", reservationController.getReservation);
router.patch("/:reservationId", reservationController.updateReservation);

module.exports = router;
