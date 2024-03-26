DO $$
DECLARE
	n1 NUMERIC(5, 2);
	n2 INTEGER;
	limite_inferior INTEGER := 5;
	limite_superior INTEGER := 17;
	temperaturac decimal;
	
	--1.4
	a1 decimal;
	b1 decimal;
	c1 decimal;
	delta decimal;
	--1.5
	n3 INTEGER;
	ant INTEGER;
	post INTEGER;
	--1.6
	vertical DECIMAL;
	horizontal DECIMAL;
	preco DECIMAL;
	preco_terreno DECIMAL;
	-- 1.7
	ano_nasc INTEGER;
	ano_atual INTEGER;
	idade INTEGER;
	
BEGIN
	-- 0 <= n <1 (intervalo real)
	-- simular o lançamento de uma moeda (0 ou 1)
	RAISE NOTICE '%', floor(random() * 2);
	-- simular o lançamento de um dado (1 a 6)
	RAISE NOTICE '%', 1 + floor(random() * 6);
	--17<= n <= 33(inteiro)
	RAISE NOTICE '%', 17 + floor(random() * 17);
	--limite_inferior <= n <= limite_superior
	RAISE NOTICE '%', limite_inferior + floor(random() * (limite_superior - limite_inferior + 1));
	--- 1.1
	RAISE NOTICE '%', 1 + floor(random() * 101);
	--- 1.2
	RAISE NOTICE '%', 1 + random() * 9;
	--- 1.3
	temperaturac := 20 + random() * 10;
	RAISE NOTICE '%', temperaturac;
	RAISE NOTICE '%', (temperaturac * 9/5) + 32;
	
	--1.4
	a1 := 1 + random() * 10;
	b1 := 1 + random() * 20;
	c1 := 1 + random() * 5;
	delta := b1 ^ 2 - (4 * a1 * c1);
	RAISE NOTICE '%', a1;
	RAISE NOTICE '%', b1;
	RAISE NOTICE '%', c1;
	RAISE NOTICE '%', delta;
	
	--1.5
	n3 := 1 + random() * 100;
	ant := n3 -1;
	post := n3 + 1;
	RAISE NOTICE '%', n3;
	RAISE NOTICE '%', ||/ant;
	RAISE NOTICE '%', |/post;
-- 1.6
	vertical := 1 + random() * 100;
	horizontal := 1 + random() * 150;
	preco := 60 + random() * 10;
	
	preco_terreno := (vertical * horizontal) * preco;
	RAISE NOTICE '%', vertical;
	RAISE NOTICE '%', horizontal;
	RAISE NOTICE '%', preco;
	RAISE NOTICE '%', preco_terreno;
-- 1.7
	ano_nasc := 1980 + FLOOR(random() * 20);
	ano_atual := 2010 + FLOOR(random() * 10);
	idade := ano_atual - ano_nasc;
	RAISE NOTICE '%', ano_nasc;
	RAISE NOTICE '%', ano_atual;
	RAISE NOTICE '%', idade;
	
	
	

	
END;
$$


-- DECLARE
-- 	codigo INTEGER :=1;
-- 	nome_completo VARCHAR(200) := 'João Santos';
-- 	salario NUMERIC(11,2):= 20.5;
-- BEGIN
-- 	RAISE NOTICE'Meu código é %, me chamo % e meu salário é %',
-- 	codigo,nome_completo,salario;
-- END;
--$$
--BEGIN
-- DO
-- $$
--     BEGIN 
-- 	--placeholders
-- 	RAISE NOTICE '% + % = %', 2,2,2,+2;
-- 	RAISE NOTICE 'Meu primeiro bloco anônimo';
--END;
--$$