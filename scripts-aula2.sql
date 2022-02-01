# Comandos de seleção(vizualização)

#Mostrar dados com todos os campos da tabela
SELECT * FROM aluno;

#Mostrar dados apenas dos campos: nome, idade e endereço
SELECT nome, idade, endereco FROM aluno;

#Conseguimos modificar a ordem das colunas
SELECT endereco, nome FROM aluno;

#SELECT -> selecionar dados referentes do campo da tabela para 
# mostrar na tela

# "*" -> mostrar todos os campos da tabela

# FROM -> indicando em qual tabela vamos executar o comando

# Mostra todos os departamentos dentro da tabela funcionários.
SELECT departamento 
FROM funcionarios
GROUP BY departamento;

# GROUP BY -> Agrupa resultados de colunas

# Mostra todos os funcionários pertencentes  ao departamendo computadores
SELECT * FROM funcionarios WHERE departamento = 'Computadores';

# WHERE -> filtra resultados utilizando determinada condição

#Exercícios

SELECT * FROM funcionarios WHERE departamento = 'Computadores';

# Mostrar todas as funcionárias mulheres
SELECT * FROM funcionarios WHERE sexo = 'feminino';

# Mostrar todos os funcionários homens
SELECT * FROM funcionarios WHERE sexo = 'masculino';

# Mostrar o Nome e id como resultado de busca por funcionários 
# separados por cada departamento
SELECT * FROM funcionarios WHERE departamento = 'Outdoors';
SELECT * FROM funcionarios WHERE departamento = 'Industrial';

# Mostrar Nome, id e departamento como resultado de busca por 
# separados funcionários por cada cargo