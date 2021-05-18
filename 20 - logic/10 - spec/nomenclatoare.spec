CREATE OR REPLACE PACKAGE NOMENCLATOARE AS 

  function get_durata_tip(p_tip number) return number;
  function get_judete return clob;
  function get_domenii return clob;
  function get_localitati(p_judet number) return clob;

END NOMENCLATOARE;
/