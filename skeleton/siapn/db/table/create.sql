--########################################################################
--#   ADVERTENCIA: Si estas leyendo esto es que estas usando el skeleton
--#   table/create.sql y no fue revisado ni modificado.
--######################################################################## 
DROP TABLE IF EXISTS XXX.XXX CASCADE;
CREATE TABLE XXX.XXX (
    id_XXX SERIAL PRIMARY KEY,
    created TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    updated TIMESTAMP WITHOUT TIME ZONE,
    created_by INT REFERENCES fw.users(id_user) ON UPDATE CASCADE,
    updated_by INT REFERENCES fw.users(id_user) ON UPDATE CASCADE,
);

COMMENT ON TABLE XXX.XXX IS 'XXX';
