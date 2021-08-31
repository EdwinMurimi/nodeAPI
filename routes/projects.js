const express = require("express");

const router = express.Router();

const { getProjectsHandler, postProjectsHandler, putProjectsHandler, deleteProjectsHandler } = require('../controllers/projectsController');
const verifyToken = require("../middleware/auth");

router.get('/get-all-projects', getProjectsHandler);
router.post('/post-a-project', verifyToken, postProjectsHandler);
router.put('/update-a-project', verifyToken, putProjectsHandler);
router.delete('/delete-a-project', verifyToken, deleteProjectsHandler);

module.exports = router;