CREATE OR REPLACE TRIGGER CALCUL_RATA_PREZENTA 
AFTER UPDATE ON CALENDAR_REZERVARI for each row
BEGIN
  if :new.prezenta = 'D' and :old.prezenta = 'N' then
    client_management.recalculeaza_rata_prezenta(:new.client_id);
  end if;
END;