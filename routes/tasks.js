const express = require("express");

const router = express.Router();

const { getTasksHandler, postTasksHandler, putTasksHandler, deleteTasksHandler } = require('../controllers/tasksController');
const verifyToken = require("../middleware/auth");

router.get('/get-all-tasks', getTasksHandler);
router.post('/post-a-task', verifyToken, postTasksHandler);
router.put('/update-a-task', verifyToken, putTasksHandler);
router.delete('/delete-a-task', verifyToken, deleteTasksHandler);

module.exports = router;