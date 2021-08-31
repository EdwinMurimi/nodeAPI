const connection = require('../config/database');
const { v1: uuid } = require('uuid');
const jwt = require("jsonwebtoken");

const getProjectsHandler = (req, res) => {
   
  const sql = `SELECT * FROM projects`;

  connection.query(sql, (error, result) => {
    if(error) return res.status(400).json({ message: error });
    return res.status(200).json({ projects: result });
  })
}

const postProjectsHandler = (req, res) => {
  jwt.verify(req.token, 'secretkey', (error, authData) => {
    if(error) return res.status(403).json({ message: "forbidden" });

    const recordID = uuid();
    const { projectName, email, duration } = req.body;

    let project = { recordID, projectName, email, duration };

    const sql = `INSERT INTO projects SET ?`;

    connection.query(sql, project, (error, result) => {
      if(error) return res.status(400).json({ message: error?.sqlMessage });
      return res.status(200).json({ message: "Project added successfully" });
    })

  })
}

const putProjectsHandler = (req, res) => {
  jwt.verify(req.token, 'secretkey', (error, authData) => {
    if(error) return res.status(403).json({ message: "forbidden" });

    const { id } = req.query;
    const { projectName, email, duration } = req.body;

    const sql = `UPDATE projects SET projectName = ?, email = ?, duration = ? WHERE recordID = ?`;

    connection.query(sql, [projectName, email, duration, id], (error, result) => {
      if(error) return res.status(400).json({ message: error?.sqlMessage });
      return res.status(200).json({ message: "Project updated successfully" });
    })
    
  })
}

const deleteProjectsHandler = (req, res) => {
  jwt.verify(req.token, 'secretkey', (error, authData) => {
    if(error) return res.status(403).json({ message: "forbidden" });

    const { id } = req.query;
    const sql = `DELETE FROM projects WHERE recordID = ?`;

    connection.query(sql, id, (error, result) => {
      if(error) return res.status(400).json({ message: error?.sqlMessage });
      return res.status(200).json({ message: "Project deleted successfully" });
    });

  })
}

module.exports = {
  getProjectsHandler,
  postProjectsHandler,
  putProjectsHandler,
  deleteProjectsHandler
}