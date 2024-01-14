--------------------------------------------------------
--  DDL for View ORPHANS_DONOR_VIEW
--------------------------------------------------------

create view orphans_donor_view as 
select orphans.firstname, orphans.lastname, donor.id as sponsorer_id, donor.firstname as donor_fname, donor.lastname as donor_lname 
from orphans join donor on orphans.donor_id = donor.id;
