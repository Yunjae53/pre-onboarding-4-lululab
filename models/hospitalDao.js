const { myDataSource } = require("../utils/dataSource");

const getHospitals = async (hospitalTypeId, address, time, date) => {
  try {
    const addressKey = "%" + address + "%";
    const hospitals = await myDataSource.query(
      `
        SELECT 
          hospitals.id AS 'hospitalId',
          hospital_types.name AS 'hospitalType',
          hospitals.name AS 'hospitalName',
          hospitals.number AS 'hospitalNumber',
          hospitals.address As 'hospitalAddress'
        FROM hospitals
        JOIN hospital_types ON hospital_types.id = hospital_type_id
        WHERE hospital_type_id = ?
          AND (address LIKE ?)
          AND (hospitals.id, hospital_types.name, hospitals.name, hospitals.number, hospitals.address) NOT IN (
        SELECT
          hospitals.id AS 'hospitalId',
          hospital_types.name As 'hospitalType',
          hospitals.name AS 'hospitalName',
          hospitals.number AS 'hospitalNumber',
          hospitals.address AS 'hospitalAddress'
        FROM hospitals
        JOIN reservations ON reservations.hospital_id = hospitals.id
        JOIN hospital_types ON hospital_types.id = hospitals.hospital_type_id
        WHERE (date=?)
          AND (time_id=?))
      `,
      [hospitalTypeId, addressKey, date, time]
    );
    return hospitals;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

const getAvailable = async (hospitalId, date) => {
  try {
    const availableTime = await myDataSource.query(
      `
        SELECT
          times.id AS 'time_id',
          times.time
        FROM times
        WHERE (times.id, times.time) NOT IN (
          SELECT
            times.id AS 'time_id',
            times.time
          FROM reservations
          JOIN times ON times.id = time_id
          WHERE hospital_id=?
            AND date=?
            AND status_id < 5
        )
      `,
      [hospitalId, date]
    );
    return availableTime;
  } catch (err) {
    console.log(err);
    const error = new Error("INVALID_DATA_INPUT");
    error.statusCode = 500;
    throw error;
  }
};

module.exports = {
  getHospitals,
  getAvailable,
};
