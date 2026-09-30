INSERT INTO usuarios (nome, email, senha)
VALUES
('Camila Silva', 'camila@email.com', '123456'),
('Niki Oliveira', 'niki@email.com', '123456'),
('Lucas Santos', 'lucas@email.com', '123456'),
('Mariana Costa', 'mariana@email.com', '123456'),
('Gabriel Souza', 'gabriel@email.com', '123456');

INSERT INTO filmes (
    usuario_id,
    titulo,
    ano_lancamento,
    genero,
    nota,
    capa_url
)
VALUES
(1, 'Interestelar', '2014-11-07', 'Ficção Científica', 9.0, 'https://share.google/ztzCGlDwMoV5yQrxC'),
(2, 'O Rei Leão', '1994-06-24', 'Animação', 8.5, 'https://share.google/VLMFUWUYOMAqb25sF'),
(3, 'Homem-Aranha: Sem Volta Para Casa', '2021-12-17', 'Ação', 8.2, 'https://share.google/ppTTs5WnMb62HpvEb'),
(4, 'Titanic', '1997-12-19', 'Romance', 9.0, 'https://share.google/rlVmIy5psfr77HsS3'),
(5, 'Harry Potter e a Pedra Filosofal', '2001-11-16', 'Fantasia', 8.8, 'https://share.google/0dt1qJ4NzZRqp0dWt');


DELETE FROM filmes WHERE id in (1, 2, 3, 4, 5);
