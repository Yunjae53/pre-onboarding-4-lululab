const hospitalService = require("../services/hospitalService");

// 예약 가능한 병원 조회
const getHospitals = async (req, res) => {
  const { hospitalTypeId, address, time, date } = req.body;
  console.log("teaetea1");
  if (!(hospitalTypeId && address && time && date)) {
    const error = new Error("INPUT_ERROR");
    error.statusCode = 400;
    throw error;
  }

  const hospitals = await hospitalService.getHospitals(
    hospitalTypeId,
    address,
    time,
    date
  );
  return res
    .status(200)
    .json({ message: "GET_HOSPITALS_SUCCESS", data: hospitals });
};

// 특정 병원 예약 일정 조회
const getAvailable = async (req, res) => {
  const hospitalId = req.params.hospitalId;
  const { date } = req.body;

  if (!(hospitalId && date)) {
    const error = new Error("INPUT_ERROR");
    error.statusCode = 400;
    throw error;
  }

  const availableTime = await hospitalService.getAvailable(hospitalId, date);

  // const test = JSON.parse(availableTime).time;
  // console.log("test=", test);

  return res
    .status(200)
    .json({ message: "GET_AVAILABLE_TIME_SUCCESS", data: availableTime });
};

module.exports = {
  getHospitals,
  getAvailable,
};
