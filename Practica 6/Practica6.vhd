LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DECO IS
	PORT(	
		CONTROL: IN STD_LOGIC;
		ENTRADA: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		DISPLAY: OUT STD_LOGIC_VECTOR (6 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE A_DECO OF DECO IS
	CONSTANT DIG0: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1111110";
    CONSTANT DIG1: STD_LOGIC_VECTOR (6 DOWNTO 0) := "0110000";
    CONSTANT DIG2: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1101101";
    CONSTANT DIG3: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1111001";
    CONSTANT DIG4: STD_LOGIC_VECTOR (6 DOWNTO 0) := "0110011";
    CONSTANT DIG5: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1011011";
    CONSTANT DIG6: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1011111";
    CONSTANT DIG7: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1110000";
    CONSTANT DIG8: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1111111";
    CONSTANT DIG9: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1111011";

	CONSTANT A: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1110110";
    CONSTANT B: STD_LOGIC_VECTOR (6 DOWNTO 0) := "0111101";
    CONSTANT C: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1001110";
    CONSTANT D: STD_LOGIC_VECTOR (6 DOWNTO 0) := "0011111";
	CONSTANT E: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1001111";
    CONSTANT F: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1000111";

    CONSTANT G: STD_LOGIC_VECTOR (6 DOWNTO 0) := "1011111";

	BEGIN
    		PROCESS(CONTROL, ENTRADA)
    		VARIABLE AUX: STD_LOGIC_VECTOR(6 DOWNTO 0);

    		BEGIN
        		IF CONTROL = '0' THEN
					CASE ENTRADA IS
        		      	WHEN "0000" => AUX := DIG2;
         		       	WHEN "0001" => AUX := DIG0;
                		WHEN "0010" => AUX := DIG2;
                		WHEN "0011" => AUX := DIG3;
                		WHEN "0100" => AUX := DIG6;
                		WHEN "0101" => AUX := DIG3;
                		WHEN "0110" => AUX := DIG0;
                		WHEN "0111" => AUX := DIG1;
                		WHEN "1000" => AUX := DIG5;
                		WHEN "1001" => AUX := DIG7;

                		WHEN OTHERS => AUX := G;
            		END CASE;

        		ELSE
            			CASE ENTRADA IS
                			WHEN "0000" => AUX := DIG0;
                			WHEN "0001" => AUX := DIG1;
                			WHEN "0010" => AUX := DIG2;
                			WHEN "0011" => AUX := DIG3;
                			WHEN "0100" => AUX := DIG4;
                			WHEN "0101" => AUX := DIG5;
                			WHEN "0110" => AUX := DIG6;
                			WHEN "0111" => AUX := DIG7;
                			WHEN "1000" => AUX := DIG8;
                			WHEN "1001" => AUX := DIG9;

                			WHEN "1010" => AUX := A;
                			WHEN "1011" => AUX := B;
                			WHEN "1100" => AUX := C;
                			WHEN "1101" => AUX := D;
                			WHEN "1110" => AUX := E;
                			WHEN "1111" => AUX := F;

                			WHEN OTHERS => AUX := G;
            			END CASE;
        		END IF;
        		DISPLAY <= AUX;
    		END PROCESS;
END A_DECO;