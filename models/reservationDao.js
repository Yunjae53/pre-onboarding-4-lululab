const { myDataSource } = require("../utils/dataSource");

/**
 * 환자 조회,
 * input=patientName, patientBirth
 * output=id, block
 */
const getPatient = async (patientName, patientBirth) => {
  try {
    const patient = await myDataSource.query(
      `
        SELECT
          patients.id,
          patients.block
        FROM patients
        WHERE name = ? AND birth =?
      `,
      [patientName, patientBirth]
    );
    return patient;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

/**
 * 환자 등록,
 * input=patientName, patientBirth
 */
const createPatient = async (patientName, patientBirth) => {
  try {
    const patient = await myDataSource.query(
      `
      INSERT INTO patients(name, birth)
      VALUES (?, ?)
      `,
      [patientName, patientBirth]
    );
    return patient;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

/**
 * 예약 여부 조회,
 * input=hospitalId, timeId, date
 * output=id, block
 */
const reservationList = async (hospitalId, timeId, date) => {
  try {
    const reservation = JSON.parse(
      JSON.stringify(
        await myDataSource.query(
          `
        SELECT
          reservations.id,
          reservations.status_id,
          reservations.patient_id,
          reservations.type_id
        FROM reservations
        WHERE hospital_id = ? AND time_id = ? AND date = ? AND status_id < 5
      `,
          [hospitalId, timeId, date]
        )
      )
    );
    return reservation;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

/**
 * 예약,
 * input=patientName, patientBirth
 */
const createReservation = async (
  statusId,
  patientId,
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
      INSERT INTO reservations(status_id, patient_id, hospital_id, type_id, time_id, date)
      VALUES (?, ?, ?, ?, ?, ?)
      `,
      [
        statusId,
        patientId,
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

/**
 * 예약 조회,
 * input=reservationId, patientName
 * output=reservationId, statusId, patientId, patientName, patientBirth, hospitalId, typeId, timeId, date
 */
const getReservation = async (reservationId, patientName) => {
  try {
    const reservation = await myDataSource.query(
      `
        SELECT
          reservations.id AS 'reservationId',
          reservations.status_id AS 'statusId',
          reservations.patient_id AS 'patientId',
          patients.name AS 'patientName',
          DATE_FORMAT(patients.birth, '%Y-%m-%d') AS 'patientBirth',
          reservations.hospital_id AS 'hospitalId',
          reservations.type_id AS 'typeId',
          reservations.time_id AS 'timeId',
          DATE_FORMAT(reservations.date, '%Y-%m-%d') AS 'date'
        FROM reservations
        JOIN patients ON patients.id = patient_id
        WHERE reservations.id = ?
          OR patients.name = ?
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

/**
 * 예약 변경,
 * input=reservationId, statusId, patientId, typeId, timeId, date
 */
const updateReservation = async (
  reservationId,
  statusId,
  patientId,
  typeId,
  timeId,
  date
) => {
  try {
    const reservation = await myDataSource.query(
      `
      UPDATE reservations
      SET
        status_id = ?,
        patient_id = ?,
        type_id = ?,
        time_id = ?,
        date = ?
      WHERE id = ?
      `,
      [statusId, patientId, typeId, timeId, date, reservationId]
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
  getPatient,
  createPatient,
  reservationList,
  createReservation,
  getReservation,
  updateReservation,
};
