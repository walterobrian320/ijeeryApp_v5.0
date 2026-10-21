-- Import des 17 categories depuis Categories_20261021_105149.csv.
-- A executer avant 02_articles_unites.sql.
BEGIN;
SET search_path TO public, pg_catalog;

INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Appareil', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Appareil')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Beurre', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Beurre')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Biscuit', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Biscuit')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Bonbon', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Bonbon')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Carburant', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Carburant')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Divers Alimentaire', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Divers Alimentaire')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Divers Non Alimentaire', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Divers Non Alimentaire')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Farine', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Farine')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Huile Alimentaire', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Huile Alimentaire')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Legume sec', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Legume sec')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Materiaux', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Materiaux')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Pate', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Pate')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Petrol', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Petrol')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Riz', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Riz')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Savon', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Savon')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Sel', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Sel')) AND COALESCE(deleted, 0) = 0);
INSERT INTO public.tb_categoriearticle (designationcat, deleted) SELECT 'Sucre', 0 WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle WHERE lower(btrim(designationcat)) = lower(btrim('Sucre')) AND COALESCE(deleted, 0) = 0);

DO $$
BEGIN
    IF EXISTS (
        SELECT 1 FROM (VALUES ('Appareil'), ('Beurre'), ('Biscuit'), ('Bonbon'), ('Carburant'), ('Divers Alimentaire'), ('Divers Non Alimentaire'), ('Farine'), ('Huile Alimentaire'), ('Legume sec'), ('Materiaux'), ('Pate'), ('Petrol'), ('Riz'), ('Savon'), ('Sel'), ('Sucre')) AS expected(name)         WHERE NOT EXISTS (SELECT 1 FROM public.tb_categoriearticle c                           WHERE lower(btrim(c.designationcat)) = lower(btrim(expected.name))                             AND COALESCE(c.deleted, 0) = 0)
    ) THEN
        RAISE EXCEPTION 'Import categories incomplet';
    END IF;
END $$;

SELECT setval(pg_get_serial_sequence('public.tb_categoriearticle', 'idca'),
              GREATEST(COALESCE((SELECT MAX(idca) FROM public.tb_categoriearticle), 1), 1), true);
COMMIT;
