const reservationDao = require("../models/reservationDao");

const createReservation = async (
  statusId,
  userId,
  hospitalId,
  typeId,
  timeId,
  date,
  patientName,
  patientBirth
) => {
  return await reservationDao.createReservation(
    statusId,
    userId,
    hospitalId,
    typeId,
    timeId,
    date,
    patientName,
    patientBirth
  );
};

const getReservation = async (reservationId, patientName) => {
  return await reservationDao.getReservation(reservationId, patientName);
};

const updateReservation = async (
  reservationId,
  statusId,
  userId,
  hospitalId,
  typeId,
  timeId,
  date,
  patientName,
  patientBirth
) => {
  return await reservationDao.updateReservation(
    reservationId,
    statusId,
    userId,
    hospitalId,
    typeId,
    timeId,
    date,
    patientName,
    patientBirth
  );
};

module.exports = {
  createReservation,
  getReservation,
  updateReservation,
};
