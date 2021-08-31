const connection = require('../config/database');
const { v1: uuid } = require('uuid');
const jwt = require("jsonwebtoken");

const getTasksHandler = (req, res) => {
   
  const sql = `SELECT * FROM tasks`;

  connection.query(sql, (error, result) => {
    if(error) return res.status(400).json({ message: error });
    return res.status(200).json({ tasks: result });
  })
}

const postTasksHandler = (req, res) => {
  jwt.verify(req.token, 'secretkey', (error, authData) => {
    if(error) return res.status(403).json({ message: "forbidden" });

    const taskID = uuid();
    const { projectName, taskName } = req.body;

    let task = { taskID, projectName, taskName };

    const sql = `INSERT INTO tasks SET ?`;

    connection.query(sql, task, (error, result) => {
      if(error) return res.status(400).json({ message: error?.sqlMessage });
      return res.status(200).json({ message: "Task added successfully" });
    })

  })
}

const putTasksHandler = (req, res) => {
  jwt.verify(req.token, 'secretkey', (error, authData) => {
    if(error) return res.status(403).json({ message: "forbidden" });

    const { id } = req.query;
    const { projectName, taskName } = req.body;

    const sql = `UPDATE tasks SET projectName = ?, taskName = ? WHERE taskID = ?`;

    connection.query(sql, [projectName, taskName, id], (error, result) => {
      if(error) return res.status(400).json({ message: error?.sqlMessage });
      return res.status(200).json({ message: "Task updated successfully" });
    })
    
  })
}

const deleteTasksHandler = (req, res) => {
  jwt.verify(req.token, 'secretkey', (error, authData) => {
    if(error) return res.status(403).json({ message: "forbidden" });

    const { id } = req.query;
    const sql = `DELETE FROM tasks WHERE taskID = ?`;

    connection.query(sql, id, (error, result) => {
      if(error) return res.status(400).json({ message: error?.sqlMessage });
      return res.status(200).json({ message: "Task deleted successfully" });
    });

  })
}

module.exports = {
  getTasksHandler,
  postTasksHandler,
  putTasksHandler,
  deleteTasksHandler
}