INSERT INTO AUTOR (NACIONALIDADE, NASCIMENTO, NOME) VALUES ('Argentino Ladrao', '1965-02-22 22:00:00.0', 'Otavio');
INSERT INTO AUTOR (NACIONALIDADE, NASCIMENTO, NOME) VALUES ('Frances Fresco', '1975-02-22 22:00:00.0', 'Francisco');
INSERT INTO AUTOR (NACIONALIDADE, NASCIMENTO, NOME) VALUES ('Brasileiro Espertao', '1985-02-22 22:00:00.0', 'Pedrinho');

INSERT INTO LIVRO (EDITORA, NOME, PUBLICACAO, RESUMO, AUTOR_ID) VALUES ('Abril', 'Git passo-a-passo', '2015-02-21 22:00:00.0', 'Livro para dar os primeiros passos com git', 1);
INSERT INTO LIVRO (EDITORA, NOME, PUBLICACAO, RESUMO, AUTOR_ID) VALUES ('Abril', 'Ruby', '2015-02-23 22:00:00.0', 'Livro para dar os primeiros passos com Ruby', 2);
INSERT INTO LIVRO (EDITORA, NOME, PUBLICACAO, RESUMO, AUTOR_ID) VALUES ('Abril', 'Lua', '2015-02-20 22:00:00.0', 'Livro para dar os primeiros passos com Lua', 3);

INSERT INTO COMENTARIO (TEXTO, USUARIO, DATA, LIVRO_ID) VALUES ('Otimo livro para comecar com git!', 'Otavio', '2018-02-20 22:00:00.0', 1);
INSERT INTO COMENTARIO (TEXTO, USUARIO, DATA, LIVRO_ID) VALUES ('Otimo livro para comecar com Ruby!', 'Otavio', '2018-02-25 22:00:00.0', 2);
INSERT INTO COMENTARIO (TEXTO, USUARIO, DATA, LIVRO_ID) VALUES ('Otimo livro para comecar com Lua!', 'Otavio', '2018-02-28 22:00:00.0', 3);