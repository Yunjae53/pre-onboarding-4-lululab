const hospitalDao = require("../models/hospitalDao");

const getHospitals = async (hospitalTypeId, address, time, date) => {
  return await hospitalDao.getHospitals(hospitalTypeId, address, time, date);
};

const getAvailable = async (hospitalId, date) => {
  return await hospitalDao.getAvailable(hospitalId, date);
};

module.exports = {
  getHospitals,
  getAvailable,
};
