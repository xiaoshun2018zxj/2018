SELECT object_name, machine, s.sid, s.serial#
FROM gv$locked_object l, dba_objects o, gv$session s
WHERE l.object_id��= o.object_id
AND l.session_id = s.sid;

-alter system kill session 'sid, serial#';
ALTER system kill session '159, 327';
