-- Questão 1 dia 30/10
--    1. Não seja possível excluir e nem alterar o identificador de editoras com obras cadastradas
--    2. Usuários e Obras com empréstimos realizados não devem ser excluídos e ao terem seus identificadores alterados, o registro de empréstimo, devem ser atualizados 
--    3. Ao excluir usuários, todos os seus telefones devem ser excluídos, e quando identificador do usuário for alterado,  o seu telefone deve ser atualizado com o novo valor. 
--    4. Autores com obras não devem ser excluídos e nem alterados
--    5. Ao excluir ou alterar uma obra, todos as suas relações com autores devem ser excluídas ou alteradas
-- Implementando modificações
-- 1.
ALTER TABLE Obras
ADD CONSTRAINT fk_editoras FOREIGN KEY (editora_id) REFERENCES Editoras(id)
ON DELETE RESTRICT;

-- 2.
ALTER TABLE Emprestimos
ADD CONSTRAINT fk_usuarios FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
ON DELETE RESTRICT;

ALTER TABLE Emprestimos
ADD CONSTRAINT fk_obras FOREIGN KEY (obra_id) REFERENCES Obras(id)
ON DELETE RESTRICT;

CREATE TRIGGER update_emprestimos_usuario BEFORE UPDATE ON Usuarios
FOR EACH ROW
SET NEW.id = OLD.id;

-- 3.
ALTER TABLE Telefone
ADD CONSTRAINT fk_usuarios_telefone FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
ON DELETE CASCADE;

-- 4.
ALTER TABLE Obras
ADD CONSTRAINT fk_autores FOREIGN KEY (autor_id) REFERENCES Autores(id)
ON DELETE RESTRICT;

-- 5.
ALTER TABLE Obras_Autores
ADD CONSTRAINT fk_obras_autores FOREIGN KEY (obra_id) REFERENCES Obras(id)
ON DELETE CASCADE ON UPDATE CASCADE;
