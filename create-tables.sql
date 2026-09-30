CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT NOW(),
    atualizado_em TIMESTAMP NULL
);

CREATE TABLE filmes (
    id SERIAL PRIMARY KEY,
    usuario_id INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    ano_lancamento DATE NOT NULL,
    genero VARCHAR(100) NOT NULL,
    nota DECIMAL(3,1) NULL CHECK (nota >= 0 AND nota <= 10),
    capa_url TEXT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT NOW(),
    atualizado_em TIMESTAMP NULL,

    CONSTRAINT fk_filmes_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
);