-- Import legacy articles from ARTICLE_20260810151749.csv
BEGIN;

SET search_path TO public, pg_catalog;

INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (1, 'BISCUIT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (2, 'DIVERS', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (3, 'MOSQUITO', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (4, 'AIGLE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (5, 'ALLUMETTE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (6, 'RIZ', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (7, 'SAVONNETTE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (8, 'BONBON', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (9, 'COUCHE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (10, 'JUS', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (11, 'BOISSON', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (12, 'MACARONI', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (13, 'HUILE HYGIENIQUE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (14, 'CHOCOLAT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (15, 'LAIT CONCENTRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (16, 'BOUGIE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (17, 'BRIQUET', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (18, 'BROSSE A DENT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (19, 'DENTIFRICE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (20, 'CAFE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (21, 'CAHIER', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (22, 'CARBONATE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (23, 'ENZOY', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (24, 'CARNET', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (25, 'EPICE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (26, 'CIMENT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (27, 'SAVON', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (28, 'SAVON BARRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (29, 'DETERGENT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (30, 'SILL GUM', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (31, 'CRAIE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (32, 'LAIT EN POUDRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (33, 'POUDRE LAIT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (34, 'PILE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (35, 'ENCAUSTIQUE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (36, 'ENVELOPPE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (37, 'FARINE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (38, 'SAVON EN POUDRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (39, 'SAUCE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (40, 'HUILE ALIMENTAIRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (41, 'MAIIS', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (42, 'KETCHUP', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (43, 'LAME', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (44, 'AMPOULE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (45, 'LEVURE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (46, 'BEURRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (47, 'MOUCHOIR', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (48, 'MAYONNAISE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (49, 'TELEPHONE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (50, 'PATE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (51, 'PAPIER', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (52, 'PAPIER HYGIENIQUE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (53, 'SERVIETTE HYGIENIQUE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (54, 'POIVRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (55, 'RASOIR', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (56, 'SACHET', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (57, 'CD - DVD', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (58, 'SARDINE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (59, 'SCOTCH', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (60, 'SEL', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (61, 'SPAGHETTI', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (62, 'STYLO', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (63, 'SUCRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (64, 'VETSIN', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (65, 'VINAIGRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (66, 'INSECTICIDE', 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1, '4X4 BOKOTRA', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1, '0010000100', 1, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2, '4x4 happy choco', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2, '0010000200', 2, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3, '0010000201', 2, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (3, '4x4 Happy Top pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (4, '0010000300', 3, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (5, '0010000301', 3, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (4, '4x4 happy vanille', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (6, '0010000400', 4, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (7, '0010000401', 4, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (5, '4x4 up beurre', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (8, '0010000500', 5, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (9, '0010000501', 5, 'CARTON', 1, 17.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (6, '4x4 up fraise', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (10, '0010000600', 6, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (11, '0010000601', 6, 'CARTON', 1, 17.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (7, 'ACIDE LAVA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (12, '0020000700', 7, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (13, '0020000701', 7, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (8, 'ACIDEL BOTA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (14, '0020000800', 8, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (15, '0020000801', 8, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (9, 'Aerosol jumbo xt fl 300ml', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (16, '0030000900', 9, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (17, '0030000901', 9, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (10, 'Aerosol jumbo xt fl 680ml', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (18, '0030001000', 10, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (19, '0030001001', 10, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (11, 'africa chef beef cube 108g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (20, '0020001100', 11, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (21, '0020001101', 11, 'BOITE', 1, 41.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (22, '0020001102', 11, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (12, 'Africa chef chicken cube 108g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (23, '0020001200', 12, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (24, '0020001201', 12, 'BOITE', 1, 40.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (25, '0020001202', 12, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (13, 'Agharbatti seven worder fruits', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (26, '0020001300', 13, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (27, '0020001301', 13, 'BOITE', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (14, 'AIGLE D OR PT 35 A 41', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (28, '0040001400', 14, 'PAIRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (15, 'Allumette italia', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (29, '0020001500', 15, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (30, '0020001501', 15, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (16, 'Allumettes yes safety', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (31, '0050001600', 16, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (32, '0050001601', 16, 'PAQUET', 1, 10.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (33, '0050001602', 16, 'CARTON', 2, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (17, 'Ampoule clear bulb 100w', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (34, '0020001700', 17, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (35, '0020001701', 17, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (18, 'Ampoule clear bulb 40w', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (36, '0020001800', 18, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (37, '0020001801', 18, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (19, 'Ampoule clear bulb 60w', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (38, '0020001900', 19, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (39, '0020001901', 19, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (20, 'Ampoule clear bulb 75w', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (40, '0020002000', 20, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (41, '0020002001', 20, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (21, 'Andapa 34kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (42, '0060002100', 21, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (22, 'ANGADY GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (43, '0020002200', 22, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (23, 'ANGADY PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (44, '0020002300', 23, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (24, 'Angola bleu gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (45, '0020002400', 24, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (46, '0020002401', 24, 'PAQUET', 1, 6.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (47, '0020002402', 24, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (25, 'Arrow mosquito coils vert bamboo', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (48, '0070002500', 25, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (49, '0070002501', 25, 'CARTON', 1, 60.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (26, 'Assiette à jette Raha', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (50, '0020002600', 26, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (51, '0020002601', 26, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (27, 'Assorted lollipop Royale', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (52, '0080002700', 27, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (53, '0080002701', 27, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (28, 'BABY SEA CONFORT 5X32 N°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (54, '0090002800', 28, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (55, '0090002801', 28, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (29, 'BABY SEA CONFORT 5X36 N°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (56, '0090002900', 29, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (57, '0090002901', 29, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (30, 'Baby sea confort 5x36 n°3 en sachet', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (58, '0090003000', 30, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (59, '0090003001', 30, 'PAQUET', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (31, 'Ball bubble gum mix fruit 3.8g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (60, '0080003100', 31, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (61, '0080003101', 31, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (32, 'BAOBA CITRON 50CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (62, '0100003200', 32, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (33, 'BAOBA FRAISE 50CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (63, '0100003300', 33, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (34, 'BAOBA GRENADINE 50CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (64, '0100003400', 34, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (35, 'BAOBA MENTHE 50CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (65, '0100003500', 35, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (36, 'BAOBA ORANGE MANDARINE 50CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (66, '0100003600', 36, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (37, 'BAUME KATRAFAY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (67, '0020003700', 37, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (38, 'Baume ravintsara', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (68, '0020003800', 38, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (69, '0020003801', 38, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (39, 'Baume ravintsara En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (70, '0020003900', 39, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (40, 'Bba 1.5L en pieces', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (71, '0110004000', 40, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (41, 'Bebem pants culotte maxi 4x32 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (72, '0090004100', 41, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (73, '0090004101', 41, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (42, 'BEBEM PANTS TWIN JUNIOR 4X28 N°5', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (74, '0090004200', 42, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (75, '0090004201', 42, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (43, 'Bella vita Fusilli En Kapoaka', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (76, '0120004300', 43, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (44, 'Bella vita Spirales En Kapoaka', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (77, '0120004400', 44, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (45, 'BENNY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (78, '0020004500', 45, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (79, '0020004501', 45, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (46, 'BENNY en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (80, '0020004600', 46, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (47, 'Bhoot unkle', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (81, '0020004700', 47, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (82, '0020004701', 47, 'SACHET', 1, 30.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (83, '0020004702', 47, 'CARTON', 2, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (48, 'Bicuit milay be choco-fromages 24pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (84, '0010004800', 48, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (49, 'Big boy wafer biscuit 40 pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (85, '0010004900', 49, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (86, '0010004901', 49, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (50, 'BIG TOFFEE ASSORTED', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (87, '0080005000', 50, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (88, '0080005001', 50, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (51, 'Big toffee chocolate kemlo 200p*8bts', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (89, '0080005100', 51, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (90, '0080005101', 51, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (52, 'Big toffee happy birthblash', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (91, '0080005200', 52, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (92, '0080005201', 52, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (53, 'Big toffee strawberry kemlo 200p*8bte', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (93, '0080005300', 53, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (94, '0080005301', 53, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (54, 'bigg pop gum carre en bocal*100pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (95, '0080005400', 54, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (96, '0080005401', 54, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (55, 'BIGTOX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (97, '0030005500', 55, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (98, '0030005501', 55, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (56, 'Bis marie *18', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (99, '0010005600', 56, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (100, '0010005601', 56, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (57, 'Bis''nice 2 biscuits', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (101, '0010005700', 57, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (102, '0010005701', 57, 'CARTON', 1, 28.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (58, 'Bis''nice 9 biscuits', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (103, '0010005800', 58, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (104, '0010005801', 58, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (59, 'Biscuit 18 Delice', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (105, '0010005900', 59, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (106, '0010005901', 59, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (60, 'Biscuit 18 petit beurre', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (107, '0010006000', 60, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (108, '0010006001', 60, 'CARTON', 1, 4.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (61, 'Biscuit 18 petit lait', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (109, '0010006100', 61, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (110, '0010006101', 61, 'CARTON', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (62, 'BISCUIT 4X4 50', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (111, '0010006200', 62, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (112, '0010006201', 62, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (63, 'BISCUIT 4X4 BE VAO2', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (113, '0010006300', 63, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (114, '0010006301', 63, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (64, 'BISCUIT 4X4 CHOCO BE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (115, '0010006400', 64, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (116, '0010006401', 64, 'CARTON', 1, 27.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (65, 'Biscuit 4x4 choco miam', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (117, '0010006500', 65, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (118, '0010006501', 65, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (66, 'BISCUIT 4X4 GLUCOSE BE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (119, '0010006600', 66, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (120, '0010006601', 66, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (67, 'BISCUIT 4X4 GO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (121, '0010006700', 67, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (122, '0010006701', 67, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (68, 'Biscuit 4x4 krem banane', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (123, '0010006800', 68, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (124, '0010006801', 68, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (69, 'Biscuit 4x4 krem citron', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (125, '0010006900', 69, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (126, '0010006901', 69, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (70, 'Biscuit 6 delice', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (127, '0010007000', 70, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (128, '0010007001', 70, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (71, 'BISCUIT 6 PETIT BEURRE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (129, '0010007100', 71, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (130, '0010007101', 71, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (72, 'Biscuit bledor club cremica', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (131, '0010007200', 72, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (132, '0010007201', 72, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (73, 'Biscuit bledor En piece', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (133, '0010007300', 73, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (74, 'Biscuit bourbon cremica 20g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (134, '0010007400', 74, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (135, '0010007401', 74, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (75, 'Biscuit choco bico 65g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (136, '0010007500', 75, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (137, '0010007501', 75, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (76, 'Biscuit choco bico en pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (138, '0010007600', 76, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (77, 'Biscuit choco champ', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (139, '0010007700', 77, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (140, '0010007701', 77, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (78, 'Biscuit choco gof 12pcs*20', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (141, '0010007800', 78, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (142, '0010007801', 78, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (79, 'Biscuit chunk munk', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (143, '0010007900', 79, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (144, '0010007901', 79, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (80, 'Biscuit coconut gm', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (145, '0130008000', 80, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (146, '0130008001', 80, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (81, 'Biscuit coconut pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (147, '0010008100', 81, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (148, '0010008101', 81, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (82, 'Biscuit cream cheers', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (149, '0010008200', 82, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (150, '0010008201', 82, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (83, 'Biscuit Cream duex', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (151, '0010008300', 83, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (152, '0010008301', 83, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (84, 'Biscuit cream fresh jai kada', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (153, '0010008400', 84, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (154, '0010008401', 84, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (85, 'Biscuit cream lata', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (155, '0010008500', 85, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (156, '0010008501', 85, 'CARTON', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (86, 'Biscuit creamy Voila', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (157, '0010008600', 86, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (158, '0010008601', 86, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (87, 'Biscuit creme veto 82g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (159, '0010008700', 87, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (160, '0010008701', 87, 'CARON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (88, 'Biscuit cremelo cremica ass 70g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (161, '0010008800', 88, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (162, '0010008801', 88, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (89, 'Biscuit cremo.24pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (163, '0010008900', 89, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (164, '0010008901', 89, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (90, 'Biscuit crunch coated wafer', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (165, '0010009000', 90, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (91, 'Biscuit crunchy wafer 75g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (166, '0010009100', 91, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (167, '0010009101', 91, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (92, 'BISCUIT FAMILY VANILLE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (168, '0010009200', 92, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (169, '0010009201', 92, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (93, 'BISCUIT FARILAC', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (170, '0010009300', 93, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (171, '0010009301', 93, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (94, 'BISCUIT FREGO GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (172, '0010009400', 94, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (173, '0010009401', 94, 'CARTON', 1, 7.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (95, 'Biscuit frego pocket ass (pm)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (174, '0020009500', 95, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (175, '0020009501', 95, 'CARTON', 1, 23.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (96, 'BISCUIT GALETI', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (176, '0010009600', 96, 'SASHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (177, '0010009601', 96, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (97, 'Biscuit ginger', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (178, '0010009700', 97, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (179, '0010009701', 97, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (98, 'Biscuit glucose pm cream anita', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (180, '0010009800', 98, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (181, '0010009801', 98, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (99, 'Biscuit glucose Zaza botra', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (182, '0010009900', 99, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (183, '0010009901', 99, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (100, 'Biscuit hero', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (184, '0010010000', 100, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (185, '0010010001', 100, 'CARTON', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (101, 'Biscuit kamco leibniz 100p*24', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (186, '0140010100', 101, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (187, '0140010101', 101, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (102, 'Biscuit kit choco pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (188, '0010010200', 102, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (189, '0010010201', 102, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (103, 'Biscuit kit coco gm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (190, '0010010300', 103, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (191, '0010010301', 103, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (104, 'Biscuit kit coco pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (192, '0010010400', 104, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (193, '0010010401', 104, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (105, 'Biscuit Kreamy ''n krunch', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (194, '0010010500', 105, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (195, '0010010501', 105, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (106, 'BISCUIT KREMY', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (196, '0010010600', 106, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (197, '0010010601', 106, 'CARTON', 1, 15.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (107, 'Biscuit lexus crackers', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (198, '0010010700', 107, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (108, 'Biscuit lexus crackers En Pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (199, '0010010800', 108, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (109, 'Biscuit mahabibo', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (200, '0010010900', 109, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (201, '0010010901', 109, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (110, 'Biscuit major', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (202, '0010011000', 110, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (203, '0010011001', 110, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (111, 'Biscuit malt''n milt energy', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (204, '0010011100', 111, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (205, '0010011101', 111, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (112, 'Biscuit maria mamma mia', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (206, '0010011200', 112, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (207, '0010011201', 112, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (113, 'BISCUIT MARIE BE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (208, '0010011300', 113, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (209, '0010011301', 113, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (114, 'Biscuit marie be en pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (210, '0010011400', 114, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (115, 'Biscuit marie classic 9.5g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (211, '0010011500', 115, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (212, '0010011501', 115, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (116, 'Biscuit marie pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (213, '0010011600', 116, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (214, '0010011601', 116, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (117, 'Biscuit Miam pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (215, '0010011700', 117, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (216, '0010011701', 117, 'CARTON', 1, 15.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (118, 'Biscuit mini cream cookies', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (217, '0010011800', 118, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (218, '0010011801', 118, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (119, 'Biscuit nice bleu gm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (219, '0010011900', 119, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (220, '0010011901', 119, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (120, 'Biscuit nice bleu gm en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (221, '0020012000', 120, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (121, 'Biscuit nice bleu pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (222, '0010012100', 121, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (223, '0010012101', 121, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (122, 'Biscuit noor''s wafer ass 7g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (224, '0010012200', 122, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (123, 'Biscuit rama creamz mix 48pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (225, '0010012300', 123, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (226, '0010012301', 123, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (124, 'Biscuit rockers spark hitrick', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (227, '0010012400', 124, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (228, '0010012401', 124, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (125, 'Biscuit ronaldo', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (229, '0010012500', 125, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (230, '0010012501', 125, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (126, 'BISCUIT SAIDA WAFER', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (231, '0010012600', 126, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (232, '0010012601', 126, 'CARTON', 1, 28.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (127, 'Biscuit salto 15(gm )', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (233, '0010012700', 127, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (234, '0010012701', 127, 'CRT', 1, 7.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (128, 'Biscuit salto 6 pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (235, '0010012800', 128, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (236, '0010012801', 128, 'CARTON', 1, 18.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (129, 'Biscuit smily creamz', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (237, '0080012900', 129, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (238, '0080012901', 129, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (130, 'BISCUIT SUPER COCO VAOVAO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (239, '0010013000', 130, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (240, '0010013001', 130, 'CARTON', 1, 41.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (131, 'Biscuit super kreamo mix 48pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (241, '0010013100', 131, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (242, '0010013101', 131, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (132, 'BISCUIT YUM YUM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (243, '0020013200', 132, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (244, '0020013201', 132, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (133, 'Biscuit ziva creams 65g ass', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (245, '0010013300', 133, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (246, '0010013301', 133, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (134, 'Black hair', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (247, '0020013400', 134, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (248, '0020013401', 134, 'CARTON', 1, 84.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (135, 'Black hair en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (249, '0020013500', 135, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (136, 'Black rose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (250, '0020013600', 136, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (251, '0020013601', 136, 'BOITE PM', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (252, '0020013602', 136, 'BOITE GM', 2, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (137, 'Bledilait croissance n°3 400g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (253, '0020013700', 137, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (138, 'Bledilait croissance n°3 900g', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (254, '0150013800', 138, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (139, 'BLEDILAIT JUNIOR 800', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (255, '0020013900', 139, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (140, 'Bledilait Junoir 800g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (256, '0020014000', 140, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (141, 'Bleu dazur (boite)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (257, '0020014100', 141, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (258, '0020014101', 141, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (142, 'Bobon nyra coconut crunch', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (259, '0020014200', 142, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (260, '0020014201', 142, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (143, 'BOCAL GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (261, '0020014300', 143, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (144, 'BOISSON BIG PM', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (262, '0110014400', 144, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (145, 'Boisson Djino Cola 125 CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (263, '0110014500', 145, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (146, 'Boisson djino Cola 35 CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (264, '0110014600', 146, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (147, 'Boisson Djino limo 35 CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (265, '0110014700', 147, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (148, 'Boisson Djino tropical 125 CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (266, '0110014800', 148, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (149, 'Boisson Djino tropical orange 35 CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (267, '0110014900', 149, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (150, 'BOISSON GM', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (268, '0110015000', 150, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (151, 'BOISSON GM EN PCS', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (269, '0110015100', 151, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (152, 'BOISSON PM', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (270, '0110015200', 152, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (153, 'BOISSON PM EN PCS', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (271, '0110015300', 153, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (154, 'Bolo coeur', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (272, '0010015400', 154, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (273, '0010015401', 154, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (155, 'Bolo donut pm*16x20', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (274, '0010015500', 155, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (275, '0010015501', 155, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (156, 'BOLO KIDS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (276, '0010015600', 156, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (277, '0010015601', 156, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (157, 'BOLO PETITO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (278, '0020015700', 157, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (279, '0020015701', 157, 'CARTON', 1, 15.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (158, 'BOLO ZOOM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (280, '0010015800', 158, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (281, '0010015801', 158, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (159, 'Bonbon ambic koffito bocal 205pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (282, '0080015900', 159, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (283, '0080015901', 159, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (160, 'Bonbon ambic koffito en sht 100pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (284, '0080016000', 160, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (285, '0080016001', 160, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (161, 'BONBON AMENDAS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (286, '0080016100', 161, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (162, 'Bonbon assorted caramel En PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (287, '0080016200', 162, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (163, 'Bonbon assorted caramel en sht', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (288, '0080016300', 163, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (289, '0080016301', 163, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (164, 'Bonbon assorted dur+ Caramel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (290, '0080016400', 164, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (291, '0080016401', 164, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (165, 'Bonbon assorted ju-c', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (292, '0080016500', 165, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (166, 'Bonbon Assorted ju-c en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (293, '0080016600', 166, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (167, 'Bonbon big time rich', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (294, '0020016700', 167, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (295, '0020016701', 167, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (168, 'BONBON BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (296, '0080016800', 168, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (297, '0080016801', 168, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (169, 'BONBON BROCHETTE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (298, '0080016900', 169, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (170, 'Bonbon buble gum phastillia', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (299, '0080017000', 170, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (300, '0080017001', 170, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (171, 'Bonbon Caffee', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (301, '0080017100', 171, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (302, '0080017101', 171, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (172, 'Bonbon Car pop 5g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (303, '0080017200', 172, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (304, '0080017201', 172, 'CARTON', 1, 34.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (173, 'Bonbon Caramel ( vao )', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (305, '0080017300', 173, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (306, '0080017301', 173, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (174, 'BONBON CHOCO BEAN', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (307, '0080017400', 174, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (308, '0080017401', 174, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (175, 'BONBON CHOCO BOCAL OVAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (309, '0080017500', 175, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (310, '0080017501', 175, 'BOITE', 1, 300.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (176, 'BONBON CHOCO BOCAL OVAL EN PIECE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (311, '0080017600', 176, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (177, 'Bonbon choco gold coin', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (312, '0080017700', 177, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (313, '0080017701', 177, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (178, 'Bonbon choco mint 2.0', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (314, '0080017800', 178, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (315, '0080017801', 178, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (179, 'Bonbon choco mobile bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (316, '0080017900', 179, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (180, 'BONBON CHUPITO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (317, '0080018000', 180, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (318, '0080018001', 180, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (181, 'BONBON COEUR ENCRT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (319, '0080018100', 181, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (320, '0080018101', 181, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (182, 'Bonbon cola cola lollipop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (321, '0080018200', 182, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (322, '0080018201', 182, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (183, 'Bonbon Colombina 816x16', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (323, '0080018300', 183, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (324, '0080018301', 183, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (184, 'Bonbon dolly lolly choco', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (325, '0080018400', 184, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (326, '0080018401', 184, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (185, 'Bonbon eclaire pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (327, '0080018500', 185, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (328, '0080018501', 185, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (186, 'BONBON ENIS BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (329, '0080018600', 186, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (187, 'Bonbon erlan 400g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (330, '0080018700', 187, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (331, '0080018701', 187, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (188, 'BONBON FINGER SPRING', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (332, '0080018800', 188, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (333, '0080018801', 188, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (189, 'BONBON FLAMINGO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (334, '0080018900', 189, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (335, '0080018901', 189, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (190, 'Bonbon freshynes', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (336, '0080019000', 190, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (337, '0080019001', 190, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (191, 'Bonbon Fruit chew toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (338, '0080019100', 191, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (339, '0080019101', 191, 'CARTON', 1, 9.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (192, 'BONBON FRUIT CHEWY 600G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (340, '0080019200', 192, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (193, 'Bonbon fruit crush veto ass 2.65g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (341, '0080019300', 193, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (342, '0080019301', 193, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (194, 'Bonbon Fruit flash toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (343, '0080019400', 194, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (344, '0080019401', 194, 'CARTON', 1, 9.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (195, 'BONBON FRUIT MAN ENCRT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (345, '0020019500', 195, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (346, '0020019501', 195, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (196, 'Bonbon fruit slice orange', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (347, '0080019600', 196, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (348, '0080019601', 196, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (197, 'Bonbon fruto fils', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (349, '0080019700', 197, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (350, '0080019701', 197, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (198, 'Bonbon frutta pop lollipop veto', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (351, '0080019800', 198, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (352, '0080019801', 198, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (199, 'Bonbon gold 555 toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (353, '0080019900', 199, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (354, '0080019901', 199, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (200, 'Bonbon hoppin', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (355, '0080020000', 200, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (356, '0080020001', 200, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (201, 'Bonbon hoppin en pieces', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (357, '0080020100', 201, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (202, 'Bonbon huili toy candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (358, '0080020200', 202, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (359, '0080020201', 202, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (203, 'Bonbon janu fruitroll mix en sht', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (360, '0080020300', 203, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (204, 'Bonbon jok', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (361, '0080020400', 204, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (362, '0080020401', 204, 'SAC', 1, 80.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (205, 'Bonbon jok be+5', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (363, '0080020500', 205, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (364, '0080020501', 205, 'SAC', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (206, 'BONBON JOOK MIMANA', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (365, '0080020600', 206, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (366, '0080020601', 206, 'SAC', 1, 80.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (207, 'Bonbon kamco elenor', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (367, '0080020700', 207, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (368, '0080020701', 207, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (208, 'Bonbon kemlo caramilk en bocal blanc', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (369, '0080020800', 208, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (370, '0080020801', 208, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (209, 'Bonbon kemlo fruit punk en bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (371, '0080020900', 209, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (372, '0080020901', 209, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (210, 'Bonbon kemlo kids double truffle ass en bocal*8pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (373, '0080021000', 210, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (374, '0080021001', 210, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (211, 'Bonbon kemlo my birtday en bocal', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (375, '0110021100', 211, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (212, 'Bonbon kemlo my birthday ne bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (376, '0080021200', 212, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (377, '0080021201', 212, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (213, 'Bonbon kids joy 15*65pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (378, '0080021300', 213, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (214, 'Bonbon kids joy 65pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (379, '0080021400', 214, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (215, 'Bonbon King pop 48pcs*16scht', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (380, '0080021500', 215, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (381, '0080021501', 215, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (216, 'Bonbon koffico', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (382, '0080021600', 216, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (383, '0080021601', 216, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (217, 'Bonbon love choco bocal 100pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (384, '0080021700', 217, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (218, 'BONBON LOVE DROP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (385, '0020021800', 218, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (219, 'Bonbon milk double decker koffre', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (386, '0080021900', 219, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (387, '0080021901', 219, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (220, 'BONBON MILK FLAVOR', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (388, '0080022000', 220, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (221, 'Bonbon Milki z', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (389, '0020022100', 221, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (390, '0020022101', 221, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (222, 'Bonbon milky cow veto', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (391, '0080022200', 222, 'SACHAT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (392, '0080022201', 222, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (223, 'Bonbon mom big pop 8g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (393, '0080022300', 223, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (394, '0080022301', 223, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (224, 'Bonbon my doll rich', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (395, '0020022400', 224, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (396, '0020022401', 224, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (225, 'Bonbon nyra butter max', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (397, '0080022500', 225, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (398, '0080022501', 225, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (226, 'Bonbon nyra my milk mithai', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (399, '0080022600', 226, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (400, '0080022601', 226, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (227, 'Bonbon nyra my milk rabi', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (401, '0080022700', 227, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (402, '0080022701', 227, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (228, 'Bonbon nyra twins', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (403, '0080022800', 228, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (404, '0080022801', 228, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (229, 'Bonbon nyra twins orange', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (405, '0080022900', 229, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (406, '0080022901', 229, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (230, 'BONBON OPERA', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (407, '0080023000', 230, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (408, '0080023001', 230, 'CARTONS', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (231, 'Bonbon party bomb toffe bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (409, '0080023100', 231, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (232, 'BONBON PIN POP SUCETTE MX', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (410, '0080023200', 232, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (411, '0080023201', 232, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (233, 'Bonbon premium candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (412, '0080023300', 233, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (413, '0080023301', 233, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (234, 'Bonbon premium candy en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (414, '0080023400', 234, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (235, 'Bonbon premium tamarino', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (415, '0080023500', 235, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (416, '0080023501', 235, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (236, 'Bonbon racing car', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (417, '0080023600', 236, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (418, '0080023601', 236, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (237, 'Bonbon rainbow dry figs', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (419, '0140023700', 237, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (420, '0140023701', 237, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (238, 'Bonbon ring lollipop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (421, '0080023800', 238, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (239, 'Bonbon Robin', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (422, '0080023900', 239, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (423, '0080023901', 239, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (240, 'BONBON RONONO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (424, '0080024000', 240, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (241, 'BONBON SILLY BILLY ENCRT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (425, '0080024100', 241, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (426, '0080024101', 241, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (242, 'BONBON SIMON DUE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (427, '0080024200', 242, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (243, 'Bonbon Simonetto assorted', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (428, '0020024300', 243, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (429, '0020024301', 243, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (244, 'BONBON SMALL OLIVARY CRT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (430, '0080024400', 244, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (431, '0080024401', 244, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (245, 'Bonbon speed racing', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (432, '0080024500', 245, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (246, 'Bonbon sprint lollipop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (433, '0080024600', 246, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (434, '0080024601', 246, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (247, 'Bonbon star POP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (435, '0080024700', 247, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (436, '0080024701', 247, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (248, 'Bonbon sucette Chupito', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (437, '0080024800', 248, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (438, '0080024801', 248, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (249, 'Bonbon sucette Chupito en Pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (439, '0110024900', 249, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (250, 'Bonbon sucette Fruit Lolipop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (440, '0020025000', 250, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (441, '0020025001', 250, 'SAC', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (251, 'Bonbon sucette kely milk lollipop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (442, '0080025100', 251, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (443, '0080025101', 251, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (252, 'Bonbon sucette kely milk lollipop En pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (444, '0080025200', 252, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (253, 'Bonbon sucette Milk Lolipop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (445, '0020025300', 253, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (446, '0020025301', 253, 'SAC', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (254, 'Bonbon sucette Mix fruit', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (447, '0080025400', 254, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (448, '0080025401', 254, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (255, 'Bonbon sucette Pin pon', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (449, '0080025500', 255, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (450, '0080025501', 255, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (256, 'BONBON SUCETTE PM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (451, '0080025600', 256, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (257, 'Bonbon sucette pm choco caramel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (452, '0080025700', 257, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (453, '0080025701', 257, 'CATRON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (258, 'Bonbon sucette pm choco vanilla', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (454, '0080025800', 258, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (455, '0080025801', 258, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (259, 'Bonbon sucette pm cola', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (456, '0080025900', 259, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (457, '0080025901', 259, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (260, 'Bonbon sucette roze pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (458, '0080026000', 260, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (459, '0080026001', 260, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (261, 'Bonbon sucette Yogurt Lolipop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (460, '0020026100', 261, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (461, '0020026101', 261, 'SAC', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (262, 'Bonbon supa filled', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (462, '0080026200', 262, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (463, '0080026201', 262, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (263, 'Bonbon super milk candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (464, '0080026300', 263, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (465, '0080026301', 263, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (264, 'Bonbon sweet cup choco bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (466, '0080026400', 264, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (265, 'Bonbon switch pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (467, '0080026500', 265, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (468, '0080026501', 265, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (266, 'BONBON TAMARIN N CRT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (469, '0080026600', 266, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (470, '0080026601', 266, 'CARTON', 1, 10.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (267, 'BONBON TAMARIN PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (471, '0020026700', 267, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (472, '0020026701', 267, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (268, 'Bonbon tamarind candy veto 3.5g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (473, '0080026800', 268, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (269, 'Bonbon tamarind cone pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (474, '0080026900', 269, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (475, '0080026901', 269, 'CACRTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (270, 'Bonbon tennis bubble gum bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (476, '0080027000', 270, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (271, 'Bonbon tennis gum jolly boy bocal*115pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (477, '0080027100', 271, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (272, 'Bonbon tik tok gum vita', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (478, '0080027200', 272, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (479, '0080027201', 272, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (273, 'Bonbon top mint candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (480, '0080027300', 273, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (481, '0080027301', 273, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (274, 'Bonbon top mint candy En pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (482, '0080027400', 274, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (275, 'Bonbon toy candy ( basy )', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (483, '0080027500', 275, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (484, '0080027501', 275, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (276, 'Bonbon vintage truff choco 1kg', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (485, '0080027600', 276, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (486, '0080027601', 276, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (277, 'BONBON YOLO POP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (487, '0080027700', 277, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (278, 'BOUGIE 3 ETOILE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (488, '0020027800', 278, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (489, '0020027801', 278, 'CRT', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (279, 'Bougie Anita', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (490, '0160027900', 279, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (491, '0160027901', 279, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (280, 'BOUGIE CLASSIC', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (492, '0160028000', 280, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (493, '0160028001', 280, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (281, 'BOUGIE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (494, '0020028100', 281, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (495, '0020028101', 281, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (282, 'Bougie golden (gm)', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (496, '0160028200', 282, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (497, '0160028201', 282, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (283, 'BOUGIE GOLDEN GM', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (498, '0160028300', 283, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (499, '0160028301', 283, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (284, 'BOUGIE LEENA GM', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (500, '0160028400', 284, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (501, '0160028401', 284, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (285, 'Bougie mateza *30', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (502, '0160028500', 285, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (503, '0160028501', 285, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (286, 'Bougie nitro gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (504, '0020028600', 286, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (505, '0020028601', 286, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (287, 'Bougie nitro pm', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (506, '0160028700', 287, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (507, '0160028701', 287, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (288, 'Bracelet jump candy 9g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (508, '0080028800', 288, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (289, 'Brillant ring candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (509, '0080028900', 289, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (510, '0080028901', 289, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (290, 'Briquet galaxy', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (511, '0170029000', 290, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (512, '0170029001', 290, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (291, 'Briquet galaxy pcs', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (513, '0170029100', 291, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (292, 'BRIQUET LIGHTER BIG STAR', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (514, '0170029200', 292, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (515, '0170029201', 292, 'CARTON', 1, 200.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (293, 'Briquet nitro led*50', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (516, '0020029300', 293, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (294, 'BRIQUET OUI', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (517, '0170029400', 294, 'BTE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (518, '0170029401', 294, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (295, 'BRIQUET STAR', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (519, '0170029500', 295, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (296, 'Briquet voila', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (520, '0020029600', 296, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (521, '0020029601', 296, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (297, 'Briquet Yes', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (522, '0020029700', 297, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (523, '0020029701', 297, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (298, 'Brosse à dent angola', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (524, '0180029800', 298, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (525, '0180029801', 298, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (299, 'Brosse à dent Anita', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (526, '0180029900', 299, 'PACQUETS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (300, 'Brosse a dent carona', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (527, '0020030000', 300, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (528, '0020030001', 300, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (301, 'Brosse à dent ciptadent', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (529, '0020030100', 301, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (530, '0020030101', 301, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (302, 'BROSSE A DENT COLGATE DOUBLE ACTION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (531, '0020030200', 302, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (532, '0020030201', 302, 'BOITE', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (303, 'BROSSE A DENT COLGATE EN PQT', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (533, '0190030300', 303, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (304, 'Brosse à dent dr joy finnest', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (534, '0020030400', 304, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (535, '0020030401', 304, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (305, 'BROSSE A DENT TRIKA', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (536, '0180030500', 305, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (306, 'Brosse a dent trika en Pcs', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (537, '0180030600', 306, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (307, 'Brosse à dent white doctor', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (538, '0020030700', 307, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (308, 'Brox cola canette 250ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (539, '0020030800', 308, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (540, '0020030801', 308, 'PIECE', 1, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (541, '0020030802', 308, 'PAQUET', 2, 24.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (542, '0020030803', 308, 'PAQUET', 3, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (309, 'Brox energy canette 250ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (543, '0020030900', 309, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (544, '0020030901', 309, 'PAQUET', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (310, 'Bubble stick', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (545, '0080031000', 310, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (546, '0080031001', 310, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (311, 'Bubble sword ( animal )', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (547, '0020031100', 311, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (312, 'BUBLE -CICLE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (548, '0080031200', 312, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (313, 'CAFE 50KG en kp', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (549, '0200031300', 313, 'KAPOAKA', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (550, '0200031301', 313, 'SAC', 1, 200.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (314, 'Cafe cappuccino lemser', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (551, '0020031400', 314, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (552, '0020031401', 314, 'PAQUET', 1, 20.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (553, '0020031402', 314, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (315, 'CAFE TSY LEFY 20G', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (554, '0200031500', 315, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (316, 'CAFE TSY LEFY 30G', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (555, '0200031600', 316, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (317, 'CAFE TSY LEFY 90G', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (556, '0200031700', 317, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (318, 'CAHIER 100 P SUPER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (557, '0020031800', 318, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (558, '0020031801', 318, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (319, 'CAHIER 100P CALLIGRAPHE', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (559, '0210031900', 319, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (560, '0210031901', 319, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (320, 'CAHIER 100P CHEVALIER GF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (561, '0210032000', 320, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (321, 'CAHIER 100P elite', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (562, '0210032100', 321, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (563, '0210032101', 321, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (322, 'CAHIER 100P GF EUROPE', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (564, '0210032200', 322, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (323, 'CAHIER 100P GF MN', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (565, '0210032300', 323, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (324, 'CAHIER 100P PLAST', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (566, '0210032400', 324, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (567, '0210032401', 324, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (325, 'CAHIER 100P SUPER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (568, '0020032500', 325, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (569, '0020032501', 325, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (326, 'Cahier 100p Triump Plas gf en pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (570, '0210032600', 326, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (327, 'CAHIER 100P TRIUMPH PLAST GF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (571, '0210032700', 327, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (572, '0210032701', 327, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (328, 'CAHIER 100P TRIUMPH PLASTIC PF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (573, '0020032800', 328, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (574, '0020032801', 328, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (329, 'CAHIER 200P CHEVALIER GF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (575, '0210032900', 329, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (576, '0210032901', 329, 'CARTON', 1, 12.00, 10.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (330, 'CAHIER 200P GF LUX', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (577, '0210033000', 330, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (331, 'CAHIER 200P GF SUPER', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (578, '0210033100', 331, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (332, 'CAHIER 200P GF TSOTRA', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (579, '0210033200', 332, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (333, 'CAHIER 200P lord', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (580, '0210033300', 333, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (581, '0210033301', 333, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (334, 'CAHIER 200P LUX', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (582, '0210033400', 334, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (335, 'CAHIER 200P PLAST', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (583, '0210033500', 335, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (584, '0210033501', 335, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (336, 'Cahier 200p Triump gf en piece', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (585, '0210033600', 336, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (337, 'Cahier 200p Triump Plas gf en pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (586, '0210033700', 337, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (338, 'Cahier 200P Triumph plastique pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (587, '0210033800', 338, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (588, '0210033801', 338, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (339, 'Cahier 200P Triumph plastique pf Pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (589, '0210033900', 339, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (340, 'CAHIER 200P TRIUMPH PLST GF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (590, '0210034000', 340, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (591, '0210034001', 340, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (341, 'CAHIER 200P TRIUMPH TSOTRA PF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (592, '0210034100', 341, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (593, '0210034101', 341, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (342, 'CAHIER 200P TRIUMPH TSOTRA PF EN PCS', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (594, '0210034200', 342, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (343, 'CAHIER 200P TSOTRA', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (595, '0210034300', 343, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (344, 'CAHIER 50P elite', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (596, '0210034400', 344, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (597, '0210034401', 344, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (345, 'CAHIER 50P TRIUMPH', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (598, '0210034500', 345, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (599, '0210034501', 345, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (346, 'CAHIER 50P TRIUMPH en piece', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (600, '0210034600', 346, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (347, 'CAHIER BOSEUR 200 P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (601, '0210034700', 347, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (348, 'CAHIER CHAMPION 100P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (602, '0210034800', 348, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (603, '0210034801', 348, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (349, 'CAHIER CHAMPION 200P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (604, '0210034900', 349, 'PACQUES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (605, '0210034901', 349, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (350, 'CAHIER DE DESSIN', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (606, '0210035000', 350, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (607, '0210035001', 350, 'CRT', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (351, 'CAHIER DIGITAL 200P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (608, '0210035100', 351, 'PACQUES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (609, '0210035101', 351, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (352, 'CAHIER DIGITAL 50P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (610, '0210035200', 352, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (611, '0210035201', 352, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (353, 'Cahier digital 50pg en pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (612, '0210035300', 353, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (354, 'CAHIER ECRITURE', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (613, '0210035400', 354, 'PACQUES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (614, '0210035401', 354, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (355, 'CAHIER ECRITURE CALLIGRAPHE REF5403', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (615, '0210035500', 355, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (616, '0210035501', 355, 'CERTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (356, 'Cahier ecriture En Pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (617, '0210035600', 356, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (357, 'Cahier france 100p pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (618, '0210035700', 357, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (619, '0210035701', 357, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (358, 'Cahier le bosseur 100pg pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (620, '0210035800', 358, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (621, '0210035801', 358, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (359, 'Cahier le bosseur 200pg En pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (622, '0210035900', 359, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (360, 'Cahier le bosseur 200pg pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (623, '0210036000', 360, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (624, '0210036001', 360, 'CARTONS', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (361, 'Cahier le bosseur 200pg pf En Pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (625, '0210036100', 361, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (362, 'Cahier le ecolaire 100pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (626, '0210036200', 362, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (627, '0210036201', 362, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (363, 'Cahier le ecolaire 48pg', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (628, '0210036300', 363, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (629, '0210036301', 363, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (364, 'Cahier Nitroline 100p pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (630, '0210036400', 364, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (631, '0210036401', 364, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (365, 'Cahier Nitroline 200p pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (632, '0210036500', 365, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (633, '0210036501', 365, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (366, 'Cahier Nitroline 50p pf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (634, '0210036600', 366, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (635, '0210036601', 366, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (367, 'Cahier Scolaire 200p tsotra ( Pf )', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (636, '0210036700', 367, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (637, '0210036701', 367, 'CARTONS', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (368, 'CAHIER SCOLAIRE SEYES 100 GF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (638, '0210036800', 368, 'PACQUES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (639, '0210036801', 368, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (369, 'Cahier super lord''s 100pg', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (640, '0210036900', 369, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (641, '0210036901', 369, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (370, 'Cahier super lord''s 200pg', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (642, '0210037000', 370, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (643, '0210037001', 370, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (371, 'CAHIER SUPER LORD''S 50 PAGE', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (644, '0210037100', 371, 'PACQUES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (645, '0210037101', 371, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (372, 'Cahier super tops 50Pg', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (646, '0210037200', 372, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (647, '0210037201', 372, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (373, 'Cahier Triump 200p gf', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (648, '0210037300', 373, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (649, '0210037301', 373, 'CARTONS', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (374, 'Cahier Triumph 100p ( Pf )', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (650, '0210037400', 374, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (651, '0210037401', 374, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (375, 'Cahier Triumph 100p En pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (652, '0210037500', 375, 'PCS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (376, 'CAHIER TRIUMPH 100P GF TSOTRA', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (653, '0210037600', 376, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (654, '0210037601', 376, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (377, 'Cahier Triumph 200p En pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (655, '0210037700', 377, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (378, 'CAHIER TRIUMPH DESIGN 100P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (656, '0210037800', 378, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (657, '0210037801', 378, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (379, 'CAHIER TRIUMPH DESIGN 100P en piece', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (658, '0210037900', 379, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (380, 'CAHIER TRIUMPH DESIGN 200P', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (659, '0210038000', 380, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (660, '0210038001', 380, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (381, 'Cahier triumph desingn 100g en pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (661, '0210038100', 381, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (382, 'Cahier triumph desingn 200pg en pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (662, '0210038200', 382, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (383, 'Cahier Triumph Plastique 100p En pcs', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (663, '0210038300', 383, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (384, 'CAHIER TRIUMPH SCOLAIRE ETOILE 100PG PF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (664, '0210038400', 384, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (665, '0210038401', 384, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (385, 'CAHIER TRIUMPH SCOLAIRE ETOILE 200PG PF', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (666, '0210038500', 385, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (667, '0210038501', 385, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (386, 'CANDI CRUSH EN PCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (668, '0020038600', 386, 'PCE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (387, 'Candia lait 150ml*30', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (669, '0100038700', 387, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (670, '0100038701', 387, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (388, 'Candia lait 1l*12', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (671, '0020038800', 388, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (672, '0020038801', 388, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (389, 'Candia lait 500ml 1/2 ec', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (673, '0020038900', 389, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (674, '0020038901', 389, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (390, 'Candia le fromage gourmande 36*8g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (675, '0020039000', 390, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (676, '0020039001', 390, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (391, 'Candy bonbon bonjourne cola bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (677, '0080039100', 391, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (678, '0080039101', 391, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (392, 'Candy bonbon bonjourne sprint bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (679, '0080039200', 392, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (680, '0080039201', 392, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (393, 'Candy gloss 7g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (681, '0020039300', 393, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (682, '0020039301', 393, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (394, 'Candy king fanta orange', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (683, '0080039400', 394, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (684, '0080039401', 394, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (395, 'Candy up fraise 150ml*30', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (685, '0100039500', 395, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (686, '0100039501', 395, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (396, 'Candy up fraise 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (687, '0020039600', 396, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (688, '0020039601', 396, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (397, 'Candy up raisin 150ml*30', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (689, '0100039700', 397, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (690, '0100039701', 397, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (398, 'Candy up vanille 150ml*30', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (691, '0100039800', 398, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (692, '0100039801', 398, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (399, 'Caprice ananas 50cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (693, '0110039900', 399, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (400, 'Caprice Bba 1,5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (694, '0110040000', 400, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (401, 'Caprice bba 50cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (695, '0110040100', 401, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (402, 'Caprice bba 50cl En pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (696, '0110040200', 402, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (697, '0110040201', 402, 'PIECE', 1, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (403, 'Caprice Fanta Ananas 1,5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (698, '0110040300', 403, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (404, 'Caprice Fanta Ananas 1,5L En pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (699, '0110040400', 404, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (405, 'Caprice grenadine 1,5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (700, '0110040500', 405, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (406, 'CAPRICE GRENADINE 1,5L EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (701, '0020040600', 406, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (407, 'Caprice Grenadine 50cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (702, '0110040700', 407, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (408, 'Caprice pomme 1.5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (703, '0110040800', 408, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (409, 'Caprice Soda Orange 1,5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (704, '0110040900', 409, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (410, 'Caprice Soda Orange 1,5L En piece', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (705, '0110041000', 410, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (411, 'Caprice soda orange 50cL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (706, '0110041100', 411, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (412, 'Caprice World cola 1.5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (707, '0110041200', 412, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (413, 'Caprice World cola 1.5L en pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (708, '0110041300', 413, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (414, 'Caprice World Cola 50cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (709, '0110041400', 414, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (415, 'Caprice Youzou 50CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (710, '0110041500', 415, 'PACQUES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (416, 'CARAMEL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (711, '0080041600', 416, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (712, '0080041601', 416, 'CARTON', 1, 34.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (417, 'CARBONATE', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (713, '0220041700', 417, 'KG', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (714, '0220041701', 417, 'SAC', 1, 25.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (418, 'Carbonate en KILOS', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (715, '0230041800', 418, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (419, 'Carnet polo pqt de 15', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (716, '0240041900', 419, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (717, '0240041901', 419, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (420, 'CARNET PQT DE 15', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (718, '0240042000', 420, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (719, '0240042001', 420, 'CARTON', 1, 30.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (421, 'Carry 30g', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (720, '0250042100', 421, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (721, '0250042101', 421, 'BALLE', 1, 10.00, 10.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (422, 'Carry moulu doypack', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (722, '0020042200', 422, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (723, '0020042201', 422, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (423, 'Cars pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (724, '0080042300', 423, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (725, '0080042301', 423, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (424, 'Cartable enfant lisse', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (726, '0020042400', 424, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (425, 'Cartable enfant lux', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (727, '0020042500', 425, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (426, 'Cartoon lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (728, '0080042600', 426, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (729, '0080042601', 426, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (427, 'Cartoon zoo lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (730, '0080042700', 427, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (731, '0080042701', 427, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (428, 'Cebon bouillon de boeuf cubes', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (732, '0020042800', 428, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (733, '0020042801', 428, 'CARTON', 1, 80.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (429, 'CHAISE PLASTIC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (734, '0020042900', 429, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (430, 'Champigno europa 400g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (735, '0020043000', 430, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (431, 'Champignons shitake 250g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (736, '0020043100', 431, 'SACHTE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (432, 'CHANPIGON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (737, '0020043200', 432, 'BTE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (433, 'CHANTILLY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (738, '0080043300', 433, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (434, 'CHAPEAU DE PLUIE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (739, '0020043400', 434, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (435, 'CHEESE BALLS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (740, '0010043500', 435, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (741, '0010043501', 435, 'SACHET', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (436, 'Cheese balls', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (742, '0020043600', 436, 'SACHETS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (743, '0020043601', 436, 'BALLES', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (437, 'Cheesse rings', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (744, '0020043700', 437, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (438, 'Cheesse rings en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (745, '0020043800', 438, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (439, 'CHEMISE DE DOSSIER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (746, '0020043900', 439, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (440, 'Chikito choco caramel', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (747, '0010044000', 440, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (748, '0010044001', 440, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (441, 'Chikito choco coco', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (749, '0010044100', 441, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (750, '0010044101', 441, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (442, 'Chilli pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (751, '0080044200', 442, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (752, '0080044201', 442, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (443, 'Choco balls football veto', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (753, '0020044300', 443, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (754, '0020044301', 443, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (444, 'Choco balls football veto Pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (755, '0020044400', 444, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (445, 'CHOCO BUTTERFLY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (756, '0080044500', 445, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (446, 'CHOCO BUTTERFLY', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (757, '0140044600', 446, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (447, 'choco cube bocal', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (758, '0020044700', 447, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (448, 'CHOCO CUP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (759, '0080044800', 448, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (760, '0080044801', 448, 'BOITE', 1, 150.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (449, 'Choco mini balls', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (761, '0020044900', 449, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (450, 'Choco mini balls en piece', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (762, '0080045000', 450, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (451, 'Choco minitella bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (763, '0080045100', 451, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (764, '0080045101', 451, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (452, 'CHOCOLAT DUCREM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (765, '0080045200', 452, 'BOITES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (766, '0080045201', 452, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (453, 'Chocolat euro gold bocal 125 pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (767, '0080045300', 453, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (768, '0080045301', 453, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (454, 'Chocolat gaufrette 77 italiano au choco 65g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (769, '0010045400', 454, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (770, '0010045401', 454, 'BOITE', 1, 24.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (771, '0010045402', 454, 'CARTON', 2, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (455, 'Chocolat gaufrette 77 italiano au lait 65g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (772, '0010045500', 455, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (773, '0010045501', 455, 'BOITE', 1, 24.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (774, '0010045502', 455, 'CARTON', 2, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (456, 'Chocolat golden heart', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (775, '0140045600', 456, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (457, 'CHOCOLAT MONTRE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (776, '0080045700', 457, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (458, 'Chocolat royce bocal*12', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (777, '0140045800', 458, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (778, '0140045801', 458, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (459, 'CHOCOLAT TR?êS BON', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (779, '0140045900', 459, 'BOCAL', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (780, '0140045901', 459, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (460, 'Chocolate biscuit', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (781, '0020046000', 460, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (461, 'Chocolate golden coin 200pcs', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (782, '0140046100', 461, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (462, 'Chocolate pen 10g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (783, '0020046200', 462, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (784, '0020046201', 462, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (463, 'CIKIDAY 20G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (785, '0010046300', 463, 'BTS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (786, '0010046301', 463, 'CRT', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (464, 'CIMENT LUCKY', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (787, '0260046400', 464, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (465, 'CIMENT WP', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (788, '0260046500', 465, 'SAC', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (789, '0260046501', 465, 'SAC', 1, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (466, 'CITRON 200G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (790, '0270046600', 466, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (791, '0270046601', 466, 'CRT', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (467, 'CITRON FRAIS 200 GR', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (792, '0270046700', 467, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (793, '0270046701', 467, 'CARTONS', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (468, 'CITRON FRAIS BARRE 750G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (794, '0270046800', 468, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (795, '0270046801', 468, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (469, 'Citron frais barre 800gr', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (796, '0280046900', 469, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (797, '0280046901', 469, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (470, 'CITRON FRAIS BARRE 900GR', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (798, '0280047000', 470, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (799, '0280047001', 470, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (471, 'CITRON PLUS', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (800, '0280047100', 471, 'BARRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (801, '0280047101', 471, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (472, 'CLASSICO GM', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (802, '0100047200', 472, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (473, 'CLASSICO PM', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (803, '0100047300', 473, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (474, 'CLE VACHETTE DOUBLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (804, '0020047400', 474, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (475, 'Coca cola canette 300ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (805, '0110047500', 475, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (806, '0110047501', 475, 'PACQUET', 1, 6.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (807, '0110047502', 475, 'CARTON', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (476, 'Coca cola pet 1.5 en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (808, '0020047600', 476, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (477, 'Coca cola pet 1.5*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (809, '0110047700', 477, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (478, 'Coca cola pet 350CL en pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (810, '0110047800', 478, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (479, 'Coca cola pet 350ml *12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (811, '0110047900', 479, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (480, 'COCA COLA PET 50CL *12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (812, '0110048000', 480, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (481, 'Cocacola 1.5L En piece', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (813, '0110048100', 481, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (482, 'Cocacola 50CL En piece', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (814, '0110048200', 482, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (483, 'COLGAT FORMULA', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (815, '0180048300', 483, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (816, '0180048301', 483, 'PAQUET', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (484, 'COLGATE & BROSSE DENT ANGOLA BLEU &ROUGE GM', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (817, '0190048400', 484, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (485, 'Colgate gm 100ml', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (818, '0190048500', 485, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (819, '0190048501', 485, 'PACQUES', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (820, '0190048502', 485, 'CARTON', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (486, 'Colgate maximum cavity 100ml en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (821, '0020048600', 486, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (487, 'Colgate maximum cavity 100ml*72', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (822, '0020048700', 487, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (823, '0020048701', 487, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (488, 'Colgate maximum cavity 25ml en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (824, '0020048800', 488, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (489, 'Colgate maximum cavity 25ml*144', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (825, '0020048900', 489, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (490, 'Colgate pm 50ml ( 77g )', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (826, '0020049000', 490, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (827, '0020049001', 490, 'PACQUES', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (828, '0020049002', 490, 'CARTON', 2, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (491, 'COLGATE SIGNALE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (829, '0020049100', 491, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (830, '0020049101', 491, 'PAQUET', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (492, 'COLGATE TOTAL PRO 75ML (100G)', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (831, '0190049200', 492, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (832, '0190049201', 492, 'PQT', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (833, '0190049202', 492, 'CRT', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (493, 'Colle Super glue 3g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (834, '0020049300', 493, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (494, 'Colombina jumbo sucette 1250g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (835, '0080049400', 494, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (495, 'COLORANT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (836, '0020049500', 495, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (496, 'Colorant parfum nandi''s chocolate', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (837, '0020049600', 496, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (838, '0020049601', 496, 'PAQUET', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (497, 'Colorful jelly candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (839, '0080049700', 497, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (498, 'CONFORT COUCHE ADULTE 6 XL10', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (840, '0090049800', 498, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (841, '0090049801', 498, 'BALLE', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (499, 'Contre tout', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (842, '0020049900', 499, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (843, '0020049901', 499, 'SAC', 1, 40.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (500, 'CONVERT 180WATTS', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (844, '0290050000', 500, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (501, 'COOKIE BE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (845, '0010050100', 501, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (502, 'COOL', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (846, '0300050200', 502, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (847, '0300050201', 502, 'CARTON', 1, 30.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (503, 'CORD N°03', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (848, '0020050300', 503, 'RLX', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (504, 'Corde n°10*8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (849, '0020050400', 504, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (505, 'Corde n°12*6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (850, '0020050500', 505, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (506, 'CORDE N2', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (851, '0020050600', 506, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (507, 'Corde n°2*50', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (852, '0020050700', 507, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (508, 'Corde n°3*48', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (853, '0020050800', 508, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (509, 'CORDE N4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (854, '0020050900', 509, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (510, 'Corde n°4*36', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (855, '0020051000', 510, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (511, 'CORDE N6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (856, '0020051100', 511, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (512, 'Corde n°6*14', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (857, '0020051200', 512, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (513, 'CORDE N8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (858, '0020051300', 513, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (514, 'Corde n°8*10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (859, '0020051400', 514, 'ROULEAU', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (515, 'Corn puff', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (860, '0020051500', 515, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (516, 'Corn puff en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (861, '0020051600', 516, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (517, 'CORRY GM', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (862, '0280051700', 517, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (518, 'CORRY PM', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (863, '0280051800', 518, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (519, 'Couche bebeo culotte junior 5x28 n°5', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (864, '0090051900', 519, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (865, '0090051901', 519, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (520, 'Couche bebeo culotte junior 5x28 n°5 en sachet', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (866, '0090052000', 520, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (867, '0090052001', 520, 'PAQUET', 1, 28.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (521, 'Couche bebeo culotte maxi 5x32 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (868, '0090052100', 521, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (869, '0090052101', 521, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (522, 'Couche bebeo culotte midi 5x36 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (870, '0090052200', 522, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (871, '0090052201', 522, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (523, 'Couche bebeo culotte midi n°3 en piece', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (872, '0090052300', 523, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (524, 'Couche bebeo midi N°2 en piece', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (873, '0090052400', 524, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (525, 'Couche bebeo N°2 mini 2x40', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (874, '0090052500', 525, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (875, '0090052501', 525, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (526, 'Couche bebeo N°3 midi 4x36', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (876, '0090052600', 526, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (877, '0090052601', 526, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (527, 'Couche bebeo N°4 maxi 4x32', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (878, '0090052700', 527, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (879, '0090052701', 527, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (528, 'Couche calinou maxi 4*32 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (880, '0090052800', 528, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (881, '0090052801', 528, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (529, 'Couche calinou midi 4*36 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (882, '0090052900', 529, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (883, '0090052901', 529, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (530, 'Couche calinou mini 4*40 n°2', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (884, '0090053000', 530, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (885, '0090053001', 530, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (531, 'COUCHE CULOTTE SWEETY FIT PANTZ L1 MAXI', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (886, '0090053100', 531, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (887, '0090053101', 531, 'PACQUET', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (532, 'COUCHE CULOTTE SWEETY FIT PANTZ L8 MAXI', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (888, '0090053200', 532, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (889, '0090053201', 532, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (533, 'Couche culotte sweety fit pantz m24', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (890, '0090053300', 533, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (891, '0090053301', 533, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (534, 'Couche mavis maxi 10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (892, '0020053400', 534, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (893, '0020053401', 534, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (535, 'COUCHE MOLFIX MINI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (894, '0020053500', 535, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (895, '0020053501', 535, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (536, 'Couche molly maxi 4x32 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (896, '0090053600', 536, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (897, '0090053601', 536, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (537, 'Couche molly midi 4x36 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (898, '0090053700', 537, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (899, '0090053701', 537, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (538, 'Couche molly mini 4x40 n°2', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (900, '0090053800', 538, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (901, '0090053801', 538, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (539, 'COUCHE PAMPERS N°5 (5X30)', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (902, '0090053900', 539, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (540, 'COUVERTURE VANILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (903, '0020054000', 540, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (541, 'Cpp dice cartoon lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (904, '0080054100', 541, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (542, 'Cpp fruit cartoon lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (905, '0080054200', 542, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (543, 'Cpp mixed shape lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (906, '0080054300', 543, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (544, 'CRAIE BLANCHE', 31, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (907, '0310054400', 544, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (545, 'CRAIE COULEUR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (908, '0020054500', 545, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (546, 'Craie hi blanche 100pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (909, '0020054600', 546, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (910, '0020054601', 546, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (547, 'Craie hi couleur 100pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (911, '0020054700', 547, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (912, '0020054701', 547, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (548, 'Craie reflex blanche', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (913, '0020054800', 548, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (914, '0020054801', 548, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (549, 'Craie reflex couleur', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (915, '0020054900', 549, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (916, '0020054901', 549, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (550, 'Cream biscuit tik tok 50g*10*10sht', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (917, '0010055000', 550, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (918, '0010055001', 550, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (551, 'Cream biscuit tik tok 70g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (919, '0080055100', 551, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (920, '0080055101', 551, 'CARTON', 1, 3.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (552, 'Cream wafer oye biscuits', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (921, '0010055200', 552, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (922, '0010055201', 552, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (553, 'Creme mousquito dudu 70g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (923, '0020055300', 553, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (924, '0020055301', 553, 'PACQUET', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (925, '0020055302', 553, 'CARTON', 2, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (554, 'Creme mousquito family care 70g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (926, '0020055400', 554, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (927, '0020055401', 554, 'PAQUET', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (928, '0020055402', 554, 'CARTON', 2, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (555, 'Crispy cone dy coneo', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (929, '0010055500', 555, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (930, '0010055501', 555, 'CARTON', 1, 9.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (556, 'Crispy cone en Piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (931, '0020055600', 556, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (557, 'Cristaline 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (932, '0020055700', 557, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (558, 'Cristaline 2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (933, '0020055800', 558, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (559, 'CRISTALINE 2L EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (934, '0020055900', 559, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (560, 'Cristo', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (935, '0020056000', 560, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (936, '0020056001', 560, 'BALLE', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (561, 'CROCHE N10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (937, '0020056100', 561, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (562, 'CROCHE N12', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (938, '0020056200', 562, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (563, 'CROCHE N14', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (939, '0020056300', 563, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (564, 'Croquette au fromage luxe', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (940, '0020056400', 564, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (565, 'Croquette au fromage luxe gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (941, '0020056500', 565, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (566, 'Crown light lollipop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (942, '0020056600', 566, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (943, '0020056601', 566, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (567, 'Crown rose 25g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (944, '0070056700', 567, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (945, '0070056701', 567, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (568, 'Cube candy water bottle en bocal*275pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (946, '0080056800', 568, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (947, '0080056801', 568, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (569, 'Cube pops choco bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (948, '0080056900', 569, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (949, '0080056901', 569, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (570, 'Cube pops choco en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (950, '0080057000', 570, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (571, 'CUIVETTE 45 D', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (951, '0020057100', 571, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (572, 'CUIVETTE BICOLRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (952, '0020057200', 572, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (573, 'CURDENT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (953, '0020057300', 573, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (574, 'CUVETTE 45 GRAV MADAPLAST', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (954, '0020057400', 574, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (575, 'CUVETTE 46 GRAVURE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (955, '0020057500', 575, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (576, 'CUVETTE 50 GRAVURE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (956, '0020057600', 576, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (577, 'CUVETTE 52 GRAV', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (957, '0020057700', 577, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (578, 'CUVETTE 55 GRAVURE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (958, '0020057800', 578, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (579, 'CUVETTE B 40', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (959, '0020057900', 579, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (580, 'CUVETTE BROUSSE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (960, '0020058000', 580, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (581, 'CUVETTE EAGLE 35 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (961, '0020058100', 581, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (582, 'CUVETTE EAGLE 45 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (962, '0020058200', 582, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (583, 'CUVETTE MN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (963, '0020058300', 583, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (584, 'CUVETTE OVALE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (964, '0020058400', 584, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (585, 'CUVETTE VAOLINE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (965, '0020058500', 585, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (586, 'Dairy decker toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (966, '0080058600', 586, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (967, '0080058601', 586, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (587, 'Danica sweeetwhip', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (968, '0100058700', 587, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (969, '0100058701', 587, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (588, 'Dantifrice ciptandent 30g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (970, '0020058800', 588, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (971, '0020058801', 588, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (589, 'Dantifrice ciptandent 30g en piece', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (972, '0190058900', 589, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (590, 'Dantifrice ciptandent 75g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (973, '0020059000', 590, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (974, '0020059001', 590, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (591, 'Dantifrice ciptandent 75g en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (975, '0020059100', 591, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (592, 'DARBEL CITRON 100CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (976, '0100059200', 592, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (593, 'DARBEL FRAISE 100CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (977, '0100059300', 593, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (594, 'DARBEL GRENADINER 100 CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (978, '0100059400', 594, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (595, 'DARBEL MENTHE 100 CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (979, '0100059500', 595, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (596, 'DARBEL ORANGE 100 CL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (980, '0100059600', 596, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (597, 'Day&night balls kiddies 420g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (981, '0080059700', 597, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (982, '0080059701', 597, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (598, 'Delice choco poudre 20g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (983, '0020059800', 598, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (599, 'Delice chocolat poudre 200g*45', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (984, '0140059900', 599, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (985, '0140059901', 599, 'CATRON', 1, 45.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (600, 'Delice chocolat poudre en bocal 400g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (986, '0020060000', 600, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (987, '0020060001', 600, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (601, 'DELICE LAIT 1KG', 32, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (988, '0320060100', 601, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (989, '0320060101', 601, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (602, 'Delice lait 20g', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (990, '0330060200', 602, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (991, '0330060201', 602, 'CARTON', 1, 252.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (603, 'DELICE LAIT 250G', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (992, '0330060300', 603, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (993, '0330060301', 603, 'CARTON', 1, 32.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (604, 'DELICE LAIT 500G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (994, '0010060400', 604, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (995, '0010060401', 604, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (605, 'DELICHOCO', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (996, '0140060500', 605, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (997, '0140060501', 605, 'CARTON', 1, 30.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (606, 'DELICIOUS CHIPS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (998, '0010060600', 606, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (607, 'DELICIUOS CHIPS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (999, '0020060700', 607, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (608, 'Dentifrice bosivo charcoal 100ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1000, '0020060800', 608, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1001, '0020060801', 608, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (609, 'Dentifrice bosivo charcoal 100ml En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1002, '0020060900', 609, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (610, 'Dentifrice dabur herb''l charcoal 140g', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1003, '0190061000', 610, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (611, 'Dentifrice dabur herb''l toothpast 140g mint', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1004, '0190061100', 611, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (612, 'Dentifrice Merielce 150G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1005, '0190061200', 612, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1006, '0190061201', 612, 'PAQUET', 1, 6.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1007, '0190061202', 612, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (613, 'Dentifrice SIGNAL en Piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1008, '0020061300', 613, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (614, 'DENTIFRICE SIGNAL vao2', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1009, '0190061400', 614, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (615, 'Deo emotion aqua kiss', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1010, '0020061500', 615, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (616, 'Deo emotion love', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1011, '0020061600', 616, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (617, 'Deo emotion romance 200ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1012, '0020061700', 617, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (618, 'Deo emotion violet kiss', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1013, '0020061800', 618, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (619, 'Deo my ego apollo 200ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1014, '0020061900', 619, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (620, 'Deo my ego energy 200ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1015, '0020062000', 620, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (621, 'Deo my ego sport 200ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1016, '0020062100', 621, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (622, 'Dinosaur buble gum', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1017, '0080062200', 622, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (623, 'Dinosaur cartoon lollipop*20', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1018, '0080062300', 623, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (624, 'DJINO 35CL EN PCS', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1019, '0110062400', 624, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (625, 'Dolphin culotte twin maxi 5x30 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1020, '0090062500', 625, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1021, '0090062501', 625, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (626, 'DOMINO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1022, '0020062600', 626, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1023, '0020062601', 626, 'PAQUET', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (627, 'Donuts lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1024, '0080062700', 627, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1025, '0080062701', 627, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (628, 'Double 7 seven 250ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1026, '0020062800', 628, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1027, '0020062801', 628, 'PAQUET', 1, 6.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1028, '0020062802', 628, 'CARTON', 2, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (629, 'Double koffee bocal 240pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1029, '0080062900', 629, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1030, '0080062901', 629, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (630, 'Double koffee en sachet', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1031, '0080063000', 630, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1032, '0080063001', 630, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (631, 'Double koffre veto (orizon cafe) en sht', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1033, '0080063100', 631, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (632, 'DOUE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1034, '0020063200', 632, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (633, 'Drink Botle Candy', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1035, '0100063300', 633, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1036, '0100063301', 633, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (634, 'Dum dum gum 16*48pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1037, '0080063400', 634, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1038, '0080063401', 634, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (635, 'Durata r20 ( gm )', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1039, '0340063500', 635, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1040, '0340063501', 635, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (636, 'Durata r6 ( pm )', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1041, '0340063600', 636, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1042, '0340063601', 636, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (637, 'Dynamic Lotte 250ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1043, '0020063700', 637, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1044, '0020063701', 637, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (638, 'EAU DE JAVEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1045, '0020063800', 638, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (639, 'Eau vive 1,5L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1046, '0020063900', 639, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (640, 'Eau vive 50 cL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1047, '0020064000', 640, 'PACQUES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (641, 'EAU VIVE GM EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1048, '0020064100', 641, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (642, 'EAU VIVE PM EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1049, '0020064200', 642, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (643, 'ELASTIC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1050, '0020064300', 643, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (644, 'ELASTIC FLECHE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1051, '0020064400', 644, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (645, 'Elastique fleche circle original', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1052, '0020064500', 645, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (646, 'ELASTIQUE VOLO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1053, '0020064600', 646, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (647, 'Elastique volo aigle pm', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1054, '0350064700', 647, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1055, '0350064701', 647, 'BALLE', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (648, 'ELBEBEK PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1056, '0020064800', 648, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (649, 'ELO FOHY LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1057, '0020064900', 649, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (650, 'ELON JAZA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1058, '0020065000', 650, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (651, 'Emballage - tsotra pm (56*76)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1059, '0020065100', 651, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1060, '0020065101', 651, 'PACQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1061, '0020065102', 651, 'RAM', 2, 500.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (652, 'EMBALLANGE VANILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1062, '0020065200', 652, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (653, 'EMPOGEM-BOLA @PCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1063, '0020065300', 653, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (654, 'Encaustique tselatra acajou', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1064, '0350065400', 654, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1065, '0350065401', 654, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (655, 'Encaustique tselatra jaune', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1066, '0350065500', 655, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1067, '0350065501', 655, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (656, 'Encaustique tselatra neutre', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1068, '0350065600', 656, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1069, '0350065601', 656, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (657, 'Encaustique tselatra spacial', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1070, '0350065700', 657, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1071, '0350065701', 657, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (658, 'Encostique jewel', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1072, '0020065800', 658, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1073, '0020065801', 658, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (659, 'Encostique tsotra bois', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1074, '0350065900', 659, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1075, '0350065901', 659, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (660, 'ENCOSTIQUE TSOTRA CIMENT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1076, '0020066000', 660, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (661, 'ENERGIE GM CRT', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1077, '0340066100', 661, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1078, '0340066101', 661, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (662, 'ENVELLOPPE GRAND FORMAT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1079, '0020066200', 662, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (663, 'Enveloppe officce 11x16', 36, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1080, '0360066300', 663, 'PACQUES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1081, '0360066301', 663, 'BOITE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (664, 'Enveloppes grand format A4', 36, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1082, '0360066400', 664, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (665, 'Enveloppes moyenne format A5', 36, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1083, '0360066500', 665, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (666, 'Enveloppes Nitro c6', 36, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1084, '0360066600', 666, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1085, '0360066601', 666, 'BOITE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (667, 'Enveloppes nitro format A5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1086, '0020066700', 667, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1087, '0020066701', 667, 'BOITE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (668, 'Enveloppes nitro format c4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1088, '0020066800', 668, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (669, 'EPONGE VOLA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1089, '0020066900', 669, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (670, 'EQUER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1090, '0020067000', 670, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (671, 'ESSUIT RENOVA JAUNE', 36, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1091, '0360067100', 671, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (672, 'EX-40 (Extra propre blanc 36mx)', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1092, '0270067200', 672, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (673, 'EX-65 (Extra propre maron 24mx)', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1093, '0270067300', 673, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (674, 'Expert prop''or liquide vaisselle 1l citron', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1094, '0020067400', 674, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1095, '0020067401', 674, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (675, 'Extra propre barre citron 800g', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1096, '0280067500', 675, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1097, '0280067501', 675, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (676, 'Extra propre blanc 24pcs', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1098, '0270067600', 676, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (677, 'Extra propre bleu [ citron ]', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1099, '0290067700', 677, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1100, '0290067701', 677, 'CARTON', 1, 150.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (678, 'Extra propre Citrus', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1101, '0020067800', 678, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (679, 'Extra propre Citrus En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1102, '0020067900', 679, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (680, 'Extra propre floral', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1103, '0020068000', 680, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (681, 'Extra propre liquide vaisselle 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1104, '0020068100', 681, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1105, '0020068101', 681, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (682, 'FACTURATION PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1106, '0020068200', 682, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (683, 'FACTURE TSOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1107, '0020068300', 683, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (684, 'Famafa', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1108, '0020068400', 684, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (685, 'Famafa ASIE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1109, '0020068500', 685, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (686, 'Famafa B11', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1110, '0020068600', 686, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (687, 'Famafa brosse dure', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1111, '0020068700', 687, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (688, 'Famafa brosse ib', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1112, '0020068800', 688, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (689, 'Famafa ch besom 2235', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1113, '0020068900', 689, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (690, 'Famafa ch besom 9222', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1114, '0020069000', 690, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (691, 'Famafa lux 812', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1115, '0020069100', 691, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (692, 'Famafa rasta 180g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1116, '0020069200', 692, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (693, 'Famafa rasta 300g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1117, '0020069300', 693, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (694, 'Famafa rasta ch cotton mop 180g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1118, '0020069400', 694, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (695, 'FANJAITRA GONY @ PCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1119, '0020069500', 695, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (696, 'Fanta ananas pet 1.5*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1120, '0110069600', 696, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (697, 'Fanta ananas pet 1.5*6 en pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1121, '0110069700', 697, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (698, 'Fanta ananas pet 350ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1122, '0110069800', 698, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (699, 'Fanta orange canette 300ml*24', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1123, '0110069900', 699, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1124, '0110069901', 699, 'PAQUET', 1, 6.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1125, '0110069902', 699, 'CARTON', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (700, 'Fanta Orange pet 1.5L en pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1126, '0110070000', 700, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (701, 'Fanta orange pet 1.5L*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1127, '0110070100', 701, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (702, 'Fanta orange pet 350ml*12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1128, '0110070200', 702, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (703, 'Fanta passion 1,5L en pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1129, '0110070300', 703, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (704, 'Fanta passion pet 1.5L*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1130, '0110070400', 704, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (705, 'Fanta passion pet 350ml En pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1131, '0110070500', 705, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (706, 'Fanta passion pet 350ml*12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1132, '0110070600', 706, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (707, 'Fantastic flavoured', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1133, '0080070700', 707, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1134, '0080070701', 707, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (708, 'Fantastic spray candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1135, '0080070800', 708, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1136, '0080070801', 708, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (709, 'FARILAC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1137, '0020070900', 709, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1138, '0020070901', 709, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (710, 'Farilac 400gr', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1139, '0020071000', 710, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1140, '0020071001', 710, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (711, 'Farilac vanille 200g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1141, '0020071100', 711, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1142, '0020071101', 711, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (712, 'Farilac vanille 25g*100', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1143, '0020071200', 712, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1144, '0020071201', 712, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1145, '0020071202', 712, 'CARTON', 2, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (713, 'Farilac vanille 50g*120', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1146, '0020071300', 713, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1147, '0020071301', 713, 'PAQUET', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1148, '0020071302', 713, 'CARTON', 2, 120.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (714, 'FARINE Barea 50Kg', 37, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1149, '0370071400', 714, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (715, 'Farine barea en sac 25kg', 37, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1150, '0370071500', 715, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (716, 'Farine _ lafarina 25Kg', 37, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1151, '0370071600', 716, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (717, 'Farine _ lafarina 50Kg', 37, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1152, '0370071700', 717, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (718, 'Farine _ lafarina En Kg', 37, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1153, '0370071800', 718, '1KG', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (719, 'Fecule 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1154, '0020071900', 719, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1155, '0020071901', 719, 'CARTON', 1, 30.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (720, 'Fengchipa opaobang', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1156, '0020072000', 720, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1157, '0020072001', 720, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (721, 'FERGO GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1158, '0020072100', 721, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1159, '0020072101', 721, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (722, 'FIL ROUGE NOIR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1160, '0020072200', 722, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (723, 'Finger pacifier 5g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1161, '0080072300', 723, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (724, 'Floor cleaner klin sol en btl rose 450ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1162, '0020072400', 724, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1163, '0020072401', 724, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (725, 'Floor cleaner klin sol en btl vert 450ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1164, '0020072500', 725, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1165, '0020072501', 725, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (726, 'Floor cleaner klin sol en btl violet 450ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1166, '0020072600', 726, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1167, '0020072601', 726, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (727, 'FOM', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1168, '0380072700', 727, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (728, 'Fontera en Sac Rouge 25kg', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1169, '0330072800', 728, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (729, 'Football candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1170, '0020072900', 729, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1171, '0020072901', 729, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (730, 'FORCHETTE LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1172, '0020073000', 730, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (731, 'Fortune Coconut 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1173, '0020073100', 731, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (732, 'Fortune vanille 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1174, '0020073200', 732, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (733, 'France coils jaune citron', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1175, '0030073300', 733, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1176, '0030073301', 733, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (734, 'FRESHA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1177, '0020073400', 734, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1178, '0020073401', 734, 'CARTON', 1, 150.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (735, 'FROMAGE LABANITA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1179, '0020073500', 735, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1180, '0020073501', 735, 'CARTON', 1, 36.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (736, 'Frootola chocland', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1181, '0080073600', 736, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (737, 'Frootola phone 4U', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1182, '0080073700', 737, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (738, 'Fruit filled center candy 12 bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1183, '0080073800', 738, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (739, 'FRUTAS ACIDULADAS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1184, '0080073900', 739, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1185, '0080073901', 739, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (740, 'Frutas Acidulas en pieces', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1186, '0080074000', 740, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (741, 'Fumakila', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1187, '0030074100', 741, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1188, '0030074101', 741, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (742, 'GADANA GM', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1189, '0350074200', 742, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (743, 'GADANA MOYENNE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1190, '0020074300', 743, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (744, 'GAIN DE 8CM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1191, '0020074400', 744, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (745, 'GAINE 10CM/100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1192, '0020074500', 745, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (746, 'GAINE 12CM/100GRAMME', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1193, '0020074600', 746, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (747, 'GAINE 14CM/100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1194, '0020074700', 747, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (748, 'GAINE 15CM/100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1195, '0020074800', 748, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (749, 'GAINE 1KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1196, '0020074900', 749, 'METRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1197, '0020074901', 749, 'ROULEAUX', 1, 15.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (750, 'GAINE 25 CM / 1/2 KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1198, '0020075000', 750, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (751, 'GAINE 25CM/1KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1199, '0020075100', 751, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (752, 'Gaine 4cm / 260g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1200, '0020075200', 752, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (753, 'GAINE 4CM/100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1201, '0020075300', 753, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (754, 'Gaine 5cm / 260g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1202, '0020075400', 754, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (755, 'Gaine 6cm / 260g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1203, '0020075500', 755, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (756, 'GAINE 6CM/100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1204, '0020075600', 756, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (757, 'GAINE 80CM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1205, '0020075700', 757, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (758, 'GAINE PM 1000AR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1206, '0020075800', 758, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (759, 'Galeti local', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1207, '0010075900', 759, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (760, 'Gas''care gel douche aqua energy 300ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1208, '0020076000', 760, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1209, '0020076001', 760, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (761, 'Gas''care gel douche coco miel 300ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1210, '0020076100', 761, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1211, '0020076101', 761, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (762, 'Gas''care gel douche passion 300ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1212, '0020076200', 762, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1213, '0020076201', 762, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (763, 'GERCAN VIDE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1214, '0020076300', 763, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (764, 'Gira lengua candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1215, '0020076400', 764, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1216, '0020076401', 764, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (765, 'GIV', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1217, '0270076500', 765, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1218, '0270076501', 765, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (766, 'GLACIER 13L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1219, '0020076600', 766, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (767, 'GLACIER 16 PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1220, '0020076700', 767, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (768, 'GLACIERE 24L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1221, '0020076800', 768, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (769, 'GLASS EN PCE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1222, '0080076900', 769, 'PCE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (770, 'Global cracker tub ranch 227g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1223, '0010077000', 770, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (771, 'Global cracker tub vegetable 227g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1224, '0010077100', 771, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (772, 'Glucose coconut pm 30pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1225, '0010077200', 772, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1226, '0010077201', 772, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (773, 'GLUCOSE PM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1227, '0080077300', 773, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1228, '0080077301', 773, 'CARTON', 1, 10.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (774, 'Glucose pm ( malt''n''milk )', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1229, '0010077400', 774, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1230, '0010077401', 774, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (775, 'Glucose pm [ angry bid ]', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1231, '0010077500', 775, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1232, '0010077501', 775, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (776, 'Glucose pm [ Superman ]', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1233, '0010077600', 776, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1234, '0010077601', 776, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (777, 'Glucose pm [assorted]', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1235, '0010077700', 777, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1236, '0010077701', 777, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (778, 'Gofrette swiss wafer', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1237, '0080077800', 778, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1238, '0080077801', 778, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (779, 'Gofrety 8 (gm)', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1239, '0010077900', 779, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1240, '0010077901', 779, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (780, 'Gofrety ass pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1241, '0010078000', 780, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1242, '0010078001', 780, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (781, 'GOLDEN COIN CHOCOLAT CAR JAR', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1243, '0080078100', 781, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (782, 'Goldy curly boucles parfaites', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1244, '0020078200', 782, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1245, '0020078201', 782, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (783, 'Goldy plaquage volo', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1246, '0020078300', 783, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1247, '0020078301', 783, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (784, 'Goldy serum volo ginseng', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1248, '0020078400', 784, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (785, 'Goldy shampooing anti-pelliculaire', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1249, '0020078500', 785, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1250, '0020078501', 785, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (786, 'GOLGATE & BROSSE DENT ANGOLA BLEU PM', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1251, '0180078600', 786, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1252, '0180078601', 786, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (787, 'Gomas de Mascar', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1253, '0020078700', 787, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1254, '0020078701', 787, 'CARTON', 1, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (788, 'Gouty 6 BEURRE pm', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1255, '0110078800', 788, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1256, '0110078801', 788, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (789, 'Gouty 6 LAIT pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1257, '0010078900', 789, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1258, '0010078901', 789, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (790, 'Gouty beurre gm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1259, '0010079000', 790, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1260, '0010079001', 790, 'CARTON', 1, 7.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (791, 'Gouty biscuit complet', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1261, '0010079100', 791, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1262, '0010079101', 791, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (792, 'Gouty biscuit complet En Pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1263, '0010079200', 792, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (793, 'Gouty choco coco*6x10', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1264, '0010079300', 793, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1265, '0010079301', 793, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (794, 'GOUTY COOKIES', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1266, '0010079400', 794, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1267, '0010079401', 794, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (795, 'GOUTY COOKIES EN PIECES', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1268, '0010079500', 795, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (796, 'GOUTY DOR 12 GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1269, '0010079600', 796, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1270, '0010079601', 796, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (797, 'Gouty dor 6', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1271, '0010079700', 797, 'PTQ', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1272, '0010079701', 797, 'CRT', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (798, 'GOUTY GRANDI +6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1273, '0020079800', 798, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1274, '0020079801', 798, 'CARTON', 1, 17.00, 5.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (799, 'Gouty la galette', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1275, '0010079900', 799, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1276, '0010079901', 799, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (800, 'Gouty Lait gm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1277, '0010080000', 800, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1278, '0010080001', 800, 'CARTON', 1, 7.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (801, 'GOUTY MADELEINE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1279, '0020080100', 801, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1280, '0020080101', 801, 'SHT', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1281, '0020080102', 801, 'CRT', 2, 3.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (802, 'GOUTY PETITS SABLES', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1282, '0010080200', 802, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1283, '0010080201', 802, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (803, 'GOUTY PETITS SABLES EN PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1284, '0010080300', 803, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (804, 'Gouty sable beurre *cococ *12', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1285, '0010080400', 804, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1286, '0010080401', 804, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (805, 'Gouty sablé coco pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1287, '0010080500', 805, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1288, '0010080501', 805, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (806, 'Gros poid 50kg ( vao )', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1289, '0230080600', 806, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (807, 'GROS POIDS EN KAPOAKA', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1290, '0230080700', 807, 'KPK', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (808, 'Gun candy 3.5g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1291, '0080080800', 808, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1292, '0080080801', 808, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (809, 'Haday signature oyster sauce 550g', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1293, '0390080900', 809, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1294, '0390080901', 809, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (810, 'HAPPY', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1295, '0010081000', 810, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1296, '0010081001', 810, 'CARTON', 1, 15.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (811, 'HAYLA', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1297, '0120081100', 811, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (812, 'HENA MAMASOA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1298, '0020081200', 812, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1299, '0020081201', 812, 'SACHET', 1, 48.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1300, '0020081202', 812, 'SAC', 2, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (813, 'HERBAL', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1301, '0190081300', 813, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1302, '0190081301', 813, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (814, 'Hoho big sticks', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1303, '0140081400', 814, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1304, '0140081401', 814, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (815, 'Huile caste evita 2L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1305, '0400081500', 815, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1306, '0400081501', 815, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (816, 'HUILE CASTE SUNNY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1307, '0020081600', 816, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1308, '0020081601', 816, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (817, 'Huile coco samba', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1309, '0130081700', 817, 'JERYCAN', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (818, 'Huile coco tsara 5L', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1310, '0130081800', 818, 'JER', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (819, 'Huile d''olive orkide 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1311, '0400081900', 819, 'BOUTEIL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1312, '0400081901', 819, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (820, 'Huile d''olive orkide 500ml', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1313, '0400082000', 820, 'BOUTEIL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1314, '0400082001', 820, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (821, 'Huile de soja Elvia 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1315, '0400082100', 821, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1316, '0400082101', 821, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (822, 'Huile de soja Hina 0.5L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1317, '0400082200', 822, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1318, '0400082201', 822, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (823, 'Huile de soja Hina 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1319, '0020082300', 823, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1320, '0020082301', 823, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (824, 'Huile de tournesol lafatra 1l', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1321, '0400082400', 824, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1322, '0400082401', 824, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (825, 'Huile de tournesol oscar 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1323, '0400082500', 825, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1324, '0400082501', 825, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (826, 'Huile ELVIA importer 10L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1325, '0400082600', 826, 'JERYCAN', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (827, 'Huile evita 250cl', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1326, '0400082700', 827, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1327, '0400082701', 827, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (828, 'HUILE importer 20L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1328, '0400082800', 828, 'JERYCAN', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (829, 'Huile rajah en jerycan 20L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1329, '0400082900', 829, 'JERYCAN', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (830, 'HUILE RAJAH JERYCAN 20L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1330, '0400083000', 830, 'JERYCAN', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (831, 'HUILE RAJAH LITRE', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1331, '0400083100', 831, 'LITRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (832, 'HUILE TOURNESOL 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1332, '0400083200', 832, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1333, '0400083201', 832, 'CATON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (833, 'Huile tournesol Coeur d''or 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1334, '0400083300', 833, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1335, '0400083301', 833, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (834, 'Huile tournesol lusso 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1336, '0400083400', 834, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1337, '0400083401', 834, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (835, 'Huile tournesol sunlife 1L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1338, '0400083500', 835, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1339, '0400083501', 835, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (836, 'HUILLE COCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1340, '0020083600', 836, 'BIDON', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1341, '0020083601', 836, 'CRT', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (837, 'HUILLE RAJAH En litre', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1342, '0400083700', 837, 'LITRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (838, 'HUILLE TOURNESOL 5L', 40, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1343, '0400083800', 838, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (839, 'HUILOR EN CASTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1344, '0020083900', 839, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1345, '0020083901', 839, 'CRT', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (840, 'Ice Cream lollipop coloful 8g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1346, '0080084000', 840, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (841, 'Ice cream sorbetes marshamallow 3g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1347, '0080084100', 841, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (842, 'Ice pop drinks [ jus bocal ]', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1348, '0080084200', 842, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1349, '0080084201', 842, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (843, 'ICE SWEET', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1350, '0080084300', 843, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (844, 'Impec vaisselle_fleur de cerisier maxi 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1351, '0020084400', 844, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1352, '0020084401', 844, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (845, 'Impec vaisselle_menthe citron maxi 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1353, '0020084500', 845, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1354, '0020084501', 845, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (846, 'Impec vaisselle_pomme raisin maxi 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1355, '0020084600', 846, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1356, '0020084601', 846, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (847, 'Impect gel wc bleu marine 500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1357, '0020084700', 847, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (848, 'Impect gel wc floral 500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1358, '0020084800', 848, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (849, 'Impect gel wc pin vert 500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1359, '0020084900', 849, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (850, 'IMPECT NETTOYANT DESINFECTANT SOL 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1360, '0020085000', 850, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (851, 'Impect vaisselle assorti midi 500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1361, '0020085100', 851, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1362, '0020085101', 851, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (852, 'Insecticide attack multi propose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1363, '0020085200', 852, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1364, '0020085201', 852, 'BOITE', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1365, '0020085202', 852, 'CARTON', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (853, 'Insecticide prochitox 300ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1366, '0020085300', 853, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1367, '0020085301', 853, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (854, 'Insecticide prochitox 600ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1368, '0020085400', 854, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1369, '0020085401', 854, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (855, 'JABA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1370, '0020085500', 855, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1371, '0020085501', 855, 'CARTON', 1, 8.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (856, 'JABA CUBE POULET*24', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1372, '0020085600', 856, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1373, '0020085601', 856, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (857, 'Jaba cube Viande*24', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1374, '0020085700', 857, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1375, '0020085701', 857, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (858, 'Jaba spice @ Bocal', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1376, '0020085800', 858, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1377, '0020085801', 858, 'PACQUET', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (859, 'Jaba viande vao', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1378, '0020085900', 859, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1379, '0020085901', 859, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (860, 'Jadida 1kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1380, '0020086000', 860, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1381, '0020086001', 860, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (861, 'Jadida 2.5Kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1382, '0020086100', 861, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1383, '0020086101', 861, 'CARTON', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (862, 'JADIDA 2.5KG VAOVAO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1384, '0020086200', 862, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1385, '0020086201', 862, 'CARTON', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (863, 'Jadida 250g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1386, '0020086300', 863, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1387, '0020086301', 863, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (864, 'Jadida 450g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1388, '0020086400', 864, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1389, '0020086401', 864, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (865, 'Jelly bean', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1390, '0020086500', 865, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1391, '0020086501', 865, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (866, 'Jelly cup', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1392, '0080086600', 866, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1393, '0080086601', 866, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (867, 'Jelly double eye 3d', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1394, '0080086700', 867, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1395, '0080086701', 867, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (868, 'Jelly fruit bocal 35*50g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1396, '0080086800', 868, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (869, 'Jelly fruit en bocal 3g*30pcs', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1397, '0100086900', 869, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1398, '0100086901', 869, 'CRT', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (870, 'Jelly fruit jus en bocal 3g*30pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1399, '0080087000', 870, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1400, '0080087001', 870, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (871, 'Jelly microphene en bocal 20*32g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1401, '0020087100', 871, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (872, 'JELLY STICK', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1402, '0100087200', 872, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1403, '0100087201', 872, 'CRT', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (873, 'JOGY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1404, '0020087300', 873, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (874, 'Jolly jus 6*72', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1405, '0020087400', 874, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1406, '0020087401', 874, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (875, 'Jolly jus pm 6*40', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1407, '0100087500', 875, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1408, '0100087501', 875, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (876, 'JUM PM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1409, '0010087600', 876, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1410, '0010087601', 876, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (877, 'JUMBO POULET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1411, '0020087700', 877, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1412, '0020087701', 877, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (878, 'Jumbo viande', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1413, '0020087800', 878, 'BTE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1414, '0020087801', 878, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (879, 'Jumbo vovony poulet en sht*8g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1415, '0020087900', 879, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1416, '0020087901', 879, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1417, '0020087902', 879, 'CARTON', 2, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (880, 'JUMP GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1418, '0010088000', 880, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1419, '0010088001', 880, 'BALLES', 1, 3.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (881, 'JUMP PM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1420, '0010088100', 881, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (882, 'Jus briquet lighter spray candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1421, '0080088200', 882, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1422, '0080088201', 882, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (883, 'Jus canette caprice bba 33cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1423, '0110088300', 883, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1424, '0110088301', 883, 'PAQUET', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (884, 'Jus canette caprice Orange 33cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1425, '0110088400', 884, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1426, '0110088401', 884, 'PAQUET', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (885, 'JUS COCKTAIL GOLDEN', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1427, '0100088500', 885, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1428, '0100088501', 885, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1429, '0100088502', 885, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (886, 'Jus en boite toffee jelly', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1430, '0020088600', 886, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (887, 'Jus faragello cocktail 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1431, '0100088700', 887, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (888, 'Jus faragello guava 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1432, '0100088800', 888, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1433, '0100088801', 888, 'CARTON', 1, 27.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (889, 'Jus faragello mangue 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1434, '0100088900', 889, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (890, 'Jus faragello pomme 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1435, '0100089000', 890, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (891, 'JUS FRAISE GOLDEN', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1436, '0100089100', 891, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1437, '0100089101', 891, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1438, '0100089102', 891, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (892, 'Jus golden cocktail', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1439, '0100089200', 892, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1440, '0100089201', 892, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1441, '0100089202', 892, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (893, 'Jus golden coconut', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1442, '0100089300', 893, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1443, '0100089301', 893, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1444, '0100089302', 893, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (894, 'Jus golden fraise', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1445, '0100089400', 894, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1446, '0100089401', 894, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1447, '0100089402', 894, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (895, 'Jus golden lemon', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1448, '0100089500', 895, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1449, '0100089501', 895, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1450, '0100089502', 895, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (896, 'Jus golden orange', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1451, '0100089600', 896, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1452, '0100089601', 896, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1453, '0100089602', 896, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (897, 'Jus golden pineaple', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1454, '0100089700', 897, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1455, '0100089701', 897, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1456, '0100089702', 897, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (898, 'Jus le fruit the', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1457, '0100089800', 898, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (899, 'JUS LEMON GOLDEN', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1458, '0100089900', 899, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1459, '0100089901', 899, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1460, '0100089902', 899, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (900, 'JUS LOLLY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1461, '0020090000', 900, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (901, 'Jus mina ananas', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1462, '0100090100', 901, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1463, '0100090101', 901, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (902, 'Jus mina banane', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1464, '0100090200', 902, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1465, '0100090201', 902, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (903, 'Jus mina cocktail', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1466, '0100090300', 903, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1467, '0100090301', 903, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (904, 'Jus mina Coco', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1468, '0100090400', 904, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1469, '0100090401', 904, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (905, 'Jus mina cola', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1470, '0100090500', 905, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1471, '0100090501', 905, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (906, 'Jus mina fraise', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1472, '0100090600', 906, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1473, '0100090601', 906, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (907, 'Jus mina lemon', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1474, '0100090700', 907, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1475, '0100090701', 907, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (908, 'Jus mina menthe', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1476, '0100090800', 908, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1477, '0100090801', 908, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (909, 'Jus mina orange', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1478, '0100090900', 909, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1479, '0100090901', 909, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (910, 'JUS ORANGE GOLDEN', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1480, '0100091000', 910, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1481, '0100091001', 910, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1482, '0100091002', 910, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (911, 'JUS PINEAPLE GOLDEN', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1483, '0100091100', 911, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1484, '0100091101', 911, 'CARTON', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1485, '0100091102', 911, 'BALLE', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (912, 'Jus pm jojo cocktail 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1486, '0100091200', 912, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1487, '0100091201', 912, 'CARTON', 1, 27.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (913, 'Jus pm jojo goyave 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1488, '0100091300', 913, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (914, 'Jus pm jojo mongo 200ml', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1489, '0070091400', 914, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (915, 'Jus pm jojo pomme 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1490, '0100091500', 915, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (916, 'Jus samia cola', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1491, '0100091600', 916, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1492, '0100091601', 916, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (917, 'Jus samia fraise', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1493, '0100091700', 917, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1494, '0100091701', 917, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (918, 'Jus samia lemon', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1495, '0100091800', 918, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1496, '0100091801', 918, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (919, 'Jus samia mandarine', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1497, '0100091900', 919, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (920, 'Jus samia orange', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1498, '0100092000', 920, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1499, '0100092001', 920, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (921, 'JUS SHAMPART', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1500, '0020092100', 921, 'BOITES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (922, 'Jus valore cocktail', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1501, '0100092200', 922, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1502, '0100092201', 922, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (923, 'Jus valore orange', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1503, '0100092300', 923, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1504, '0100092301', 923, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (924, 'JUS_CLARINETTE', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1505, '0100092400', 924, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (925, 'KABARO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1506, '0020092500', 925, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (926, 'KAHIER 50P TSOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1507, '0020092600', 926, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (927, 'KANTO K5', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1508, '0270092700', 927, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (928, 'KANTO K6', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1509, '0270092800', 928, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (929, 'KAPA BATEUA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1510, '0020092900', 929, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (930, 'KAPA BRESIL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1511, '0020093000', 930, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (931, 'KAPA FLEURIS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1512, '0020093100', 931, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (932, 'KAPA POINT2', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1513, '0020093200', 932, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (933, 'KAPA SPORT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1514, '0020093300', 933, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (934, 'KAPA WITHE DOVE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1515, '0020093400', 934, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (935, 'KAPANJAZA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1516, '0020093500', 935, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (936, 'KAROBONETRA', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1517, '0290093600', 936, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1518, '0290093601', 936, 'SAC', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (937, 'Katsaka vaingany 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1519, '0020093700', 937, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (938, 'Katsaka vaingany en kapoaka', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1520, '0230093800', 938, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (939, 'Katsaka voatoto 50kg', 41, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1521, '0410093900', 939, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (940, 'KATSAKA VOATOTO En kap', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1522, '0290094000', 940, 'KPK', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (941, 'KEON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1523, '0020094100', 941, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (942, 'KEON', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1524, '0380094200', 942, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (943, 'KETCHUP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1525, '0020094300', 943, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1526, '0020094301', 943, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (944, 'Ketchup europa 340g', 42, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1527, '0420094400', 944, 'BOUTEILLE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1528, '0420094401', 944, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (945, 'Ketchup milana squeezy 340g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1529, '0020094500', 945, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1530, '0020094501', 945, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (946, 'Kfp big toffee stawberry 200p*12boite', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1531, '0080094600', 946, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1532, '0080094601', 946, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (947, 'Kfp fruit roll toffee 200pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1533, '0080094700', 947, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1534, '0080094701', 947, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (948, 'Kfp toffee gold 888 bocal*12', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1535, '0080094800', 948, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1536, '0080094801', 948, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (949, 'Kfp toffee world flavoured', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1537, '0080094900', 949, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1538, '0080094901', 949, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (950, 'Kids joy en boite 12*33pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1539, '0080095000', 950, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (951, 'King ice fruity', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1540, '0020095100', 951, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1541, '0020095101', 951, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (952, 'Kiong dark soy sauce 625ml', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1542, '0390095200', 952, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1543, '0390095201', 952, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (953, 'KIP COCO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1544, '0010095300', 953, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1545, '0010095301', 953, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (954, 'Kip coco en piece', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1546, '0010095400', 954, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (955, 'KIRANIL LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1547, '0020095500', 955, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (956, 'KIRANIL LUXE fotsy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1548, '0020095600', 956, 'PAIRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (957, 'KIRANIL TSOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1549, '0020095700', 957, 'PAIRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (958, 'KIRANILE TSOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1550, '0020095800', 958, 'UNITE', 0, 0.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (959, 'Kiso fohy _crocodille', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1551, '0020095900', 959, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1552, '0020095901', 959, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (960, 'KISO FOHY_DIAMANT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1553, '0020096000', 960, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1554, '0020096001', 960, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (961, 'KISO KAROTY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1555, '0020096100', 961, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (962, 'KISO LAVA CROCODILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1556, '0020096200', 962, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1557, '0020096201', 962, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (963, 'Kiso Lava _crocodille', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1558, '0020096300', 963, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1559, '0020096301', 963, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (964, 'Klin smart 1L Bleu', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1560, '0020096400', 964, 'BOUTEILLE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (965, 'Klin smart 30ml bleu', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1561, '0020096500', 965, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1562, '0020096501', 965, 'CARTON', 1, 156.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (966, 'Klin smart 30ml rose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1563, '0020096600', 966, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1564, '0020096601', 966, 'CARTON', 1, 156.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (967, 'Koba aina banane 35g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1565, '0020096700', 967, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1566, '0020096701', 967, 'PAQUET', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (968, 'Koba aina fraise 35g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1567, '0020096800', 968, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1568, '0020096801', 968, 'PACQUET', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (969, 'Koba aina moosli 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1569, '0020096900', 969, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1570, '0020096901', 969, 'PAQUET', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (970, 'Koba aina nature 35g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1571, '0020097000', 970, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1572, '0020097001', 970, 'PAQUET', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (971, 'Koba katsaka en kilos', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1573, '0020097100', 971, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (972, 'Kobam-bary 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1574, '0060097200', 972, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (973, 'Kobam-bary en kilos', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1575, '0060097300', 973, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (974, 'KOFEHY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1576, '0020097400', 974, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (975, 'KOPIKO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1577, '0080097500', 975, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1578, '0080097501', 975, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (976, 'Kopiko cafe black 3 in 1', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1579, '0080097600', 976, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1580, '0080097601', 976, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1581, '0080097602', 976, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (977, 'Kopiko cafe brown 3 in 1', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1582, '0200097700', 977, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1583, '0200097701', 977, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1584, '0200097702', 977, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (978, 'Krazy kreamz', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1585, '0010097800', 978, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1586, '0010097801', 978, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (979, 'Kreamy ''n krunch', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1587, '0020097900', 979, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1588, '0020097901', 979, 'BOITE', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (980, 'Kreamy wafer biscuits', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1589, '0010098000', 980, 'BOITES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1590, '0010098001', 980, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (981, 'kreamy wafer biscuits (vao)', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1591, '0010098100', 981, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1592, '0010098101', 981, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (982, 'Kreamy wafer biscuits En piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1593, '0020098200', 982, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (983, 'Krik krak', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1594, '0010098300', 983, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (984, 'Kwt toffee assorted double decker violet', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1595, '0080098400', 984, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1596, '0080098401', 984, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (985, 'Kwt toffee coconut 200p*12boite', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1597, '0080098500', 985, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1598, '0080098501', 985, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (986, 'Kwt toffee coconut double decker bleu', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1599, '0080098600', 986, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1600, '0080098601', 986, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (987, 'Kwt toffee fruit jam decker 100 pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1601, '0080098700', 987, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1602, '0080098701', 987, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (988, 'Kwt toffee hazelnut double decker orange', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1603, '0080098800', 988, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1604, '0080098801', 988, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (989, 'Kwt toffee milk double decker marron en bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1605, '0080098900', 989, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1606, '0080098901', 989, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (990, 'Kwt toffee strawberry double decker rose', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1607, '0080099000', 990, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1608, '0080099001', 990, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (991, 'Kwt trouffle milk en bocal jaune', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1609, '0080099100', 991, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1610, '0080099101', 991, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (992, 'La vache quit rit 112g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1611, '0020099200', 992, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1612, '0020099201', 992, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (993, 'La vache quit rit en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1613, '0020099300', 993, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (994, 'Lait bonjour 250g*24', 32, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1614, '0320099400', 994, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1615, '0320099401', 994, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (995, 'LALOSY PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1616, '0020099500', 995, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (996, 'LAME BIC EN BOITE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1617, '0020099600', 996, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (997, 'Lame dorco platinium stl300', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1618, '0020099700', 997, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1619, '0020099701', 997, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (998, 'Lame dorco titan stl300', 43, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1620, '0430099800', 998, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (999, 'LAME FLYING EAGLE BRAND', 43, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1621, '0430099900', 999, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1000, 'LAMPE FANALA PM', 44, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1622, '0440100000', 1000, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1001, 'LANTI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1623, '0020100100', 1001, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1002, 'Le fruit jus ananas', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1624, '0100100200', 1002, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1625, '0100100201', 1002, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1003, 'Le fruit jus ananas 150ml*30', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1626, '0100100300', 1003, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1627, '0100100301', 1003, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1004, 'Le fruit jus cocktail', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1628, '0100100400', 1004, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1629, '0100100401', 1004, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1005, 'Le fruit jus cocktail 150ml*30', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1630, '0100100500', 1005, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1631, '0100100501', 1005, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1006, 'Le fruit jus orange', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1632, '0100100600', 1006, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1633, '0100100601', 1006, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1007, 'Le fruit jus orange 150ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1634, '0100100700', 1007, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1635, '0100100701', 1007, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1008, 'Le fruit jus pomme', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1636, '0110100800', 1008, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1637, '0110100801', 1008, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1009, 'Le fruit jus raisin', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1638, '0100100900', 1009, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1639, '0100100901', 1009, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1010, 'Lemon bubble gum en bocal 115 pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1640, '0080101000', 1010, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1641, '0080101001', 1010, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1011, 'LEVURE ANGEL 11G', 45, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1642, '0450101100', 1011, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1643, '0450101101', 1011, 'PACQUES', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1012, 'LEVURE CHIMIQUE MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1644, '0020101200', 1012, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1645, '0020101201', 1012, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1013, 'Levure Chimique mena en Pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1646, '0020101300', 1013, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1014, 'LEVURE HASMAYA 500G', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1647, '0210101400', 1014, 'BTS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1648, '0210101401', 1014, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1015, 'Levure Hasmaya pm 125g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1649, '0020101500', 1015, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1650, '0020101501', 1015, 'BOITE', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1651, '0020101502', 1015, 'CARTON', 2, 3.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1016, 'LEVURE IDEAL 125G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1652, '0020101600', 1016, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1653, '0020101601', 1016, 'BOITE', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1654, '0020101602', 1016, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1017, 'LEVURE IDEAL 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1655, '0020101700', 1017, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1656, '0020101701', 1017, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1018, 'Levure tsiro karbonetra', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1657, '0020101800', 1018, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1658, '0020101801', 1018, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1019, 'LINGETTE PATAPON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1659, '0020101900', 1019, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1020, 'Lipstick choco flavor', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1660, '0020102000', 1020, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1661, '0020102001', 1020, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1021, 'Lollipop bonjour chocolate', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1662, '0080102100', 1021, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1022, 'Lollipop bonjour milk', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1663, '0080102200', 1022, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1023, 'Lollipop cafe big bonbon', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1664, '0080102300', 1023, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1024, 'Lollipop frosty bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1665, '0080102400', 1024, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1666, '0080102401', 1024, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1025, 'Lollipop jungle fun bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1667, '0080102500', 1025, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1026, 'Lollipops candies bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1668, '0080102600', 1026, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1669, '0080102601', 1026, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1027, 'LOLO CHOCO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1670, '0080102700', 1027, 'BTE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1028, 'Love heart pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1671, '0080102800', 1028, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1672, '0080102801', 1028, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1029, 'LOVE POP SUCETTE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1673, '0080102900', 1029, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1674, '0080102901', 1029, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1030, 'MA?ÄS DOUS KARN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1675, '0020103000', 1030, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1676, '0020103001', 1030, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1031, 'Macarinie Rossini spirale 5kg', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1677, '0120103100', 1031, 'SAC', 0, 1.00, 4.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1032, 'Macaroni bon pasta elbow', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1678, '0020103200', 1032, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1033, 'Macaroni champion Spirale 5kg', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1679, '0120103300', 1033, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1034, 'MACARONI CHERIE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1680, '0020103400', 1034, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1681, '0020103401', 1034, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1035, 'MACARONI DOGA', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1682, '0120103500', 1035, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1036, 'MACARONI ELVIA', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1683, '0120103600', 1036, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1684, '0120103601', 1036, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1037, 'Macaroni felicia flamingo n47', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1685, '0120103700', 1037, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1686, '0120103701', 1037, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1038, 'Macaroni francia coquillette 500g', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1687, '0120103800', 1038, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1688, '0120103801', 1038, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1039, 'Macaroni francia spiral 500g', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1689, '0120103900', 1039, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1690, '0120103901', 1039, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1040, 'Macaroni francia tortie', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1691, '0120104000', 1040, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1692, '0120104001', 1040, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1041, 'MACARONI GEFCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1693, '0020104100', 1041, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1042, 'MACARONI LUCHINI', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1694, '0120104200', 1042, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1043, 'Macaroni panzani fusilli 500g', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1695, '0120104300', 1043, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1696, '0120104301', 1043, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1044, 'Macaroni panzani Spiral 500g', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1697, '0120104400', 1044, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1698, '0120104401', 1044, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1045, 'Macaroni pastalino 5kg double twiste', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1699, '0120104500', 1045, 'SAC', 0, 1.00, 5.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1046, 'Macaroni pastalino 5kg Fusilli', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1700, '0120104600', 1046, 'SAC', 0, 1.00, 5.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1047, 'Macaroni Rossin Fusil 500g', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1701, '0120104700', 1047, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1702, '0120104701', 1047, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1048, 'Macaroni Rossin Spiral 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1703, '0020104800', 1048, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1704, '0020104801', 1048, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1049, 'Macaroni rossini Spiral 5kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1705, '0020104900', 1049, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1050, 'Macaroni vermicelle 500g', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1706, '0120105000', 1050, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1707, '0120105001', 1050, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1051, 'MACARONI VICTORIA', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1708, '0120105100', 1051, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1052, 'Macaronie bella vita fusilli', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1709, '0120105200', 1052, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1053, 'Macaronie bella vita spirale', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1710, '0120105300', 1053, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1054, 'MACARONIE FRANCIA', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1711, '0120105400', 1054, 'SACHES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1712, '0120105401', 1054, 'CARTONS', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1055, 'MACARONIE MOMO', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1713, '0120105500', 1055, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1056, 'MACARONIE PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1714, '0020105600', 1056, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1715, '0020105601', 1056, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1057, 'MACARONNI CHAMPION 450G', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1716, '0120105700', 1057, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1717, '0120105701', 1057, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1058, 'MACHINE TOTOKENA N32', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1718, '0020105800', 1058, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1059, 'Maestro chocolat lait noisettes', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1719, '0020105900', 1059, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1060, 'Maestro chocolat lait noisettes pcs', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1720, '0140106000', 1060, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1061, 'Maeva E20 pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1721, '0020106100', 1061, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1062, 'Maeva r50', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1722, '0270106200', 1062, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1063, 'Magic roll choco veto 9g*100', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1723, '0010106300', 1063, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1724, '0010106301', 1063, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1064, 'Magic roll fraise veto 9g*100', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1725, '0010106400', 1064, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1726, '0010106401', 1064, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1065, 'Magic roll vanille veto 9g*100', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1727, '0010106500', 1065, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1728, '0010106501', 1065, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1066, 'Mais doux bonjour 340g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1729, '0020106600', 1066, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1730, '0020106601', 1066, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1067, 'Mais doux europa 340g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1731, '0020106700', 1067, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1068, 'Mais doux isha 340g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1732, '0020106800', 1068, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1733, '0020106801', 1068, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1069, 'Mais doux leena', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1734, '0020106900', 1069, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1735, '0020106901', 1069, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1070, 'Mais doux soleil d''or 340g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1736, '0020107000', 1070, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1737, '0020107001', 1070, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1071, 'Maize en sachet 40*250g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1738, '0020107100', 1071, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1739, '0020107101', 1071, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1072, 'Maize etui en boite 20*350g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1740, '0020107200', 1072, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1073, 'Makalioka 32Kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1741, '0060107300', 1073, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1074, 'Mamangout cube boeuf', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1742, '0020107400', 1074, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1743, '0020107401', 1074, 'BOITE', 1, 40.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1744, '0020107402', 1074, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1075, 'Mamangout cube poulet', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1745, '0020107500', 1075, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1746, '0020107501', 1075, 'BOITE', 1, 40.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1747, '0020107502', 1075, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1076, 'MANIFOLD GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1748, '0020107600', 1076, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1077, 'MANIFOLD MN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1749, '0020107700', 1077, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1078, 'MANIFOLD PM', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1750, '0210107800', 1078, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1079, 'Margarine jad''or 250g', 46, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1751, '0460107900', 1079, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1752, '0460107901', 1079, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1080, 'MARGARINE ULTRA 500G', 46, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1753, '0460108000', 1080, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1754, '0460108001', 1080, 'CRT', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1081, 'MARIE LONDON', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1755, '0010108100', 1081, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1756, '0010108101', 1081, 'CARTON', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1082, 'Marker dollard noir', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1757, '0020108200', 1082, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1758, '0020108201', 1082, 'BOITE', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1083, 'Marker dollard rouge', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1759, '0020108300', 1083, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1760, '0020108301', 1083, 'BOITE', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1084, 'Marshmallow cone barqullitas rellenas', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1761, '0080108400', 1084, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1762, '0080108401', 1084, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1085, 'Marshmallows choco sandwich 13g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1763, '0020108500', 1085, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1764, '0020108501', 1085, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1086, 'Marshmallows colored sandwich 13g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1765, '0080108600', 1086, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1766, '0080108601', 1086, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1087, 'MARTEAU HAZO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1767, '0020108700', 1087, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1088, 'MARTEAU PLASTIQUE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1768, '0020108800', 1088, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1089, 'MATEZA M30 JAUNE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1769, '0020108900', 1089, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1090, 'Mateza M30 jaune en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1770, '0020109000', 1090, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1091, 'MATEZA M30 MARRON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1771, '0020109100', 1091, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1092, 'Mauchoir à Jeter Blanc', 47, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1772, '0470109200', 1092, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1773, '0470109201', 1092, 'CARTON', 1, 72.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1093, 'MAXAM BLANCHEUR', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1774, '0190109300', 1093, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1094, 'MAXAM CHARBON', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1775, '0190109400', 1094, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1776, '0190109401', 1094, 'CRT', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1095, 'MAXAM EN PCE', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1777, '0190109500', 1095, 'PCE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1096, 'Maxam fluor 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1778, '0020109600', 1096, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1779, '0020109601', 1096, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1097, 'Maxam herbal vert', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1780, '0020109700', 1097, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1781, '0020109701', 1097, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1098, 'MAXAM MENTHE', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1782, '0190109800', 1098, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1099, 'Maxam mouthwash 100g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1783, '0020109900', 1099, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1784, '0020109901', 1099, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1100, 'Maxam mouthwash en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1785, '0020110000', 1100, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1101, 'MAXAM SOURIRE', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1786, '0190110100', 1101, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1102, 'MAXAM TRIPLE ACTION', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1787, '0190110200', 1102, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1788, '0190110201', 1102, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1103, 'MAXAM VITAMIN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1789, '0020110300', 1103, 'PTQ', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1104, 'MAXAME ALOE VERA', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1790, '0190110400', 1104, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1791, '0190110401', 1104, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1105, 'MAYONAISSE LESIEUR 235G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1792, '0020110500', 1105, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1793, '0020110501', 1105, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1106, 'MAYONNAISE LESIEUR 475G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1794, '0020110600', 1106, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1795, '0020110601', 1106, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1107, 'MAYONNAISE LESIEUR 710G', 48, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1796, '0480110700', 1107, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1797, '0480110701', 1107, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1108, 'Menabolo aloe vera familly care 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1798, '0020110800', 1108, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1799, '0020110801', 1108, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1109, 'Menabolo aloe vera family care 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1800, '0020110900', 1109, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1801, '0020110901', 1109, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1110, 'Menabolo aloe vera_pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1802, '0020111000', 1110, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1803, '0020111001', 1110, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1111, 'Menabolo avocat aloevera gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1804, '0020111100', 1111, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1805, '0020111101', 1111, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1112, 'Menabolo baby care formula 55g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1806, '0020111200', 1112, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1807, '0020111201', 1112, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1113, 'Menabolo Baby care _gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1808, '0020111300', 1113, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1809, '0020111301', 1113, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1114, 'Menabolo banane pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1810, '0020111400', 1114, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1811, '0020111401', 1114, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1115, 'Menabolo Baobab pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1812, '0020111500', 1115, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1813, '0020111501', 1115, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1116, 'Menabolo Beauty care aloevera 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1814, '0020111600', 1116, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1815, '0020111601', 1116, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1117, 'Menabolo Beauty care aloevera gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1816, '0020111700', 1117, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1817, '0020111701', 1117, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1118, 'Menabolo Beauty care aloevera pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1818, '0020111800', 1118, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1819, '0020111801', 1118, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1119, 'Menabolo beauty care avocat gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1820, '0020111900', 1119, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1821, '0020111901', 1119, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1120, 'Menabolo beauty care avocat pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1822, '0020112000', 1120, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1823, '0020112001', 1120, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1121, 'Menabolo beauty care banane gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1824, '0020112100', 1121, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1825, '0020112101', 1121, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1122, 'Menabolo beauty care carotte 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1826, '0020112200', 1122, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1827, '0020112201', 1122, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1123, 'Menabolo beauty care carotte 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1828, '0020112300', 1123, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1829, '0020112301', 1123, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1124, 'Menabolo beauty care jojoba 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1830, '0020112400', 1124, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1831, '0020112401', 1124, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1125, 'Menabolo beauty care jojoba gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1832, '0020112500', 1125, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1833, '0020112501', 1125, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1126, 'Menabolo body lux 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1834, '0020112600', 1126, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1835, '0020112601', 1126, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1127, 'Menabolo body lux charmign 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1836, '0020112700', 1127, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1837, '0020112701', 1127, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1128, 'Menabolo body Lux Gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1838, '0020112800', 1128, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1839, '0020112801', 1128, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1129, 'Menabolo body lux swahiba 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1840, '0020112900', 1129, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1841, '0020112901', 1129, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1130, 'Menabolo Boss 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1842, '0020113000', 1130, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1843, '0020113001', 1130, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1131, 'Menabolo Boss gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1844, '0020113100', 1131, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1845, '0020113101', 1131, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1132, 'Menabolo Boss pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1846, '0020113200', 1132, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1847, '0020113201', 1132, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1133, 'Menabolo carotte gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1848, '0020113300', 1133, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1849, '0020113301', 1133, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1134, 'Menabolo cocoa butter 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1850, '0020113400', 1134, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1851, '0020113401', 1134, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1135, 'Menabolo cocoa butter pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1852, '0020113500', 1135, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1853, '0020113501', 1135, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1136, 'Menabolo Cocoa gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1854, '0020113600', 1136, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1855, '0020113601', 1136, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1137, 'Menabolo Cocoa pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1856, '0020113700', 1137, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1857, '0020113701', 1137, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1138, 'Menabolo coconut 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1858, '0020113800', 1138, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1859, '0020113801', 1138, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1139, 'Menabolo coconut gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1860, '0020113900', 1139, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1861, '0020113901', 1139, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1140, 'Menabolo coconut gm en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1862, '0020114000', 1140, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1141, 'Menabolo Coconut pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1863, '0020114100', 1141, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1864, '0020114101', 1141, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1142, 'Menabolo day tody carotte 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1865, '0020114200', 1142, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1866, '0020114201', 1142, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1143, 'Menabolo ella 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1867, '0020114300', 1143, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1868, '0020114301', 1143, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1144, 'Menabolo ella petroleum 55g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1869, '0020114400', 1144, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1870, '0020114401', 1144, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1145, 'Menabolo Family care 25g', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1871, '0130114500', 1145, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1872, '0130114501', 1145, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1146, 'Menabolo Family care gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1873, '0020114600', 1146, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1874, '0020114601', 1146, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1147, 'MENABOLO GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1875, '0020114700', 1147, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1876, '0020114701', 1147, 'PAQUET', 1, 6.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1877, '0020114702', 1147, 'CARTON', 2, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1148, 'Menabolo goldy karita farehitra', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1878, '0020114800', 1148, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1149, 'Menabolo goldy orange amandes', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1879, '0020114900', 1149, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1880, '0020114901', 1149, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1150, 'Menabolo goldy vert jojoba', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1881, '0020115000', 1150, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1151, 'Menabolo goldy vert karite', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1882, '0020115100', 1151, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1152, 'Menabolo herbal gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1883, '0020115200', 1152, 'PACQUE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1884, '0020115201', 1152, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1153, 'Menabolo jojoba sara be', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1885, '0020115300', 1153, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1886, '0020115301', 1153, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1154, 'Menabolo Madame 25gr', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1887, '0020115400', 1154, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1888, '0020115401', 1154, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1155, 'Menabolo madame desir 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1889, '0020115500', 1155, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1890, '0020115501', 1155, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1156, 'Menabolo madame desire 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1891, '0020115600', 1156, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1892, '0020115601', 1156, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1157, 'Menabolo Madame gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1893, '0020115700', 1157, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1894, '0020115701', 1157, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1158, 'Menabolo madame golg 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1895, '0020115800', 1158, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1896, '0020115801', 1158, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1159, 'Menabolo madame golg gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1897, '0020115900', 1159, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1898, '0020115901', 1159, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1160, 'Menabolo Madame pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1899, '0020116000', 1160, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1900, '0020116001', 1160, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1161, 'Menabolo marina 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1901, '0020116100', 1161, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1902, '0020116101', 1161, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1162, 'Menabolo medicare pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1903, '0020116200', 1162, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1904, '0020116201', 1162, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1163, 'Menabolo Moringa gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1905, '0020116300', 1163, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1906, '0020116301', 1163, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1164, 'Menabolo moringa young gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1907, '0020116400', 1164, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1908, '0020116401', 1164, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1165, 'Menabolo Podoa gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1909, '0020116500', 1165, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1910, '0020116501', 1165, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1166, 'Menabolo Podoa pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1911, '0020116600', 1166, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1912, '0020116601', 1166, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1167, 'Menabolo pommade gm en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1913, '0020116700', 1167, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1168, 'Menabolo shea butter cocoa gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1914, '0020116800', 1168, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1915, '0020116801', 1168, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1169, 'Menabolo SHEA butter gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1916, '0020116900', 1169, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1917, '0020116901', 1169, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1170, 'Menabolo shea butter pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1918, '0020117000', 1170, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1919, '0020117001', 1170, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1171, 'Menabolo skala gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1920, '0020117100', 1171, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1921, '0020117101', 1171, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1172, 'Menabolo Skala herbal 60ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1922, '0020117200', 1172, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1923, '0020117201', 1172, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1173, 'Menabolo Skala pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1924, '0020117300', 1173, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1925, '0020117301', 1173, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1174, 'Menabolo stella 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1926, '0020117400', 1174, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1927, '0020117401', 1174, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1175, 'Menabolo stella gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1928, '0020117500', 1175, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1929, '0020117501', 1175, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1176, 'Menabolo stella pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1930, '0020117600', 1176, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1931, '0020117601', 1176, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1177, 'Menabolo vestiline pommade', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1932, '0020117700', 1177, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1933, '0020117701', 1177, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1178, 'Menabolo Vestline Aloe vera gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1934, '0020117800', 1178, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1935, '0020117801', 1178, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1179, 'Menabolo vestline garlic gm 200g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1936, '0020117900', 1179, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1937, '0020117901', 1179, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1180, 'Menabolo Vestline gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1938, '0020118000', 1180, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1939, '0020118001', 1180, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1181, 'Menabolo vestline hair food avocado gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1940, '0020118100', 1181, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1941, '0020118101', 1181, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1182, 'Menabolo vestline lemon pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1942, '0020118200', 1182, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1943, '0020118201', 1182, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1183, 'Menabolo vestline pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1944, '0020118300', 1183, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1945, '0020118301', 1183, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1184, 'Menabolo vestline pommade 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1946, '0020118400', 1184, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1947, '0020118401', 1184, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1185, 'Menabolo vestline pommade gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1948, '0020118500', 1185, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1949, '0020118501', 1185, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1186, 'Menabolo vestline rose 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1950, '0020118600', 1186, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1951, '0020118601', 1186, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1187, 'Menabolo viocare gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1952, '0020118700', 1187, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1953, '0020118701', 1187, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1188, 'Menaka kinana papaye sara be', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1954, '0020118800', 1188, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1955, '0020118801', 1188, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1189, 'Menaka kinana papaye sara be Pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1956, '0020118900', 1189, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1190, 'Menaka kinana sara be', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1957, '0020119000', 1190, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1958, '0020119001', 1190, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1191, 'Menaka kinana sara be Pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1959, '0020119100', 1191, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1192, 'MERIELCE ALOE VERA 130G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1960, '0190119200', 1192, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1193, 'MESURE 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1961, '0020119300', 1193, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1194, 'Meva m27 pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1962, '0020119400', 1194, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1195, 'MILANA POULET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1963, '0020119500', 1195, 'BTS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1964, '0020119501', 1195, 'CRT', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1196, 'Milay be mini bar fromage 24pcs*10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1965, '0020119600', 1196, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1197, 'Milay be rouleau de coquillage 24pcs*20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1966, '0020119700', 1197, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1198, 'Milk paste likme-likme', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1967, '0010119800', 1198, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1968, '0010119801', 1198, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1199, 'Milk stick chocolate flavour 2.5g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1969, '0020119900', 1199, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1200, 'Milk stick orange flavour 2.5g', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1970, '0330120000', 1200, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1201, 'Milk stick strawberry flavour 2.5g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1971, '0020120100', 1201, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1202, 'Milk stik pure veto', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1972, '0020120200', 1202, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1973, '0020120201', 1202, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1203, 'Milkee power 2.8G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1974, '0080120300', 1203, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1975, '0080120301', 1203, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1204, 'Milki balls kiddies 420G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1976, '0080120400', 1204, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1977, '0080120401', 1204, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1205, 'Milky creamer monde 15g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1978, '0020120500', 1205, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1979, '0020120501', 1205, 'CARTON', 1, 288.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1206, 'Milky lollipop cartoon', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1980, '0080120600', 1206, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1207, 'MILKY_STIK', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1981, '0010120700', 1207, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1982, '0010120701', 1207, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1208, 'Mimi snacks', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1983, '0020120800', 1208, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1209, 'Mimi snacks en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1984, '0020120900', 1209, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1210, 'MINI BUTTERFLY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1985, '0080121000', 1210, 'BTE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1211, 'MINI CHOCO', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1986, '0140121100', 1211, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1987, '0140121101', 1211, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1988, '0140121102', 1211, 'CARTON', 2, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1212, 'Mini choco 16 carre', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1989, '0140121200', 1212, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1990, '0140121201', 1212, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1213, 'Mini Choco noire new', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1991, '0140121300', 1213, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1992, '0140121301', 1213, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1214, 'Mini cracker cheese flavoured 227g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1993, '0020121400', 1214, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1994, '0020121401', 1214, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1215, 'MINI JELLY STICK EN BCL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1995, '0080121500', 1215, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1216, 'MIRA 750ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1996, '0020121600', 1216, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1997, '0020121601', 1216, 'CRT', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1217, 'Mira lave vitre 750ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1998, '0020121700', 1217, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1999, '0020121701', 1217, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1218, 'Mira maika assorti 1/4L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2000, '0020121800', 1218, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2001, '0020121801', 1218, 'PACQUET', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1219, 'Mira max ultra dégraissante 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2002, '0020121900', 1219, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2003, '0020121901', 1219, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1220, 'MIRA VAISEL 500ML', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2004, '0290122000', 1220, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2005, '0290122001', 1220, 'CRT', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1221, 'MIRA VAISSELLE MAIKA 0.25L', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2006, '0290122100', 1221, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2007, '0290122101', 1221, 'CRT', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1222, 'MIRA VITRE', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2008, '0290122200', 1222, 'PCE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1223, 'Mister boom elastico', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2009, '0020122300', 1223, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2010, '0020122301', 1223, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1224, 'Mix fruit kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2011, '0080122400', 1224, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2012, '0080122401', 1224, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1225, 'Mix fruit pop royale', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2013, '0080122500', 1225, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2014, '0080122501', 1225, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1226, 'Molfix junoir 4x30 n°5', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2015, '0090122600', 1226, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2016, '0090122601', 1226, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1227, 'Molfix midi 10x9 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2017, '0090122700', 1227, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2018, '0090122701', 1227, 'BALLES', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1228, 'Molfix pants culottes midi 4x36 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2019, '0090122800', 1228, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2020, '0090122801', 1228, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1229, 'Molfix pants culottes midi n°3 en piece', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2021, '0090122900', 1229, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1230, 'Molfix twin kulot maxi 4x32 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2022, '0090123000', 1230, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2023, '0090123001', 1230, 'BALLE', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1231, 'Mosquito anita citronel', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2024, '0020123100', 1231, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2025, '0020123101', 1231, 'BOITE', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1232, 'MOSQUITO ATTACK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2026, '0020123200', 1232, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2027, '0020123201', 1232, 'CTR', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1233, 'Mosquito france stick', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2028, '0020123300', 1233, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2029, '0020123301', 1233, 'CARTON', 1, 60.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1234, 'Mouchoir à jeter Top', 47, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2030, '0470123400', 1234, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2031, '0470123401', 1234, 'BALLES', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1235, 'Moutarde lesieur 260g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2032, '0020123500', 1235, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1236, 'Mr propre bleu coton', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2033, '0020123600', 1236, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1237, 'Mr propre jaune citron', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2034, '0020123700', 1237, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1238, 'mura 750ml', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2035, '0290123800', 1238, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2036, '0290123801', 1238, 'CRT', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1239, 'MY LEIDIE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2037, '0020123900', 1239, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1240, 'Nect Choco caramel pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2038, '0080124000', 1240, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2039, '0080124001', 1240, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1241, 'Nect xtra painter xxl', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2040, '0080124100', 1241, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2041, '0080124101', 1241, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1242, 'Nect yum yum orange 20*50pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2042, '0080124200', 1242, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2043, '0080124201', 1242, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1243, 'Nect yum yum pineapple 20*50pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2044, '0080124300', 1243, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2045, '0080124301', 1243, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1244, 'Nect yum yum Strawberry 20*50pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2046, '0080124400', 1244, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2047, '0080124401', 1244, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1245, 'Nect yum yum yogurt 20*50pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2048, '0080124500', 1245, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2049, '0080124501', 1245, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1246, 'Nescafé classic en bocal 50g', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2050, '0200124600', 1246, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2051, '0200124601', 1246, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1247, 'Nescafe classic en sachet 1.5g', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2052, '0200124700', 1247, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2053, '0200124701', 1247, 'PAQUET', 1, 84.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2054, '0200124702', 1247, 'CARTON', 2, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1248, 'Nesquik 200g', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2055, '0140124800', 1248, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2056, '0140124801', 1248, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1249, 'Nesquik 420g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2057, '0020124900', 1249, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1250, 'Nesquik 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2058, '0020125000', 1250, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1251, 'NETOI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2059, '0020125100', 1251, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2060, '0020125101', 1251, 'PAQUET', 1, 10.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1252, 'Nicke super javel 12° chl 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2061, '0020125200', 1252, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2062, '0020125201', 1252, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1253, 'Nickel bleu nettoyant multi-usage 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2063, '0020125300', 1253, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2064, '0020125301', 1253, 'PAQUET', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1254, 'Nickel detartrant 12*1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2065, '0020125400', 1254, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2066, '0020125401', 1254, 'PAQUET', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1255, 'Nickel lave sol 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2067, '0020125500', 1255, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1256, 'Nickel lave vitre 750ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2068, '0020125600', 1256, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2069, '0020125601', 1256, 'PAQUET', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1257, 'Nickel liquide vaisselle ass12*500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2070, '0020125700', 1257, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2071, '0020125701', 1257, 'PAQUET', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1258, 'NICKEL VAISSELLE 500ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2072, '0020125800', 1258, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2073, '0020125801', 1258, 'PQT', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1259, 'Nickel vaisselle jaune 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2074, '0020125900', 1259, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2075, '0020125901', 1259, 'PAQUET', 1, 15.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1260, 'Nickel vaisselle jaune 1l*12 jaune citron', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2076, '0020126000', 1260, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2077, '0020126001', 1260, 'PAQUET', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1261, 'Nickel vaisselle jaune 1l*12 vanille marron', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2078, '0020126100', 1261, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2079, '0020126101', 1261, 'PAQUET', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1262, 'Nickel vaisselle Vert pomme 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2080, '0020126200', 1262, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2081, '0020126201', 1262, 'PACQUET', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1263, 'Nickel wc 500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2082, '0020126300', 1263, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2083, '0020126301', 1263, 'PACQUET', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1264, 'NOKIA MISY CAMERA', 49, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2084, '0490126400', 1264, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1265, 'NOKIA TSOTRA', 49, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2085, '0490126500', 1265, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1266, 'Nosy B', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2086, '0270126600', 1266, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2087, '0270126601', 1266, 'CARTON', 1, 27.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1267, 'NOSY B52 bara', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2088, '0280126700', 1267, 'BARRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2089, '0280126701', 1267, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1268, 'NOSY CARE GM P8P', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2090, '0270126800', 1268, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2091, '0270126801', 1268, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1269, 'Nosy kelly', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2092, '0270126900', 1269, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2093, '0270126901', 1269, 'CARTON', 1, 72.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1270, 'Nouille 2x sukses''s bleu oignon 115g', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2094, '0500127000', 1270, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1271, 'Nouille 2x sukses''s En Piece', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2095, '0500127100', 1271, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1272, 'Nouille 2x sukses''s jaune carry 115g', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2096, '0500127200', 1272, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1273, 'Nouilles 138', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2097, '0020127300', 1273, 'SACHET', 0, 1.00, 2.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2098, '0020127301', 1273, 'CARTON', 1, 24.00, 5.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1274, 'Nouilles illico 60pcs', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2099, '0500127400', 1274, 'CATRON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1275, 'Nouilles Pate Wana 80g', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2100, '0500127500', 1275, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1276, 'Nouilles presto 60pcs', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2101, '0500127600', 1276, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1277, 'Nouilles Sedaap korean spice chicken', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2102, '0500127700', 1277, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2103, '0500127701', 1277, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1278, 'Nura f bon frooty', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2104, '0080127800', 1278, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2105, '0080127801', 1278, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1279, 'NURSE 2-900G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2106, '0020127900', 1279, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1280, 'NURSIE 1 -400', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2107, '0020128000', 1280, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1281, 'NURSIE 1 -900 gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2108, '0020128100', 1281, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1282, 'NURSIE 2 -400', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2109, '0020128200', 1282, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1283, 'Nyra chocolay velvet truffles', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2110, '0140128300', 1283, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1284, 'Nyra coconut cube', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2111, '0080128400', 1284, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2112, '0080128401', 1284, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1285, 'Nyra crunch milk balls 125g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2113, '0080128500', 1285, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2114, '0080128501', 1285, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1286, 'Nyra elro choco', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2115, '0140128600', 1286, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2116, '0140128601', 1286, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1287, 'Nyra elro choco 12bte fisaka', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2117, '0140128700', 1287, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2118, '0140128701', 1287, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1288, 'Nyra elro milk', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2119, '0140128800', 1288, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2120, '0140128801', 1288, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1289, 'Nyra fruit burst ass 12*200pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2121, '0080128900', 1289, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2122, '0080128901', 1289, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1290, 'Nyra royale creme candy 12 jar', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2123, '0080129000', 1290, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2124, '0080129001', 1290, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1291, 'Nyra swissland 125pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2125, '0080129100', 1291, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2126, '0080129101', 1291, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1292, 'Nyra toffilo 100p*20', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2127, '0080129200', 1292, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2128, '0080129201', 1292, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1293, 'Nyra valentine 150pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2129, '0080129300', 1293, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2130, '0080129301', 1293, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1294, 'Nyra yogi yogi 50 original', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2131, '0080129400', 1294, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2132, '0080129401', 1294, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1295, 'Ok choco milk cube pops ass bocal*200pcs', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2133, '0140129500', 1295, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2134, '0140129501', 1295, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1296, 'Ok eye ball gummy candy*30pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2135, '0080129600', 1296, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2136, '0080129601', 1296, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1297, 'Ok football chocolate EN pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2137, '0080129700', 1297, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1298, 'Ok football chocolate*100pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2138, '0080129800', 1298, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2139, '0080129801', 1298, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1299, 'Ok ice sweet 30pqt', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2140, '0020129900', 1299, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2141, '0020129901', 1299, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1300, 'ONDROKA LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2142, '0020130000', 1300, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1301, 'ONDROKA MAKARAKARA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2143, '0020130100', 1301, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1302, 'Pail candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2144, '0020130200', 1302, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1303, 'Paille de fer', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2145, '0020130300', 1303, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1304, 'PAMPERS N°2,5 EN PIECE', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2146, '0090130400', 1304, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1305, 'Pampers N°3 culotte midi', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2147, '0090130500', 1305, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1306, 'PAMPERS N°4 ( 4 X 32 )', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2148, '0090130600', 1306, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1307, 'PANEAU JAUNE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2149, '0020130700', 1307, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1308, 'Papier Dolphin A4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2150, '0020130800', 1308, 'RAMME', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2151, '0020130801', 1308, 'CARTON', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1309, 'Papier epaper', 51, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2152, '0510130900', 1309, 'RAM', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2153, '0510130901', 1309, 'CARTON', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1310, 'Papier hygienique doucy', 51, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2154, '0510131000', 1310, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1311, 'Papier hygienique lys', 52, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2155, '0520131100', 1311, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1312, 'Papier hygienique lys En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2156, '0020131200', 1312, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1313, 'Papier ik copy A4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2157, '0020131300', 1313, 'RAME', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2158, '0020131301', 1313, 'CARTON', 1, 5.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1314, 'Papier pro print A4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2159, '0020131400', 1314, 'RAM', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2160, '0020131401', 1314, 'CARTON', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1315, 'Papier velin bleu', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2161, '0020131500', 1315, 'RAM', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2162, '0020131501', 1315, 'CARTON', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1316, 'PARASOL ARC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2163, '0020131600', 1316, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1317, 'Parfum', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2164, '0020131700', 1317, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2165, '0020131701', 1317, 'PACQUET', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2166, '0020131702', 1317, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1318, 'Patapon bleu couche l9 (9-18kg)', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2167, '0090131800', 1318, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2168, '0090131801', 1318, 'BALLE', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1319, 'Patapon cullote L10', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2169, '0090131900', 1319, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2170, '0090131901', 1319, 'BALLE', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1320, 'Patapon maxi bleu l28 (9-18kg)', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2171, '0090132000', 1320, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2172, '0090132001', 1320, 'BALLES', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1321, 'PATAPON MIDI ORANGE M30 (5-11KG)', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2173, '0090132100', 1321, 'UNITE', 0, 0.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1322, 'Patapon midi orange m30 (5-11kg)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2174, '0020132200', 1322, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2175, '0020132201', 1322, 'BALLE', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1323, 'PATAPON PM', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2176, '0090132300', 1323, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2177, '0090132301', 1323, 'PACQUE', 1, 9.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2178, '0090132302', 1323, 'CARTON', 2, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1324, 'PATATI PATATA', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2179, '0080132400', 1324, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1325, 'Pate apollo', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2180, '0020132500', 1325, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1326, 'Pate apollo En piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2181, '0020132600', 1326, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1327, 'Pate egg noodle 400g red river', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2182, '0500132700', 1327, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2183, '0500132701', 1327, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1328, 'PATE HAKA', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2184, '0290132800', 1328, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1329, 'Pate illico 60 pcs', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2185, '0500132900', 1329, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1330, 'PATE MIYA', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2186, '0500133000', 1330, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1331, 'Pate nouille aux oeufs 250gr 1er choix', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2187, '0500133100', 1331, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2188, '0500133101', 1331, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1332, 'PATE PREMIER MILAY', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2189, '0500133200', 1332, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1333, 'Pate premier prix', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2190, '0020133300', 1333, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1334, 'PATE RONI', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2191, '0500133400', 1334, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1335, 'Pate salone matsiro', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2192, '0500133500', 1335, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1336, 'PATE SALONE NAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2193, '0020133600', 1336, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1337, 'Pate Sedaap En Pcs', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2194, '0500133700', 1337, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1338, 'Pate Sedaap Supreme', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2195, '0500133800', 1338, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1339, 'PATE YUMMY', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2196, '0500133900', 1339, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2197, '0500133901', 1339, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1340, 'Pe ice cream mama tik tok pop 100p*12bag', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2198, '0080134000', 1340, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2199, '0080134001', 1340, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1341, 'PECTO BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2200, '0020134100', 1341, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2201, '0020134101', 1341, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1342, 'PECTO PM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2202, '0080134200', 1342, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2203, '0080134201', 1342, 'SAC', 1, 80.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1343, 'PEINTURE 1KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2204, '0020134300', 1343, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1344, 'PEINTURE 3KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2205, '0020134400', 1344, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1345, 'PEINTURE PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2206, '0020134500', 1345, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1346, 'Pen finger hard candy 3g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2207, '0080134600', 1346, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1347, 'PENGUIM CHOCO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2208, '0080134700', 1347, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2209, '0080134701', 1347, 'CRT', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1348, 'PERFIT', 53, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2210, '0530134800', 1348, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2211, '0530134801', 1348, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1349, 'Petit pizza', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2212, '0020134900', 1349, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1350, 'Petit pizza en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2213, '0020135000', 1350, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1351, 'Pétrole 250L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2214, '0020135100', 1351, 'LITRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2215, '0020135101', 1351, 'TONELET', 1, 250.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1352, 'Pile Alkaline Ir6 aorata7', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2216, '0340135200', 1352, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2217, '0340135201', 1352, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1353, 'Pile champion r6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2218, '0020135300', 1353, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2219, '0020135301', 1353, 'CARTON', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1354, 'Pile duratec r20', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2220, '0340135400', 1354, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2221, '0340135401', 1354, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1355, 'Pile duratec r6', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2222, '0340135500', 1355, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2223, '0340135501', 1355, 'CARTON', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1356, 'PILE ENERGY PM', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2224, '0340135600', 1356, 'BTS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2225, '0340135601', 1356, 'CRT', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1357, 'PILE EVERLASTE GM', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2226, '0340135700', 1357, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2227, '0340135701', 1357, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1358, 'PILE EVERLASTE PM', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2228, '0340135800', 1358, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2229, '0340135801', 1358, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1359, 'PILE MOTOMA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2230, '0020135900', 1359, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1360, 'PILE YARICO GM', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2231, '0340136000', 1360, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2232, '0340136001', 1360, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1361, 'PINCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2233, '0020136100', 1361, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1362, 'PINCE LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2234, '0020136200', 1362, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1363, 'PINCE SILIPO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2235, '0020136300', 1363, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1364, 'PINCE TSOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2236, '0020136400', 1364, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1365, 'PINCEAU N02', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2237, '0020136500', 1365, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1366, 'PINCEAU N1', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2238, '0020136600', 1366, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1367, 'PINCEAU N3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2239, '0020136700', 1367, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1368, 'PINCEAU N4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2240, '0020136800', 1368, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1369, 'PINCEAU N6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2241, '0020136900', 1369, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1370, 'Pistasy avaratra mena 200 kapoaka', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2242, '0020137000', 1370, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1371, 'Pistasy mena AVARATRA En kapoaka', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2243, '0230137100', 1371, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1372, 'Pistasy mena kely 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2244, '0060137200', 1372, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1373, 'Pistasy mena kely En Kap', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2245, '0060137300', 1373, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1374, 'Pizza jelly strawberry', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2246, '0020137400', 1374, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1375, 'PNEUS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2247, '0020137500', 1375, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1376, 'POID 2KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2248, '0020137600', 1376, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1377, 'POIDS 5KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2249, '0020137700', 1377, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1378, 'Pointe 100X20 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2250, '0020137800', 1378, 'KG', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2251, '0020137801', 1378, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2252, '0020137802', 1378, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1379, 'POINTE 120X20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2253, '0020137900', 1379, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2254, '0020137901', 1379, 'BTE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2255, '0020137902', 1379, 'CRT', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1380, 'Pointe 120X21 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2256, '0020138000', 1380, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2257, '0020138001', 1380, 'CRT', 1, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1381, 'POINTE 140', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2258, '0020138100', 1381, 'KG', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2259, '0020138101', 1381, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2260, '0020138102', 1381, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1382, 'Pointe 30X13 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2261, '0020138200', 1382, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2262, '0020138201', 1382, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2263, '0020138202', 1382, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1383, 'Pointe 40X14 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2264, '0020138300', 1383, 'KG', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2265, '0020138301', 1383, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2266, '0020138302', 1383, 'CARTON', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1384, 'Pointe 50X16 de 20 kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2267, '0020138400', 1384, 'KILOS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2268, '0020138401', 1384, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2269, '0020138402', 1384, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1385, 'Pointe 50X18 de 20 kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2270, '0020138500', 1385, 'KILOS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2271, '0020138501', 1385, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2272, '0020138502', 1385, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1386, 'Pointe 60X17 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2273, '0020138600', 1386, 'KILOS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2274, '0020138601', 1386, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2275, '0020138602', 1386, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1387, 'POINTE 60X20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2276, '0020138700', 1387, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2277, '0020138701', 1387, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2278, '0020138702', 1387, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1388, 'Pointe 70X18 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2279, '0020138800', 1388, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2280, '0020138801', 1388, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2281, '0020138802', 1388, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1389, 'POINTE 80X18', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2282, '0020138900', 1389, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2283, '0020138901', 1389, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2284, '0020138902', 1389, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1390, 'Pointe 80x19 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2285, '0020139000', 1390, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2286, '0020139001', 1390, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2287, '0020139002', 1390, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1391, 'POINTE 90X19', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2288, '0020139100', 1391, 'KG', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2289, '0020139101', 1391, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2290, '0020139102', 1391, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1392, 'POINTE 90X20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2291, '0020139200', 1392, 'KG', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2292, '0020139201', 1392, 'BOITE', 1, 5.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2293, '0020139202', 1392, 'CARTON', 2, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1393, 'Pointe 90X20 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2294, '0020139300', 1393, 'BOITE', 0, 1.00, 5.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2295, '0020139301', 1393, 'CARTON', 1, 4.00, 20.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1394, 'POINTE A TOLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2296, '0020139400', 1394, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2297, '0020139401', 1394, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1395, 'POIVRE DE L''EST', 54, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2298, '0540139500', 1395, 'BOUTEIL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1396, 'Poivre etui 30g', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2299, '0250139600', 1396, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2300, '0250139601', 1396, 'BALLE', 1, 10.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1397, 'POIVRE MOULU TAF', 54, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2301, '0540139700', 1397, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2302, '0540139701', 1397, 'CRT', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1398, 'PORTE ASSI?êTE LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2303, '0020139800', 1398, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1399, 'PORTE ASSIETTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2304, '0020139900', 1399, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1400, 'Pot yaourt high quality', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2305, '0020140000', 1400, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1401, 'POT YAOURT MADA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2306, '0020140100', 1401, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1402, 'Potata 100g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2307, '0010140200', 1402, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2308, '0010140201', 1402, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1403, 'Potata 15g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2309, '0020140300', 1403, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2310, '0020140301', 1403, 'SACHET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2311, '0020140302', 1403, 'BOITE', 2, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1404, 'POTATA 70G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2312, '0010140400', 1404, 'PECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1405, 'POTATA 80G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2313, '0010140500', 1405, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2314, '0010140501', 1405, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1406, 'Potata bare-b-que 75g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2315, '0010140600', 1406, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2316, '0010140601', 1406, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1407, 'Potato chips pizza adoro 75g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2317, '0010140700', 1407, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2318, '0010140701', 1407, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1408, 'Potato chipz quatre epices adoro 75g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2319, '0010140800', 1408, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2320, '0010140801', 1408, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1409, 'POUDRE KLIN', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2321, '0380140900', 1409, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1410, 'Poudre savon ariel floral 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2322, '0020141000', 1410, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1411, 'Poudre savon ariel lavendrer 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2323, '0020141100', 1411, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1412, 'Poudre savon ariel spring 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2324, '0020141200', 1412, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1413, 'Poudre savon special bleu', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2325, '0380141300', 1413, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1414, 'Poudre savon special en piece', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2326, '0380141400', 1414, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1415, 'POUDRE SIRO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2327, '0020141500', 1415, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1416, 'PRINCE FOURRE VANILLE/CHOCO GM 130G*20', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2328, '0010141600', 1416, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2329, '0010141601', 1416, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1417, 'PRINCE VANILLE POCHON 60G*35', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2330, '0010141700', 1417, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2331, '0010141701', 1417, 'CARTON', 1, 35.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1418, 'PRINCESS*18X30', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2332, '0080141800', 1418, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2333, '0080141801', 1418, 'PAQUET', 1, 30.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2334, '0080141802', 1418, 'CARTON', 2, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1419, 'PRISE FEMEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2335, '0020141900', 1419, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1420, 'PRISE MAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2336, '0020142000', 1420, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1421, 'PROTEGE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2337, '0020142100', 1421, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1422, 'PROTEGE PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2338, '0020142200', 1422, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1423, 'Provende Akoho gasy démarrage', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2339, '0230142300', 1423, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1424, 'Provende akoho gasy finition', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2340, '0230142400', 1424, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1425, 'Provende Chaire démarrage id en kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2341, '0020142500', 1425, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1426, 'Provende Chaire finition id en kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2342, '0230142600', 1426, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1427, 'Provende croissance poisson intensif kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2343, '0020142700', 1427, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1428, 'Provende demarrage porc en kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2344, '0230142800', 1428, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1429, 'Provende finition porc en kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2345, '0230142900', 1429, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1430, 'Provende pondeuse 1Id en kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2346, '0230143000', 1430, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1431, 'Provendre chaire démarrage id 50kg d2', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2347, '0230143100', 1431, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1432, 'Provendre chaire finition id 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2348, '0230143200', 1432, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1433, 'Provendre croissance poisson intensif 25kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2349, '0230143300', 1433, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1434, 'Provendre fermier démarrage 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2350, '0230143400', 1434, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1435, 'Provendre fermier finition 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2351, '0230143500', 1435, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1436, 'Provendre poisson démarage intensif', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2352, '0230143600', 1436, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1437, 'Provendre poisson démarage intensif kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2353, '0230143700', 1437, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1438, 'Pub gun bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2354, '0080143800', 1438, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1439, 'Pur''o impec 150ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2355, '0020143900', 1439, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2356, '0020143901', 1439, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1440, 'Pure butte cookies original 120g veto', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2357, '0010144000', 1440, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2358, '0010144001', 1440, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1441, 'Pure gold khazana*18x30', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2359, '0080144100', 1441, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2360, '0080144101', 1441, 'PAQUET', 1, 30.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2361, '0080144102', 1441, 'CARTON', 2, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1442, 'Pure milk cookies 120g veto', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2362, '0110144200', 1442, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2363, '0110144201', 1442, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1443, 'Racing car en Bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2364, '0080144300', 1443, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2365, '0080144301', 1443, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1444, 'Rajsi frubon roll en bocal 200pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2366, '0080144400', 1444, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2367, '0080144401', 1444, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1445, 'Rajsi kulfi milk 200pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2368, '0080144500', 1445, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2369, '0080144501', 1445, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1446, 'Rajsi strawberry roll 200pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2370, '0080144600', 1446, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2371, '0080144601', 1446, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1447, 'Rajsi super star caramel 200pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2372, '0080144700', 1447, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2373, '0080144701', 1447, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1448, 'Rajsi truffles coco 100pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2374, '0080144800', 1448, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2375, '0080144801', 1448, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1449, 'Rajsi truffles milk 100pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2376, '0080144900', 1449, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2377, '0080144901', 1449, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1450, 'RAMBO CHOCOLAT (CHEWING CANDY)', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2378, '0140145000', 1450, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2379, '0140145001', 1450, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1451, 'RAPORTEUR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2380, '0020145100', 1451, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1452, 'Rasoir Bic', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2381, '0020145200', 1452, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2382, '0020145201', 1452, 'CARTON', 1, 100.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1453, 'Rasoir dorco double', 55, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2383, '0550145300', 1453, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2384, '0550145301', 1453, 'PACQUE', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2385, '0550145302', 1453, 'BOITE', 2, 80.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2386, '0550145303', 1453, 'CARTON', 3, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1454, 'Rasoir dorco simple', 55, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2387, '0550145400', 1454, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2388, '0550145401', 1454, 'PACQUET', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1455, 'RASOIR SUPER MAX', 55, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2389, '0550145500', 1455, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2390, '0550145501', 1455, 'CARTON', 1, 120.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1456, 'REGISTRE D APEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2391, '0020145600', 1456, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1457, 'REGLE ABC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2392, '0020145700', 1457, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1458, 'REGLE AVEC CRAYON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2393, '0020145800', 1458, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1459, 'Rich bite premium bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2394, '0080145900', 1459, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1460, 'RIM', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2395, '0270146000', 1460, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1461, 'Ringos', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2396, '0020146100', 1461, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2397, '0020146101', 1461, 'BALLE', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1462, 'Robot lollipop 5.4g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2398, '0080146200', 1462, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1463, 'ROJO VY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2399, '0020146300', 1463, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1464, 'Ronono barea en boite gm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2400, '0150146400', 1464, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2401, '0150146401', 1464, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1465, 'Ronono barea en boite pm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2402, '0150146500', 1465, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2403, '0150146501', 1465, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1466, 'Ronono barea gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2404, '0020146600', 1466, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2405, '0020146601', 1466, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1467, 'Ronono boite Tople pm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2406, '0150146700', 1467, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2407, '0150146701', 1467, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1468, 'RONONO CEBON GM', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2408, '0150146800', 1468, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2409, '0150146801', 1468, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1469, 'RONONO CEBON PM', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2410, '0150146900', 1469, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2411, '0150146901', 1469, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1470, 'Ronono champion pm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2412, '0150147000', 1470, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2413, '0150147001', 1470, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1471, 'Ronono Elvia gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2414, '0020147100', 1471, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2415, '0020147101', 1471, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1472, 'Ronono Elvia pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2416, '0020147200', 1472, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2417, '0020147201', 1472, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1473, 'Ronono evita en boite pm*390g*24', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2418, '0150147300', 1473, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2419, '0150147301', 1473, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1474, 'Ronono lucky cow pm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2420, '0150147400', 1474, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2421, '0150147401', 1474, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1475, 'Ronono Mama gm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2422, '0150147500', 1475, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2423, '0150147501', 1475, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1476, 'Ronono Mama pm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2424, '0150147600', 1476, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2425, '0150147601', 1476, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1477, 'Ronono poudre fonterra 25Kg', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2426, '0330147700', 1477, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1478, 'Ronono poudre fonterra En kg', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2427, '0330147800', 1478, '1/2 KG', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1479, 'RONONO POUDRE LACTIMILK', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2428, '0330147900', 1479, 'SAC', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2429, '0330147901', 1479, '1/2 KG', 1, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1480, 'Ronono shasa gm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2430, '0150148000', 1480, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2431, '0150148001', 1480, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1481, 'RONONO SOCOLAIT', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2432, '0150148100', 1481, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2433, '0150148101', 1481, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1482, 'Ronono Socolait 390g*48', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2434, '0150148200', 1482, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2435, '0150148201', 1482, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1483, 'RONONO SOCOLAIT GM', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2436, '0150148300', 1483, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2437, '0150148301', 1483, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1484, 'Ronono white gold pm', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2438, '0150148400', 1484, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2439, '0150148401', 1484, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1485, 'Ronono Yama gm 1kg*24', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2440, '0150148500', 1485, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2441, '0150148501', 1485, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1486, 'Ronono yama pm*390g', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2442, '0150148600', 1486, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2443, '0150148601', 1486, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1487, 'Rootola chocland', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2444, '0140148700', 1487, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2445, '0140148701', 1487, 'CARTON', 1, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1488, 'Saba Bleu 25g', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2446, '0380148800', 1488, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1489, 'SAC VIDE 250 Kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2447, '0020148900', 1489, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1490, 'Sac vide gm matoa 250kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2448, '0020149000', 1490, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1491, 'Sac vide sp 55*90 60KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2449, '0020149100', 1491, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1492, 'Sachet best price', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2450, '0020149200', 1492, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1493, 'Sachet best price en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2451, '0020149300', 1493, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1494, 'Sachet best prince gm 80cm*50', 56, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2452, '0560149400', 1494, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1495, 'Sachet best prince gm 80cm*50 en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2453, '0020149500', 1495, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1496, 'Sachet hipper le magnifique', 56, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2454, '0560149600', 1496, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1497, 'SACHET MOYENNE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2455, '0020149700', 1497, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1498, 'Sachet moyenne en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2456, '0020149800', 1498, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1499, 'SACHET PM', 57, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2457, '0570149900', 1499, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1500, 'Sachet pm couleur', 56, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2458, '0560150000', 1500, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2459, '0560150001', 1500, 'BALLE', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1501, 'Sachet pm HD20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2460, '0020150100', 1501, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1502, 'Sachet pm transparent', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2461, '0020150200', 1502, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1503, 'Sachet pm Tsara kalitao unis 60U', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2462, '0020150300', 1503, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1504, 'Sachet rose mm', 56, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2463, '0560150400', 1504, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1505, 'Sachet sous vide', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2464, '0020150500', 1505, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1506, 'Saf instant 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2465, '0020150600', 1506, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2466, '0020150601', 1506, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1507, 'Saf intsant rouge 11g', 45, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2467, '0450150700', 1507, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2468, '0450150701', 1507, 'PACQUET', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2469, '0450150702', 1507, 'CARTON', 2, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1508, 'SAF_INSTANT 500G', 45, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2470, '0450150800', 1508, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2471, '0450150801', 1508, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1509, 'Salone cafe 20g*30pcs', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2472, '0200150900', 1509, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2473, '0200150901', 1509, 'PAQUET', 1, 30.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2474, '0200150902', 1509, 'SAC', 2, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1510, 'Salone cafe 30g*20pcs', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2475, '0200151000', 1510, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2476, '0200151001', 1510, 'PAQUET', 1, 20.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2477, '0200151002', 1510, 'SAC', 2, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1511, 'Salto chips chili', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2478, '0020151100', 1511, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1512, 'Salto Chips En Pcs', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2479, '0010151200', 1512, 'PCS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1513, 'SAMBA 9 BARRE EN BARRE', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2480, '0270151300', 1513, 'BARRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1514, 'Samba detergeant en poudre', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2481, '0270151400', 1514, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1515, 'Sambapito lollipop whitstle 5g bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2482, '0080151500', 1515, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2483, '0080151501', 1515, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1516, 'Sampoing marina ass', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2484, '0020151600', 1516, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2485, '0020151601', 1516, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1517, 'SAMSUNG GALAXY', 49, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2486, '0490151700', 1517, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1518, 'SANTEX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2487, '0020151800', 1518, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2488, '0020151801', 1518, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1519, 'SARDINE ANNY', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2489, '0580151900', 1519, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2490, '0580151901', 1519, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1520, 'Sardine bon appetit 125g', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2491, '0580152000', 1520, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2492, '0580152001', 1520, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1521, 'Sardine cebon', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2493, '0580152100', 1521, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2494, '0580152101', 1521, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1522, 'SARDINE CHAMPION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2495, '0020152200', 1522, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2496, '0020152201', 1522, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1523, 'SARDINE delmonaco', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2497, '0580152300', 1523, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2498, '0580152301', 1523, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1524, 'Sardine isha', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2499, '0580152400', 1524, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2500, '0580152401', 1524, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1525, 'SARDINE JULIE', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2501, '0580152500', 1525, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2502, '0580152501', 1525, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1526, 'SARDINE MONICA', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2503, '0580152600', 1526, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2504, '0580152601', 1526, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1527, 'Sardine Vivo', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2505, '0580152700', 1527, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2506, '0580152701', 1527, 'CARTON', 1, 25.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1528, 'SARDINE VIVO EN PIECE', 58, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2507, '0580152800', 1528, 'PCS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1529, 'Sauce chili bon appetit 280g', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2508, '0390152900', 1529, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2509, '0390152901', 1529, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1530, 'SAUCE CLAIRE PM', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2510, '0390153000', 1530, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2511, '0390153001', 1530, 'CRT', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1531, 'SAUCE DARK PM 150ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2512, '0020153100', 1531, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2513, '0020153101', 1531, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1532, 'SAUCE DARK SUPERIEUR PET 400ML', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2514, '0390153200', 1532, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2515, '0390153201', 1532, 'PACQUET', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1533, 'SAUCE GERCAN BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2516, '0020153300', 1533, 'GER', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1534, 'Sauce huitre 280g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2517, '0020153400', 1534, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2518, '0020153401', 1534, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1535, 'Sauce huitre 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2519, '0020153500', 1535, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2520, '0020153501', 1535, 'CARTON', 1, 15.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1536, 'SAUCE HUITRE 710g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2521, '0020153600', 1536, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2522, '0020153601', 1536, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1537, 'Sauce jerycan pm dark rrb', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2523, '0390153700', 1537, 'JERYCAN', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1538, 'Sauce jerycan pm light rrb', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2524, '0390153800', 1538, 'JERYCAN', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2525, '0390153801', 1538, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1539, 'SAUCE LIGHT 150ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2526, '0020153900', 1539, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2527, '0020153901', 1539, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1540, 'Sauce light 625 ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2528, '0020154000', 1540, 'BOUTEIL', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2529, '0020154001', 1540, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1541, 'SAUCE PLASTIC TSARAHIRATRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2530, '0020154100', 1541, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2531, '0020154101', 1541, 'PACQUET', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1542, 'Sauce soja 0.25L', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2532, '0390154200', 1542, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2533, '0390154201', 1542, 'PACQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1543, 'Sauce soja 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2534, '0020154300', 1543, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2535, '0020154301', 1543, 'PAQUET', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1544, 'Sauce soja matsiro', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2536, '0390154400', 1544, 'BOUTEIL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1545, 'SAUCE TSA SIOU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2537, '0020154500', 1545, 'JER', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1546, 'SAUCE TSA SIOU 230G RRB', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2538, '0390154600', 1546, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1547, 'Saven garbathi ag miracle', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2539, '0020154700', 1547, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2540, '0020154701', 1547, 'BOITE', 1, 12.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2541, '0020154702', 1547, 'CARTON', 2, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1548, 'Savoka TARATRA', 35, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2542, '0350154800', 1548, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1549, 'SAVON B29 MULTI USAGE96X150G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2543, '0270154900', 1549, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2544, '0270154901', 1549, 'CARTON', 1, 96.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1550, 'Savon barre national 800g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2545, '0020155000', 1550, 'BARRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2546, '0020155001', 1550, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1551, 'Savon barre parfume citron', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2547, '0280155100', 1551, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2548, '0280155101', 1551, 'CARTON', 1, 9.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1552, 'SAVON BARRE ROBUSTE', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2549, '0270155200', 1552, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2550, '0270155201', 1552, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1553, 'SAVON BARRE RUBIS CITRUS 800G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2551, '0270155300', 1553, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2552, '0270155301', 1553, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1554, 'Savon barre vao lemon 800g', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2553, '0280155400', 1554, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2554, '0280155401', 1554, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1555, 'SAVON BERYL', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2555, '0280155500', 1555, 'BARRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2556, '0280155501', 1555, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1556, 'SAVON CAPITALE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2557, '0020155600', 1556, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2558, '0020155601', 1556, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1557, 'Savon charbon antiseptic 90g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2559, '0070155700', 1557, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2560, '0070155701', 1557, 'CARTON', 1, 72.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1558, 'Savon citron plus king', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2561, '0280155800', 1558, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2562, '0280155801', 1558, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1559, 'Savon classic cucumber', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2563, '0070155900', 1559, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2564, '0070155901', 1559, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1560, 'Savon classic whit', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2565, '0020156000', 1560, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2566, '0020156001', 1560, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1561, 'SAVON CORRY MORCEAU', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2567, '0270156100', 1561, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1562, 'Savon Duru Blanc', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2568, '0020156200', 1562, 'PCE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2569, '0020156201', 1562, 'CRT', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1563, 'Savon Duru rose', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2570, '0070156300', 1563, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2571, '0070156301', 1563, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1564, 'Savon Duru verte Olive', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2572, '0270156400', 1564, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2573, '0270156401', 1564, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1565, 'Savon ekono multi purpose soap', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2574, '0270156500', 1565, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2575, '0270156501', 1565, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1566, 'SAVON EXTRA MARRON 65G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2576, '0270156600', 1566, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1567, 'Savon fax fruit cocktail 60g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2577, '0020156700', 1567, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1568, 'Savon fax lemon fresh 60g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2578, '0020156800', 1568, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1569, 'Savon fax pink flowers 60g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2579, '0020156900', 1569, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1570, 'Savon fax sunshine appeles 60g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2580, '0020157000', 1570, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1571, 'Savon flor barre 900 gr [ Bleu]', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2581, '0280157100', 1571, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2582, '0280157101', 1571, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1572, 'Savon flor barre 900g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2583, '0270157200', 1572, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2584, '0270157201', 1572, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1573, 'Savon flor En pcs', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2585, '0280157300', 1573, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1574, 'SAVON FRES 75G', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2586, '0070157400', 1574, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2587, '0070157401', 1574, 'PACQUET', 1, 6.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2588, '0070157402', 1574, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1575, 'Savon hotel 14g vert', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2589, '0070157500', 1575, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2590, '0070157501', 1575, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1576, 'Savon hotel 14g vert en pieces', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2591, '0070157600', 1576, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1577, 'Savon hotel dejoi 15g*500pcs', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2592, '0070157700', 1577, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2593, '0070157701', 1577, 'CARTON', 1, 500.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1578, 'Savon iriko andramena xg', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2594, '0270157800', 1578, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1579, 'Savon iriko fotsy mm', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2595, '0270157900', 1579, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1580, 'Savon iriko menakely xg', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2596, '0270158000', 1580, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1581, 'Savon iriko mm tantely', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2597, '0270158100', 1581, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1582, 'Savon iriko tantely xg', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2598, '0270158200', 1582, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1583, 'SAVON KALINA GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2599, '0020158300', 1583, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1584, 'SAVON KALINA PM', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2600, '0270158400', 1584, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1585, 'SAVON KIM BARRE', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2601, '0280158500', 1585, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2602, '0280158501', 1585, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1586, 'SAVON KIMSA', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2603, '0280158600', 1586, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2604, '0280158601', 1586, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1587, 'SAVON MABEL', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2605, '0070158700', 1587, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2606, '0070158701', 1587, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1588, 'Savon maeva 3 blanc', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2607, '0270158800', 1588, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1589, 'Savon maeva 3 blanc pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2608, '0020158900', 1589, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1590, 'SAVON MAEVA E20', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2609, '0270159000', 1590, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1591, 'SAVON MAEVA M20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2610, '0020159100', 1591, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1592, 'SAVON MAEVA M27', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2611, '0270159200', 1592, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1593, 'Savon maeva maxie 09 barres', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2612, '0270159300', 1593, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1594, 'Savon maeva maxie 09 barres En pieces', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2613, '0280159400', 1594, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1595, 'Savon maeva p10 blanc', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2614, '0270159500', 1595, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1596, 'Savon maeva p10 blanc pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2615, '0020159600', 1596, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1597, 'Savon maeva p10 marron', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2616, '0270159700', 1597, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1598, 'Savon maeva p20 blanc', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2617, '0270159800', 1598, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1599, 'Savon maeva p20 blanc pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2618, '0020159900', 1599, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1600, 'Savon Maeva P20 Marron', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2619, '0270160000', 1600, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1601, 'Savon mateza m30 jaune pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2620, '0020160100', 1601, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1602, 'Savon mateza m30+ blanc', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2621, '0020160200', 1602, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1603, 'Savon mateza m30+ blanc pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2622, '0020160300', 1603, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1604, 'Savon meva 100 soa 24mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2623, '0270160400', 1604, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1605, 'Savon meva 200 soa 36mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2624, '0270160500', 1605, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1606, 'Savon meva 300 soa 36mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2625, '0270160600', 1606, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1607, 'Savon meva 400 soa 36mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2626, '0270160700', 1607, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1608, 'Savon meva 500 soa 36mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2627, '0270160800', 1608, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1609, 'Savon meva mv200 soa 36mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2628, '0270160900', 1609, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1610, 'Savon meva mv40 soa', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2629, '0270161000', 1610, 'CATRON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1611, 'Savon meva mv70 soa', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2630, '0270161100', 1611, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1612, 'Savon meva rv75 tsara', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2631, '0270161200', 1612, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1613, 'Savon moreva Blanc 4*100g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2632, '0070161300', 1613, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2633, '0070161301', 1613, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1614, 'Savon moreva rose 4*100g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2634, '0070161400', 1614, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2635, '0070161401', 1614, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1615, 'Savon moreva vert 4*100g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2636, '0020161500', 1615, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2637, '0020161501', 1615, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1616, 'Savon nosy p1 80gr 36 mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2638, '0270161600', 1616, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2639, '0270161601', 1616, 'CRT', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1617, 'Savon nosy p3 morceaux', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2640, '0020161700', 1617, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2641, '0020161701', 1617, 'CARTON', 1, 18.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1618, 'Savon olive classic touch', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2642, '0270161800', 1618, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2643, '0270161801', 1618, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1619, 'Savon olive classic touch 125g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2644, '0070161900', 1619, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1620, 'Savon olive lime fresh 125g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2645, '0070162000', 1620, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2646, '0070162001', 1620, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1621, 'Savon olive milk delight', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2647, '0270162100', 1621, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2648, '0270162101', 1621, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1622, 'Savon olive milk delight 125g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2649, '0020162200', 1622, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1623, 'Savon p10 marron en pcs', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2650, '0270162300', 1623, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1624, 'SAVON PALMINDUS 36MX150G5(crt FOTSY)', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2651, '0270162400', 1624, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1625, 'SAVON RIM M3', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2652, '0270162500', 1625, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1626, 'Savon ruhi 60g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2653, '0020162600', 1626, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2654, '0020162601', 1626, 'CARTON', 1, 72.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1627, 'SAVON SAFIDY EN PCS', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2655, '0270162700', 1627, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1628, 'Savon samba 12mx 500g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2656, '0270162800', 1628, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1629, 'Savon samba 12mx en barre', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2657, '0280162900', 1629, 'BARRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1630, 'SAVON SAMBA 18MX120G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2658, '0270163000', 1630, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1631, 'SAVON SAMBA 20MX85G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2659, '0270163100', 1631, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1632, 'SAVON SAMBA 30MX100G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2660, '0270163200', 1632, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1633, 'SAVON SAMBA 32MX100G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2661, '0270163300', 1633, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1634, 'SAVON SAMBA 36MX130G (RCT MAVENTY)', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2662, '0270163400', 1634, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1635, 'SAVON SAMBA 36MX70G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2663, '0270163500', 1635, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1636, 'SAVON SAMBA 9 BARRE 800G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2664, '0270163600', 1636, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1637, 'Savon samba S21 24MX', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2665, '0270163700', 1637, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1638, 'Savon samba S22 24MX', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2666, '0270163800', 1638, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1639, 'Savon samba S23 36MX', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2667, '0270163900', 1639, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1640, 'SAVON SAMBA(PALMINDUS)36MX150G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2668, '0270164000', 1640, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1641, 'Savon sb27 Marron 36mx', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2669, '0020164100', 1641, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1642, 'Savon seim barre blanc', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2670, '0280164200', 1642, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2671, '0280164201', 1642, 'PACQUET', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1643, 'SAVON SEIM S20 BLANC NORD', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2672, '0270164300', 1643, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1644, 'Savon seim s24 mena', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2673, '0270164400', 1644, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1645, 'SAVON SEIM S27 BLANC', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2674, '0270164500', 1645, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1646, 'Savon seim s27 blanc pce', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2675, '0020164600', 1646, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1647, 'SAVON SEIM S27 MARRON', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2676, '0270164700', 1647, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1648, 'SAVON SEIM S3', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2677, '0270164800', 1648, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1649, 'Savon seim sbp 36mx', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2678, '0270164900', 1649, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1650, 'Savon seim sc1 Fotsy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2679, '0020165000', 1650, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2680, '0020165001', 1650, 'PACQUET', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1651, 'Savon seim sc3 90g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2681, '0270165100', 1651, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1652, 'Savon seim sc30 160g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2682, '0270165200', 1652, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1653, 'Savon seim sr1 rose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2683, '0020165300', 1653, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1654, 'SAVON SK1', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2684, '0270165400', 1654, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1655, 'Savon sk1 pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2685, '0020165500', 1655, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1656, 'SAVON SK20', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2686, '0270165600', 1656, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1657, 'SAVON SKT BARRE', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2687, '0280165700', 1657, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1658, 'Savon soba m20 + Blanc', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2688, '0020165800', 1658, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1659, 'Savon soba m20 marro pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2689, '0020165900', 1659, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1660, 'Savon soba SB3+blanc*30mx', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2690, '0020166000', 1660, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1661, 'Savon Soba tsara Barre 1kg', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2691, '0270166100', 1661, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1662, 'Savon Soba tsara Barre en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2692, '0020166200', 1662, 'BARRE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1663, 'Savon solar citron multi usage*18', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2693, '0070166300', 1663, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2694, '0070166301', 1663, 'CARTON', 1, 18.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1664, 'Savon solar grape multi usage 150g*48', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2695, '0070166400', 1664, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2696, '0070166401', 1664, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1665, 'Savon vao bebe amande 70g', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2697, '0070166500', 1665, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2698, '0070166501', 1665, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1666, 'SAVON VAO CITRON', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2699, '0270166600', 1666, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2700, '0270166601', 1666, 'CARTON', 1, 9.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1667, 'Savon vao line barre 500*8', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2701, '0280166700', 1667, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2702, '0280166701', 1667, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1668, 'Savon vao line barre 800*6', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2703, '0280166800', 1668, 'BARRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2704, '0280166801', 1668, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1669, 'Savon vao line multi-usage 16mx*125g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2705, '0270166900', 1669, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2706, '0270166901', 1669, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1670, 'Savon vao lux camaieu ( blance ; vert ; rose )', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2707, '0080167000', 1670, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2708, '0080167001', 1670, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1671, 'Savon vao up20+80g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2709, '0270167100', 1671, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1672, 'Savon vao v27+175g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2710, '0270167200', 1672, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1673, 'Savon vao V30*24mx*140g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2711, '0270167300', 1673, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1674, 'Savon za koa Dr24', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2712, '0270167400', 1674, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1675, 'Savon za koa Tv24', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2713, '0270167500', 1675, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1676, 'Savon za koa V40', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2714, '0270167600', 1676, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1677, 'SAVONETE FLOR', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2715, '0070167700', 1677, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2716, '0070167701', 1677, 'CARTON', 1, 100.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1678, 'SAVONETTE CITRUS', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2717, '0070167800', 1678, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2718, '0070167801', 1678, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1679, 'SAVONETTE JULIETTE', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2719, '0070167900', 1679, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2720, '0070167901', 1679, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1680, 'SAVONETTE KRIS', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2721, '0070168000', 1680, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2722, '0070168001', 1680, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1681, 'SAVONETTE OLIDA', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2723, '0070168100', 1681, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2724, '0070168101', 1681, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1682, 'SAVONNETTE DIVA 125G', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2725, '0270168200', 1682, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2726, '0270168201', 1682, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1683, 'SAVONNETTE LARK', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2727, '0270168300', 1683, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2728, '0270168301', 1683, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1684, 'Savonnette Oleda', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2729, '0270168400', 1684, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2730, '0270168401', 1684, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1685, 'Saya flavour beef bouillon de cube 4g*25', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2731, '0020168500', 1685, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2732, '0020168501', 1685, 'BOITE', 1, 40.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2733, '0020168502', 1685, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1686, 'Scotch tole', 59, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2734, '0590168600', 1686, 'METRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2735, '0590168601', 1686, 'ROULEAU', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1687, 'SEAU 05L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2736, '0020168700', 1687, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1688, 'SEAU 06 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2737, '0020168800', 1688, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1689, 'SEAU 08L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2738, '0020168900', 1689, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1690, 'SEAU 10L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2739, '0020169000', 1690, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1691, 'SEAU 15L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2740, '0020169100', 1691, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1692, 'SEEDAP PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2741, '0020169200', 1692, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1693, 'SEIM S30 MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2742, '0020169300', 1693, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1694, 'Sel fin en sachet 25kg', 60, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2743, '0600169400', 1694, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1695, 'Sel fin en vrac 25kg', 60, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2744, '0600169500', 1695, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1696, 'Sel fin en vrac 50kg', 60, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2745, '0600169600', 1696, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1697, 'SEL FIN SACHET 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2746, '0020169700', 1697, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1698, 'Sel gros en sac 50kg', 60, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2747, '0600169800', 1698, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1699, 'SERPILLERE DOUBLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2748, '0020169900', 1699, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1700, 'Servette de table top 100*24', 47, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2749, '0470170000', 1700, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2750, '0470170001', 1700, 'BALLE', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1701, 'Servette de table top 60*60', 47, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2751, '0470170100', 1701, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2752, '0470170101', 1701, 'BALLE', 1, 60.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1702, 'SERVIETTE de table', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2753, '0020170200', 1702, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1703, 'Serviette de table pastel', 47, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2754, '0470170300', 1703, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1704, 'SERVIETTE HYGIENIQUE CARE', 53, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2755, '0530170400', 1704, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2756, '0530170401', 1704, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1705, 'Serviette molped', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2757, '0020170500', 1705, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2758, '0020170501', 1705, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1706, 'SERVIETTE MY LEYDIE', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2759, '0090170600', 1706, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2760, '0090170601', 1706, 'CRT', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1707, 'SEVILY N3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2761, '0020170700', 1707, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1708, 'SEVILY N5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2762, '0020170800', 1708, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1709, 'SEVILY N6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2763, '0020170900', 1709, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1710, 'SEVILY N8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2764, '0020171000', 1710, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1711, 'Shamallow twist', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2765, '0080171100', 1711, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2766, '0080171101', 1711, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1712, 'Shampoo emeron noir 7ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2767, '0020171200', 1712, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2768, '0020171201', 1712, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1713, 'Shampoo emeron noir En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2769, '0020171300', 1713, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1714, 'Shape chocolate bocal', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2770, '0020171400', 1714, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1715, 'Shine coffee', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2771, '0200171500', 1715, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1716, 'Shine coffee en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2772, '0020171600', 1716, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1717, 'SILGUM BUBBLE GUM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2773, '0020171700', 1717, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1718, 'SILGUM FRESHA ENCRT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2774, '0020171800', 1718, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2775, '0020171801', 1718, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1719, 'SILGUM MISTER BOOM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2776, '0020171900', 1719, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2777, '0020171901', 1719, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1720, 'Sill gum chlorophile', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2778, '0020172000', 1720, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2779, '0020172001', 1720, 'CARTON', 1, 16.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1721, 'SILL GUM_ZOOK', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2780, '0300172100', 1721, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2781, '0300172101', 1721, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1722, 'SLEEPY 3 MIDI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2782, '0020172200', 1722, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2783, '0020172201', 1722, 'BALLE', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1723, 'SLEEPY CULOTE', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2784, '0090172300', 1723, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2785, '0090172301', 1723, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1724, 'Sleepy culotte jeans large 5x20 n°6', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2786, '0090172400', 1724, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2787, '0090172401', 1724, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1725, 'Sleepy culotte natural large 5x20 n°6', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2788, '0090172500', 1725, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1726, 'Sleepy kulot jeans junior 5x24 n°5', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2789, '0090172600', 1726, 'PAQUETS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2790, '0090172601', 1726, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1727, 'Sleepy KÜLOT Jeans MAXI N°4 (5X30)', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2791, '0090172700', 1727, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2792, '0090172701', 1727, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1728, 'Sleepy kulot jeans midi 5x34 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2793, '0090172800', 1728, 'PAQUETS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2794, '0090172801', 1728, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1729, 'Sleepy kulot natural junoir 4x30 n°4 en sachet', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2795, '0090172900', 1729, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2796, '0090172901', 1729, 'PAQUET', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1730, 'Sleepy kulot natural junoir 5x24 n°5', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2797, '0090173000', 1730, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2798, '0090173001', 1730, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1731, 'Sleepy kulot natural maxi 5x30 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2799, '0090173100', 1731, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2800, '0090173101', 1731, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1732, 'Sleepy kulot natural midi 5x34 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2801, '0090173200', 1732, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2802, '0090173201', 1732, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1733, 'Sleepy maxi eco . 6X25 N°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2803, '0090173300', 1733, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2804, '0090173301', 1733, 'BALLE', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1734, 'Sleepy midi 6x30 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2805, '0090173400', 1734, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2806, '0090173401', 1734, 'BALLE', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1735, 'Sleepy midi 6x30 n°3 en pcs', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2807, '0090173500', 1735, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1736, 'Sleepy mini 6X35 N°2 en sachet', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2808, '0090173600', 1736, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2809, '0090173601', 1736, 'PAQUET', 1, 35.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1737, 'Sleepy mini eco . 6X35 N°2', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2810, '0090173700', 1737, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2811, '0090173701', 1737, 'BALLE', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1738, 'Sleepy nat soft 8x24', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2812, '0090173800', 1738, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2813, '0090173801', 1738, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1739, 'Sleepy night pants culotte maxi 5x30 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2814, '0090173900', 1739, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2815, '0090173901', 1739, 'BALLES', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1740, 'Sleepy princess culotte maxi 5x30 n°4', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2816, '0090174000', 1740, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2817, '0090174001', 1740, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1741, 'Sleepy princess culotte midi 5x34 n°3', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2818, '0090174100', 1741, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2819, '0090174101', 1741, 'BALLE', 1, 5.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1742, 'SLEEPY_LADY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2820, '0020174200', 1742, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2821, '0020174201', 1742, 'CRT', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1743, 'Smail beach bubble water', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2822, '0080174300', 1743, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2823, '0080174301', 1743, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1744, 'Smail beach bubble water En piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2824, '0020174400', 1744, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1745, 'SMILEY FUNNY FACE BOCAL PM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2825, '0080174500', 1745, 'BOCAL', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1746, 'Sn 4x4 bomba choco', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2826, '0010174600', 1746, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1747, 'Sn piwi news poulet', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2827, '0020174700', 1747, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1748, 'Sn salto chips bleu double', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2828, '0020174800', 1748, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1749, 'Sn salto kids ringz', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2829, '0020174900', 1749, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1750, 'Sn salto loop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2830, '0020175000', 1750, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1751, 'Sn salto pop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2831, '0020175100', 1751, 'SACHET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1752, 'SOBA BARRE BLANC', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2832, '0280175200', 1752, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2833, '0280175201', 1752, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1753, 'SOBA M20 MARRON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2834, '0020175300', 1753, 'CRT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1754, 'SOBA mavo bara', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2835, '0280175400', 1754, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2836, '0280175401', 1754, 'CARTON', 1, 13.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1755, 'Soda sugar boom 24*30pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2837, '0080175500', 1755, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2838, '0080175501', 1755, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1756, 'Soda sugar candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2839, '0020175600', 1756, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2840, '0020175601', 1756, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1757, 'Softex day long 29cm *8 violet', 53, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2841, '0530175700', 1757, 'PQT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2842, '0530175701', 1757, 'CRT', 1, 60.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1758, 'SOFTEX maternity * 30', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2843, '0020175800', 1758, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2844, '0020175801', 1758, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1759, 'Softex maxi fit wing*8 alveole', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2845, '0090175900', 1759, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1760, 'Softex maxi wings*8 rose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2846, '0020176000', 1760, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2847, '0020176001', 1760, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1761, 'Softex protege slips', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2848, '0090176100', 1761, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2849, '0090176101', 1761, 'CARTON', 1, 48.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1762, 'SOJA EN SHT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2850, '0020176200', 1762, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1763, 'SOLAR LIGHT', 44, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2851, '0440176300', 1763, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1764, 'SOPIERA MN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2852, '0020176400', 1764, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1765, 'SOPIERA PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2853, '0020176500', 1765, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1766, 'SOPIERE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2854, '0020176600', 1766, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1767, 'SOTRO AJETER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2855, '0020176700', 1767, 'PQT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1768, 'SOTRO LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2856, '0020176800', 1768, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1769, 'SOTRO TSOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2857, '0020176900', 1769, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1770, 'Soude caustique perlinee En KG', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2858, '0230177000', 1770, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1771, 'SOY SAUCE LIGHT PRB 500ML', 39, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2859, '0390177100', 1771, 'PCS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2860, '0390177101', 1771, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1772, 'SPAGETTEI BANDY', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2861, '0610177200', 1772, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1773, 'SPAGETTEI GEFCO', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2862, '0610177300', 1773, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1774, 'SPAGETTI CAPTAINE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2863, '0020177400', 1774, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1775, 'SPAGHETI LUCHINIE', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2864, '0610177500', 1775, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1776, 'Spaghetti barea en carton', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2865, '0610177600', 1776, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1777, 'Spaghetti barea en Pcs', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2866, '0610177700', 1777, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1778, 'SPAGHETTI CHAMPION', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2867, '0120177800', 1778, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1779, 'SPAGHETTI CHAMPION EN PCS', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2868, '0610177900', 1779, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1780, 'Spaghetti cherie', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2869, '0610178000', 1780, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1781, 'Spaghetti cherie en pieces', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2870, '0610178100', 1781, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1782, 'SPAGHETTI DELICIA', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2871, '0610178200', 1782, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1783, 'Spaghetti felicia', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2872, '0500178300', 1783, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1784, 'Spaghetti felicia En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2873, '0020178400', 1784, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1785, 'Spaghetti Francia en carton', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2874, '0610178500', 1785, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1786, 'Spaghetti Francia En Pcs', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2875, '0610178600', 1786, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1787, 'SPAGHETTI NOUR D OR', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2876, '0610178700', 1787, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1788, 'Spaghetti Rasmi 500g', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2877, '0610178800', 1788, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1789, 'Spaghetti Rasmi En piece', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2878, '0610178900', 1789, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1790, 'SPAGHETTI ROSSINI 500g *20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2879, '0020179000', 1790, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1791, 'SPAGHETTI ROSSINI En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2880, '0020179100', 1791, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1792, 'SPAGHETTI SANREMO', 61, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2881, '0610179200', 1792, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1793, 'Spider man srap', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2882, '0020179300', 1793, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1794, 'Spider man srap en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2883, '0020179400', 1794, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1795, 'Sprite citron pet 1.5L en pcs', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2884, '0110179500', 1795, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1796, 'Sprite citron pet 1.5L*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2885, '0110179600', 1796, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1797, 'Sprite citron pet 350ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2886, '0110179700', 1797, 'PAQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1798, 'Strawberry kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2887, '0080179800', 1798, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2888, '0080179801', 1798, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1799, 'Strip jelly jelloo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2889, '0080179900', 1799, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2890, '0080179901', 1799, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1800, 'Stylo classin bleu', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2891, '0620180000', 1800, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1801, 'Stylo classin bleu en pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2892, '0620180100', 1801, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1802, 'Stylo classin rouge', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2893, '0620180200', 1802, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1803, 'Stylo classin rouge en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2894, '0020180300', 1803, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1804, 'Stylo classin verte', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2895, '0620180400', 1804, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1805, 'Stylo classin verte en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2896, '0020180500', 1805, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1806, 'Stylo europa noir', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2897, '0620180600', 1806, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1807, 'Stylo europa rouge', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2898, '0620180700', 1807, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1808, 'Stylo europe en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2899, '0020180800', 1808, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1809, 'STYLO LAUREAT BLEU', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2900, '0620180900', 1809, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1810, 'Stylo Laureat noir', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2901, '0620181000', 1810, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1811, 'Stylo Laureat rouge', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2902, '0620181100', 1811, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1812, 'Stylo maryas plus bleu', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2903, '0620181200', 1812, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2904, '0620181201', 1812, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1813, 'Stylo maryas plus Rouge', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2905, '0620181300', 1813, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2906, '0620181301', 1813, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1814, 'Stylo nova 1mm', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2907, '0620181400', 1814, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1815, 'Stylo schneider bleu', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2908, '0620181500', 1815, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2909, '0620181501', 1815, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1816, 'Stylo schneider bleu En pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2910, '0620181600', 1816, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1817, 'Stylo schneider Noir', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2911, '0020181700', 1817, 'BOITE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1818, 'Stylo schneider noir En pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2912, '0620181800', 1818, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1819, 'Stylo schneider Rouge', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2913, '0620181900', 1819, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1820, 'Stylo schneider rouge En pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2914, '0620182000', 1820, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1821, 'Stylo schneider Vert', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2915, '0620182100', 1821, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1822, 'Stylo schneider Vert en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2916, '0020182200', 1822, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1823, 'Sucette big assorted mix excel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2917, '0080182300', 1823, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2918, '0080182301', 1823, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1824, 'Sucette big cola excel 25g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2919, '0080182400', 1824, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2920, '0080182401', 1824, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1825, 'Sucette big milk lollipop excel 25g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2921, '0080182500', 1825, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2922, '0080182501', 1825, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1826, 'Sucette big pop gm xxl', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2923, '0080182600', 1826, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2924, '0080182601', 1826, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1827, 'SUCETTE BOCAL ROYAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2925, '0080182700', 1827, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2926, '0080182701', 1827, 'CRT', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1828, 'SUCETTE CHOCO VANILLA DOLLY LOLLY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2927, '0080182800', 1828, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1829, 'Sucette Donut', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2928, '0080182900', 1829, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2929, '0080182901', 1829, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1830, 'Sucette g pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2930, '0080183000', 1830, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2931, '0080183001', 1830, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1831, 'Sucette g pop en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2932, '0080183100', 1831, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1832, 'Sucette gm bigg pops en sachet', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2933, '0080183200', 1832, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2934, '0080183201', 1832, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1833, 'Sucette hearty pop bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2935, '0080183300', 1833, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2936, '0080183301', 1833, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1834, 'Sucette icy pop bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2937, '0080183400', 1834, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2938, '0080183401', 1834, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1835, 'Sucette Love pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2939, '0080183500', 1835, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2940, '0080183501', 1835, 'CARTON', 1, 34.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1836, 'Sucette love pops rama gm', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2941, '0080183600', 1836, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2942, '0080183601', 1836, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1837, 'Sucette love ring bague', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2943, '0080183700', 1837, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2944, '0080183701', 1837, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1838, 'Sucette mix fruit naturaly', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2945, '0080183800', 1838, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2946, '0080183801', 1838, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1839, 'Sucette mix yogofru bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2947, '0080183900', 1839, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2948, '0080183901', 1839, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1840, 'Sucette Neo pop xxl', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2949, '0080184000', 1840, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2950, '0080184001', 1840, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1841, 'Sucette rama big bombom xxxl', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2951, '0080184100', 1841, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2952, '0080184101', 1841, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1842, 'Sucette sweet art bocal', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2953, '0020184200', 1842, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2954, '0020184201', 1842, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1843, 'Sucette tik tok chew pop bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2955, '0080184300', 1843, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2956, '0080184301', 1843, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1844, 'Sucette tik tok excel xxl', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2957, '0080184400', 1844, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2958, '0080184401', 1844, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1845, 'Sucette trio pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2959, '0080184500', 1845, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2960, '0080184501', 1845, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1846, 'Sucette Twist pop mango excel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2961, '0080184600', 1846, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2962, '0080184601', 1846, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1847, 'Sucette Twist pop strawberry', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2963, '0080184700', 1847, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2964, '0080184701', 1847, 'CARTON', 1, 14.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1848, 'Sucette wafer mellow fruit lollipop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2965, '0080184800', 1848, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2966, '0080184801', 1848, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1849, 'Sucette ziva mix fruit lollipop 25g ass', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2967, '0080184900', 1849, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2968, '0080184901', 1849, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1850, 'SUCRE 25 KG', 63, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2969, '0630185000', 1850, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1851, 'Sucre ambilobe 50Kg', 63, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2970, '0630185100', 1851, 'KG', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2971, '0630185101', 1851, 'SAC', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1852, 'Sucre blanc 50kg', 63, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2972, '0630185200', 1852, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1853, 'Sucre blanc En kg', 63, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2973, '0630185300', 1853, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1854, 'Sucre Mena En Kg', 63, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2974, '0630185400', 1854, 'KG', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1855, 'Sucre rouge selati 50kg', 63, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2975, '0630185500', 1855, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1856, 'Sundea choco ice cream', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2976, '0080185600', 1856, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2977, '0080185601', 1856, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1857, 'Super cone 12*60', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2978, '0080185700', 1857, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2979, '0080185701', 1857, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1858, 'Super cone24*30 en boite', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2980, '0080185800', 1858, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2981, '0080185801', 1858, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1859, 'Super Moustiquaire', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2982, '0020185900', 1859, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2983, '0020185901', 1859, 'BALLE', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1860, 'SUPER POPS_MIX FLAVOUR', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2984, '0010186000', 1860, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2985, '0010186001', 1860, 'BALLE', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1861, 'SUR EAU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2986, '0020186100', 1861, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2987, '0020186101', 1861, 'CARTON', 1, 28.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1862, 'Sur eau oasis', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2988, '0020186200', 1862, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2989, '0020186201', 1862, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1863, 'SURE EAU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2990, '0020186300', 1863, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2991, '0020186301', 1863, 'CARTON', 1, 40.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1864, 'Surprise snack 20sht*25pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2992, '0020186400', 1864, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2993, '0020186401', 1864, 'BALLE', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1865, 'Sweet africa cube Onion', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2994, '0080186500', 1865, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2995, '0080186501', 1865, 'BOITE', 1, 40.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2996, '0080186502', 1865, 'CARTON', 2, 2.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1866, 'SWEET BOY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2997, '0080186600', 1866, 'BTE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2998, '0080186601', 1866, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1867, 'Sweet dreams pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2999, '0080186700', 1867, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3000, '0080186701', 1867, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1868, 'Swr happy nipple candy ( teeth pops bocal )', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3001, '0080186800', 1868, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3002, '0080186801', 1868, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1869, 'Sytlo supra bleu', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3003, '0620186900', 1869, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1870, 'Sytlo supra bleu en Pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3004, '0620187000', 1870, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1871, 'Sytlo supra rouge', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3005, '0620187100', 1871, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1872, 'Sytlo supra rouge En pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3006, '0620187200', 1872, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1873, 'Sytlo supra vert', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3007, '0620187300', 1873, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1874, 'Sytlo supra vert En pcs', 62, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3008, '0620187400', 1874, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1875, 'Table candy in cola ,sprite , fanta', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3009, '0020187500', 1875, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1876, 'TADY LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3010, '0020187600', 1876, 'ROULEAUX', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1877, 'TALIA', 53, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3011, '0530187700', 1877, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3012, '0530187701', 1877, 'CARTON', 1, 60.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1878, 'Talia bleu Nuit*60pcs', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3013, '0090187800', 1878, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3014, '0090187801', 1878, 'CARTON', 1, 60.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1879, 'Talia Violte Nuit coton*60pcs', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3015, '0090187900', 1879, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3016, '0090187901', 1879, 'CARTON', 1, 60.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1880, 'TAMARIN gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3017, '0020188000', 1880, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3018, '0020188001', 1880, 'CRT', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1881, 'TAMIS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3019, '0020188100', 1881, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1882, 'TANGATRIKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3020, '0020188200', 1882, 'METRE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1883, 'TANGATRIKA 2M', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3021, '0020188300', 1883, 'METRE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3022, '0020188301', 1883, 'BALLE', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1884, 'TARZAN SUPER ENCRT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3023, '0080188400', 1884, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3024, '0080188401', 1884, 'CARTON', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1885, 'TERMOS PLASTIQUE 3L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3025, '0020188500', 1885, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1886, 'TERMOS VISTA 2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3026, '0020188600', 1886, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1887, 'TERMOS VISTA 3.2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3027, '0020188700', 1887, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1888, 'TERMOSY ALWAYS 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3028, '0020188800', 1888, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1889, 'TERMOSY HOPESTAR 2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3029, '0020188900', 1889, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1890, 'Thermos vista ravinala 3L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3030, '0020189000', 1890, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1891, 'Thermos vista vvf-1120h 2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3031, '0020189100', 1891, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1892, 'Thermos vista vvf-1132h 3.2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3032, '0020189200', 1892, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1893, 'Thermos vy K826 3.2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3033, '0020189300', 1893, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1894, 'Thon en miettes 185g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3034, '0020189400', 1894, 'PIECES', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1895, 'TIARA 10G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3035, '0020189500', 1895, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3036, '0020189501', 1895, 'BOITE', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1896, 'Tiara 10g Voa2', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3037, '0100189600', 1896, 'BOITE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3038, '0100189601', 1896, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1897, 'TIBINO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3039, '0020189700', 1897, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1898, 'TIRBO GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3040, '0010189800', 1898, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1899, 'TIRBO PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3041, '0020189900', 1899, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3042, '0020189901', 1899, 'CARTON', 1, 24.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1900, 'TOKO VY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3043, '0020190000', 1900, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1901, 'Tomate boite alda 70g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3044, '0020190100', 1901, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3045, '0020190101', 1901, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1902, 'TOMATE BOITE FASTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3046, '0020190200', 1902, 'BTS', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3047, '0020190201', 1902, 'CRT', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1903, 'TOMATE BOITE GEFCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3048, '0020190300', 1903, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3049, '0020190301', 1903, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1904, 'Tomate boite Lucie', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3050, '0020190400', 1904, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3051, '0020190401', 1904, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1905, 'Tomate boite mama', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3052, '0020190500', 1905, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3053, '0020190501', 1905, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1906, 'Tomate bonjour @ boite 70g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3054, '0020190600', 1906, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3055, '0020190601', 1906, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1907, 'Tomate bonjour en sachet 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3056, '0020190700', 1907, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3057, '0020190701', 1907, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1908, 'TOMATE BTE FANA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3058, '0020190800', 1908, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3059, '0020190801', 1908, 'CARTON', 1, 100.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1909, 'TOMATE DELICIOSO 400GR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3060, '0020190900', 1909, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1910, 'TOMATE DELICIOSO 70GR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3061, '0020191000', 1910, 'PIECES', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3062, '0020191001', 1910, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1911, 'TOMATE ELVIA EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3063, '0020191100', 1911, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3064, '0020191101', 1911, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1912, 'Tomate europa @ boite 70g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3065, '0020191200', 1912, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3066, '0020191201', 1912, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1913, 'Tomate europa @ sachet 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3067, '0020191300', 1913, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3068, '0020191301', 1913, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1914, 'Tomate Evita en sachet *50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3069, '0020191400', 1914, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3070, '0020191401', 1914, 'CARTON', 1, 50.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1915, 'Tomate fana en sachet 50g*100pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3071, '0020191500', 1915, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3072, '0020191501', 1915, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1916, 'Tomate kenzy en sachet 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3073, '0020191600', 1916, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3074, '0020191601', 1916, 'BOITE', 1, 25.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3075, '0020191602', 1916, 'CARTON', 2, 4.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1917, 'Tongolo be @ kilos', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3076, '0230191700', 1917, 'KILOS', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1918, 'Tongue paint assorti 5g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3077, '0080191800', 1918, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3078, '0080191801', 1918, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1919, 'Tongue paint assorti 5g en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3079, '0080191900', 1919, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1920, 'Tongue painter kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3080, '0080192000', 1920, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3081, '0080192001', 1920, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1921, 'Tongue painter monstre pop kiddies', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3082, '0080192100', 1921, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3083, '0080192101', 1921, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1922, 'Tongue_dance (100pcs)', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3084, '0080192200', 1922, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1923, 'Top cafe *22g*120pcs', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3085, '0200192300', 1923, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3086, '0200192301', 1923, 'CARTON', 1, 120.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1924, 'Top cafe cappuccino 25g', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3087, '0200192400', 1924, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3088, '0200192401', 1924, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3089, '0200192402', 1924, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1925, 'Top cafe palm sugar 25g', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3090, '0200192500', 1925, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3091, '0200192501', 1925, 'PAQUET', 1, 10.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3092, '0200192502', 1925, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1926, 'Top caffe Avocado 22g', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3093, '0200192600', 1926, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3094, '0200192601', 1926, 'PAQUET', 1, 15.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3095, '0200192602', 1926, 'CARTON', 2, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1927, 'Top caffe mokachinno 22g', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3096, '0200192700', 1927, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3097, '0200192701', 1927, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1928, 'Top caffe mokachinno en piece', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3098, '0200192800', 1928, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1929, 'Top pop', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3099, '0010192900', 1929, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3100, '0010192901', 1929, 'BALLE', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1930, 'TORCHE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3101, '0020193000', 1930, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1931, 'TORCHE DE TETE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3102, '0020193100', 1931, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1932, 'TORCHE SOLAR CHARGE FLASHIGHT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3103, '0020193200', 1932, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1933, 'TOTOKENA MAMASOA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3104, '0020193300', 1933, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3105, '0020193301', 1933, 'SACHET', 1, 48.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3106, '0020193302', 1933, 'SAC', 2, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1934, 'Traffic light fudge gummy 12g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3107, '0080193400', 1934, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3108, '0080193401', 1934, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1935, 'Triple action aloe vera 100ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3109, '0020193500', 1935, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3110, '0020193501', 1935, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1936, 'TRIPLE ACTION GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3111, '0020193600', 1936, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3112, '0020193601', 1936, 'PAQUET', 1, 12.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1937, 'Tsaramaso avaratra 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3113, '0230193700', 1937, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1938, 'Tsaramaso avaratra en kapoaka', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3114, '0230193800', 1938, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1939, 'Tsaramaso bota 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3115, '0230193900', 1939, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1940, 'Tsaramaso bota En Kapoaka', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3116, '0230194000', 1940, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1941, 'Tsaramaso Lava 50Kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3117, '0020194100', 1941, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1942, 'Tsaramaso Lava En Kap', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3118, '0020194200', 1942, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1943, 'TSARAMASO MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3119, '0020194300', 1943, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1944, 'Tsaramaso miandrivazo 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3120, '0020194400', 1944, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1945, 'Tsaramaso miandrivazo en Kap', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3121, '0290194500', 1945, 'KPK', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1946, 'Tsaramaso vazo 25kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3122, '0230194600', 1946, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1947, 'Tsiasisa 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3123, '0020194700', 1947, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1948, 'Tsiasisa 50kg (Vao)', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3124, '0230194800', 1948, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1949, 'Tsiasisa 50kg (Vao) En Kapoaka', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3125, '0020194900', 1949, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1950, 'TSIK NACK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3126, '0020195000', 1950, 'SACHET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1951, 'TUC CLASSIC 65*24', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3127, '0010195100', 1951, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3128, '0010195101', 1951, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1952, 'TUC MINI 30G 30', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3129, '0010195200', 1952, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3130, '0010195201', 1952, 'CARTON', 1, 30.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1953, 'TUC POCKET 32G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3131, '0010195300', 1953, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3132, '0010195301', 1953, 'BOITE', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1954, 'Turbo choco gm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3133, '0010195400', 1954, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3134, '0010195401', 1954, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1955, 'Turbo choco pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3135, '0010195500', 1955, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3136, '0010195501', 1955, 'CARTON', 1, 21.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1956, 'Turbo fraise gm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3137, '0010195600', 1956, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3138, '0010195601', 1956, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1957, 'Turbo fraise pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3139, '0010195700', 1957, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3140, '0010195701', 1957, 'CARTON', 1, 21.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1958, 'U&mé minis en boite', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3141, '0080195800', 1958, 'BOITE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1959, 'Vao coco', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3142, '0020195900', 1959, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3143, '0020195901', 1959, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1960, 'Vao savon anatiseptique t.a ravintsara', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3144, '0070196000', 1960, 'PEICE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3145, '0070196001', 1960, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1961, 'Vao savon antiseptique au charbon active', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3146, '0070196100', 1961, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3147, '0070196101', 1961, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1962, 'Vao shampooing papaye', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3148, '0020196200', 1962, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3149, '0020196201', 1962, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1963, 'Vao translucide sdoi u1*36mx*80g', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3150, '0270196300', 1963, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3151, '0270196301', 1963, 'CARTON', 1, 36.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1964, 'Vaoline 30g*108pcs', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3152, '0380196400', 1964, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1965, 'Vary Diste Vao 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3153, '0060196500', 1965, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1966, 'Vary diste vao 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3154, '0060196600', 1966, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1967, 'Vary diste vao en kapoaka', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3155, '0060196700', 1967, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1968, 'Vary gasy andapa 50 kg En Kapoaka', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3156, '0020196800', 1968, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1969, 'Vary gasy andapa 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3157, '0060196900', 1969, 'SAC', 0, 1.00, 50.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3158, '0060196901', 1969, 'SAC', 1, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1970, 'Vary gasy andapa 60kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3159, '0060197000', 1970, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1971, 'Vary gasy andapa 60kg En kapoaka', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3160, '0060197100', 1971, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1972, 'Vary gasy Bota vao sac 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3161, '0060197200', 1972, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1973, 'Vary gasy Bota vaovao 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3162, '0060197300', 1973, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1974, 'Vary gasy bota vaovao 60kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3163, '0060197400', 1974, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1975, 'Vary gasy fotsy 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3164, '0060197500', 1975, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1976, 'Vary gasy fotsy 2ém choix 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3165, '0060197600', 1976, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1977, 'Vary gasy fotsy 60kg Vao', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3166, '0060197700', 1977, 'SAC', 0, 1.00, 60.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1978, 'Vary gasy fotsy boribory 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3167, '0060197800', 1978, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1979, 'Vary gasy fotsy en Kapoaka', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3168, '0060197900', 1979, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1980, 'Vary haraka tsansparent 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3169, '0060198000', 1980, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1981, 'VARY jaune inde', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3170, '0060198100', 1981, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1982, 'Vary Lux mahavoky 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3171, '0060198200', 1982, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1983, 'Vary makalioka 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3172, '0060198300', 1983, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1984, 'Vary Makalioka 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3173, '0060198400', 1984, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1985, 'Vary makalioka 60kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3174, '0060198500', 1985, 'SAC', 0, 1.00, 60.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1986, 'Vary Makalioka en Kapoaka', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3175, '0060198600', 1986, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1987, 'Vary Makalioka Vao 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3176, '0060198700', 1987, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1988, 'Vary manitra mme rose 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3177, '0060198800', 1988, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1989, 'Vary manitra mme rose En kp', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3178, '0060198900', 1989, 'EN KPK', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1990, 'Vary r r premium 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3179, '0060199000', 1990, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1991, 'VARY STAR 25Kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3180, '0060199100', 1991, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1992, 'Vary stock ace rice 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3181, '0060199200', 1992, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1993, 'Vary stock Adelco 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3182, '0060199300', 1993, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1994, 'Vary stock Barea 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3183, '0060199400', 1994, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1995, 'Vary stock bon 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3184, '0060199500', 1995, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1996, 'Vary stock boule petanque 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3185, '0060199600', 1996, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1997, 'Vary stock bulmex 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3186, '0060199700', 1997, 'SAC', 0, 1.00, 25.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1998, 'Vary stock ce bon sac 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3187, '0060199800', 1998, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1999, 'Vary stock champion 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3188, '0060199900', 1999, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2000, 'VARY STOCK COMMANDER 50KG', 55, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3189, '0550200000', 2000, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2001, 'Vary stock eagle 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3190, '0060200100', 2001, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2002, 'Vary stock ehoala 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3191, '0060200200', 2002, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2003, 'Vary stock FANEVA 50Kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3192, '0060200300', 2003, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2004, 'Vary stock foot ball 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3193, '0060200400', 2004, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2005, 'Vary stock global 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3194, '0060200500', 2005, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2006, 'Vary stock gold coin 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3195, '0060200600', 2006, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2007, 'Vary stock gold sac 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3196, '0060200700', 2007, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2008, 'Vary stock haraka jaune 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3197, '0060200800', 2008, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2009, 'Vary stock hary fitia 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3198, '0060200900', 2009, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2010, 'VARY STOCK INDUS 50KG', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3199, '0060201000', 2010, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2011, 'Vary stock Kintana 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3200, '0060201100', 2011, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2012, 'Vary stock Kintana 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3201, '0060201200', 2012, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2013, 'Vary stock la cascade 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3202, '0060201300', 2013, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2014, 'Vary stock la famille 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3203, '0060201400', 2014, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2015, 'VARY STOCK LALA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3204, '0020201500', 2015, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2016, 'VARY STOCK laxim', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3205, '0060201600', 2016, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2017, 'Vary stock lemur 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3206, '0060201700', 2017, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2018, 'Vary stock mahavoky 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3207, '0060201800', 2018, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2019, 'Vary stock Manjarika 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3208, '0060201900', 2019, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2020, 'Vary stock mara 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3209, '0060202000', 2020, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2021, 'Vary stock mol 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3210, '0060202100', 2021, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2022, 'Vary stock nitra 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3211, '0060202200', 2022, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2023, 'Vary stock pack rhino 25kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3212, '0060202300', 2023, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2024, 'Vary stock pogo 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3213, '0060202400', 2024, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2025, 'Vary stock Romazava 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3214, '0060202500', 2025, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2026, 'Vary stock saksi silver 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3215, '0060202600', 2026, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2027, 'VARY STOCK STAR 50KG', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3216, '0060202700', 2027, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2028, 'Vary stock tanishk 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3217, '0060202800', 2028, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2029, 'Vary stock tigre pakistan 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3218, '0060202900', 2029, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2030, 'Vary stock tuc tuc 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3219, '0060203000', 2030, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2031, 'Vary stock Tulip 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3220, '0060203100', 2031, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2032, 'Vary stock volamena 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3221, '0060203200', 2032, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2033, 'Vary stock volga 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3222, '0060203300', 2033, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2034, 'VARY STOCK WARRIO', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3223, '0060203400', 2034, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2035, 'Vary Tsinjo 25 kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3224, '0060203500', 2035, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2036, 'Vary Tsinjo 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3225, '0060203600', 2036, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2037, 'Vary voky stock luxe 5% sac 50kg', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3226, '0060203700', 2037, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2038, 'Vary voky stock luxe kapoaka', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3227, '0060203800', 2038, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2039, 'VARY VOKY TSARA 50KG', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3228, '0060203900', 2039, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2040, 'Vehicule lollipop 15g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3229, '0080204000', 2040, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3230, '0080204001', 2040, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2041, 'Verre à jetter champion', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3231, '0020204100', 2041, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3232, '0020204101', 2041, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2042, 'Verre a jetter tranquil transparent', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3233, '0020204200', 2042, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3234, '0020204201', 2042, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2043, 'Verre a jetter tranquil white', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3235, '0020204300', 2043, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3236, '0020204301', 2043, 'CARTON', 1, 40.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2044, 'Verre à jetter voila', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3237, '0020204400', 2044, 'PACQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3238, '0020204401', 2044, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2045, 'Verre decorrted glrss', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3239, '0020204500', 2045, 'PAQUET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3240, '0020204501', 2045, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2046, 'VETSIN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3241, '0020204600', 2046, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3242, '0020204601', 2046, 'BALLE', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2047, 'VETSIN 250G', 64, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3243, '0640204700', 2047, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3244, '0640204701', 2047, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2048, 'Vetsin 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3245, '0020204800', 2048, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3246, '0020204801', 2048, 'CARTON', 1, 100.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2049, 'Vetsin vita 3g*40pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3247, '0020204900', 2049, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3248, '0020204901', 2049, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2050, 'VILIA BAKOLY PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3249, '0020205000', 2050, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2051, 'VILIA BOL ARC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3250, '0020205100', 2051, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2052, 'VILIA BOL BAKOLY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3251, '0020205200', 2052, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2053, 'VILIA BOL INOX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3252, '0020205300', 2053, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2054, 'VILIA SPAGHETTI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3253, '0020205400', 2054, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2055, 'Vinaigre @ Sachet MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3254, '0020205500', 2055, 'SACHET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3255, '0020205501', 2055, 'CARTON', 1, 5.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2056, 'VINAIGRE FOTSY 1L', 65, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3256, '0650205600', 2056, 'PACQUE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2057, 'Vinaigre taf fotsy 0.25L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3257, '0020205700', 2057, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2058, 'Vinaigre taf fotsy 1L Vao', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3258, '0020205800', 2058, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2059, 'Vinaigre taf mena 0.25L', 65, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3259, '0650205900', 2059, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2060, 'Vinaigre Taf Mena 1L', 65, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3260, '0650206000', 2060, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2061, 'Vinaigre Taf Mena 1L En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3261, '0020206100', 2061, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3262, '0020206101', 2061, 'PIECE', 1, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2062, 'Vinut cocktail mixed fruit juice 330ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3263, '0110206200', 2062, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2063, 'Vinut coconut water juice 330ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3264, '0110206300', 2063, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2064, 'Vinut orange juice 330ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3265, '0110206400', 2064, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2065, 'Vinut passion fruit juice 330ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3266, '0110206500', 2065, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2066, 'Vinut strawberry juice 330ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3267, '0110206600', 2066, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2067, 'Vinut voltric 220 energy juice 330ml', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3268, '0110206700', 2067, 'PICEE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2068, 'Vitalait 1Kg', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3269, '0330206800', 2068, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3270, '0330206801', 2068, 'CARTON', 1, 8.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2069, 'Vitalait 250g', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3271, '0330206900', 2069, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3272, '0330206901', 2069, 'CARTON', 1, 32.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2070, 'Vitalait 500gr', 33, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3273, '0330207000', 2070, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3274, '0330207001', 2070, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2071, 'Vitogaz gm 12kg', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3275, '0290207100', 2071, 'BOUTEIL', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2072, 'Vitogaz pm 4kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3276, '0020207200', 2072, 'BOUTEIL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2073, 'Vitogaz_moyenne 09kg', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3277, '0290207300', 2073, 'BOUTEIL', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2074, 'Vnl azedinha toffee mastigavel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3278, '0080207400', 2074, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3279, '0080207401', 2074, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2075, 'Vnl deluxe toffee 100pcs*20bag', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3280, '0080207500', 2075, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3281, '0080207501', 2075, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2076, 'Vnl froyo preto black to red 24pcs*16', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3282, '0080207600', 2076, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3283, '0080207601', 2076, 'CARTON', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2077, 'Vnl jumbo pops lollipop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3284, '0080207700', 2077, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2078, 'Vnl milk lollipop bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3285, '0080207800', 2078, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3286, '0080207801', 2078, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2079, 'Vnl stawberry lollipop boom splash', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3287, '0020207900', 2079, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3288, '0020207901', 2079, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2080, 'Vnl strawberry lollipop boom splash', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3289, '0080208000', 2080, 'BOCAL', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3290, '0080208001', 2080, 'CARTON', 1, 6.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2081, 'Voanemba 50kg lj', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3291, '0020208100', 2081, 'SAC', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2082, 'Voanemba en Kap', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3292, '0020208200', 2082, 'KAPOAKA', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2083, 'VOANJOBORY 50KG', 66, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3293, '0660208300', 2083, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2084, 'Voanjobory En Kap', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3294, '0290208400', 2084, 'EN KPK', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2085, 'Voantsoroka Maintso en Kap', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3295, '0230208500', 2085, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2086, 'Voantsoroka Mavo en Kp', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3296, '0020208600', 2086, 'KAPOAKA', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2087, 'Voantsoroko maintso 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3297, '0230208700', 2087, 'SAC', 0, 1.00, 50.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2088, 'Voantsoroko mavo 50kg', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3298, '0230208800', 2088, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2089, 'Vovo-tsavony so klin 1kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3299, '0020208900', 2089, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3300, '0020208901', 2089, 'CARTON', 1, 10.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2090, 'VOVON TSAVONY FLOR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3301, '0020209000', 2090, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2091, 'VOVON TSAVONY SEIM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3302, '0020209100', 2091, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2092, 'Vovon-tsavony boom Floral', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3303, '0020209200', 2092, 'CARTON', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2093, 'Vovon-tsavony boom jaune citron', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3304, '0020209300', 2093, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2094, 'Vovon-tsavony iriko 25g', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3305, '0380209400', 2094, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3306, '0380209401', 2094, 'SAC', 1, 150.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2095, 'Vovon-tsavony Keon 200g* 20 sht', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3307, '0270209500', 2095, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2096, 'Vovon-tsavony Keon En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3308, '0020209600', 2096, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2097, 'Vovon-tsavony Oxi', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3309, '0020209700', 2097, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2098, 'Vovon-tsavony Oxi En pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3310, '0020209800', 2098, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2099, 'Vovon-tsavony Safidy 30g', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3311, '0290209900', 2099, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2100, 'Vovon-tsavony seim en pcs', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3312, '0380210000', 2100, 'PIECCE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2101, 'VOVON-TSAVONY UNO 150G', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3313, '0380210100', 2101, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2102, 'Vovon-tsavony UNO En pcs', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3314, '0380210200', 2102, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2103, 'Vovon-tsavony Vaoline 30g En piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3315, '0020210300', 2103, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2104, 'Vovon-tsavony Vaoline 30g*150pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3316, '0020210400', 2104, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2105, 'Vovontsavony B29 ( vao )', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3317, '0020210500', 2105, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2106, 'Vovontsavony Saba 25g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3318, '0020210600', 2106, 'SAC', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2107, 'VOVOTSAVONY 30G B29', 38, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3319, '0380210700', 2107, 'CARTON', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2108, 'WAFERZ', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3320, '0020210800', 2108, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3321, '0020210801', 2108, 'CARTON', 1, 36.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2109, 'XXL35CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3322, '0020210900', 2109, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2110, 'YARICO PM', 34, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3323, '0340211000', 2110, 'BOITE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3324, '0340211001', 2110, 'CARTON', 1, 50.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2111, 'Yes juice apple 1L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3325, '0110211100', 2111, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3326, '0110211101', 2111, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2112, 'Yes juice cocktail 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3327, '0100211200', 2112, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3328, '0100211201', 2112, 'CARTON', 1, 27.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2113, 'Yes juice guave 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3329, '0100211300', 2113, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2114, 'Yes juice mangue 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3330, '0100211400', 2114, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2115, 'Yes juice orange 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3331, '0100211500', 2115, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3332, '0100211501', 2115, 'CARTON', 1, 27.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2116, 'Yes juice pineapple 1L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3333, '0110211600', 2116, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3334, '0110211601', 2116, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2117, 'Yes juice pomme 200ml', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3335, '0100211700', 2117, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2118, 'Yes juice raisin rouge 1L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3336, '0110211800', 2118, 'PIECE', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3337, '0110211801', 2118, 'CARTON', 1, 12.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2119, 'Yes juice resain (grapes) 200m', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3338, '0100211900', 2119, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2120, 'YOGURT BONBON', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3339, '0080212000', 2120, 'SHT', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2121, 'Yogurt pop kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3340, '0080212100', 2121, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3341, '0080212101', 2121, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2122, 'Yogurt pop kiddo en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3342, '0080212200', 2122, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2123, 'YOGURT SUCETTE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3343, '0080212300', 2123, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3344, '0080212301', 2123, 'CRT', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2124, 'YOGURT SUCETTE GM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3345, '0080212400', 2124, 'SHT', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3346, '0080212401', 2124, 'CRT', 1, 16.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2125, 'Youzo 1,5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3347, '0110212500', 2125, 'PACQUET', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2126, 'Youzou en piece 1.5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3348, '0110212600', 2126, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2127, 'Yum yum lollipop 20*50pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3349, '0080212700', 2127, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3350, '0080212701', 2127, 'CARTON', 1, 20.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2128, 'YUMY', 50, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3351, '0500212800', 2128, 'PIECE', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2129, 'Z bonbon fruit bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3352, '0080212900', 2129, 'BOCAL', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2130, 'Z bonbon fruit sachet', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3353, '0080213000', 2130, 'SACHET', 0, 1.00, 1.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3354, '0080213001', 2130, 'CARTON', 1, 24.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2131, 'Z bonbon fruit SACHET en piece', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3355, '0020213100', 2131, 'PIECE', 0, 1.00, 1.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2132, 'Zakuro', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3356, '0020213200', 2132, 'PAQUET', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3357, '0020213201', 2132, 'CARTON', 1, 6.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2133, 'ZER100P SUPER', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3358, '0210213300', 2133, 'PAQUET', 0, 1.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2134, 'ZINQ BARRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3359, '0020213400', 2134, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3360, '0020213401', 2134, 'CARTON', 1, 20.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2135, 'ZINQ MORCEAU', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3361, '0270213500', 2135, 'PIECE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3362, '0270213501', 2135, 'CARTON', 1, 48.00, 0.0, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2136, 'ZINQ PRO', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3363, '0280213600', 2136, 'BARRE', 0, 1.00, 0.0, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3364, '0280213601', 2136, 'CARTON', 1, 16.00, 0.0, 0);

SELECT setval(pg_get_serial_sequence('tb_categoriearticle','idca'), COALESCE((SELECT MAX(idca) FROM tb_categoriearticle), 0), true);
SELECT setval(pg_get_serial_sequence('tb_article','idarticle'), COALESCE((SELECT MAX(idarticle) FROM tb_article), 0), true);
SELECT setval(pg_get_serial_sequence('tb_unite','idunite'), COALESCE((SELECT MAX(idunite) FROM tb_unite), 0), true);

COMMIT;
