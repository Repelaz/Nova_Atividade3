/* 1- Selecione a quantidade total de medicamentos em estoque. */			
			
SELECT SUM(m.estoque) AS Quantidade_Total
	FROM MEDICAMENTOS m 
			
			
/* 2 - Selecione a média de idade dos tutores. */
	
SELECT AVG(EXTRACT(YEAR FROM CURRENT_DATE) -  EXTRACT(YEAR FROM t.Data_Nascimento))
	FROM TUTOR t 
			
	
/* 3 - Selecione o menor valor unitário entre os medicamentos. */	
	
SELECT MIN(m.preco)
	FROM MEDICAMENTOS m 
	
	
/* 4 - Selecione o maior peso entre os pacientes. */	
	
SELECT MAX(p.peso)
	FROM PACIENTE p 
	
	
/* 5 - Selecione o número total de tutores na base de dados. */	
	
SELECT COUNT(*)
	FROM TUTOR t 
	
/* 6 - Selecione o valor total em estoque de medicamentos para cada unidade. */		

SELECT m.UNIDADE, SUM(m.preco * m.ESTOQUE)
	FROM MEDICAMENTOS m
	GROUP BY m.UNIDADE 
	
	
/* 7 - Selecione o ID da receita e a soma total dos valores individuais dos itens da receita 
 * para cada receita com um valor total superior a 100. */	
	
SELECT i.ID_RECEITA, SUM(i.total_item)
	FROM ITENSRECEITA i 
GROUP BY i.ID_RECEITA 
HAVING SUM(i.TOTAL_ITEM) > 100 
	

	
	
	
	
	
	
	
	
	
	
	
	
	
			
			
			
