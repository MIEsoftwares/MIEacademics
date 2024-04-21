const express = require('express');
const router = express.Router();
const tasksController = require('./controllers/tasksController');

router.get('/getall', tasksController.getAll);

router.post('/insertprofessor', tasksController.createProfessor);

router.post('/insertaluno', tasksController.createAluno);

router.put('/updateprofessor', tasksController.updateProfessor);

router.put('/updatealuno', tasksController.updateAluno);

router.delete('/deleteprofessor', tasksController.deleteProfessor);

router.delete('/deletealuno', tasksController.deleteAluno);

module.exports = router;