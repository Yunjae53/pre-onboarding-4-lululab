const reservationDao = require("../models/reservationDao");
const nodeMailer = require("nodemailer");

const createReservation = async (
  statusId,
  hospitalId,
  typeId,
  timeId,
  date,
  patientName,
  patientBirth,
  email
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
    const myMale = nodeMailer.createTransport({
      service: process.env.EMAIL_SERVICE,
      host: process.env.EMAIL_HOST,
      tls: process.env.EMAIL_TLS,
      port: process.env.EMAIL_PORT,
      auth: {
        user: process.env.EMAIL_ID,
        pass: process.env.EMAIL_PASSWORD,
      },
    });

    const mailOption = {
      from: process.env.EMAIL_SENDID,
      to: email,
      subject: "병원 예약 확인 메일",
      text: "병원 예약이 완료되었습니다. 늦지 않게 방문해주세요.",
    };

    myMale.sendMail(mailOption, function (error, info) {
      if (error) {
        console.log("EMAIL_SEND_ERROR" + error);
      } else {
        console.log("EMAIL_SEND_SUCCESS" + info.response);
      }
    });

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
