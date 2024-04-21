const tasksModel = require('../models/tasksModel')

const getAll = async (req, res,) => {
//PEA = Professores e Alunos
    const todosPeA = await tasksModel.getAll();

    try{
        return res.status(200).json(todosPeA);
    }catch(err){
        return res.status(err).json(err);
    }
};

const createProfessor = async (req, res) => {
    const values = [
        req.body.nome_completo,
        req.body.data_nascimento,
        req.body.genero,
        req.body.CEP,
        req.body.numero_telefone,
        req.body.email,
        req.body.cpf,
        req.body.materia,
        req.body.coordenador,
        req.body.RA,
        req.body.senha,
    ];

    const insertProfessor = await tasksModel.createProfessor(values);
    try{
        return res.status(200).json([insertProfessor]);
    }catch(err){
        return res.status(err).json(err);
    }
};


const createAluno = async (req, res) => {

    const values = [
        req.body.nome_completo,
        req.body.data_nascimento,
        req.body.genero,
        req.body.CEP,
        req.body.numero_telefone,
        req.body.email,
        req.body.cpf,
        req.body.curso,
        req.body.turma_medio,
        req.body.id_matricula,
        req.body.nome_responsavel,
        req.body.turma_curso,
        req.body.RA,
        req.body.senha,
    ];

    const insertAluno = await tasksModel.createAluno(values);

    try{
        return res.status(200).json(insertAluno);
    }catch(err){
        return res.status(err).json(err);
    }

};

const updateProfessor = async (req, res) => {
    
    const values = [
        req.body.nome_completo,
        req.body.data_nascimento,
        req.body.genero,
        req.body.CEP,
        req.body.numero_telefone,
        req.body.email,
        req.body.cpf,
        req.body.materia,
        req.body.coordenador,
        req.body.RA,
        req.body.senha,
        req.body.id,        
    ];

    const updatedProfessor = await tasksModel.updateProfessor(values);
    
    try{
        return res.status(200).json(updatedProfessor);
    }catch(err){
        return res.status(err).json(err);
    }
};

const updateAluno = async (req, res) => {

    const values = [
        req.body.nome_completo,
        req.body.data_nascimento,
        req.body.genero,
        req.body.CEP,
        req.body.numero_telefone,
        req.body.email,
        req.body.cpf,
        req.body.curso,
        req.body.turma_medio,
        req.body.id_matricula,
        req.body.nome_responsavel,
        req.body.turma_curso,
        req.body.RA,
        req.body.senha,
        req.body.id,
    ];

    const updatedAluno = await tasksModel.updateAluno(values);

    try{
        return res.status(200).json(updatedAluno);
    }catch(err){
        return res.status(err).json(err);
    }
};

const deleteProfessor = async (req, res) => {
    
    try{
        await tasksModel.deleteProfessor(req.body.id.toString());
        return res.status(200).json();
    }catch(err){
        return res.status(err).json(err);
    }
};

const deleteAluno = async (req, res) => {

    try{
        await tasksModel.deleteAluno(req.body.id.toString());
        return res.status(200).json();
    }catch(err){
        return res.status(err).json(err);
    }
};


module.exports = {
    getAll,
    createProfessor,
    createAluno,
    updateProfessor,
    updateAluno,
    deleteProfessor,
    deleteAluno,
};

// //const getCep = async (cep) => {
//     try{
//         const response = await fetch(`https://viacep.com.br/ws/${cep}/json/`)
//         const data = await response.json()
//         console.log(data)
//         return data
//     } catch(error){
//         console.log(error)
//         throw error
//     }
// }
