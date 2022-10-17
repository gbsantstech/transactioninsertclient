-- Transação para inserir pedido no banco de dados
BEGIN TRY
BEGIN TRANSACTION
	INSERT INTO PEDIDO VALUES(305,2,'Teclado', 2,300)
COMMIT TRANSACTION
	PRINT 'Pedido cadastrado com sucesso!'
END TRY
BEGIN CATCH
ROLLBACK TRANSACTION
	PRINT 'Pedido já existe!'
END CATCH
