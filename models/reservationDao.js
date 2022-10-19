const { myDataSource } = require("../utils/dataSource");

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
  try {
    const reservation = await myDataSource.query(
      `
      INSERT INTO reservations(status_id, user_id, hospital_id, type_id, time_id, date, patient_name, patient_birth)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?)
      `,
      [
        statusId,
        userId,
        hospitalId,
        typeId,
        timeId,
        date,
        patientName,
        patientBirth,
      ]
    );
    return reservation;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

const getReservation = async (reservationId, patientName) => {
  try {
    const reservation = await myDataSource.query(
      `
        SELECT
          reservations.id AS 'reservationsId',
          reservations.status_id AS 'statusId',
          reservations.user_id AS 'userId',
          reservations.hospital_id AS 'hospitalId',
          reservations.type_id AS 'typeId',
          reservations.time_id AS 'timeId',
          reservations.date,
          reservations.patient_name AS 'patientName',
          reservations.patient_birth AS 'patientBirth'
        FROM reservations
        WHERE id = ?
          OR patient_name = ?
      `,
      [reservationId, patientName]
    );
    return reservation;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
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
  try {
    const reservation = await myDataSource.query(
      `
      UPDATE reservations
      SET
        status_id = ?,
        user_id = ?,
        hospital_id = ?,
        type_id = ?,
        time_id = ?,
        date = ?,
        patient_name = ?,
        patient_birth = ?
      WHERE id = ?
      `,
      [
        statusId,
        userId,
        hospitalId,
        typeId,
        timeId,
        date,
        patientName,
        patientBirth,
        reservationId,
      ]
    );
    return reservation;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

module.exports = {
  createReservation,
  getReservation,
  updateReservation,
};
