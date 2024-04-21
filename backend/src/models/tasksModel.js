const connection = require('./connection');

const getAll = async () => {

    const [professores] = await connection.execute('SELECT * FROM professores');
    const [alunos] = await connection.execute('SELECT * FROM alunos');
    return {
        Professores: professores,
        Alunos: alunos,
    };
};

const createProfessor = async (values, res) => {

    const query = 'INSERT INTO professores(nome_completo, data_nascimento, genero, CEP, numero_telefone, email, cpf, materia, coordenador, RA, senha) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

    const createdProfessor = await connection.execute(query, [...values]);
    return createdProfessor;

};

const createAluno = async (values) => {

    const query = 'INSERT INTO alunos(nome_completo, data_nascimento, genero, CEP, numero_telefone, email, cpf, curso, turma_medio, id_matricula, nome_responsavel, turma_curos, RA, senha) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)';

    const createdAluno = await connection.execute(query, [...values]);
    return createdAluno;

};

const updateProfessor = async (values) => {
    
    const query = 'UPDATE professores SET `nome_completo` = ?,  `data_nascimento` = ?, `genero` = ?, `CEP` = ?, `numero_telefone` = ?, `email` = ?, `cpf` = ?, `materia` = ?, `coordenador` = ?, `RA` = ?, `senha` = ? WHERE `id` = ?;';

    const updatedProfessor = await connection.execute(query,[...values]);
    return updatedProfessor;

};

const updateAluno = async (values) => {
    
    const query = 'UPDATE alunos SET `nome_completo` = ?, `data_nascimento` = ?, `genero` = ?, `CEP` = ?, `numero_telefone` = ?, `email` = ?, `cpf` = ?, `curso` = ?, `turma_medio` = ?, `id_matricula` = ?, `nome_responsavel` = ?, `turma_curso` = ?, `RA` = ?, `senha` = ? WHERE `id` = ?;';

    const updatedAluno = await connection.execute(query, [...values]);
    return updatedAluno;
};

const deleteProfessor = async (id) => {
        
    const query = 'DELETE FROM professores WHERE `id` = ?';

    const deletedProfessor = await connection.execute(query, [...id]);
    return deletedProfessor;
};

const deleteAluno = async (id) => {

    const query = 'DELETE FROM alunos WHERE `id` = ?';
    
    const deletedAluno = await connection.execute(query, [...id]);
    return deletedAluno;

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