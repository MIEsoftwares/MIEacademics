const express = require('express');
const router = express.Router();
const tasksController = require('./controllers/tasksController.js');

router.get('/getall', tasksController.getAll);

router.get('/getalunos', tasksController.getAlunos);

router.get('/getprofessores', tasksController.getProfessores);

router.post('/insertprofessor', tasksController.createProfessor);

router.post('/insertaluno', tasksController.createAluno);

router.put('/updateprofessor', tasksController.updateProfessor);

router.put('/updatealuno', tasksController.updateAluno);

router.delete('/deleteprofessor', tasksController.deleteProfessor);

router.delete('/deletealuno', tasksController.deleteAluno);

module.exports = router;