LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BG IS
	PORT (	
        E: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		S: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        C: IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE A_BG OF BG IS
	SIGNAL AUX: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS(E, C)
    BEGIN
        IF C = '0' THEN
            -- Conversión de binario a Gray
            AUX <= TO_STDLOGICVECTOR(TO_BITVECTOR (E) srl 1);
            S <= E XOR AUX;
        ELSE
            -- Conversión de Gray a binario 
			AUX <= TO_STDLOGICVECTOR(TO 
        END IF;
    END PROCESS;
END A_BG;

