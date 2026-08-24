SET @IDGRUPO = (SELECT id FROM grupo_accion WHERE descripcion = 'XXX');
SET @UALTA = (SELECT id FROM usuario WHERE email = 'gramos@asap-consulting.net');
INSERT INTO accion (descripcion, id_grupo_accion,  modulo, operacion,  orden,  administrable) VALUES
    ('XXX', @IDGRUPO, 'XXX', 'View',   NULL, 1),
    ('XXX', @IDGRUPO, 'XXX', 'Add',    NULL, 1),
    ('XXX', @IDGRUPO, 'XXX', 'Insert', NULL, 1),
    ('XXX', @IDGRUPO, 'XXX', 'Mod',    NULL, 1),
    ('XXX', @IDGRUPO, 'XXX', 'Update', NULL, 1),
    ('XXX', @IDGRUPO, 'XXX', 'Del',    NULL, 1),
    ('XXX', @IDGRUPO, 'XXX', 'Detail', NULL, 1);
 
SET @PERF = (SELECT id FROM perfil WHERE descripcion = 'ADMIN Superuser');
INSERT INTO perfil_accion (perfil_id, accion_id, fecha_alta, usuario_alta) VALUES 
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'View'),   NOW(), @UALTA),
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'Add'),    NOW(), @UALTA),
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'Insert'), NOW(), @UALTA),
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'Update'), NOW(), @UALTA),
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'Mod'),    NOW(), @UALTA),
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'Del'),    NOW(), @UALTA),
(@PERF, (SELECT id FROM accion where modulo = 'XXX' AND operacion = 'Detail'), NOW(), @UALTA);

