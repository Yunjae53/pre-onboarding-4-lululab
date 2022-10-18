const express = require("express");
const hospitalRouter = require("./hospitalRouter");
// const reservationRouter = require("./recordRouter");
const router = express.Router();

router.get("/ping", (req, res) => {
  res.json({ message: "/ pong" });
});

router.use("/hospitals", hospitalRouter);
// router.use("/reservations", reservationRouter);

module.exports = router;
