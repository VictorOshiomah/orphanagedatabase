--------------------------------------------------------
--  DDL for View Alumni_Parent
--------------------------------------------------------

create view Alumni_Parent as
select alumni.firstname, alumni.lastname, adoptive_parents.id as parent_id, 
adoptive_parents.firstname as Parent_fname, adoptive_parents.lastname as Parent_lname from alumni 
Join adoptive_parents on alumni.adoptive_parents_id = adoptive_parents.id;
