const bcrypt = require("bcryptjs");
const { v1: uuid } = require('uuid');
const jwt = require("jsonwebtoken");
const _ = require('lodash');

const encryptPassword = require('../helpers/passwordEncrypt');
const connection = require('../config/database');

const signUpHandler = async (req, res) => {
  const developerID = uuid();
  const { name, email, rank } = req.body;
  const password = await encryptPassword(req.body.password);
  let user = {developerID, name, email, rank, password};
  const sql = `INSERT INTO developers SET ?`;
  connection.query(sql, user, (error, result) => {
    if(error) return res.status(400).json({ message: "Email already registered" });
    return res.status(200).json({ message: "User registered successfully" });
  })
}

const signInHandler = async (req, res) => {
  const { email, password } = req.body;

  const sql = `SELECT * FROM developers WHERE email = ?`;

  connection.query(sql, [email], async (error, result) => {
    if(error) return res.status(400).json({ message: "Email does not exist" });
    const user = result[0];
    if(user) {
      const validPassword = await bcrypt.compare(password, user.password);
      if(validPassword) {
        const response = _.pick(user, [
            "developerID",
            "name",
            "email",
            "rank"
          ]
        )

        jwt.sign({response}, 'secretkey', (error, token) => {
          return res
            .status(200)
            .json({token});
        });      
      } else {
        return res.status(400).json({ message: "Invalid Password" });
      }
    } else {
      return res.status(401).json({ message: "User does not exist" });
    }
  })
}

module.exports = {
  signInHandler,
  signUpHandler
}