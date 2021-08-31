const express = require('express');
const jwt = require("jsonwebtoken");

const app = express();

// FORMAT OF THE TOKEN
// x-access-token: Bearer <access-token>

// verifyToken method.
const verifyToken = (req, res, next) => {
  // getting the token from either the body, query parameters or headers
  const token = req.body.token || req.query.token || req.headers['x-access-token'];

  //check if bearer is undefined
  if(typeof token !== 'undefined') {
    // since the token will be Bearer <token>, we need to split and get the token alone.
    const bearer = token.split(' ');
    // get token from the array formed above.
    const bearerToken = bearer[1];
    // set the token
    req.token = bearerToken;
    // call next middleware
    next();
  } else {
    res.status(403).json({ message: "forbidden" });
  }

}

module.exports = verifyToken;

