-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/12/2019 21:29:53"
                                                            
-- Vhdl Test Bench template for design  :  elevator1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elevator1_vhd_tst IS
END elevator1_vhd_tst;
ARCHITECTURE elevator1_arch OF elevator1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a1 : STD_LOGIC;
SIGNAL a2 : STD_LOGIC;
SIGNAL a3 : STD_LOGIC;
SIGNAL a4 : STD_LOGIC;
SIGNAL a5 : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b3 : STD_LOGIC;
SIGNAL b4 : STD_LOGIC;
SIGNAL b5 : STD_LOGIC;
SIGNAL c1 : STD_LOGIC;
SIGNAL c2 : STD_LOGIC;
SIGNAL c3 : STD_LOGIC;
SIGNAL c4 : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d1 : STD_LOGIC;
SIGNAL d2 : STD_LOGIC;
SIGNAL d3 : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL d5 : STD_LOGIC;
SIGNAL e1 : STD_LOGIC;
SIGNAL e2 : STD_LOGIC;
SIGNAL en : STD_LOGIC;
SIGNAL O_r : STD_LOGIC;
SIGNAL rng : STD_LOGIC;
SIGNAL s : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT elevator1
	PORT (
	a1 : IN STD_LOGIC;
	a2 : IN STD_LOGIC;
	a3 : IN STD_LOGIC;
	a4 : IN STD_LOGIC;
	a5 : IN STD_LOGIC;
	b2 : IN STD_LOGIC;
	b3 : IN STD_LOGIC;
	b4 : IN STD_LOGIC;
	b5 : IN STD_LOGIC;
	c1 : IN STD_LOGIC;
	c2 : IN STD_LOGIC;
	c3 : IN STD_LOGIC;
	c4 : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	d1 : OUT STD_LOGIC;
	d2 : OUT STD_LOGIC;
	d3 : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	d5 : OUT STD_LOGIC;
	e1 : OUT STD_LOGIC;
	e2 : OUT STD_LOGIC;
	en : IN STD_LOGIC;
	O_r : OUT STD_LOGIC;
	rng : IN STD_LOGIC;
	s : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : elevator1
	PORT MAP (
-- list connections between master ports and signals
	a1 => a1,
	a2 => a2,
	a3 => a3,
	a4 => a4,
	a5 => a5,
	b2 => b2,
	b3 => b3,
	b4 => b4,
	b5 => b5,
	c1 => c1,
	c2 => c2,
	c3 => c3,
	c4 => c4,
	clk => clk,
	d1 => d1,
	d2 => d2,
	d3 => d3,
	d4 => d4,
	d5 => d5,
	e1 => e1,
	e2 => e2,
	en => en,
	O_r => O_r,
	rng => rng,
	s => s
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
a3<='1' ;
wait for 100 ps ;
a3 <='0' ;
wait for 100 ps ;
b5<='1'; 
wait for 100 ps ;
b5 <='0' ;
wait for 100 ps ;
c2 <='1' ;
wait for 100 ps ;
c2 <='0' ;
wait for 100 ps ;
b4<='1' ;
wait for 100 ps ;
b4 <='0' ;
wait for 100 ps ;                    
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
 		   en <='1' ;
   clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
    clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
    clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
    clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
    clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
    clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
    clk<= '1';
 wait for 100 ps ;
 clk <= '0' ;
 wait for 100 ps ; 
WAIT;                                                        
END PROCESS always;                                          
END elevator1_arch;
