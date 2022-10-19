const reservationService = require("../services/reservationService");

// 병원 예약 등록
const createReservation = async (req, res) => {
  const {
    statusId,
    hospitalId,
    typeId,
    timeId,
    date,
    patientName,
    patientBirth,
    email,
  } = req.body;
  if (
    !(
      statusId &&
      hospitalId &&
      typeId &&
      timeId &&
      date &&
      patientName &&
      patientBirth &&
      email
    )
  ) {
    const error = new Error("INPUT_ERROR");
    error.statusCode = 400;
    throw error;
  }

  await reservationService.createReservation(
    statusId,
    hospitalId,
    typeId,
    timeId,
    date,
    patientName,
    patientBirth,
    email
  );
  return res.status(200).json({ message: "CREATE_RESERVATION_SUCCESS" });
};

// 예약 조회
const getReservation = async (req, res) => {
  const { reservationId, patientName } = req.query;

  const reservation = await reservationService.getReservation(
    reservationId,
    patientName
  );

  return res
    .status(200)
    .json({ message: "GET_AVAILABLE_TIME_SUCCESS", data: reservation });
};

// 예약 변경
const updateReservation = async (req, res) => {
  const reservationId = req.params.reservationId;
  const { statusId, patientName, patientBirth, typeId, timeId, date } =
    req.body;

  if (!(statusId && patientName && patientBirth && typeId && timeId && date)) {
    const error = new Error("INPUT_ERROR");
    error.statusCode = 400;
    throw error;
  }

  await reservationService.updateReservation(
    reservationId,
    statusId,
    patientName,
    patientBirth,
    typeId,
    timeId,
    date
  );
  return res.status(200).json({ message: "UPDATE_RESERVATION_SUCCESS" });
};

module.exports = {
  createReservation,
  getReservation,
  updateReservation,
};
