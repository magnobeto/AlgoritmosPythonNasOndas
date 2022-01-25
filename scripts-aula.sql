# Diferente de uma linguagem de programação, em banco dados
# um conjunto de código NÃO é um algoritmo, e sim um script/query

# Primeiro comando do slide
CREATE DATABASE nasondas; #Essa linha é considerada uma query

#CREATE -> palavra reservada utilizada para criar algo
#DATABASE -> Se refere a um banco de dados
#nasondas -> Nome do banco de dados criado

#Mostrar banco dados
SHOW DATABASES; #Mostrar os bancos de dados disponíveis

#SHOW -> Mostrar itens
#DATABASES -> bando de dados

#Usar o banco
USE nasondas;

#USE -> Selecionar o banco de dados que vai ser utilizado

#Criar uma tabela

CREATE TABLE aluno(
	nome VARCHAR(30),
    idade INT(2),
	email VARCHAR(30),
	cpf INT(11),
	telefone VARCHAR(30),
	endereco VARCHAR(100)
);

#TABLE -> Tabela

#INT -> significa um campo da tabela
# que é representada por um número inteiro

#VARCHAR -> Campo de caracter variável


DESC aluno;
#DESC -> Descrever item selecionado

#Entrar com dados na planilha

INSERT INTO aluno VALUES(
	'Roberto',
	29,
    'magnobeto.rm@gmail.com',
    988638273,
    '22923110',
    'RUA TEIXEIRA RIBEIRO - MARÉ - RIO DE JANEIRO - RJ'
);

#INSERT -> Inserir entrada de dado

#INTO -> Dentro de uma tabela

#VALUES -> Valores/campos a serem inseridos dentro de uma tabela