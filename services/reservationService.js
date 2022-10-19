const reservationDao = require("../models/reservationDao");

const createReservation = async (
  statusId,
  hospitalId,
  typeId,
  timeId,
  date,
  patientName,
  patientBirth
) => {
  const getPatient = await reservationDao.getPatient(patientName, patientBirth);
  let patientId = 0;

  if (getPatient.length === 0) {
    await reservationDao.createPatient(patientName, patientBirth);
    const getId = await reservationDao.getPatient(patientName, patientBirth);
    patientId = getId[0].id;
  } else {
    patientId = getPatient[0].id;

    if (getPatient[0].block) {
      const error = new Error("BLOCK_USER");
      error.statusCode = 401;
      throw error;
    }
  }

  const reservationList = await reservationDao.reservationList(
    hospitalId,
    timeId,
    date
  );

  if (reservationList.length === 0) {
    return await reservationDao.createReservation(
      statusId,
      patientId,
      hospitalId,
      typeId,
      timeId,
      date,
      patientName,
      patientBirth
    );
  } else {
    const error = new Error("ALREAD_RESERVAED_TIME");
    error.statusCode = 401;
    throw error;
  }
};

const getReservation = async (reservationId, patientName) => {
  return await reservationDao.getReservation(reservationId, patientName);
};

const updateReservation = async (
  reservationId,
  statusId,
  patientName,
  patientBirth,
  typeId,
  timeId,
  date
) => {
  const getPatient = await reservationDao.getPatient(patientName, patientBirth);
  let patientId = 0;

  if (getPatient.length === 0) {
    await reservationDao.createPatient(patientName, patientBirth);
    const getId = await reservationDao.getPatient(patientName, patientBirth);
    patientId = getId[0].id;
  } else {
    patientId = getPatient[0].id;
  }

  return await reservationDao.updateReservation(
    reservationId,
    statusId,
    patientId,
    typeId,
    timeId,
    date
  );
};

module.exports = {
  createReservation,
  getReservation,
  updateReservation,
};
