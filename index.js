const express = require('express');
require("dotenv").config();

const usersRoute = require('./routes/users');
const projectsRoute = require('./routes/projects');
const tasksRoute = require('./routes/tasks');
const connection = require('./config/database');

connection.connect(error => {
  if(error) console.log("database not connected!!!");
  console.log("connected:+1:");
})

const app = express();

app.use(express.json());
app.use(express.urlencoded({extended: true}));
app.use("/api/users", usersRoute);
app.use('/api/projects', projectsRoute);
app.use('/api/tasks', tasksRoute);

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`App listening on port ${port}`);
});