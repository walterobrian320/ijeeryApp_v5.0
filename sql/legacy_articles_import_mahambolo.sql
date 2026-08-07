-- Migration des articles legacy Mahambolo vers la nouvelle structure
BEGIN;

SET search_path TO public, pg_catalog;

INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (1, 'BISCUIT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (2, 'DIVERS', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (3, 'SAVON', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (4, 'POINTE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (5, 'ALIMENTAIRES', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (6, 'DENTIFRICE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (7, 'MOSQUITO', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (8, 'BONBON', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (9, 'RIZ', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (10, 'SAVON BARRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (11, 'BOISSON', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (12, 'COUCHE ENFANT', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (13, 'SILL GUM', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (14, 'BOUGIE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (15, 'FOURNITURE SCOLAIRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (16, 'CONSTRUCTION', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (17, 'PILE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (18, 'ENCAUSTIQUE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (19, 'VOVON-TSAVONY', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (20, 'FAMAFA', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (21, 'FARINE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (22, 'MENABOLO', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (23, 'MACARONIE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (24, 'SAVON EN PIECES', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (25, 'PROVENDE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (26, 'RONONO BOITE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (27, 'SPAGHETTI', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (28, 'SUCRE', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (29, 'TSARAMASO', 0);
INSERT INTO tb_categoriearticle (idca, designationcat, deleted) VALUES (30, 'VARY GASY', 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1, '100X20', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1, '0040000100', 1, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2, '0040000101', 1, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (2, '120X21', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (3, '0040000200', 2, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (4, '0040000201', 2, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (3, '20X12', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (5, '0040000300', 3, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (6, '0040000301', 3, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (4, '30X13', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (7, '0040000400', 4, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (8, '0040000401', 4, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (5, '40X14', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (9, '0040000500', 5, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (10, '0040000501', 5, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (6, '4X4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (11, '0020000600', 6, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (7, '4X4 50', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (12, '0020000700', 7, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (13, '0020000701', 7, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (8, '4X4 BOKOTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (14, '0020000800', 8, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (9, '4X4 HAPPY CHOCO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (15, '0010000900', 9, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (16, '0010000901', 9, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (10, '4X4 HAPPY TOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (17, '0020001000', 10, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (18, '0020001001', 10, 'CARTON', 1, 14.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (11, '4X4 UP', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (19, '0010001100', 11, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (20, '0010001101', 11, 'CARTON', 1, 17.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (12, '50X16', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (21, '0040001200', 12, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (22, '0040001201', 12, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (13, '50X18', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (23, '0040001300', 13, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (24, '0040001301', 13, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (14, '60X17', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (25, '0040001400', 14, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (26, '0040001401', 14, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (15, '60X20', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (27, '0040001500', 15, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (28, '0040001501', 15, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (16, '70/19', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (29, '0020001600', 16, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (30, '0020001601', 16, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (31, '0020001602', 16, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (17, '70X18', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (32, '0040001700', 17, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (33, '0040001701', 17, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (18, '80X19', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (34, '0040001800', 18, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (35, '0040001801', 18, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (19, '90X20', 4, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (36, '0040001900', 19, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (37, '0040001901', 19, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (20, '[CRISPY CONE / ACIDULADAS ] EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (38, '0020002000', 20, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (21, 'ACIDE LAVA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (39, '0020002100', 21, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (40, '0020002101', 21, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (22, 'ACIDEL BOTA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (41, '0020002200', 22, 'BOUTEIL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (42, '0020002201', 22, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (23, 'AEROSOL JUMBO XT FL 300ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (43, '0020002300', 23, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (24, 'AEROSOL JUMBO XT FL 680ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (44, '0020002400', 24, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (25, 'AFRICA CHEF CHICKEN CUBE 108G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (45, '0050002500', 25, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (26, 'AGHARBATTI SEVEN WONDER FLOWES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (46, '0020002600', 26, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (47, '0020002601', 26, 'BOITE', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (27, 'AGHARBATTI SEVEN WONDER FRUITS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (48, '0020002700', 27, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (49, '0020002701', 27, 'BOITE', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (28, 'ALKALINE R6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (50, '0020002800', 28, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (29, 'ALLUMETTE ITALIA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (51, '0020002900', 29, 'BTE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (52, '0020002901', 29, 'CARTOUCHE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (53, '0020002902', 29, 'CARTON', 2, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (30, 'ALLUMETTE YES SAFETY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (54, '0020003000', 30, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (55, '0020003001', 30, 'CARTOUCHE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (56, '0020003002', 30, 'CARTON', 2, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (31, 'AMPOULE RANO 9W', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (57, '0020003100', 31, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (32, 'ANGOLA BLEU GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (58, '0020003200', 32, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (33, 'ANGOLA BLEU PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (59, '0020003300', 33, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (34, 'ANGOLA EN PCS', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (60, '0060003400', 34, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (35, 'ANGOLA ROUGE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (61, '0020003500', 35, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (36, 'ANGOLA VERT GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (62, '0020003600', 36, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (37, 'ANGOLA VERT PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (63, '0020003700', 37, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (38, 'Apollo en pcs', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (64, '0050003800', 38, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (39, 'ARROW MOSQUITO COILS VET BAMBOO', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (65, '0070003900', 39, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (66, '0070003901', 39, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (40, 'ASSIETE A JETTER RAHA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (67, '0020004000', 40, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (68, '0020004001', 40, 'CARTON', 1, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (69, '0020004002', 40, 'PAQUET', 2, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (41, 'ASSORTED LOLLIPOP ROYALE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (70, '0080004100', 41, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (42, 'B.KAMCO LEIBNIZ', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (71, '0080004200', 42, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (43, 'BABY SEA CONFORT 5X32 N °4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (72, '0020004300', 43, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (73, '0020004301', 43, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (44, 'BABY SEA CONFORT 5X36 N °3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (74, '0020004400', 44, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (75, '0020004401', 44, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (45, 'BALAIRA VARY', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (76, '0090004500', 45, 'SAC', 0, 1.00, 20.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (46, 'BALANCE CHINE FORCE 100KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (77, '0020004600', 46, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (47, 'BALANCE DEBAKA 20KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (78, '0020004700', 47, 'PIECE', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (48, 'BAOBA CITRON 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (79, '0020004800', 48, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (49, 'BAOBA MENTHE 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (80, '0020004900', 49, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (50, 'BAOBA ORANGE MANDARINE 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (81, '0020005000', 50, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (51, 'BAREA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (82, '0020005100', 51, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (52, 'BARRE CORRY GM', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (83, '0100005200', 52, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (84, '0100005201', 52, 'CARTON', 1, 9.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (53, 'BAUME KATRAFAY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (85, '0020005300', 53, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (54, 'Baume Ravintsara', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (86, '0020005400', 54, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (87, '0020005401', 54, 'BALE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (88, '0020005402', 54, 'PAQUET', 2, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (55, 'BBA', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (89, '0110005500', 55, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (90, '0110005501', 55, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (56, 'Bebem pants culottes maxi 4x32 n°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (91, '0120005600', 56, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (92, '0120005601', 56, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (57, 'bebem twin junior 4X28 n°5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (93, '0020005700', 57, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (94, '0020005701', 57, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (58, 'BENNY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (95, '0020005800', 58, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (96, '0020005801', 58, 'CARTON', 1, 8.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (97, '0020005802', 58, 'BOITE', 2, 42.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (59, 'BEURRE EVET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (98, '0020005900', 59, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (99, '0020005901', 59, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (60, 'BEURRE TEREMA 200G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (100, '0020006000', 60, 'PCE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (61, 'BHOOT UNKLE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (101, '0050006100', 61, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (62, 'BICUIT CHOCOLATE EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (102, '0020006200', 62, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (103, '0020006201', 62, 'PAQUET', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (63, 'BIG BOY WAFER BISCUIT 40PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (104, '0010006300', 63, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (105, '0010006301', 63, 'BOCAL', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (64, 'BIG TOFFE HAPPY BIRTHBLASH', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (106, '0080006400', 64, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (65, 'BIG TOFFEE BIRTHDAY TIME', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (107, '0010006500', 65, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (66, 'BIG TOFFEE KEMLO MILK 200P*8BTE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (108, '0080006600', 66, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (67, 'BIGG POP GUM CARRE EN BOCAL*100PCS', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (109, '0130006700', 67, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (110, '0130006701', 67, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (68, 'Bis marie', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (111, '0010006800', 68, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (112, '0010006801', 68, 'CARTON', 1, 18.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (69, 'BIS''NICE 2 BISCUITS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (113, '0010006900', 69, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (114, '0010006901', 69, 'CARTON', 1, 28.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (70, 'BIS''NICE 9 BISCUITS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (115, '0010007000', 70, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (116, '0010007001', 70, 'CARTON', 1, 14.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (71, 'Biscuit 10 delice*12x8', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (117, '0010007100', 71, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (118, '0010007101', 71, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (72, 'BISCUIT 18 DELICE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (119, '0010007200', 72, 'PQT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (120, '0010007201', 72, 'CARTON', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (73, 'BISCUIT 18 PETIT BEURRE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (121, '0010007300', 73, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (122, '0010007301', 73, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (74, 'Biscuit 18 petit lait', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (123, '0010007400', 74, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (124, '0010007401', 74, 'CARTON', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (75, 'BISCUIT 4X4 BE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (125, '0010007500', 75, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (126, '0010007501', 75, 'CARTON', 1, 18.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (76, 'BISCUIT 4X4 CHOCO BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (127, '0020007600', 76, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (128, '0020007601', 76, 'CARTON', 1, 27.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (77, 'BISCUIT 4X4 CHOCO MIAM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (129, '0010007700', 77, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (130, '0010007701', 77, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (78, 'BISCUIT 4X4 GO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (131, '0020007800', 78, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (132, '0020007801', 78, 'CARTON', 1, 18.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (79, 'BISCUIT 4X4 KREM BANANA', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (133, '0010007900', 79, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (134, '0010007901', 79, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (80, 'BISCUIT 4X4 KREM CITRON', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (135, '0010008000', 80, 'SAHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (136, '0010008001', 80, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (81, 'Biscuit 6 delice', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (137, '0010008100', 81, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (138, '0010008101', 81, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (82, 'BISCUIT 6 PETIT BEURRE LAIT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (139, '0020008200', 82, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (140, '0020008201', 82, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (83, 'BISCUIT 77 CREAM CHOCO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (141, '0010008300', 83, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (142, '0010008301', 83, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (143, '0010008302', 83, 'BTE', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (84, 'Biscuit bledor club cremica', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (144, '0020008400', 84, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (145, '0020008401', 84, 'PAQUET', 1, 8.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (146, '0020008402', 84, 'CARTON', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (85, 'BISCUIT CHOCO BICO 65G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (147, '0010008500', 85, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (148, '0010008501', 85, 'PACQUET', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (86, 'BISCUIT CHOCO CHAMP', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (149, '0010008600', 86, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (150, '0010008601', 86, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (87, 'BISCUIT CHOCO GOF 12PCS*20', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (151, '0010008700', 87, 'PQT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (152, '0010008701', 87, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (88, 'BISCUIT CHOCO LOVE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (153, '0010008800', 88, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (154, '0010008801', 88, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (89, 'BISCUIT COCONUT PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (155, '0020008900', 89, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (156, '0020008901', 89, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (90, 'BISCUIT CREAM CHEERS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (157, '0010009000', 90, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (158, '0010009001', 90, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (91, 'BISCUIT CREAM DUEX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (159, '0020009100', 91, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (160, '0020009101', 91, 'CARTON', 1, 15.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (92, 'BISCUIT CREAM FRESH JAI KADA', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (161, '0010009200', 92, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (162, '0010009201', 92, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (93, 'BISCUIT CREAM LATA', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (163, '0010009300', 93, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (164, '0010009301', 93, 'CARTON', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (94, 'Biscuit creamy voila', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (165, '0080009400', 94, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (166, '0080009401', 94, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (95, 'Biscuit creme veto 82g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (167, '0010009500', 95, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (168, '0010009501', 95, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (96, 'BISCUIT CREMELOCREMICA ASS 70G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (169, '0010009600', 96, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (170, '0010009601', 96, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (97, 'BISCUIT CREMO MIX 48PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (171, '0010009700', 97, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (172, '0010009701', 97, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (98, 'BISCUIT CRUNCH COATED WAFER', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (173, '0010009800', 98, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (99, 'Biscuit Crunchy Wafer 75gx24', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (174, '0010009900', 99, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (175, '0010009901', 99, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (100, 'BISCUIT EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (176, '0020010000', 100, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (101, 'BISCUIT FAMILY VANILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (177, '0020010100', 101, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (178, '0020010101', 101, 'CARTON', 1, 18.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (102, 'BISCUIT FARILAC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (179, '0020010200', 102, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (180, '0020010201', 102, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (103, 'BISCUIT FREGO POCKET ASS (PM)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (181, '0020010300', 103, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (182, '0020010301', 103, 'CARTON', 1, 22.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (104, 'BISCUIT GALETI CTN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (183, '0020010400', 104, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (184, '0020010401', 104, 'CARTON', 1, 18.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (105, 'BISCUIT GINGER', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (185, '0010010500', 105, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (186, '0010010501', 105, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (106, 'BISCUIT GLUCOSE BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (187, '0020010600', 106, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (188, '0020010601', 106, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (107, 'BISCUIT GLUCOSE MILK FRESH', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (189, '0020010700', 107, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (190, '0020010701', 107, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (108, 'Biscuit glucose pm Anita (Ass)', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (191, '0010010800', 108, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (192, '0010010801', 108, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (109, 'Biscuit glucose zaza botra', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (193, '0020010900', 109, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (194, '0020010901', 109, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (110, 'BISCUIT GLUCOSE ZAZA BOTRA EN PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (195, '0010011000', 110, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (111, 'BISCUIT HAPPY', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (196, '0010011100', 111, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (197, '0010011101', 111, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (112, 'BISCUIT HERO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (198, '0010011200', 112, 'PQT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (199, '0010011201', 112, 'CARTON', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (113, 'BISCUIT ITALIANO 77*P/24X6', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (200, '0010011300', 113, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (201, '0010011301', 113, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (202, '0010011302', 113, 'PAQUET', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (114, 'Biscuit kit choco pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (203, '0010011400', 114, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (204, '0010011401', 114, 'CARTON', 1, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (115, 'BISCUIT KIT COCO CHOCO PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (205, '0020011500', 115, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (206, '0020011501', 115, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (116, 'BISCUIT KIT COCO GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (207, '0010011600', 116, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (208, '0010011601', 116, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (117, 'Biscuit lexus crackers', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (209, '0010011700', 117, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (118, 'BISCUIT MAHABIBO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (210, '0020011800', 118, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (211, '0020011801', 118, 'CARTON', 1, 14.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (119, 'BISCUIT MAJOR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (212, '0020011900', 119, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (213, '0020011901', 119, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (120, 'Biscuit malt''n milt energy', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (214, '0010012000', 120, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (215, '0010012001', 120, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (121, 'BISCUIT MARIA MAMMA MIA', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (216, '0010012100', 121, 'UNITE', 0, 0.00, 0.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (217, '0010012101', 121, 'SACHET', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (218, '0010012102', 121, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (122, 'BISCUIT MARIE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (219, '0010012200', 122, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (220, '0010012201', 122, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (123, 'BISCUIT MARIE CLASSIC 9.5G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (221, '0010012300', 123, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (222, '0010012301', 123, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (124, 'BISCUIT MARIE LONDON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (223, '0020012400', 124, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (224, '0020012401', 124, 'CARTON', 1, 4.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (125, 'Biscuit marie pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (225, '0020012500', 125, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (226, '0020012501', 125, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (126, 'BISCUIT MARIE SPECIAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (227, '0020012600', 126, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (127, 'BISCUIT MARIE SPECIAL OLD', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (228, '0020012700', 127, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (229, '0020012701', 127, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (128, 'BISCUIT MIAM PM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (230, '0010012800', 128, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (231, '0010012801', 128, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (129, 'BISCUIT MILAY BE CHOCO-FROMAGE 45PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (232, '0020012900', 129, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (130, 'BISCUIT MINI CREAM COOCKIES', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (233, '0010013000', 130, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (234, '0010013001', 130, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (131, 'BISCUIT NICE BLEU GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (235, '0020013100', 131, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (236, '0020013101', 131, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (132, 'BISCUIT NICE BLEU PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (237, '0020013200', 132, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (238, '0020013201', 132, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (133, 'BISCUIT NOOR''S WAFER ASS 7G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (239, '0010013300', 133, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (134, 'BISCUIT NOOR''S WAFER ASS EN PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (240, '0010013400', 134, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (135, 'BISCUIT RAMA CREAMZ MIX 48PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (241, '0010013500', 135, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (242, '0010013501', 135, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (136, 'BISCUIT ROCKERS SPARK HITRICK', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (243, '0010013600', 136, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (244, '0010013601', 136, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (137, 'Biscuit Ronaldo', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (245, '0010013700', 137, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (246, '0010013701', 137, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (138, 'BISCUIT SAIDA WAFER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (247, '0020013800', 138, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (139, 'BISCUIT SAIDA WAFERZ', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (248, '0020013900', 139, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (140, 'BISCUIT SALTO 15 GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (249, '0020014000', 140, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (250, '0020014001', 140, 'CARTON', 1, 7.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (141, 'BISCUIT SALTO 6 PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (251, '0020014100', 141, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (252, '0020014101', 141, 'CARTON', 1, 18.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (142, 'Biscuit smily creamz', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (253, '0010014200', 142, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (254, '0010014201', 142, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (143, 'BISCUIT SUPER CHOCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (255, '0020014300', 143, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (144, 'BISCUIT SUPER COCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (256, '0020014400', 144, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (257, '0020014401', 144, 'CARTON', 1, 41.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (145, 'BISCUIT SUPER KREAMO MIX 48PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (258, '0010014500', 145, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (259, '0010014501', 145, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (146, 'BISCUIT SUPER MARIE BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (260, '0020014600', 146, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (261, '0020014601', 146, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (147, 'BISCUIT SUPER MARIE NEW', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (262, '0020014700', 147, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (148, 'BISCUIT WAFER KISSKAT 14G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (263, '0010014800', 148, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (149, 'BISCUIT XL 77', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (264, '0010014900', 149, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (265, '0010014901', 149, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (266, '0010014902', 149, 'BOITE', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (150, 'BISCUIT YUM YUM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (267, '0020015000', 150, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (268, '0020015001', 150, 'CARTON', 1, 24.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (151, 'BiscuitCrunchyWafer 75g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (269, '0010015100', 151, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (270, '0010015101', 151, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (152, 'BISCUITS BOLO KIDS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (271, '0020015200', 152, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (272, '0020015201', 152, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (153, 'BISKY UP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (273, '0020015300', 153, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (274, '0020015301', 153, 'CARTON', 1, 17.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (154, 'Black hair', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (275, '0020015400', 154, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (276, '0020015401', 154, 'BOITE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (277, '0020015402', 154, 'CARTON', 2, 84.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (155, 'Black rose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (278, '0020015500', 155, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (279, '0020015501', 155, 'BOITE', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (156, 'Bledilait croissance n°3 900g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (280, '0020015600', 156, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (157, 'Bledilait junior 800g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (281, '0020015700', 157, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (158, 'BLEU D''AZUR (boite)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (282, '0020015800', 158, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (283, '0020015801', 158, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (159, 'BLEU D''AZUR EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (284, '0020015900', 159, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (160, 'BOISSON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (285, '0020016000', 160, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (286, '0020016001', 160, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (161, 'BOISSON BIG ANANAS GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (287, '0020016100', 161, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (288, '0020016101', 161, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (162, 'BOISSON BIG COLA 2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (289, '0020016200', 162, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (290, '0020016201', 162, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (163, 'BOISSON BIG ORANGE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (291, '0020016300', 163, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (292, '0020016301', 163, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (164, 'BOISSON BIG PM ANANAS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (293, '0020016400', 164, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (294, '0020016401', 164, 'PAQUET', 1, 12.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (165, 'BOISSON BIG PM ORANGE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (295, '0020016500', 165, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (166, 'BOISSON DJINO COLA 125cl', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (296, '0020016600', 166, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (297, '0020016601', 166, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (167, 'BOISSON DJINO COLA 35CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (298, '0020016700', 167, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (168, 'BOISSON DJINO limonade 35cl', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (299, '0020016800', 168, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (169, 'BOISSON DJINO ORANGE 35 CL PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (300, '0020016900', 169, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (170, 'BOISSON DJINO TROPICAL 125cl', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (301, '0020017000', 170, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (302, '0020017001', 170, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (171, 'boisson gm 1.5 l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (303, '0020017100', 171, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (304, '0020017101', 171, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (172, 'Boisson gm en pieces', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (305, '0110017200', 172, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (173, 'Boisson mifangaro 1.5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (306, '0110017300', 173, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (174, 'BOISSON moyenne 0.50 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (307, '0020017400', 174, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (308, '0020017401', 174, 'PAQUET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (175, 'BOISSON PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (309, '0020017500', 175, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (310, '0020017501', 175, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (176, 'BOISSON PM 35 CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (311, '0020017600', 176, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (312, '0020017601', 176, 'PAQUET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (177, 'BOISSON XXL 35 CL EN PIECE', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (313, '0110017700', 177, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (178, 'Bolo coeur', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (314, '0010017800', 178, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (315, '0010017801', 178, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (179, 'BOLO DONUT', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (316, '0010017900', 179, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (317, '0010017901', 179, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (180, 'BOLO DUO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (318, '0010018000', 180, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (319, '0010018001', 180, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (181, 'BOLO EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (320, '0020018100', 181, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (182, 'BOLO ZOOM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (321, '0020018200', 182, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (322, '0020018201', 182, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (183, 'BOMBON HOPPIN', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (323, '0080018300', 183, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (184, 'BONBON AMBIC JAMMY FRUIT 100PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (324, '0080018400', 184, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (185, 'BONBON AMBIC KOFFITO BOCAL 205PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (325, '0080018500', 185, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (186, 'BONBON AMBIC KOFFITO EN SHT 100PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (326, '0080018600', 186, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (187, 'BONBON ANGLAIS', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (327, '0050018700', 187, 'PIECE', 0, 1.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (328, '0050018701', 187, 'PAQUET', 1, 6.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (188, 'BONBON ASSORTED CARAMEL EN SACHET', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (329, '0080018800', 188, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (189, 'Bonbon assorted en sachet', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (330, '0080018900', 189, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (331, '0080018901', 189, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (190, 'Bonbon assorted ju-c', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (332, '0020019000', 190, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (191, 'BONBON BIG TIME RICH', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (333, '0080019100', 191, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (334, '0080019101', 191, 'BOITE''', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (192, 'BONBON BIZOU COEUR TONGUE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (335, '0020019200', 192, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (336, '0020019201', 192, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (193, 'BONBON BUBLE GUM PHASTILLIA', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (337, '0080019300', 193, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (194, 'Bonbon caffee', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (338, '0080019400', 194, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (195, 'BONBON CAR POP TONGUE PAINTER 5G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (339, '0080019500', 195, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (196, 'Bonbon choco gold coin', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (340, '0080019600', 196, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (197, 'BONBON CHOCO MINT 2.0', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (341, '0080019700', 197, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (198, 'BONBON CHOCO MOBILE BOCAL', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (342, '0010019800', 198, 'PIESE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (343, '0010019801', 198, 'BOCAL', 1, 125.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (199, 'BONBON COEUR KIDY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (344, '0020019900', 199, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (345, '0020019901', 199, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (200, 'BONBON COLA COLA LOLLIPOP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (346, '0080020000', 200, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (201, 'BONBON COOKIES BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (347, '0020020100', 201, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (202, 'BONBON CRAYON BIG TOFFINGER FRUITLAND EN BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (348, '0080020200', 202, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (203, 'BONBON DOLLY LOLLY CHOCO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (349, '0080020300', 203, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (204, 'BONBON ECLAIRE POP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (350, '0020020400', 204, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (205, 'BONBON EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (351, '0020020500', 205, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (206, 'Bonbon Erlan', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (352, '0020020600', 206, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (353, '0020020601', 206, 'SACHET', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (354, '0020020602', 206, 'CARTON', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (207, 'BONBON FLAMINGO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (355, '0020020700', 207, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (208, 'Bonbon freshynes', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (356, '0080020800', 208, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (209, 'Bonbon fruit chew toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (357, '0080020900', 209, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (358, '0080020901', 209, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (210, 'Bonbon fruit chewy 600g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (359, '0080021000', 210, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (211, 'BONBON FRUIT CRUSH VETO ASS 2.65G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (360, '0080021100', 211, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (212, 'Bonbon fruit flash toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (361, '0080021200', 212, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (362, '0080021201', 212, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (213, 'Bonbon fruit slice orange', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (363, '0080021300', 213, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (364, '0080021301', 213, 'CARTON', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (365, '0080021302', 213, 'SACHET', 2, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (214, 'BONBON FRUTO FILS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (366, '0080021400', 214, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (367, '0080021401', 214, 'CARTON', 1, 30.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (368, '0080021402', 214, 'SACHET', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (215, 'BONBON FRUTTA POP LOLLIPOP VETO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (369, '0080021500', 215, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (216, 'BONBON GLASS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (370, '0020021600', 216, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (371, '0020021601', 216, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (217, 'Bonbon gold 555 toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (372, '0080021700', 217, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (373, '0080021701', 217, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (218, 'BONBON GOLDEN COIN CAR EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (374, '0020021800', 218, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (219, 'bonbon huili toy candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (375, '0080021900', 219, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (220, 'BONBON HUILI TOY CANDY EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (376, '0020022000', 220, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (221, 'BONBON JOK BE+5', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (377, '0080022100', 221, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (222, 'bonbon Jok soda cola', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (378, '0020022200', 222, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (379, '0020022201', 222, 'SAC', 1, 80.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (223, 'BONBON KAMCO ELENOR', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (380, '0080022300', 223, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (224, 'BONBON KEMLO CARAMILK EN BOCAL BLANC', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (381, '0080022400', 224, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (225, 'BONBON KEMLO FRUIT PUNCH EN BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (382, '0080022500', 225, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (226, 'BONBON KEMLO MY BIRTHDAY EN BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (383, '0080022600', 226, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (227, 'BONBON KIDS DOUBLE TRUFFLE ASS EN BOCAL*8PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (384, '0080022700', 227, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (385, '0080022701', 227, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (228, 'BONBON KIDS JOY 65PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (386, '0080022800', 228, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (387, '0080022801', 228, 'BOCAL', 1, 65.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (229, 'BONBON KOFFICO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (388, '0080022900', 229, 'BCL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (230, 'BONBON LOVE CHOCO BOCAL 100PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (389, '0020023000', 230, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (231, 'BONBON MILK DOUBLE DECKER KOFFRE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (390, '0080023100', 231, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (232, 'BONBON MILK LOLLIPOP NECTAR PM', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (391, '0050023200', 232, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (392, '0050023201', 232, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (233, 'Bonbon milkiz vaovao', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (393, '0080023300', 233, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (394, '0080023301', 233, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (234, 'Bonbon milky cow veto', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (395, '0020023400', 234, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (235, 'BONBON MOM BIG POP 8G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (396, '0020023500', 235, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (236, 'BONBON MY DOLL RICH', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (397, '0080023600', 236, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (398, '0080023601', 236, 'BOITE', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (237, 'BONBON NYRA MY MILK MITHAI', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (399, '0080023700', 237, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (238, 'BONBON NYRA MY MILK RABRI', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (400, '0050023800', 238, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (239, 'BONBON NYRA TWINS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (401, '0080023900', 239, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (240, 'BONBON OPERA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (402, '0020024000', 240, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (241, 'Bonbon party bomb toffee bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (403, '0080024100', 241, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (404, '0080024101', 241, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (242, 'BONBON PM EN PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (405, '0080024200', 242, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (243, 'Bonbon premium candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (406, '0080024300', 243, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (407, '0080024301', 243, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (244, 'Bonbon Premium candy @ sachet', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (408, '0080024400', 244, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (245, 'BONBON PREMIUM CANDY EN PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (409, '0080024500', 245, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (246, 'Bonbon Premium tamarino', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (410, '0080024600', 246, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (411, '0080024601', 246, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (247, 'Bonbon Racing car', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (412, '0020024700', 247, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (413, '0020024701', 247, 'SACHET', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (248, 'Bonbon racing car bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (414, '0080024800', 248, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (249, 'BONBON RAINBOW DRY FIGS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (415, '0080024900', 249, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (250, 'Bonbon ring lollipop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (416, '0020025000', 250, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (417, '0020025001', 250, 'BOCAL', 1, 120.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (251, 'BONBON SIFFLET CHUPITO 50*20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (418, '0020025100', 251, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (419, '0020025101', 251, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (252, 'BONBON SIMON CANDY GIG FRUIT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (420, '0020025200', 252, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (253, 'BONBON SIMON DUE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (421, '0020025300', 253, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (254, 'Bonbon speed racing', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (422, '0080025400', 254, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (255, 'BONBON SPRING FINGER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (423, '0020025500', 255, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (256, 'BONBON SPRINT LOLLIPOP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (424, '0080025600', 256, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (257, 'Bonbon star fan (helice)', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (425, '0080025700', 257, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (426, '0080025701', 257, 'SACHET', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (258, 'BONBON SUCETTE COLOMBINA PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (427, '0020025800', 258, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (428, '0020025801', 258, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (259, 'BONBON SUCETTE FRUIT LOLLIPOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (429, '0020025900', 259, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (430, '0020025901', 259, 'SAC', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (260, 'Bonbon Sucette kely milk lollipop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (431, '0020026000', 260, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (432, '0020026001', 260, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (261, 'BONBON SUCETTE MILK LOLIPOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (433, '0020026100', 261, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (262, 'BONBON SUCETTE PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (434, '0020026200', 262, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (263, 'Bonbon sucette pm choco caramel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (435, '0080026300', 263, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (264, 'Bonbon sucette pm choco vanilla', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (436, '0080026400', 264, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (265, 'Bonbon sucette pm cola', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (437, '0080026500', 265, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (266, 'BONBON SUCETTE ROZE POP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (438, '0080026600', 266, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (267, 'BONBON SUCETTE YOGURT LOLLIPOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (439, '0020026700', 267, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (268, 'Bonbon supa filled', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (440, '0080026800', 268, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (441, '0080026801', 268, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (269, 'BONBON SUPER MILK CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (442, '0080026900', 269, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (443, '0080026901', 269, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (270, 'Bonbon sweet cup choco bocal', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (444, '0010027000', 270, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (445, '0010027001', 270, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (271, 'BONBON SWITCH POP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (446, '0080027100', 271, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (272, 'BONBON TAMARIN PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (447, '0020027200', 272, 'SHT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (448, '0020027201', 272, 'CRT', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (273, 'BONBON TAMARIND CONE POP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (449, '0080027300', 273, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (274, 'Bonbon tennis bubble gum bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (450, '0080027400', 274, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (451, '0080027401', 274, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (275, 'BONBON TENNIS GUM JOLLY BOY BOCAL*115PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (452, '0080027500', 275, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (276, 'Bonbon Tik tok gun vito', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (453, '0080027600', 276, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (277, 'BONBON TONGUE LOLLIPOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (454, '0020027700', 277, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (455, '0020027701', 277, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (278, 'bonbon tongue mix fruit', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (456, '0020027800', 278, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (457, '0020027801', 278, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (279, 'Bonbon top mint candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (458, '0080027900', 279, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (280, 'Bonbon toy candy (basy)', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (459, '0080028000', 280, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (460, '0080028001', 280, 'BOITE', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (281, 'BONBON TUTI SUCETTE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (461, '0080028100', 281, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (282, 'BONBON VINTAGE TRUFF CHOCO 1KG', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (462, '0080028200', 282, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (283, 'BONBON YOLO POP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (463, '0020028300', 283, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (284, 'BONITA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (464, '0020028400', 284, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (285, 'BONITA /CIKIDAY / BONITA COCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (465, '0020028500', 285, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (466, '0020028501', 285, 'PAQUET', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (467, '0020028502', 285, 'PAQUET', 2, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (286, 'BONITA CHOCOLATE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (468, '0020028600', 286, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (287, 'BOUGIE 3 ETOILE', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (469, '0140028700', 287, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (470, '0140028701', 287, 'CARTON', 1, 50.00, 14.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (288, 'BOUGIE ANITA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (471, '0020028800', 288, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (472, '0020028801', 288, 'CARTON', 1, 50.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (289, 'BOUGIE BALIAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (473, '0020028900', 289, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (474, '0020028901', 289, 'CARTON', 1, 40.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (290, 'BOUGIE CLASSIC GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (475, '0020029000', 290, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (476, '0020029001', 290, 'CARTON', 1, 40.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (291, 'BOUGIE GOLDEN GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (477, '0020029100', 291, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (478, '0020029101', 291, 'CARTON', 1, 40.00, 15.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (292, 'BOUGIE LENA GM', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (479, '0140029200', 292, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (480, '0140029201', 292, 'CARTON', 1, 50.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (293, 'BOUGIE MATEZA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (481, '0020029300', 293, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (482, '0020029301', 293, 'CARTON', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (294, 'BOUGIE MOYEN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (483, '0020029400', 294, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (484, '0020029401', 294, 'PACQUET', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (485, '0020029402', 294, 'CARTON', 2, 50.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (295, 'BOUGIE MOYENNE GEFCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (486, '0020029500', 295, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (296, 'Bougie nitro gm', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (487, '0140029600', 296, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (488, '0140029601', 296, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (297, 'BOUGIE NITRO PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (489, '0020029700', 297, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (490, '0020029701', 297, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (298, 'BOUGIE PM', 14, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (491, '0140029800', 298, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (492, '0140029801', 298, 'CARTON', 1, 80.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (299, 'Bracelet jump candy 9g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (493, '0020029900', 299, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (300, 'BRICQUET YES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (494, '0020030000', 300, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (495, '0020030001', 300, 'CARTON', 1, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (496, '0020030002', 300, 'BOITE', 2, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (301, 'Brillant ring candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (497, '0020030100', 301, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (302, 'BRIQUET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (498, '0020030200', 302, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (499, '0020030201', 302, 'CARTON', 1, 20.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (303, 'BRIQUET BAREA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (500, '0020030300', 303, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (304, 'BRIQUET BIG STAR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (501, '0020030400', 304, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (502, '0020030401', 304, 'PAQUET', 1, 5.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (503, '0020030402', 304, 'CARTON', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (305, 'BRIQUET GALAXY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (504, '0020030500', 305, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (505, '0020030501', 305, 'BOITE', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (306, 'BRIQUET NITRO LED*50', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (506, '0020030600', 306, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (307, 'BRIQUET NITRO LED*50 EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (507, '0020030700', 307, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (308, 'BRIQUET OUI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (508, '0020030800', 308, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (509, '0020030801', 308, 'CARTON', 1, 20.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (309, 'BRIQUET OUI EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (510, '0020030900', 309, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (310, 'BRIQUET STAR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (511, '0020031000', 310, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (311, 'Briquet voila', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (512, '0020031100', 311, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (513, '0020031101', 311, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (312, 'BROSSE A DENT CARONA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (514, '0020031200', 312, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (313, 'Brosse a dent ciptadent', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (515, '0020031300', 313, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (516, '0020031301', 313, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (517, '0020031302', 313, 'BOITE', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (314, 'BROSSE A DENT COLGATE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (518, '0020031400', 314, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (519, '0020031401', 314, 'PACQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (315, 'BROSSE A DENT CYPTADENT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (520, '0020031500', 315, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (521, '0020031501', 315, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (522, '0020031502', 315, 'BOITE', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (316, 'BROSSE A DENT DR FUNGOS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (523, '0020031600', 316, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (317, 'BROSSE A DENT DR JOY FINNEST', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (524, '0020031700', 317, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (318, 'BROSSE A DENT WHITE DOCTOR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (525, '0020031800', 318, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (319, 'BROSSE DENT ANITA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (526, '0020031900', 319, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (320, 'BROSSE DENT CIPTADENT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (527, '0020032000', 320, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (528, '0020032001', 320, 'CARTON', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (321, 'BROX COLA CANETTE 250L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (529, '0110032100', 321, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (530, '0110032101', 321, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (322, 'BROX ENERGY CANETTE 250L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (531, '0110032200', 322, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (532, '0110032201', 322, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (323, 'BROX ORANGE CANETTE 250ML', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (533, '0110032300', 323, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (534, '0110032301', 323, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (324, 'Bubble sourd animal en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (535, '0020032400', 324, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (536, '0020032401', 324, 'BOITE', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (325, 'Bubble stick', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (537, '0020032500', 325, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (538, '0020032501', 325, 'BOITE', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (326, 'BUBBLE SWORD (ANIMAL)', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (539, '0080032600', 326, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (327, 'Buble circle', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (540, '0020032700', 327, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (541, '0020032701', 327, 'BOITE', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (328, 'BUBLE CIRCLE EN PIECE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (542, '0080032800', 328, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (329, 'BUTERFULY BONBON PAPILLON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (543, '0020032900', 329, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (330, 'Cafe capuccino Lemser', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (544, '0020033000', 330, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (545, '0020033001', 330, 'SACHET', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (331, 'Cafe Tsy lefy 20g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (546, '0020033100', 331, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (547, '0020033101', 331, 'SACHET', 1, 30.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (548, '0020033102', 331, 'CARTON', 2, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (332, 'Cafe Tsy lefy 30g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (549, '0020033200', 332, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (550, '0020033201', 332, 'SACHET', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (551, '0020033202', 332, 'SACHET', 2, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (552, '0020033203', 332, 'CARTON', 3, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (333, 'CAFE TSY LEFY20G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (553, '0020033300', 333, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (334, 'Cahier 100p super', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (554, '0020033400', 334, 'PACK', 0, 1.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (555, '0020033401', 334, 'CARTON', 1, 20.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (335, 'CAHIER 100PAGES PF EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (556, '0020033500', 335, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (557, '0020033501', 335, 'PAQUET', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (336, 'CAHIER 200P SUPER TOPS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (558, '0020033600', 336, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (337, 'CAHIER 200PAGES EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (559, '0020033700', 337, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (560, '0020033701', 337, 'PAQUET', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (338, 'CAHIER 200PAGES PF EN PIECE', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (561, '0150033800', 338, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (339, 'CAHIER 50PAGES PF EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (562, '0020033900', 339, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (563, '0020033901', 339, 'PAQUET', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (340, 'CAHIER CALIGRAPHE 100p', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (564, '0020034000', 340, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (341, 'CAHIER CHAMPION 100P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (565, '0020034100', 341, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (342, 'CAHIER CHAMPION 200P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (566, '0020034200', 342, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (567, '0020034201', 342, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (343, 'CAHIER CLASSINI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (568, '0020034300', 343, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (569, '0020034301', 343, 'PACQUET', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (570, '0020034302', 343, 'CARTON', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (344, 'CAHIER DESSIN LAUREAT REF 100', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (571, '0020034400', 344, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (345, 'Cahier dessin premier plus', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (572, '0150034500', 345, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (573, '0150034501', 345, 'PAQUET', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (346, 'CAHIER DIGITAL 200P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (574, '0020034600', 346, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (347, 'Cahier digital 50P*16', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (575, '0150034700', 347, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (576, '0150034701', 347, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (348, 'CAHIER ECOLAIRE 48P', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (577, '0150034800', 348, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (349, 'CAHIER ECRITURE LAUREAT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (578, '0020034900', 349, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (350, 'CAHIER ECRITURE SUPER LOURD''S', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (579, '0020035000', 350, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (580, '0020035001', 350, 'PAQUET', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (351, 'CAHIER ELITE 100P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (581, '0020035100', 351, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (352, 'CAHIER ELITE 50 PGS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (582, '0020035200', 352, 'PACK', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (353, 'CAHIER FRANCE 100p', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (583, '0020035300', 353, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (354, 'CAHIER HERCUL 50 PG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (584, '0020035400', 354, 'PACK', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (355, 'CAHIER LE BOSSEUR 100P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (585, '0020035500', 355, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (586, '0020035501', 355, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (356, 'CAHIER LE BOSSEUR 200P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (587, '0020035600', 356, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (588, '0020035601', 356, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (357, 'CAHIER NITRO 100P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (589, '0020035700', 357, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (358, 'CAHIER NITROLINE 100P PF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (590, '0020035800', 358, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (359, 'CAHIER NITROLINE 200p PF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (591, '0020035900', 359, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (592, '0020035901', 359, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (360, 'CAHIER NITROLINE 50P PF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (593, '0020036000', 360, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (361, 'CAHIER SCOLAIRE 100p (MIKOLO MASO)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (594, '0020036100', 361, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (362, 'CAHIER SUPER 200P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (595, '0020036200', 362, 'PACK', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (363, 'CAHIER SUPER LORD 50GS EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (596, '0020036300', 363, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (364, 'CAHIER SUPER LORD''S 100 PAGE', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (597, '0150036400', 364, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (598, '0150036401', 364, 'PAQUET', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (599, '0150036402', 364, 'CARTON', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (365, 'CAHIER SUPER LORD''S 200 PAGE', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (600, '0150036500', 365, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (601, '0150036501', 365, 'PAQUET', 1, 5.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (602, '0150036502', 365, 'CARTON', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (366, 'Cahier Super lord''s 50 page', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (603, '0150036600', 366, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (367, 'Cahier super tops 50p pf', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (604, '0020036700', 367, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (368, 'CAHIER TRIUMPH 100P GRAND FORMAT EN PIECES', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (605, '0150036800', 368, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (369, 'CAHIER TRIUMPH 200P GRAND FORMAT EN PIECES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (606, '0020036900', 369, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (607, '0020036901', 369, 'PAQUET', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (370, 'CAHIER TRIUMPH DESIGN 100P PF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (608, '0150037000', 370, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (609, '0150037001', 370, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (371, 'CAHIER TRIUMPH DESIGN 200P PF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (610, '0150037100', 371, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (611, '0150037101', 371, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (372, 'CAHIER TRIUMPH MOZAIC 100P GF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (612, '0150037200', 372, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (613, '0150037201', 372, 'PQT', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (373, 'CAHIER TRIUMPH PLASTIC 100pGF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (614, '0020037300', 373, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (374, 'CAHIER TRIUMPH PLASTIC 200p EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (615, '0020037400', 374, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (375, 'CAHIER TRIUMPH PLASTIC 200pPF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (616, '0020037500', 375, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (376, 'CAHIER TRIUMPH PLASTIQUE 100P GF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (617, '0020037600', 376, 'PACK', 0, 1.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (618, '0020037601', 376, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (377, 'CAHIER TRIUMPH PLASTIQUE 100P PF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (619, '0020037700', 377, 'PACK', 0, 1.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (620, '0020037701', 377, 'CARTON', 1, 20.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (378, 'CAHIER TRIUMPH PLASTIQUE 200P GF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (621, '0020037800', 378, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (622, '0020037801', 378, 'CARTON', 1, 12.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (379, 'CAHIER TRIUMPH PLASTIQUE 200P PF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (623, '0020037900', 379, 'PACK', 0, 1.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (624, '0020037901', 379, 'CARTON', 1, 20.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (380, 'CAHIER TRIUMPH SCOLAIRE 100P', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (625, '0150038000', 380, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (626, '0150038001', 380, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (381, 'CAHIER TRIUMPH SCOLAIRE 200P', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (627, '0150038100', 381, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (628, '0150038101', 381, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (382, 'CAHIER TRIUMPH TSOTRA 100P GF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (629, '0150038200', 382, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (630, '0150038201', 382, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (383, 'CAHIER TRIUMPH TSOTRA 100P PF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (631, '0150038300', 383, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (632, '0150038301', 383, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (384, 'CAHIER TRIUMPH TSOTRA 200P GF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (633, '0150038400', 384, 'PACK', 0, 1.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (634, '0150038401', 384, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (385, 'CAHIER TRIUMPH TSOTRA 200P PF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (635, '0150038500', 385, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (636, '0150038501', 385, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (386, 'CAHIER TRIUMPH TSOTRA 50P PF', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (637, '0150038600', 386, 'PACK', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (638, '0150038601', 386, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (387, 'CAHIER TRIUMPH100p', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (639, '0020038700', 387, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (388, 'Cahier triumph200pPF', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (640, '0020038800', 388, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (389, 'CAHIERTRIUMPHPLASTIQUE100PGSEN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (641, '0020038900', 389, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (390, 'Candia le fromage 36*8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (642, '0020039000', 390, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (643, '0020039001', 390, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (391, 'CANDY BONBON BONJOURNE COLA BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (644, '0080039100', 391, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (392, 'CANDY BONBON BONJOURNE FANTA BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (645, '0080039200', 392, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (393, 'CANDY BONBON BONJOURNE SPRINT BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (646, '0080039300', 393, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (394, 'Candy gloss 7g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (647, '0020039400', 394, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (395, 'Candy king fanta orange', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (648, '0080039500', 395, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (649, '0080039501', 395, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (396, 'CANDY UP 150 ML*30', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (650, '0050039600', 396, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (397, 'CAPRICE BBA 1.5l', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (651, '0110039700', 397, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (652, '0110039701', 397, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (398, 'CAPRICE BBA 50CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (653, '0110039800', 398, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (399, 'CAPRICE FANTAS ANANAS 1.5l', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (654, '0110039900', 399, 'PIECE', 0, 1.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (655, '0110039901', 399, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (400, 'CAPRICE FANTAS ANANAS PM 50CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (656, '0110040000', 400, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (401, 'CAPRICE GRENADINE 1.5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (657, '0110040100', 401, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (658, '0110040101', 401, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (402, 'CAPRICE GRENADINE 50CL PM', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (659, '0110040200', 402, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (403, 'CAPRICE POMME 1.5 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (660, '0020040300', 403, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (404, 'CAPRICE POMME PM 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (661, '0020040400', 404, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (405, 'CAPRICE SODA ORANGE 1.5L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (662, '0110040500', 405, 'PIECS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (663, '0110040501', 405, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (406, 'CAPRICE SODA ORANGE 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (664, '0020040600', 406, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (407, 'CARAMEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (665, '0020040700', 407, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (666, '0020040701', 407, 'CARTON', 1, 34.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (408, 'CARAMEL EN PIECE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (667, '0080040800', 408, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (409, 'CARBONATE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (668, '0020040900', 409, 'KG', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (410, 'Carnet polo pqt de 15', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (669, '0020041000', 410, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (411, 'CARNET RAINBOW PQT DE 15', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (670, '0150041100', 411, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (412, 'CARNET SUPER PQT DE 15', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (671, '0020041200', 412, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (413, 'CARRY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (672, '0020041300', 413, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (673, '0020041301', 413, 'BALLE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (674, '0020041302', 413, 'PACQUET', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (414, 'CARRY DOYPACK EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (675, '0020041400', 414, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (676, '0020041401', 414, 'SACHET', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (415, 'CARRY MOULU DOYPACK', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (677, '0050041500', 415, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (416, 'CARS POP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (678, '0020041600', 416, 'SACHET', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (417, 'CARTABLE ENFANT LISSE', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (679, '0150041700', 417, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (418, 'CARTABLE ENFANT LUX', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (680, '0150041800', 418, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (419, 'CEBON BOUILLON DE BOEUF CUBES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (681, '0020041900', 419, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (682, '0020041901', 419, 'CARTON', 1, 2.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (683, '0020041902', 419, 'BOITE', 2, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (420, 'CEMENT LUCKY', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (684, '0160042000', 420, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (421, 'CHAMPIGNON EUROPA 400G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (685, '0020042100', 421, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (422, 'CHEESE BALLS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (686, '0020042200', 422, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (423, 'CHEESE BALLS EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (687, '0020042300', 423, 'PIECE1', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (688, '0020042301', 423, 'SACHET', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (424, 'CHEESSE RINGS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (689, '0020042400', 424, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (425, 'CHEWING BIG BUBBLE GUM TATOO3G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (690, '0080042500', 425, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (691, '0080042501', 425, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (426, 'Chikito choco caramel', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (692, '0020042600', 426, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (693, '0020042601', 426, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (427, 'Chikito choco coco', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (694, '0020042700', 427, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (695, '0020042701', 427, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (428, 'Chilli pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (696, '0080042800', 428, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (429, 'CHOCO BALLS FOOTBALL VETO', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (697, '0080042900', 429, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (698, '0080042901', 429, 'CARTON', 1, 48.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (699, '0080042902', 429, 'BOCAL', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (430, 'CHOCO EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (700, '0020043000', 430, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (431, 'Choco mini balls', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (701, '0020043100', 431, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (702, '0020043101', 431, 'BOCAL', 1, 150.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (432, 'CHOCO MINITELLA BOCAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (703, '0020043200', 432, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (704, '0020043201', 432, 'BOCAL', 1, 150.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (433, 'CHOCODAY MINIS EN BOITE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (705, '0080043300', 433, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (434, 'CHOCOLAT BISCUIT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (706, '0020043400', 434, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (435, 'CHOCOLAT DUCREM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (707, '0020043500', 435, 'BOITE', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (436, 'CHOCOLAT EMERALDE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (708, '0020043600', 436, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (437, 'CHOCOLAT EURO GOLD BOCAL 125PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (709, '0020043700', 437, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (438, 'CHOCOLAT GOLDEN HEART', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (710, '0080043800', 438, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (439, 'CHOCOLAT MONTRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (711, '0020043900', 439, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (440, 'Chocolate pen 10g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (712, '0020044000', 440, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (713, '0020044001', 440, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (441, 'CITRON BARRE NATIONAL 800G', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (714, '0100044100', 441, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (715, '0100044101', 441, 'CARTON', 1, 16.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (442, 'CITRON FRAIS BARRE 750G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (716, '0020044200', 442, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (717, '0020044201', 442, 'CARTON', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (443, 'CITRON FRAIS BARRE 800G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (718, '0030044300', 443, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (719, '0030044301', 443, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (444, 'Citron frais barre 900 gr', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (720, '0100044400', 444, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (721, '0100044401', 444, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (445, 'Coca cola canette 300ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (722, '0020044500', 445, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (723, '0020044501', 445, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (446, 'COCA COLA PET 1.5L*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (724, '0110044600', 446, 'PAQUET', 0, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (447, 'COCA COLA PET 1.5L*6 VAO', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (725, '0110044700', 447, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (726, '0110044701', 447, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (448, 'COCA COLA PET 350ML*12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (727, '0110044800', 448, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (449, 'COCA COLA PET 50CL*12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (728, '0110044900', 449, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (729, '0110044901', 449, 'PACQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (450, 'COLGATE 50ML 6*12', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (730, '0020045000', 450, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (731, '0020045001', 450, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (732, '0020045002', 450, 'PAQUET', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (451, 'COLGATE GM [ 100ml ~ 154 g ]', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (733, '0020045100', 451, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (734, '0020045101', 451, 'CARTON', 1, 4.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (735, '0020045102', 451, 'PACQUET', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (452, 'COLGATE MAXIMUM CAVITY 100ML*72', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (736, '0060045200', 452, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (737, '0060045201', 452, 'PQT', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (453, 'COLGATE MAXIMUM CAVITY 25ML*144', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (738, '0060045300', 453, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (739, '0060045301', 453, 'PQT', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (454, 'COLGATE PM 50ML(77G)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (740, '0020045400', 454, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (455, 'COLGATE TOTAL PRO 75ml EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (741, '0020045500', 455, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (456, 'COLGATE TOTAL PRO 75ml(100G)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (742, '0020045600', 456, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (457, 'COLLE SUPER GLUE 3G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (743, '0020045700', 457, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (458, 'Colombina jumbo sucette 1250g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (744, '0020045800', 458, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (745, '0020045801', 458, 'CARTON', 1, 14.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (459, 'COLOMBINA SUCETTE 816G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (746, '0020045900', 459, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (747, '0020045901', 459, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (460, 'COLORANT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (748, '0020046000', 460, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (749, '0020046001', 460, 'PACQUET', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (461, 'COLORANT PARFUM NANDI''S CHOCOLATE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (750, '0020046100', 461, 'PECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (751, '0020046101', 461, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (462, 'COLORANT PARFUM NANDI''S ORANGE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (752, '0020046200', 462, 'PECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (753, '0020046201', 462, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (463, 'COLORANT PARFUM NANDI''S STRAWBERRY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (754, '0020046300', 463, 'PECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (755, '0020046301', 463, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (464, 'COLORFUL JELLY CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (756, '0080046400', 464, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (465, 'CONSIGNATION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (757, '0020046500', 465, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (466, 'CONTRE TOUT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (758, '0020046600', 466, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (759, '0020046601', 466, 'SAC', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (467, 'CORDE N°10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (760, '0020046700', 467, 'ROULEAU', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (468, 'CORDE N°12', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (761, '0020046800', 468, 'ROULEAU', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (469, 'CORDE N°2', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (762, '0020046900', 469, 'ROULEAU', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (763, '0020046901', 469, 'BALLES', 1, 85.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (470, 'CORDE N°3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (764, '0020047000', 470, 'ROULEAU', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (471, 'CORDE N°4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (765, '0020047100', 471, 'ROULEAU', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (766, '0020047101', 471, 'BALLES', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (472, 'CORDE N°6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (767, '0020047200', 472, 'ROULEAU', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (473, 'CORDE N°8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (768, '0020047300', 473, 'ROULEAU', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (474, 'CORRY PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (769, '0020047400', 474, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (475, 'Couche bebeo culotte junior 5x28 n°5', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (770, '0120047500', 475, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (771, '0120047501', 475, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (476, 'Couche bebeo culotte maxi 5x32 n°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (772, '0120047600', 476, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (773, '0120047601', 476, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (477, 'Couche bebeo culotte midi 5x36 n°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (774, '0120047700', 477, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (775, '0120047701', 477, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (478, 'COUCHE BEBEO CULOTTE PANTS MAXI 4X32 N°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (776, '0120047800', 478, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (777, '0120047801', 478, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (479, 'Couche bebeo maxi 4X32 n°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (778, '0120047900', 479, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (779, '0120047901', 479, 'BALE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (480, 'Couche bebeo midi 4X36 n°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (780, '0120048000', 480, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (781, '0120048001', 480, 'BALE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (481, 'Couche calinou maxi 4*32 n°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (782, '0120048100', 481, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (783, '0120048101', 481, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (482, 'Couche calinou midi 4*36 n°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (784, '0120048200', 482, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (785, '0120048201', 482, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (483, 'COUCHE CALINOU MINI 4*40 N°2', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (786, '0120048300', 483, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (787, '0120048301', 483, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (484, 'COUCHE CULOTTE SWEETY FIT PANTZ I8 MAXI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (788, '0020048400', 484, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (789, '0020048401', 484, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (485, 'COUCHE CULOTTE SWEETY FIT PANTZ L1 MAXI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (790, '0020048500', 485, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (791, '0020048501', 485, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (486, 'COUCHE CULOTTE SWEETY FIT PANTZ M9 MIDI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (792, '0020048600', 486, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (793, '0020048601', 486, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (487, 'COUCHE MAVIS MAXI 10', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (794, '0120048700', 487, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (795, '0120048701', 487, 'BAL', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (488, 'Couche molly maxi 4x32 n°4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (796, '0020048800', 488, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (797, '0020048801', 488, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (489, 'Couche molly midi 4x36 n°3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (798, '0020048900', 489, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (799, '0020048901', 489, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (490, 'COUVERTURE VANILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (800, '0020049000', 490, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (801, '0020049001', 490, 'BALLE', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (491, 'CRAIE BLANCHE TRI ONE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (802, '0020049100', 491, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (803, '0020049101', 491, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (492, 'CRAIE BLANCHE XIA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (804, '0020049200', 492, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (805, '0020049201', 492, 'CARTON', 1, 48.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (493, 'CRAIE COULEUR TRIO ONE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (806, '0020049300', 493, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (807, '0020049301', 493, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (494, 'CRAIE COULEUR XIA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (808, '0020049400', 494, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (495, 'CRAIE HI BLANCHE 100PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (809, '0020049500', 495, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (496, 'CRAIE HI COULEUR 100PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (810, '0020049600', 496, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (497, 'CRAIE REFLEX BLANCHE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (811, '0020049700', 497, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (498, 'CRAIE REFLEX COULEUR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (812, '0020049800', 498, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (499, 'CREAM BISCUIT TIK TOK 50G*10*10', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (813, '0010049900', 499, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (814, '0010049901', 499, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (500, 'CREAM BISCUIT TIK TOK 70G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (815, '0010050000', 500, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (816, '0010050001', 500, 'CARTON', 1, 3.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (501, 'CREAM WAFER OYE BISCUITS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (817, '0010050100', 501, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (818, '0010050101', 501, 'BOITE', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (502, 'CREME MOUSQUITO DUDU 70G', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (819, '0070050200', 502, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (820, '0070050201', 502, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (503, 'CREME MOUSQUITO FAMILY CARE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (821, '0020050300', 503, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (504, 'CREME MOUSQUITO FAMILY CARE 70G', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (822, '0070050400', 504, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (823, '0070050401', 504, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (505, 'CRISPY CONE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (824, '0020050500', 505, 'BOCALE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (825, '0020050501', 505, 'CARTON', 1, 9.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (506, 'CRISPY CONE DY CONEO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (826, '0010050600', 506, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (827, '0010050601', 506, 'CARTON', 1, 9.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (828, '0010050602', 506, 'BOCAL', 2, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (507, 'CRISTALINE 100CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (829, '0020050700', 507, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (508, 'CRISTALINE 1L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (830, '0110050800', 508, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (831, '0110050801', 508, 'PAQUET', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (509, 'Cristaline 200cl', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (832, '0020050900', 509, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (510, 'Cristaline 2L', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (833, '0110051000', 510, 'BOUTEIL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (834, '0110051001', 510, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (511, 'Cristo', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (835, '0010051100', 511, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (512, 'Croquette au fromage luxe gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (836, '0020051200', 512, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (513, 'Croquette au fromage luxe pm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (837, '0020051300', 513, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (514, 'CROWN LIGHT LOLLIPOP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (838, '0080051400', 514, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (515, 'CROWN ROSE 25G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (839, '0020051500', 515, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (516, 'CUBE CANDY WATER BOTTLE EN BOCAL*275PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (840, '0080051600', 516, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (841, '0080051601', 516, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (517, 'CUVETTE KEPOLY GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (842, '0020051700', 517, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (518, 'DANICA SWEEETWHIP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (843, '0020051800', 518, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (519, 'DARBEL CITRON 100 CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (844, '0020051900', 519, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (520, 'DARBEL FRAISE 100CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (845, '0020052000', 520, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (521, 'DARBEL GRENADINE 100CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (846, '0020052100', 521, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (522, 'DARBEL MENTHE 100CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (847, '0020052200', 522, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (523, 'DARBEL MENTHE 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (848, '0020052300', 523, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (524, 'DARBEL ORANGE 100CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (849, '0020052400', 524, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (525, 'DAY & NIGHT BALLS KIDDIES 420G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (850, '0080052500', 525, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (526, 'Delice 28% lait entier 1kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (851, '0020052600', 526, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (852, '0020052601', 526, 'CARTON', 1, 8.00, 8.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (527, 'Delice 28% lait entier 20g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (853, '0020052700', 527, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (854, '0020052701', 527, 'CARTON', 1, 252.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (528, 'Delice 28% lait entier 250g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (855, '0020052800', 528, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (856, '0020052801', 528, 'CARTON', 1, 32.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (529, 'Delice 28% lait entier 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (857, '0020052900', 529, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (858, '0020052901', 529, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (530, 'Delice choco poudre 20g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (859, '0020053000', 530, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (531, 'Delice chocolat poudre 200g*45', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (860, '0020053100', 531, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (532, 'Delice chocolat poudre 400g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (861, '0020053200', 532, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (533, 'DENTIFRICE BOSIVO CHARCOAL 100ML', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (862, '0060053300', 533, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (863, '0060053301', 533, 'PQT', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (534, 'Dentifrice ciptadent 30g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (864, '0020053400', 534, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (865, '0020053401', 534, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (535, 'Dentifrice ciptadent 75G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (866, '0020053500', 535, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (536, 'DENTIFRICE DABUR HERB''L CHARCOAL 140G', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (867, '0060053600', 536, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (868, '0060053601', 536, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (537, 'DENTIFRICE DABUR HERB''L TOOTHPAST 140G MINT', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (869, '0060053700', 537, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (870, '0060053701', 537, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (538, 'DENTIFRICE DABUR HERBIL CLOVE 156G*8X6', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (871, '0060053800', 538, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (872, '0060053801', 538, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (873, '0060053802', 538, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (539, 'DENTIFRICE MERIELCE 150G', 6, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (874, '0060053900', 539, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (875, '0060053901', 539, 'PQT', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (876, '0060053902', 539, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (540, 'DENTIFRICE SIGNAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (877, '0020054000', 540, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (878, '0020054001', 540, 'CARTON', 1, 4.00, 3.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (879, '0020054002', 540, 'PACQUET', 2, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (541, 'DEO EMOTION LOVE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (880, '0020054100', 541, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (542, 'DEO EMOTION OCEAN FRESH', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (881, '0020054200', 542, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (543, 'DEO EMOTION ROMANCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (882, '0020054300', 543, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (544, 'DEO EMOTION VIOLET KISS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (883, '0020054400', 544, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (545, 'DEO MY EGO APOLLO 200ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (884, '0020054500', 545, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (546, 'DEO MY EGO RACE 200ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (885, '0020054600', 546, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (547, 'DEO MY EGO WAVE 200ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (886, '0020054700', 547, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (548, 'DINOSAUR BUBLE GUM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (887, '0080054800', 548, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (549, 'DOLPHIN CULOTTE JUNIOR 5X24 N°5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (888, '0020054900', 549, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (889, '0020054901', 549, 'BALL', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (550, 'DOLPHIN CULOTTE MIDI 5X34 N°3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (890, '0020055000', 550, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (891, '0020055001', 550, 'BALL', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (551, 'DOLPHIN CULOTTE TWIN MAXI 5X32 N°4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (892, '0020055100', 551, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (893, '0020055101', 551, 'BALL', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (552, 'Double 7 seven 250ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (894, '0020055200', 552, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (895, '0020055201', 552, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (553, 'DOUBLE KOFFE BOCAL 240PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (896, '0080055300', 553, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (897, '0080055301', 553, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (554, 'DOUBLE KOFFE EN SACHET', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (898, '0080055400', 554, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (555, 'DOUBLE KOFFRE VETO(ORIZON CAFE)EN SACHET', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (899, '0080055500', 555, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (900, '0080055501', 555, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (556, 'DR CONFORT COUCHE ADULTE 6 X L10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (901, '0020055600', 556, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (902, '0020055601', 556, 'PAQUET', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (557, 'Drink bottle candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (903, '0080055700', 557, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (904, '0080055701', 557, 'PAQUET', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (558, 'Dum dun gun 16*48', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (905, '0080055800', 558, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (906, '0080055801', 558, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (559, 'DURATA r20 (gm)', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (907, '0170055900', 559, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (908, '0170055901', 559, 'CARTON', 1, 24.00, 24.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (560, 'Durata r6 (pm)', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (909, '0170056000', 560, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (910, '0170056001', 560, 'CARTON', 1, 50.00, 19.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (561, 'DYNAMIC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (911, '0020056100', 561, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (912, '0020056101', 561, 'CARTON', 1, 30.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (562, 'EAU VIVE 1.5l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (913, '0020056200', 562, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (914, '0020056201', 562, 'PACK', 1, 6.00, 9.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (563, 'EAU VIVE 50CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (915, '0020056300', 563, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (916, '0020056301', 563, 'PACK', 1, 12.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (564, 'EAU VIVE GM EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (917, '0020056400', 564, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (565, 'EAU VIVE PM EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (918, '0020056500', 565, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (566, 'ELASTIQUE FLECHE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (919, '0020056600', 566, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (567, 'Elastique volo', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (920, '0020056700', 567, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (568, 'EMBALLAGE TSOTRA PM (56*76)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (921, '0020056800', 568, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (569, 'EMBALLAGE VANILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (922, '0020056900', 569, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (570, 'Encaustique tselatra acajou', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (923, '0180057000', 570, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (924, '0180057001', 570, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (571, 'Encaustique tselatra jaune', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (925, '0180057100', 571, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (926, '0180057101', 571, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (572, 'Encaustique tselatra neutre', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (927, '0180057200', 572, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (928, '0180057201', 572, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (573, 'Encaustique tselatra spacial', 18, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (929, '0180057300', 573, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (930, '0180057301', 573, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (574, 'ENCOSTIQUE JEWEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (931, '0020057400', 574, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (932, '0020057401', 574, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (575, 'ENCOSTIQUE TSOTRA BOIS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (933, '0020057500', 575, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (576, 'ENCOSTIQUE TSOTRA CIMENT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (934, '0020057600', 576, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (577, 'ENVELOPPE OFFICE 11X16', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (935, '0020057700', 577, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (936, '0020057701', 577, 'BOITE', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (578, 'ENVELOPPES NITRO C6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (937, '0020057800', 578, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (938, '0020057801', 578, 'PQT', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (579, 'ENVELOPPES NITRO GM FORMAT C4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (939, '0020057900', 579, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (940, '0020057901', 579, 'PACQUET', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (580, 'ENVELOPPES NITRO MOYENNE FORMAT A5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (941, '0020058000', 580, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (942, '0020058001', 580, 'PACQUET', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (581, 'Enveloppes voila c6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (943, '0020058100', 581, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (582, 'ESSENCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (944, '0020058200', 582, 'LITRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (945, '0020058201', 582, 'TONNELET', 1, 12.50, 125.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (946, '0020058202', 582, 'JERICAN', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (583, 'EVERLASTE GM', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (947, '0170058300', 583, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (948, '0170058301', 583, 'CARTON', 1, 24.00, 24.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (584, 'EVERLASTE PM', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (949, '0170058400', 584, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (950, '0170058401', 584, 'CARTON', 1, 50.00, 19.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (585, 'EX-40(EXTRA PROPRE BLANC 36PCS)', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (951, '0030058500', 585, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (586, 'EX-45(EXTRA PROPRE MARON 24 MX)', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (952, '0030058600', 586, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (587, 'EXPERT PROP''OR LIQUIDE VAISSELLE 1L CITRON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (953, '0020058700', 587, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (954, '0020058701', 587, 'CARTON', 1, 8.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (588, 'EXTRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (955, '0020058800', 588, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (956, '0020058801', 588, 'CARTON', 1, 150.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (589, 'Extra propre barre citron 800g', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (957, '0030058900', 589, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (958, '0030058901', 589, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (590, 'Extra propre blanc 24pcs', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (959, '0030059000', 590, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (591, 'EXTRA PROPRE BLEU [CITRON]', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (960, '0190059100', 591, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (592, 'Extra propre floral', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (961, '0190059200', 592, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (593, 'Extra propre liquide vaisselle 1l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (962, '0020059300', 593, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (963, '0020059301', 593, 'PAQUET', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (594, 'FAMAFA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (964, '0020059400', 594, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (595, 'Famafa 907 manche blanc', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (965, '0200059500', 595, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (596, 'FAMAFA ASIE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (966, '0020059600', 596, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (597, 'FAMAFA B11', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (967, '0020059700', 597, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (598, 'Famafa brosse Ib', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (968, '0200059800', 598, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (599, 'FAMAFA LUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (969, '0020059900', 599, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (600, 'FAMAFA LUX 308', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (970, '0020060000', 600, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (601, 'FAMAFA LUX 812', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (971, '0020060100', 601, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (602, 'FAMAFA LUX VAO', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (972, '0200060200', 602, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (973, '0200060201', 602, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (603, 'FAMAFA LUX VTP MM', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (974, '0200060300', 603, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (604, 'FAMAFA TSOTRA', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (975, '0200060400', 604, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (605, 'FAMAFA VAO', 20, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (976, '0200060500', 605, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (606, 'FANA TOMATE BOITE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (977, '0020060600', 606, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (978, '0020060601', 606, 'CARTON', 1, 100.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (607, 'FANTA ANANAS PET 1.5L*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (979, '0110060700', 607, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (980, '0110060701', 607, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (608, 'FANTA ANANAS PET 350ML', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (981, '0110060800', 608, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (609, 'Fanta orange canette 300ml*24', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (982, '0110060900', 609, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (983, '0110060901', 609, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (610, 'Fanta Orange pet 1,5 l*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (984, '0110061000', 610, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (985, '0110061001', 610, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (611, 'Fanta Orange pet 350ML*12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (986, '0110061100', 611, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (612, 'FANTA PASSION PET 1.5ML*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (987, '0110061200', 612, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (988, '0110061201', 612, 'PQT', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (613, 'FANTA PASSION PET 350ML*12', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (989, '0110061300', 613, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (990, '0110061301', 613, 'PQT', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (614, 'Fantastic spray candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (991, '0020061400', 614, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (615, 'FARILAC 400GR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (992, '0020061500', 615, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (616, 'FARILAC VANILLE 200G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (993, '0050061600', 616, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (617, 'FARILAC VANILLE 25G*100', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (994, '0050061700', 617, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (618, 'FARILAC VANILLE 50G*120', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (995, '0050061800', 618, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (619, 'Farine _lafarina en kilos', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (996, '0020061900', 619, 'KILO', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (997, '0020061901', 619, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (620, 'FARINE BAREA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (998, '0020062000', 620, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (621, 'FARINE BAREA EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (999, '0020062100', 621, 'KG', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (622, 'FARINE EGYPTE', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1000, '0210062200', 622, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1001, '0210062201', 622, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (623, 'FARINE ERIS', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1002, '0210062300', 623, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1003, '0210062301', 623, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (624, 'Farine lafarina 25KG', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1004, '0210062400', 624, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (625, 'FARINE LAFARINA 50 KG', 21, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1005, '0210062500', 625, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1006, '0210062501', 625, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (626, 'FECULE 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1007, '0020062600', 626, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1008, '0020062601', 626, 'CARTON', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (627, 'Fengchipa Opaobang*20x30', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1009, '0020062700', 627, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1010, '0020062701', 627, 'CARTON', 1, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1011, '0020062702', 627, 'BOITE', 2, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (628, 'FER 8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1012, '0020062800', 628, 'BARRE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (629, 'Finger pacifier 5g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1013, '0020062900', 629, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (630, 'FLOOR CLEANER KLIN SOL EN BTL ROSE 450ML', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1014, '0030063000', 630, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (631, 'FLOOR CLEANER KLIN SOL EN BTL VERT 450ML', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1015, '0030063100', 631, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (632, 'FLOOR CLEANER KLIN SOL EN BTL VIOLET 450ML', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1016, '0030063200', 632, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (633, 'FONTERA BLEU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1017, '0020063300', 633, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (634, 'FOOTBALL CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1018, '0080063400', 634, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (635, 'FRANCE COILS BLEU CAMPHRE', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1019, '0070063500', 635, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1020, '0070063501', 635, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (636, 'France coils jaune citron', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1021, '0070063600', 636, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1022, '0070063601', 636, 'CARTON', 1, 60.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (637, 'FRANCE COILS ROSE JASMIN', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1023, '0070063700', 637, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1024, '0070063701', 637, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (638, 'FRANCE COILS ROUGE BOIS DE SANTAL', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1025, '0070063800', 638, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1026, '0070063801', 638, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (639, 'FRANCE COILS VERT MENTHE', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1027, '0070063900', 639, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1028, '0070063901', 639, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (640, 'FRANCE COILS VIOLET LAVENDE', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1029, '0070064000', 640, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1030, '0070064001', 640, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (641, 'FREGO ASS (GM)', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1031, '0010064100', 641, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1032, '0010064101', 641, 'CARTON', 1, 7.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (642, 'FROOTOLA CHOCLAND', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1033, '0080064200', 642, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (643, 'FROTOLA PHONE 4U', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1034, '0080064300', 643, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (644, 'FRU CHEW TOFFEE COCONUT EN BOCAL BLEU', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1035, '0080064400', 644, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (645, 'FRU CHEW TOFFEE MILK EN BOCAL BLANC', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1036, '0080064500', 645, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (646, 'FRU CHEW TOFFEE STRAWBERRY EN BOCAL ROSE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1037, '0080064600', 646, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (647, 'FRUIT FILLED CENTER CANDY *12', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1038, '0080064700', 647, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (648, 'FRUTAS ACIDULADAS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1039, '0020064800', 648, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (649, 'FUNNY BIRDS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1040, '0020064900', 649, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (650, 'Gaine 12cm/100gramme', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1041, '0020065000', 650, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (651, 'Gaine 14cm/100gramme', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1042, '0020065100', 651, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (652, 'GAINE 15CM/100GRAMME', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1043, '0020065200', 652, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (653, 'Gaine 6cm/100gramme', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1044, '0020065300', 653, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (654, 'Gaine 8cm/100gramme', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1045, '0020065400', 654, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (655, 'Galeti local', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1046, '0010065500', 655, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (656, 'GAS''CARE GEL DOUCHE COCO MIEL 300ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1047, '0020065600', 656, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (657, 'GAZ OIL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1048, '0020065700', 657, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (658, 'GIRA LENGUA CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1049, '0080065800', 658, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (659, 'Global cracker tub ranch 227g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1050, '0020065900', 659, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (660, 'GLUCOSE COCONUT PM 30PCS*8', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1051, '0010066000', 660, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1052, '0010066001', 660, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (661, 'GLUCOSE GALAXY', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1053, '0010066100', 661, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1054, '0010066101', 661, 'CARTON', 1, 10.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (662, 'Glucose pm [angry bird]', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1055, '0010066200', 662, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1056, '0010066201', 662, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (663, 'Glucose pm [assorted]', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1057, '0010066300', 663, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1058, '0010066301', 663, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (664, 'GLUCOSE PM [malt'' n'' milk ]', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1059, '0020066400', 664, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1060, '0020066401', 664, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (665, 'Glucose pm [Superman]', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1061, '0010066500', 665, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1062, '0010066501', 665, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (666, 'Gofrette swiss wafer', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1063, '0010066600', 666, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1064, '0010066601', 666, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (667, 'Gofrety 8', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1065, '0010066700', 667, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1066, '0010066701', 667, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (668, 'Gofrety ass pm', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1067, '0010066800', 668, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1068, '0010066801', 668, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (669, 'GOLD CURLY BOUCLES PARFAITES', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1069, '0220066900', 669, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1070, '0220066901', 669, 'CARTON', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1071, '0220066902', 669, 'PQT', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (670, 'GOLDEN COIN CHOCOLAT CAR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1072, '0020067000', 670, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1073, '0020067001', 670, 'BOITE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (671, 'GOLDY PLAQUAGE VOLO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1074, '0020067100', 671, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1075, '0020067101', 671, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (672, 'GOLDY SERUM VOLO GINSENG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1076, '0020067200', 672, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1077, '0020067201', 672, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (673, 'GOLDY SHAMPOOING ANTI-PELLICULAIRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1078, '0020067300', 673, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1079, '0020067301', 673, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (674, 'Gomas mascar', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1080, '0080067400', 674, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1081, '0080067401', 674, 'PAQUET', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (675, 'GONY VIDE ATAO CONSIGNATION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1082, '0020067500', 675, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (676, 'GOUTY 6 LAIT BEURRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1083, '0020067600', 676, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1084, '0020067601', 676, 'CARTON', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (677, 'GOUTY BEURRE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1085, '0020067700', 677, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1086, '0020067701', 677, 'CARTON', 1, 7.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (678, 'GOUTY BISCUIT COMPLET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1087, '0020067800', 678, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (679, 'GOUTY CHO''COCO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1088, '0010067900', 679, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1089, '0010067901', 679, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (680, 'GOUTY COOKIES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1090, '0020068000', 680, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1091, '0020068001', 680, 'CARTON', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (681, 'GOUTY D''OR GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1092, '0010068100', 681, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1093, '0010068101', 681, 'CARTON', 1, 7.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (682, 'GOUTY DOR 6 PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1094, '0020068200', 682, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1095, '0020068201', 682, 'CARTON', 1, 18.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (683, 'GOUTY DOR 6 PM EN PCS', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1096, '0010068300', 683, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (684, 'GOUTY DOR12 GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1097, '0020068400', 684, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1098, '0020068401', 684, 'CARTON', 1, 8.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (685, 'GOUTY GM EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1099, '0020068500', 685, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (686, 'GOUTY GRANDI + 6', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1100, '0010068600', 686, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1101, '0010068601', 686, 'CARTON', 1, 17.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (687, 'GOUTY GRANDI +6 LAIT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1102, '0020068700', 687, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1103, '0020068701', 687, 'CARTON', 1, 17.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (688, 'GOUTY LA GALETTE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1104, '0010068800', 688, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1105, '0010068801', 688, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (689, 'GOUTY LAIT GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1106, '0010068900', 689, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1107, '0010068901', 689, 'PIECE', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1108, '0010068902', 689, 'CARTON', 2, 7.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (690, 'GOUTY MINI MADELEINE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1109, '0010069000', 690, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1110, '0010069001', 690, 'CARTON', 1, 3.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1111, '0010069002', 690, 'SACHET', 2, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (691, 'GOUTY SABLE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1112, '0010069100', 691, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1113, '0010069101', 691, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (692, 'GOUTY SABLEE COCO 4', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1114, '0010069200', 692, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1115, '0010069201', 692, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (693, 'GROS POIDS', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1116, '0050069300', 693, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (694, 'Gros poids 50kg vao', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1117, '0050069400', 694, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (695, 'GROS POIDS @ KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1118, '0020069500', 695, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (696, 'Gun candy 3.5g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1119, '0020069600', 696, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (697, 'HADAY SIGNATURE OYSTER SAUCE 550G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1120, '0020069700', 697, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1121, '0020069701', 697, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (698, 'Haraka vert 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1122, '0090069800', 698, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (699, 'Hoho big sticks', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1123, '0020069900', 699, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (700, 'HOPPIN PE ICE CREAM STRAWBERRY 50P*12BAG', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1124, '0080070000', 700, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (701, 'HUILE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1125, '0020070100', 701, 'LITRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1126, '0020070101', 701, 'JERYCAN', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (702, 'Huile alimentaire en litre', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1127, '0050070200', 702, 'LITRE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (703, 'Huile caste evita 2l', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1128, '0050070300', 703, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1129, '0050070301', 703, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (704, 'HUILE CASTE HUILOR', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1130, '0050070400', 704, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1131, '0050070401', 704, 'CARTON', 1, 15.00, 12.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (705, 'HUILE CASTE SUNNY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1132, '0020070500', 705, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1133, '0020070501', 705, 'CARTON', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (706, 'HUILE CASTE ZAIN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1134, '0020070600', 706, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1135, '0020070601', 706, 'CARTON', 1, 12.00, 12.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (707, 'HUILE COCO 20L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1136, '0020070700', 707, 'LITRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1137, '0020070701', 707, 'JERYCAN', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (708, 'HUILE COCO 5L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1138, '0020070800', 708, 'JERYCAN', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1139, '0020070801', 708, 'CARTON', 1, 4.00, 20.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (709, 'HUILE D''OLIVE ORKIDE 1L', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1140, '0050070900', 709, 'BOUTEIL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (710, 'HUILE D''OLIVE ORKIDE 500ML', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1141, '0050071000', 710, 'BOUTEIL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (711, 'HUILE DE SOJA ELVIA 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1142, '0020071100', 711, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1143, '0020071101', 711, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (712, 'HUILE DE SOJA HINA 0.5L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1144, '0020071200', 712, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1145, '0020071201', 712, 'CARTON', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (713, 'Huile de soja hina 1l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1146, '0020071300', 713, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1147, '0020071301', 713, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (714, 'HUILE DE TOURNESOL LAFATRA 1L', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1148, '0050071400', 714, 'PIECS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1149, '0050071401', 714, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (715, 'Huile elvia 10l', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1150, '0050071500', 715, 'LITRES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1151, '0050071501', 715, 'JRC', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (716, 'HUILE EVITA 250CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1152, '0020071600', 716, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1153, '0020071601', 716, 'CARTON', 1, 48.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (717, 'HUILE IMPORTER 20L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1154, '0020071700', 717, 'JERCANE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (718, 'Huile rajah en jerycan 20l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1155, '0020071800', 718, 'LITRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1156, '0020071801', 718, 'JERYCAN', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (719, 'HUILE TOURNESOL COEUR D''OR 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1157, '0020071900', 719, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1158, '0020071901', 719, 'CARTON', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (720, 'HUILE TOURNESOL LUSSO 1L', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1159, '0050072000', 720, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1160, '0050072001', 720, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (721, 'HUILE TOURNESOL SUNLIFE 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1161, '0020072100', 721, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1162, '0020072101', 721, 'CARTON', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (722, 'HUILE TOURNESSOL OSCAR 1L*12', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1163, '0050072200', 722, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1164, '0050072201', 722, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (723, 'ICE CREAM LOLLIPOP COLOFUL 8G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1165, '0080072300', 723, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (724, 'Ice pop drinks [Jus bocal]', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1166, '0020072400', 724, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1167, '0020072401', 724, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (725, 'IMPEC GEL WC FLORAL 500ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1168, '0020072500', 725, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (726, 'IMPEC GEL WC PIN VERT 500ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1169, '0020072600', 726, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (727, 'IMPEC VAISSELLE ASSORTI 50CLX12', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1170, '0020072700', 727, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1171, '0020072701', 727, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (728, 'IMPEC VAISSELLE FLEUR DE CERISIER MAXI 1LX12', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1172, '0030072800', 728, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1173, '0030072801', 728, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (729, 'IMPEC VAISSELLE MENTHE CITRON MAXI 1LX12', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1174, '0030072900', 729, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1175, '0030072901', 729, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (730, 'IMPEC VAISSELLE POMME RAISIN MAXI 1LX12', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1176, '0030073000', 730, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1177, '0030073001', 730, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (731, 'INSECTICIDE ATTACK MULTI PROPOSE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1178, '0020073100', 731, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (732, 'INSECTICIDE PROCHITOX 300ML', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1179, '0070073200', 732, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (733, 'INSECTICIDE PROCHITOX 600ML', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1180, '0070073300', 733, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (734, 'ITALIANO 77', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1181, '0010073400', 734, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (735, 'JABA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1182, '0020073500', 735, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1183, '0020073501', 735, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (736, 'JADIDA 250g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1184, '0050073600', 736, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1185, '0050073601', 736, 'CARTON', 1, 16.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (737, 'JADIDA 450G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1186, '0020073700', 737, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (738, 'JELLY BEAN', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1187, '0080073800', 738, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1188, '0080073801', 738, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (739, 'JELLY DOUBLE EYE 3D', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1189, '0080073900', 739, 'BCL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1190, '0080073901', 739, 'CARTON', 1, 18.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (740, 'JELLY DOUBLE EYE 3D en pcs', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1191, '0080074000', 740, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (741, 'Jelly fruit en bocal 3*30pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1192, '0020074100', 741, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1193, '0020074101', 741, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (742, 'JELLY FRUIT EN BOCAL 30G*30PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1194, '0020074200', 742, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1195, '0020074201', 742, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (743, 'JELLY STICK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1196, '0020074300', 743, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (744, 'Jelly_cup', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1197, '0020074400', 744, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1198, '0020074401', 744, 'SACHET', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (745, 'JERYCAN VIDE 20L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1199, '0020074500', 745, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (746, 'Jojoba sara be', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1200, '0220074600', 746, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1201, '0220074601', 746, 'BAL', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1202, '0220074602', 746, 'PAQUET', 2, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (747, 'JOLLY JUS', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1203, '0050074700', 747, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1204, '0050074701', 747, 'CARTON', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (748, 'JUMBO POULET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1205, '0020074800', 748, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1206, '0020074801', 748, 'CARTON', 1, 24.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1207, '0020074802', 748, 'BOITE', 2, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (749, 'JUMBO VIANDE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1208, '0050074900', 749, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1209, '0050074901', 749, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (750, 'JUMBO VOVONY POULET EN SHT*8G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1210, '0020075000', 750, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (751, 'JUMP GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1211, '0020075100', 751, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1212, '0020075101', 751, 'BALLE', 1, 3.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (752, 'JUS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1213, '0020075200', 752, 'BTE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1214, '0020075201', 752, 'BALLE', 1, 2.00, 3.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1215, '0020075202', 752, 'CARTON', 2, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (753, 'JUS BOCAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1216, '0020075300', 753, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1217, '0020075301', 753, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (754, 'JUS BRIQUET LIGHTER SPRAY CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1218, '0080075400', 754, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (755, 'JUS CANETTE CAPRICE BBA 33CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1219, '0020075500', 755, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1220, '0020075501', 755, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (756, 'JUS CANETTE CAPRICE ORANGE 33CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1221, '0020075600', 756, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1222, '0020075601', 756, 'PAQUET', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (757, 'JUS EN BOUTEILLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1223, '0020075700', 757, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1224, '0020075701', 757, 'CARTON', 1, 30.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (758, 'JUS EN CLARINETTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1225, '0020075800', 758, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (759, 'JUS EN POT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1226, '0020075900', 759, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (760, 'JUS EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1227, '0020076000', 760, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (761, 'JUS FARAGELLO 200ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1228, '0020076100', 761, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (762, 'Jus Golden', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1229, '0020076200', 762, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (763, 'Jus Golden cocktail', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1230, '0020076300', 763, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (764, 'Jus Golden coconut', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1231, '0020076400', 764, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (765, 'Jus Golden fraise', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1232, '0020076500', 765, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (766, 'Jus Golden lemon', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1233, '0020076600', 766, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (767, 'JUS MINA BANANA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1234, '0020076700', 767, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1235, '0020076701', 767, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (768, 'Jus mina cocktail', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1236, '0020076800', 768, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1237, '0020076801', 768, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (769, 'JUS MINA COCONUT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1238, '0020076900', 769, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1239, '0020076901', 769, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (770, 'JUS MINA COLA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1240, '0020077000', 770, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1241, '0020077001', 770, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (771, 'JUS MINA ORANGE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1242, '0020077100', 771, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1243, '0020077101', 771, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (772, 'JUS PUPETTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1244, '0020077200', 772, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1245, '0020077201', 772, 'PACQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1246, '0020077202', 772, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (773, 'Jus samia cola', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1247, '0110077300', 773, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (774, 'Jus samia fraise', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1248, '0020077400', 774, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (775, 'Jus samia lemon', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1249, '0020077500', 775, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (776, 'Jus samia mandarine', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1250, '0020077600', 776, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (777, 'Jus samia orange', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1251, '0020077700', 777, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (778, 'JUS SHAMPART', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1252, '0020077800', 778, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (779, 'JUS ST W', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1253, '0020077900', 779, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (780, 'JUS TAMA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1254, '0020078000', 780, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (781, 'JUS VALORE ORANGE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1255, '0050078100', 781, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (782, 'KAFE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1256, '0020078200', 782, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1257, '0020078201', 782, 'KG', 1, 4.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1258, '0020078202', 782, 'SAC', 2, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (783, 'KAFE 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1259, '0020078300', 783, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (784, 'KAFEZA @ SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1260, '0020078400', 784, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (785, 'KALINA GM', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1261, '0100078500', 785, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1262, '0100078501', 785, 'CARTON', 1, 9.00, 9.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (786, 'KALINA PM', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1263, '0100078600', 786, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1264, '0100078601', 786, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (787, 'KANTO K12', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1265, '0020078700', 787, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (788, 'KANTO K5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1266, '0020078800', 788, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1267, '0020078801', 788, 'CARTON', 1, 36.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (789, 'KANTO K6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1268, '0020078900', 789, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (790, 'KATSAKA VAINGANY 50kg', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1269, '0050079000', 790, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (791, 'KATSAKA VAINGANY EN KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1270, '0020079100', 791, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1271, '0020079101', 791, 'SAC', 1, 190.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (792, 'Katsaka Voatoto vaovao 50kg', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1272, '0050079200', 792, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (793, 'KATSAKA VOATOTO VAOVAO EN KAPOAKA', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1273, '0050079300', 793, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1274, '0050079301', 793, 'SAC', 1, 170.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (794, 'KEON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1275, '0020079400', 794, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1276, '0020079401', 794, 'SAC', 1, 20.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (795, 'KETCHUP EUROPA 340G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1277, '0020079500', 795, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (796, 'Ketchup milana squeezy 340g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1278, '0050079600', 796, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1279, '0050079601', 796, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (797, 'KFP BIG TOFFEE CHOCO 200P*12BOITE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1280, '0080079700', 797, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1281, '0080079701', 797, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (798, 'KFP BIG TOFFEE COCONUT 200P', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1282, '0080079800', 798, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1283, '0080079801', 798, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (799, 'KFP BIG TOFFEE COCONUT 200P*12BOITE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1284, '0080079900', 799, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (800, 'KFP BIG TOFFEE STRAWBERRY 200P', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1285, '0080080000', 800, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1286, '0080080001', 800, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (801, 'KFP FRUIT ROLL TOFFEE 200PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1287, '0080080100', 801, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (802, 'KFP TOFFEE GOLD 888', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1288, '0080080200', 802, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (803, 'KFP TOFFEE WORLD FLAVOURED', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1289, '0050080300', 803, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (804, 'KIDS JOY EN BOITE 12*33PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1290, '0080080400', 804, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1291, '0080080401', 804, 'BOITE', 1, 33.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (805, 'KIONG DARK SOY SAUCE 625ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1292, '0020080500', 805, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1293, '0020080501', 805, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (806, 'KIONG SAUCE HUITRES OYSTERS 700ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1294, '0020080600', 806, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1295, '0020080601', 806, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (807, 'KIP COCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1296, '0020080700', 807, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1297, '0020080701', 807, 'CARTON', 1, 8.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (808, 'KISO FOHY CROCODILE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1298, '0020080800', 808, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1299, '0020080801', 808, 'CARTON', 1, 48.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (809, 'KISO FOHY_DIAMANT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1300, '0020080900', 809, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1301, '0020080901', 809, 'CARTON', 1, 48.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (810, 'KISO LAVA _DIAMANT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1302, '0020081000', 810, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1303, '0020081001', 810, 'CARTON', 1, 48.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (811, 'KISO LAVA CROCODILE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1304, '0020081100', 811, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1305, '0020081101', 811, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (812, 'KLASS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1306, '0020081200', 812, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (813, 'KLIN en carton', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1307, '0020081300', 813, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (814, 'KLIN SMART BLEU 30ML', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1308, '0190081400', 814, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (815, 'KLIN SMART ROSE 30ML', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1309, '0190081500', 815, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (816, 'Koba aina banana 35g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1310, '0050081600', 816, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1311, '0050081601', 816, 'CARTON', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (817, 'Koba aina fraise 35g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1312, '0050081700', 817, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1313, '0050081701', 817, 'CARTON', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (818, 'Koba aina moosli 25g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1314, '0050081800', 818, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1315, '0050081801', 818, 'CARTON', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (819, 'Koba aina nature 35g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1316, '0050081900', 819, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1317, '0050081901', 819, 'CARTON', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (820, 'KOBAM-BARY 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1318, '0020082000', 820, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (821, 'Kobam-bary en kilos', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1319, '0020082100', 821, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1320, '0020082101', 821, 'SAC', 1, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (822, 'KOPIKO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1321, '0020082200', 822, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1322, '0020082201', 822, 'CARTON', 1, 24.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (823, 'KOPIKO CAFE BLACK 3 IN 1', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1323, '0020082300', 823, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (824, 'KOPIKO CAFE BROWN 3 IN 1', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1324, '0020082400', 824, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (825, 'KRAZY KREAMZ', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1325, '0020082500', 825, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1326, '0020082501', 825, 'CARTON', 1, 48.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (826, 'Kreamy', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1327, '0010082600', 826, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (827, 'KREAMY KRUNCH', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1328, '0020082700', 827, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (828, 'KREAMY MIX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1329, '0020082800', 828, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1330, '0020082801', 828, 'CARTON', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (829, 'KREAMY MIX EN PCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1331, '0020082900', 829, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1332, '0020082901', 829, 'PAQUET', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (830, 'Kreamy wafer biscuit', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1333, '0010083000', 830, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (831, 'KREAMY WAFER BISCUITS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1334, '0020083100', 831, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (832, 'Kreamy wafer en paquet', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1335, '0010083200', 832, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (833, 'Kreamy wafer en piece', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1336, '0010083300', 833, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (834, 'KREAMY''N', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1337, '0010083400', 834, 'CARTON', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1338, '0010083401', 834, 'SACHET', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1339, '0010083402', 834, 'SACHET', 2, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1340, '0010083403', 834, 'CARTON', 3, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (835, 'KREAMY''N KRUNCH', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1341, '0020083500', 835, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1342, '0020083501', 835, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (836, 'KREAMY''N KRUNCH EN PIECES', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1343, '0010083600', 836, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (837, 'KRIK KRAK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1344, '0020083700', 837, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (838, 'KWT DOUBLE DECKER', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1345, '0080083800', 838, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1346, '0080083801', 838, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (839, 'KWT DOUBLE TROUFFLE COCONUT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1347, '0080083900', 839, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1348, '0080083901', 839, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (840, 'KWT DOUBLE TROUFFLE HAZELNUT EN BOCAL ORANGE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1349, '0080084000', 840, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1350, '0080084001', 840, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (841, 'KWT DOUBLE TROUFFLE MILK JAUNE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1351, '0080084100', 841, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1352, '0080084101', 841, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (842, 'KWT TOFFE TRUFFLES 100 PCS', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1353, '0050084200', 842, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (843, 'KWT TOFFEE FRUIT JAM DECKER 100PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1354, '0080084300', 843, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (844, 'LA VACHE QUI RIT 112G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1355, '0020084400', 844, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1356, '0020084401', 844, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (845, 'LAME BIC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1357, '0020084500', 845, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1358, '0020084501', 845, 'BOITE', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (846, 'LAME DORCO NEW PLATINUM ST300', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1359, '0020084600', 846, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (847, 'LAME DORCO PLATINIUM EN PCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1360, '0020084700', 847, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1361, '0020084701', 847, 'PAQUET', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (848, 'LAME DORCO SUPER SHARP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1362, '0020084800', 848, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (849, 'LAME DORCO TITAN SLT300', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1363, '0020084900', 849, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1364, '0020084901', 849, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (850, 'LAVE MAIN MIRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1365, '0020085000', 850, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (851, 'LAY SUPER MOUSTIQUAIRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1366, '0020085100', 851, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (852, 'Le fruit jus 150ml*30', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1367, '0020085200', 852, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (853, 'LE FRUIT JUS 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1368, '0020085300', 853, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1369, '0020085301', 853, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (854, 'LEMON BUBBLE GUM EN BOCAL*115PCS', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1370, '0130085400', 854, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (855, 'LEVURE CHIMIQUE JAUNE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1371, '0050085500', 855, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1372, '0050085501', 855, 'CARTON', 1, 16.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1373, '0050085502', 855, 'PAQUET', 2, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (856, 'LEVURE CHIMIQUE MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1374, '0020085600', 856, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1375, '0020085601', 856, 'CARTON', 1, 16.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1376, '0020085602', 856, 'SACHET', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (857, 'LEVURE HASMAYA 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1377, '0020085700', 857, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1378, '0020085701', 857, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (858, 'LEVURE HASMAYA PM 125G*12BTE*3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1379, '0020085800', 858, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1380, '0020085801', 858, 'CARTON', 1, 3.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1381, '0020085802', 858, 'BOITE', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (859, 'LEVURE IDEAL 125G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1382, '0020085900', 859, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1383, '0020085901', 859, 'CARTON', 1, 3.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1384, '0020085902', 859, 'BOITE', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (860, 'LEVURE IDEAL GM 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1385, '0020086000', 860, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1386, '0020086001', 860, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (861, 'LEVURE IDEAL PAIN 125G*12*2', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1387, '0020086100', 861, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1388, '0020086101', 861, 'CARTON', 1, 2.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1389, '0020086102', 861, 'BOITE', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (862, 'LIPSTICK CHOCO FLAVOR', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1390, '0050086200', 862, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (863, 'Lollipop bonjour chocolate', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1391, '0080086300', 863, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1392, '0080086301', 863, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (864, 'Lollipop bonjour milk', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1393, '0080086400', 864, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1394, '0080086401', 864, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (865, 'Lollipop cefa big bonbon', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1395, '0080086500', 865, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1396, '0080086501', 865, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (866, 'LOLLIPOP FROSTY BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1397, '0080086600', 866, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1398, '0080086601', 866, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1399, '0080086602', 866, 'BOCAL', 2, 70.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (867, 'LOLLIPOP TIK TOK GUM STRAWBERRY 12G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1400, '0080086700', 867, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (868, 'lollipops hard candies fruit', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1401, '0020086800', 868, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (869, 'LOVE DROPS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1402, '0020086900', 869, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1403, '0020086901', 869, 'CARTON', 1, 12.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (870, 'Love heart pop', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1404, '0020087000', 870, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (871, 'LOVE POP SUCETTE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1405, '0050087100', 871, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1406, '0050087101', 871, 'CARTON', 1, 34.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (872, 'MABEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1407, '0020087200', 872, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1408, '0020087201', 872, 'CARTON', 1, 12.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (873, 'Macaraonie francia spirale', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1409, '0020087300', 873, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (874, 'MACARONI ROSSINI FUSILLI 5KG', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1410, '0230087400', 874, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (875, 'MACARONI ROSSINI SPIRAL 5KG', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1411, '0230087500', 875, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (876, 'MACARONIE BAREA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1412, '0020087600', 876, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (877, 'MACARONIE BELLA VITA FUSILI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1413, '0020087700', 877, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (878, 'MACARONIE BELLA VITA SPIRALE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1414, '0020087800', 878, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (879, 'Macaronie bella vita spirales 4kg', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1415, '0050087900', 879, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (880, 'MACARONIE BON PASTA ELBOW', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1416, '0050088000', 880, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (881, 'MACARONIE BON PASTA FUSILLI', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1417, '0050088100', 881, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (882, 'MACARONIE CHAMPION FUSILI 5KG', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1418, '0230088200', 882, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (883, 'MACARONIE CHAMPION SPIRALE 5KG', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1419, '0230088300', 883, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (884, 'MACARONIE FRANCIA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1420, '0020088400', 884, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1421, '0020088401', 884, 'CARTON', 1, 20.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (885, 'MACARONIE FRANCIA COQUILLETTES 500G*20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1422, '0020088500', 885, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (886, 'Macaronie francia tortie 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1423, '0020088600', 886, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (887, 'Macaronie francia vermicelle 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1424, '0020088700', 887, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (888, 'MACARONIE FUSILI @KAPOAKA', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1425, '0230088800', 888, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (889, 'Macaronie panzani fusilli 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1426, '0020088900', 889, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (890, 'MACARONIE PANZANI SPIRAL 500G', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1427, '0230089000', 890, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (891, 'MACARONIE PASTALINO 5K DOUBLE TWISTE', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1428, '0230089100', 891, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (892, 'MACARONIE PASTALINO 5K FUSILLI', 23, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1429, '0230089200', 892, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (893, 'MACARONIE ROSSINI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1430, '0020089300', 893, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (894, 'MACARONIE ROSSINI FUSIL 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1431, '0020089400', 894, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (895, 'MACARONIE ROSSINI SPIRAL 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1432, '0020089500', 895, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (896, 'MACARONIE SPIRALE @KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1433, '0020089600', 896, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (897, 'MAEVA E20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1434, '0020089700', 897, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1435, '0020089701', 897, 'CARTON', 1, 36.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (898, 'MAEVA E20 PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1436, '0240089800', 898, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (899, 'MAEVA M20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1437, '0020089900', 899, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (900, 'MAEVA M27', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1438, '0020090000', 900, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (901, 'MAIS DOUX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1439, '0020090100', 901, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (902, 'Mamangout cube boeuf', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1440, '0050090200', 902, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1441, '0050090201', 902, 'CARTON', 1, 2.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1442, '0050090202', 902, 'BOITE', 2, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (903, 'MAMANGOUT CUBE POULET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1443, '0020090300', 903, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1444, '0020090301', 903, 'CARTON', 1, 2.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1445, '0020090302', 903, 'BOITE', 2, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (904, 'MARGARINE JAD''OR 250G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1446, '0050090400', 904, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1447, '0050090401', 904, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (905, 'MARGARINE ULTRA 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1448, '0020090500', 905, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (906, 'MARKER DOLLAR NOIR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1449, '0020090600', 906, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1450, '0020090601', 906, 'BOITE', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (907, 'MARKER DOLLAR ROUGE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1451, '0020090700', 907, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1452, '0020090701', 907, 'BOITE', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (908, 'MARSHMALLOWS CHOCO SANDWICH 13G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1453, '0020090800', 908, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1454, '0020090801', 908, 'SACHET', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (909, 'MARSHMALLOWS COLORED SANDWICH 13G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1455, '0020090900', 909, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1456, '0020090901', 909, 'SACHET', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (910, 'MATEZA', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1457, '0030091000', 910, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1458, '0030091001', 910, 'PIECE', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1459, '0030091002', 910, 'CARTON', 2, 36.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1460, '0030091003', 910, 'CARTON', 3, 36.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (911, 'MATEZA M30 JAUNE', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1461, '0030091100', 911, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (912, 'MAXAM ALOE VERA 50G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1462, '0020091200', 912, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1463, '0020091201', 912, 'PAQUET', 1, 12.00, 3.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1464, '0020091202', 912, 'CARTON', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (913, 'MAXAM BLANCHEUR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1465, '0020091300', 913, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1466, '0020091301', 913, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (914, 'MAXAM CHARBON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1467, '0020091400', 914, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1468, '0020091401', 914, 'PAQUET', 1, 12.00, 3.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1469, '0020091402', 914, 'CARTON', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (915, 'MAXAM FLUOR 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1470, '0020091500', 915, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (916, 'MAXAM HERBAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1471, '0020091600', 916, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1472, '0020091601', 916, 'PACQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (917, 'MAXAM KELY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1473, '0020091700', 917, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1474, '0020091701', 917, 'PAQUET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (918, 'MAXAM MENTHE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1475, '0020091800', 918, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1476, '0020091801', 918, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (919, 'MAXAM MOUTHWASH 100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1477, '0020091900', 919, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1478, '0020091901', 919, 'PQT', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (920, 'MAXAM SOURIRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1479, '0020092000', 920, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1480, '0020092001', 920, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (921, 'MAXAM TRIPLE ACTION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1481, '0020092100', 921, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1482, '0020092101', 921, 'PACQUET', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1483, '0020092102', 921, 'CARTON', 2, 24.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (922, 'MAXAM VITAMIN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1484, '0020092200', 922, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1485, '0020092201', 922, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (923, 'MAXAM VITAMINE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1486, '0020092300', 923, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1487, '0020092301', 923, 'PAQUET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (924, 'MAYONNAISE LESIEUR 235G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1488, '0020092400', 924, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1489, '0020092401', 924, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (925, 'Mayonnaise lesieur 475g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1490, '0050092500', 925, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1491, '0050092501', 925, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (926, 'Mayonnaise lesieur 710g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1492, '0050092600', 926, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1493, '0050092601', 926, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (927, 'MEAVA M27 EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1494, '0240092700', 927, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (928, 'MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1495, '0020092800', 928, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1496, '0020092801', 928, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (929, 'MENA BOLO GOLDY PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1497, '0020092900', 929, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (930, 'MENA-BOLO GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1498, '0020093000', 930, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1499, '0020093001', 930, 'PACQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1500, '0020093002', 930, 'CARTON', 2, 8.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (931, 'Menabolo aloe vera family care 200g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1501, '0220093100', 931, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1502, '0220093101', 931, 'PAQUET', 1, 6.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1503, '0220093102', 931, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (932, 'Menabolo aloe vera family care 25g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1504, '0220093200', 932, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1505, '0220093201', 932, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (933, 'Menabolo aloe vera family care 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1506, '0220093300', 933, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1507, '0220093301', 933, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (934, 'MENABOLO AVOCAT ALOE VERA 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1508, '0220093400', 934, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1509, '0220093401', 934, 'PACQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (935, 'MENABOLO AVOCAT GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1510, '0220093500', 935, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1511, '0220093501', 935, 'PACQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1512, '0220093502', 935, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (936, 'Menabolo baby care formula 55g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1513, '0220093600', 936, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (937, 'MENABOLO BABY CARE GMMM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1514, '0220093700', 937, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1515, '0220093701', 937, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (938, 'MENABOLO BANANE 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1516, '0220093800', 938, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1517, '0220093801', 938, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (939, 'Menabolo banane 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1518, '0220093900', 939, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1519, '0220093901', 939, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (940, 'Menabolo baobab 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1520, '0220094000', 940, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (941, 'MENABOLO BEAUTY CARE ALOE VERA 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1521, '0220094100', 941, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1522, '0220094101', 941, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (942, 'MENABOLO BEAUTY CARE ALOE VERA 50G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1523, '0220094200', 942, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (943, 'Menabolo beauty care avocat 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1524, '0220094300', 943, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (944, 'MENABOLO BEAUTY CARE CAROTTE 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1525, '0220094400', 944, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1526, '0220094401', 944, 'PACQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1527, '0220094402', 944, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (945, 'Menabolo beauty care carotte 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1528, '0220094500', 945, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1529, '0220094501', 945, 'CARTON', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1530, '0220094502', 945, 'PAQUET', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (946, 'Menabolo beauty care jojoba 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1531, '0220094600', 946, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (947, 'MENABOLO BODY LUX 25G_', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1532, '0220094700', 947, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1533, '0220094701', 947, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (948, 'MENABOLO BODY LUX CHARMING 50G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1534, '0220094800', 948, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1535, '0220094801', 948, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (949, 'MENABOLO BODY LUX DESIRE 50G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1536, '0220094900', 949, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (950, 'MENABOLO BODY LUX SWAHIBA 50G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1537, '0220095000', 950, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1538, '0220095001', 950, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (951, 'Menabolo body lux_gm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1539, '0220095100', 951, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1540, '0220095101', 951, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (952, 'Menabolo body lux_pm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1541, '0220095200', 952, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1542, '0220095201', 952, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (953, 'MENABOLO BOSS 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1543, '0220095300', 953, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1544, '0220095301', 953, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (954, 'Menabolo boss 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1545, '0220095400', 954, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (955, 'Menabolo Boss gm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1546, '0220095500', 955, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (956, 'MENABOLO CAROTTE 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1547, '0220095600', 956, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1548, '0220095601', 956, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1549, '0220095602', 956, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (957, 'MENABOLO COCOA BUTTER 50G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1550, '0220095700', 957, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1551, '0220095701', 957, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (958, 'MENABOLO COCOA BUTTER GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1552, '0220095800', 958, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1553, '0220095801', 958, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (959, 'MENABOLO COCONUT GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1554, '0220095900', 959, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1555, '0220095901', 959, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (960, 'MENABOLO COCONUT PM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1556, '0220096000', 960, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (961, 'MENABOLO DAY TODAY CAROTTE 50G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1557, '0220096100', 961, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1558, '0220096101', 961, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (962, 'MENABOLO ELLA ALOEVERA 55G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1559, '0220096200', 962, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1560, '0220096201', 962, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (963, 'MENABOLO ELLA PM 55G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1561, '0220096300', 963, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1562, '0220096301', 963, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (964, 'MENABOLO GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1563, '0220096400', 964, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1564, '0220096401', 964, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (965, 'MENABOLO GOLDY KINANA FAREHITRA', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1565, '0220096500', 965, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1566, '0220096501', 965, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (966, 'MENABOLO GOLDY ORANGE AMANDES', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1567, '0220096600', 966, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1568, '0220096601', 966, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (967, 'MENABOLO GOLDY VERT JOJOBA', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1569, '0220096700', 967, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1570, '0220096701', 967, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (968, 'MENABOLO GOLDY VERT KARITE', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1571, '0220096800', 968, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1572, '0220096801', 968, 'PQT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (969, 'Menabolo madame 25g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1573, '0220096900', 969, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1574, '0220096901', 969, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (970, 'Menabolo madame desire 50g', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1575, '0220097000', 970, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1576, '0220097001', 970, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (971, 'MENABOLO MADAME GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1577, '0220097100', 971, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1578, '0220097101', 971, 'PAQUET', 1, 6.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1579, '0220097102', 971, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (972, 'MENABOLO MADAME GOLD 25G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1580, '0220097200', 972, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1581, '0220097201', 972, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (973, 'MENABOLO MADAME PM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1582, '0220097300', 973, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1583, '0220097301', 973, 'CARTON', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1584, '0220097302', 973, 'PAQUET', 2, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (974, 'MENABOLO MALIKLA PM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1585, '0220097400', 974, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1586, '0220097401', 974, 'CARTON', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (975, 'Menabolo moringa young gm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1587, '0220097500', 975, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1588, '0220097501', 975, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (976, 'MENABOLO PM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1589, '0220097600', 976, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1590, '0220097601', 976, 'PAQUET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (977, 'MENABOLO PODOA GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1591, '0220097700', 977, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1592, '0220097701', 977, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (978, 'MENABOLO PODOA PM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1593, '0220097800', 978, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1594, '0220097801', 978, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (979, 'MENABOLO SHEA BUTTER EN PIECE', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1595, '0220097900', 979, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (980, 'Menabolo shea butter gm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1596, '0220098000', 980, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (981, 'MENABOLO SHEA BUTTER PM 50G*12', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1597, '0220098100', 981, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1598, '0220098101', 981, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (982, 'MENABOLO SHEA COCOA GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1599, '0220098200', 982, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1600, '0220098201', 982, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1601, '0220098202', 982, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (983, 'MENABOLO SKALA GM 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1602, '0220098300', 983, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1603, '0220098301', 983, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1604, '0220098302', 983, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (984, 'MENABOLO SKALA HERBAL 60ML', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1605, '0220098400', 984, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1606, '0220098401', 984, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (985, 'Menabolo skala pm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1607, '0220098500', 985, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (986, 'MENABOLO STELLA 25G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1608, '0220098600', 986, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1609, '0220098601', 986, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (987, 'Menabolo stella gm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1610, '0220098700', 987, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1611, '0220098701', 987, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1612, '0220098702', 987, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (988, 'Menabolo stella pm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1613, '0220098800', 988, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1614, '0220098801', 988, 'CARTON', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1615, '0220098802', 988, 'PAQUET', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (989, 'Menabolo vao coco', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1616, '0220098900', 989, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1617, '0220098901', 989, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (990, 'MENABOLO VESTLIN PM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1618, '0220099000', 990, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (991, 'MENABOLO VESTLIN POMMADE 25G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1619, '0220099100', 991, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1620, '0220099101', 991, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (992, 'MENABOLO VESTLINE GARLIC GM 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1621, '0220099200', 992, 'PIECS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1622, '0220099201', 992, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1623, '0220099202', 992, 'CARTONT', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (993, 'MENABOLO VESTLINE GM', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1624, '0220099300', 993, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1625, '0220099301', 993, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (994, 'MENABOLO VESTLINE HAIR FOOD AVOCADO 240ML', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1626, '0220099400', 994, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1627, '0220099401', 994, 'PACQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (995, 'MENABOLO VESTLINE HAIRE POMMADE 60ML', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1628, '0220099500', 995, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1629, '0220099501', 995, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (996, 'Menabolo vestline pommade gm', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1630, '0220099600', 996, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1631, '0220099601', 996, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (997, 'MENABOLO VIOCARE GM 200G', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1632, '0220099700', 997, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1633, '0220099701', 997, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1634, '0220099702', 997, 'CARTON', 2, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (998, 'Menaka kinana papaye sara be', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1635, '0220099800', 998, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1636, '0220099801', 998, 'BALLE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1637, '0220099802', 998, 'PACQUET', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (999, 'Menaka kinana sara be', 22, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1638, '0220099900', 999, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1639, '0220099901', 999, 'BALLE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1640, '0220099902', 999, 'PACQUET', 2, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1000, 'MIKI BALLS KIDDIES BOCAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1641, '0020100000', 1000, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1001, 'MILANA POULET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1642, '0020100100', 1001, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1002, 'MILAY BE MINI BAR A FROMAGES 24PCS*10', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1643, '0020100200', 1002, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1003, 'MILAY BE ROULEAU DE COQUILLAGE 24PCS*20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1644, '0020100300', 1003, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1004, 'MILK _ STICK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1645, '0020100400', 1004, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1005, 'Milk Choco cube bocal', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1646, '0080100500', 1005, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1647, '0080100501', 1005, 'CARTON', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1648, '0080100502', 1005, 'BOCAL', 2, 200.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1006, 'MILK PASTE LIKME-LIKME', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1649, '0080100600', 1006, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1007, 'MILKI BALLS KIDDIES 420G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1650, '0080100700', 1007, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1008, 'Milky creamer monde 15g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1651, '0050100800', 1008, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1009, 'MIMI SNACKS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1652, '0020100900', 1009, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1010, 'MINI CHOCO', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1653, '0010101000', 1010, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1654, '0010101001', 1010, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1011, 'MINI CHOCO 16 CARE', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1655, '0010101100', 1011, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1656, '0010101101', 1011, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1012, 'Mini cracker cheese flavoured 227g', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1657, '0010101200', 1012, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1013, 'MINI CRACKER CHEESSE FLAVOURED TUB 227G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1658, '0010101300', 1013, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1014, 'Mini jelly stick', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1659, '0020101400', 1014, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1015, 'MINIONS JELLY SMALLONS FRUIT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1660, '0080101500', 1015, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1016, 'MIRA LIQUIDE VAISSELLE 750ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1661, '0020101600', 1016, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1662, '0020101601', 1016, 'CARTON', 1, 8.00, 6.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1017, 'Mira maika assorti 1/4l', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1663, '0030101700', 1017, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1664, '0030101701', 1017, 'PAQUET', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1018, 'MIRA MAX ULTRA DEGRAISSANT 1 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1665, '0020101800', 1018, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1666, '0020101801', 1018, 'CARTON', 1, 8.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1019, 'MIRA NETTOYANT WC 750ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1667, '0020101900', 1019, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1020, 'MIRA VAISSELLE 500 ML PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1668, '0020102000', 1020, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1669, '0020102001', 1020, 'CARTON', 1, 15.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1021, 'MIRA VAISSELLE MAIKA 0.25cl', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1670, '0020102100', 1021, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1671, '0020102101', 1021, 'CARTON', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1022, 'MISTER BOOM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1672, '0020102200', 1022, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1673, '0020102201', 1022, 'CARTON', 1, 16.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1023, 'MISTER BOOM ELASTICO', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1674, '0130102300', 1023, 'SHT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1675, '0130102301', 1023, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1024, 'Mix fruit kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1676, '0080102400', 1024, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1677, '0080102401', 1024, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1025, 'MIX FRUIT POP ROYALE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1678, '0080102500', 1025, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1679, '0080102501', 1025, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1026, 'MOLFIX 10X7 N°5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1680, '0020102600', 1026, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1027, 'MOLFIX CULOTTE MIDI 4 X31 PCES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1681, '0020102700', 1027, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1682, '0020102701', 1027, 'BALLE', 1, 4.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1028, 'MOLFIX CULOTTES TWIN MAXI 4x32 n°4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1683, '0020102800', 1028, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1684, '0020102801', 1028, 'BALLE', 1, 4.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1029, 'MOLFIX JUNIOR 10X17 N°5 B', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1685, '0020102900', 1029, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1686, '0020102901', 1029, 'PAQUET', 1, 7.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1030, 'MOLFIX JUNIOR 4X30 N°5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1687, '0020103000', 1030, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1688, '0020103001', 1030, 'BALLE', 1, 4.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1031, 'MOLFIX MIDI 10X9 N°3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1689, '0020103100', 1031, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1690, '0020103101', 1031, 'BALLE', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1032, 'MOLFIX PANTS CULOTTES MIDI 4X36 n°3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1691, '0020103200', 1032, 'PAQUET', 0, 1.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1692, '0020103201', 1032, 'BALLE', 1, 4.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1033, 'MOLFIX SMALL PANTS MAXI 8 X8 PCES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1693, '0020103300', 1033, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1694, '0020103301', 1033, 'BALLE', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1034, 'MOLPED', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1695, '0020103400', 1034, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1035, 'Mosquito anita citronel', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1696, '0070103500', 1035, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1697, '0070103501', 1035, 'BOITE', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1698, '0070103502', 1035, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1036, 'MOSQUITO ATTACK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1699, '0020103600', 1036, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1700, '0020103601', 1036, 'CARTON', 1, 60.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1037, 'MOSQUITO BIG TOX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1701, '0020103700', 1037, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1702, '0020103701', 1037, 'CARTON', 1, 60.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1038, 'MOSQUITO FRANCE STICK', 7, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1703, '0070103800', 1038, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1039, 'MOSQUITO FUMAKILA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1704, '0020103900', 1039, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1705, '0020103901', 1039, 'CARTON', 1, 60.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1040, 'MOUCHOIR A JETER BLANC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1706, '0020104000', 1040, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1041, 'MOUCHOIR A JETER FAMILIA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1707, '0020104100', 1041, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1042, 'MOUCHOIR TOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1708, '0020104200', 1042, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1043, 'NECT CHOCO CARAMEL POP EN SHT', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1709, '0080104300', 1043, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1044, 'Nect Yum yum orange 20*50pces', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1710, '0080104400', 1044, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1711, '0080104401', 1044, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1045, 'NESCAFE CLASSIC EN BOCAL 50G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1712, '0020104500', 1045, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1713, '0020104501', 1045, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1046, 'NESCAFE CLASSIC EN SACHET 1.5G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1714, '0020104600', 1046, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1715, '0020104601', 1046, 'PLAQUET', 1, 84.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1047, 'NESQUICK 420G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1716, '0050104700', 1047, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1048, 'NESQUIK 200G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1717, '0020104800', 1048, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1049, 'Nesquik 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1718, '0020104900', 1049, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1050, 'NET''OI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1719, '0020105000', 1050, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1720, '0020105001', 1050, 'PACQUET', 1, 10.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1051, 'Nickel gel WC 500ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1721, '0020105100', 1051, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1722, '0020105101', 1051, 'PAQUET', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1052, 'Nickel lave sol 1l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1723, '0020105200', 1052, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1724, '0020105201', 1052, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1053, 'NICKEL LAVE VITRES 750ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1725, '0020105300', 1053, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1726, '0020105301', 1053, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1054, 'NICKEL VAISSELLE 1l EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1727, '0020105400', 1054, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1055, 'Nickel Vaisselle 1L verte', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1728, '0020105500', 1055, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1729, '0020105501', 1055, 'PAQUET', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1056, 'NICKEL VAISSELLE 1L*12 JAUNE CITRON', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1730, '0030105600', 1056, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1731, '0030105601', 1056, 'PACQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1057, 'NICKEL VAISSELLE 500ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1732, '0020105700', 1057, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1733, '0020105701', 1057, 'PAQUET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1058, 'Nosy b', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1734, '0020105800', 1058, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1735, '0020105801', 1058, 'CARTON', 1, 27.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1059, 'NOSY B52 EN BARRE', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1736, '0100105900', 1059, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1737, '0100105901', 1059, 'CARTON', 1, 12.00, 12.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1060, 'NOSY CARRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1738, '0020106000', 1060, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1739, '0020106001', 1060, 'CARTON', 1, 24.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1061, 'NOSY CARRE P8P', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1740, '0020106100', 1061, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1741, '0020106101', 1061, 'CARTON', 1, 24.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1062, 'NOSY KELLY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1742, '0020106200', 1062, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1743, '0020106201', 1062, 'CARTON', 1, 72.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1063, 'NOSY MORCEAUX P3 18mx', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1744, '0020106300', 1063, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1745, '0020106301', 1063, 'CARTON', 1, 18.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1064, 'NOUILLE 1 ER CHOIX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1746, '0020106400', 1064, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1065, 'Nouille presto 60pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1747, '0020106500', 1065, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1066, 'Nouille wana 80g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1748, '0020106600', 1066, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1749, '0020106601', 1066, 'CARTON', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1067, 'NOUILLES 138', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1750, '0020106700', 1067, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1751, '0020106701', 1067, 'CARTON', 1, 24.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1068, 'Nouilles 2x sukse''s 115g en pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1752, '0020106800', 1068, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1753, '0020106801', 1068, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1069, 'NOUILLES 2X SUKSES''S 115G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1754, '0020106900', 1069, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1070, 'NOUILLES HAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1755, '0020107000', 1070, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1071, 'NOUILLES ILLICO 60pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1756, '0020107100', 1071, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1757, '0020107101', 1071, 'CARTON', 1, 60.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1072, 'NOUILLES PREMIER MILAY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1758, '0020107200', 1072, 'CARTON', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1759, '0020107201', 1072, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1073, 'NOUILLES PREMIER PRIX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1760, '0020107300', 1073, 'CARTON', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1761, '0020107301', 1073, 'PIECE', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1074, 'NOUILLES PRESTO EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1762, '0020107400', 1074, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1763, '0020107401', 1074, 'CARTON', 1, 60.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1075, 'NOUILLES SALONE MATSIRO 40pcs', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1764, '0020107500', 1075, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1765, '0020107501', 1075, 'CARTON', 1, 40.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1076, 'NOUILLES SALONE NAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1766, '0020107600', 1076, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1767, '0020107601', 1076, 'CARTON', 1, 40.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1077, 'NOUILLES SEDAAP KOREAN CHICKEN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1768, '0020107700', 1077, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1769, '0020107701', 1077, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1078, 'NOUILLES SEDAAP SUPREME', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1770, '0020107800', 1078, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1771, '0020107801', 1078, 'CARTON', 1, 40.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1079, 'NOUILLES SEDAAP SUPREME EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1772, '0020107900', 1079, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1773, '0020107901', 1079, 'CARTON', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1080, 'NURSE 1-400G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1774, '0020108000', 1080, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1775, '0020108001', 1080, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1081, 'Nurse 2 - 400g', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1776, '0050108100', 1081, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1777, '0050108101', 1081, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1082, 'NYRA BUTTER MAX CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1778, '0080108200', 1082, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1083, 'NYRA CHOCO CUBE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1779, '0080108300', 1083, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1084, 'NYRA CHOCOLLAT VELVET TRUFFLES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1780, '0020108400', 1084, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1085, 'NYRA COCONUT CUBE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1781, '0080108500', 1085, 'BCL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1086, 'NYRA ELRO CHOCO 12BTE FISAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1782, '0020108600', 1086, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1087, 'NYRA ELRO MILK 24BOCAL MITSANGANA', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1783, '0080108700', 1087, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1088, 'NYRA ELRO PM CHOCO 24BOCAL MITSANGANA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1784, '0020108800', 1088, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1089, 'NYRA F BON FROOTY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1785, '0080108900', 1089, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1090, 'NYRA FRUIT BURST ASS 12*200PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1786, '0020109000', 1090, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1091, 'NYRA ROYALE CREME CANDY 12 JAR', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1787, '0080109100', 1091, 'BCL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1092, 'NYRA SWISSLAND 125PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1788, '0080109200', 1092, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1093, 'NYRA TOFFILO 100P*20', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1789, '0080109300', 1093, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1094, 'NYRA VALENTINE 150PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1790, '0080109400', 1094, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1095, 'NYRA YOGI YOGI 50P', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1791, '0080109500', 1095, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1096, 'OK FOOTBALL CHOCOLATE*100 PCS', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1792, '0050109600', 1096, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1097, 'OK ICE SWEET 30PQT', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1793, '0050109700', 1097, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1098, 'OXYDE DE FER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1794, '0020109800', 1098, 'KG', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1099, 'PAIL CANDY', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1795, '0080109900', 1099, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1100, 'PAILLE DE FER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1796, '0020110000', 1100, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1797, '0020110001', 1100, 'PACQUET', 1, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1101, 'PAMPERS N°3 CULOTTE MIDI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1798, '0020110100', 1101, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1102, 'PAMPERS N°4 (4X32)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1799, '0020110200', 1102, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1103, 'PAPIER DOLPHIN A4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1800, '0020110300', 1103, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1801, '0020110301', 1103, 'CARTON', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1104, 'PAPIER IK COPY A4', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1802, '0020110400', 1104, 'RAM', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1803, '0020110401', 1104, 'CARTON', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1105, 'PAPIER VELIN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1804, '0020110500', 1105, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1805, '0020110501', 1105, 'CARTON', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1106, 'PARFUM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1806, '0020110600', 1106, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1807, '0020110601', 1106, 'PACQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1107, 'Parfum Vanille', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1808, '0020110700', 1107, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1809, '0020110701', 1107, 'PAQUET', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1108, 'PARFUNE COCONUT FORTUNE 28ML', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1810, '0050110800', 1108, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1811, '0050110801', 1108, 'PQT', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1109, 'PATAPON BLEU COUCHE I9 (9-18KG)', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1812, '0120110900', 1109, 'PQT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1813, '0120110901', 1109, 'BAL', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1110, 'PATAPON GM', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1814, '0120111000', 1110, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1815, '0120111001', 1110, 'BALLE', 1, 8.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1111, 'PATAPON MAXI L28 9-18KG', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1816, '0120111100', 1111, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1817, '0120111101', 1111, 'BALLE', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1112, 'PATAPON MIDI M30 1-11KG', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1818, '0120111200', 1112, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1819, '0120111201', 1112, 'BALLE', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1113, 'PATAPON NEW BORN*22 (2-5KG)', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1820, '0120111300', 1113, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1821, '0120111301', 1113, 'BALL', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1114, 'PATAPON PM', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1822, '0120111400', 1114, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1115, 'pate APOLLO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1823, '0020111500', 1115, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1116, 'Pate egg noodle 400g red river', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1824, '0050111600', 1116, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1117, 'Pate nouille aux oeufs 250g 1ere choix', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1825, '0050111700', 1117, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1118, 'PDR JUS POP DRINK FRAISE ORANGE VIMTO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1826, '0020111800', 1118, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1119, 'PE ICE CREAM MAMA TIK TOK POP 100P *12AG', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1827, '0080111900', 1119, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1120, 'PECTO BE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1828, '0020112000', 1120, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1829, '0020112001', 1120, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1121, 'PECTO PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1830, '0020112100', 1121, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1831, '0020112101', 1121, 'SACHET', 1, 50.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1832, '0020112102', 1121, 'SAC', 2, 80.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1122, 'PEN FINGER HARD CANDY 3G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1833, '0080112200', 1122, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1123, 'PERFIT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1834, '0020112300', 1123, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1835, '0020112301', 1123, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1124, 'PETROL 240 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1836, '0020112400', 1124, 'LITRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1837, '0020112401', 1124, 'TONNEL', 1, 240.00, 200.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1125, 'PETROLE 250l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1838, '0020112500', 1125, 'LITRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1839, '0020112501', 1125, 'TONNELET', 1, 250.00, 250.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1126, 'Pile champion r6*25', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1840, '0020112600', 1126, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1841, '0020112601', 1126, 'CARTON', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1127, 'PILE DURATEC R20', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1842, '0170112700', 1127, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1128, 'PILE DURATEC R6', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1843, '0170112800', 1128, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1129, 'PILE ENERGY GM', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1844, '0170112900', 1129, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1845, '0170112901', 1129, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1130, 'Pile energy pm', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1846, '0170113000', 1130, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1847, '0170113001', 1130, 'CARTON', 1, 25.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1131, 'PISTASY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1848, '0020113100', 1131, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1849, '0020113101', 1131, 'SAC', 1, 220.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1132, 'PISTASY AVARATRA 200 KAPOAKA', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1850, '0050113200', 1132, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1851, '0050113201', 1132, 'SAC', 1, 200.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1133, 'PISTASY EN KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1852, '0020113300', 1133, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1134, 'PISTASY MENA 25KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1853, '0020113400', 1134, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1135, 'PISTASY MENA KELY 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1854, '0020113500', 1135, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1136, 'PISTASY VAOVAO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1855, '0020113600', 1136, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1137, 'PIZZA JELLY STRAWBERRY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1856, '0020113700', 1137, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1857, '0020113701', 1137, 'BOITE', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1138, 'POINTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1858, '0020113800', 1138, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1859, '0020113801', 1138, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1860, '0020113802', 1138, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1139, 'POINTE 100X20 en kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1861, '0020113900', 1139, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1862, '0020113901', 1139, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1863, '0020113902', 1139, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1140, 'POINTE 100X21 en kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1864, '0020114000', 1140, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1865, '0020114001', 1140, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1866, '0020114002', 1140, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1141, 'POINTE 120X21 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1867, '0020114100', 1141, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1868, '0020114101', 1141, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1869, '0020114102', 1141, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1142, 'POINTE 30X13 de 20kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1870, '0020114200', 1142, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1871, '0020114201', 1142, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1872, '0020114202', 1142, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1143, 'POINTE 40X14 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1873, '0020114300', 1143, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1874, '0020114301', 1143, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1875, '0020114302', 1143, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1144, 'POINTE 50X16 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1876, '0020114400', 1144, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1877, '0020114401', 1144, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1878, '0020114402', 1144, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1145, 'POINTE 50X18 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1879, '0020114500', 1145, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1880, '0020114501', 1145, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1881, '0020114502', 1145, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1146, 'POINTE 60X17 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1882, '0020114600', 1146, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1883, '0020114601', 1146, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1884, '0020114602', 1146, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1147, 'POINTE 60X20 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1885, '0020114700', 1147, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1886, '0020114701', 1147, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1887, '0020114702', 1147, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1148, 'POINTE 70X18 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1888, '0020114800', 1148, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1889, '0020114801', 1148, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1890, '0020114802', 1148, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1149, 'POINTE 80X19 EN KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1891, '0020114900', 1149, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1892, '0020114901', 1149, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1893, '0020114902', 1149, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1150, 'Pointe 90x20 en kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1894, '0020115000', 1150, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1895, '0020115001', 1150, 'CARTON', 1, 4.00, 20.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1896, '0020115002', 1150, 'BOITE', 2, 5.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1151, 'POINTE A TOLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1897, '0020115100', 1151, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1898, '0020115101', 1151, 'CARTON', 1, 20.00, 20.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1152, 'POIVRE DOYPACK EN SACHET 30G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1899, '0020115200', 1152, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1900, '0020115201', 1152, 'SACHET', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1153, 'POIVRE ETUI 30G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1901, '0020115300', 1153, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1902, '0020115301', 1153, 'BALLE', 1, 10.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1903, '0020115302', 1153, 'PACQUET', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1154, 'Poivre moulu doypack sachet 30g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1904, '0020115400', 1154, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1155, 'POT YAOURT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1905, '0020115500', 1155, 'PAQUET', 0, 1.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1156, 'POT YAOURT H (couleur)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1906, '0020115600', 1156, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1157, 'POT YAOURT MADA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1907, '0020115700', 1157, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1158, 'Potata 15g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1908, '0020115800', 1158, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1909, '0020115801', 1158, 'BOITE', 1, 5.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1910, '0020115802', 1158, 'PAQUET', 2, 10.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1159, 'POTATA 15GG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1911, '0020115900', 1159, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1912, '0020115901', 1159, 'BOITE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1160, 'POTATA 80g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1913, '0020116000', 1160, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1161, 'Potata 80g*48', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1914, '0020116100', 1161, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1915, '0020116101', 1161, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1162, 'POTATA BAR-B-QUE 75G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1916, '0010116200', 1162, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1917, '0010116201', 1162, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1163, 'Potata onion 75G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1918, '0010116300', 1163, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1919, '0010116301', 1163, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1164, 'Potata spicy 100g*48', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1920, '0020116400', 1164, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1921, '0020116401', 1164, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1165, 'POTATO CHIPZ PIZZA ADORO 75G', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1922, '0010116500', 1165, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1923, '0010116501', 1165, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1166, 'poudre ronono 1/2 KG EN SACHET [lactimilk]', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1924, '0050116600', 1166, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1167, 'POUDRE SAVON ARIEL FLORAL 500G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1925, '0190116700', 1167, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1168, 'POUDRE SAVON ARIEL LAVENDER 500G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1926, '0190116800', 1168, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1169, 'POUDRE SAVON ARIEL SPRING 500G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1927, '0190116900', 1169, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1170, 'poudre savon B29 30gr', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1928, '0190117000', 1170, 'SAC', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1171, 'POUDRE SAVON BERYL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1929, '0020117100', 1171, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1930, '0020117101', 1171, 'CARTON', 1, 150.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1172, 'POUDRE SAVON SPECIAL BLEU', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1931, '0190117200', 1172, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1173, 'POUDRE VAO LEMON VERT 30G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1932, '0190117300', 1173, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1174, 'Poudre Vao line BLEU ORIGINAL 30g', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1933, '0190117400', 1174, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1175, 'POUDRE VAO LINE ORANGE EXOTIQUE 30G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1934, '0190117500', 1175, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1176, 'POUDRE VAO LINE ROSE FLORAL 30G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1935, '0190117600', 1176, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1177, 'POUDRE VAO LINE VIOLET LAVANDE 30G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1936, '0190117700', 1177, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1178, 'PRINCE FOURRE 130G*20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1937, '0020117800', 1178, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1938, '0020117801', 1178, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1179, 'PRINCE FOURRE VANILLE 130G*20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1939, '0020117900', 1179, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1940, '0020117901', 1179, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1180, 'PRINCE POCHON 60G*35', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1941, '0020118000', 1180, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1942, '0020118001', 1180, 'CARTON', 1, 35.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1181, 'PRINCESS *18X30', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1943, '0080118100', 1181, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1944, '0080118101', 1181, 'CARTON', 1, 18.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1945, '0080118102', 1181, 'SACHET', 2, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1182, 'PROBO(KATSAKA NOTOTONA)', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1946, '0050118200', 1182, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1183, 'Provende chaire demarrage ld en kg', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1947, '0250118300', 1183, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1948, '0250118301', 1183, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1184, 'Provende chaire finition ld en kg', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1949, '0250118400', 1184, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1950, '0250118401', 1184, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1185, 'PROVENDE CROISSANCE POISSON INTENSIF', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1951, '0250118500', 1185, 'KILOS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1186, 'PROVENDE CROISSANCE POISSON INTENSIF 25KG', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1952, '0250118600', 1186, 'EN KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1953, '0250118601', 1186, 'SAC', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1187, 'Provende fermier demarrage', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1954, '0250118700', 1187, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1955, '0250118701', 1187, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1188, 'Provende fermier finition', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1956, '0250118800', 1188, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1957, '0250118801', 1188, 'SAC', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1189, 'PROVENDE POISSON DEMARRAGE INTENSIF', 25, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1958, '0250118900', 1189, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1959, '0250118901', 1189, 'SAC', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1190, 'PUB G GUN BOCAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1960, '0020119000', 1190, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1961, '0020119001', 1190, 'BOCAL', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1191, 'PUR''O IMPEC 150ML', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1962, '0030119100', 1191, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1192, 'PURE GOLD KHAZANA', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1963, '0080119200', 1192, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1964, '0080119201', 1192, 'CARTON', 1, 18.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1965, '0080119202', 1192, 'SACHET', 2, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1193, 'RAJSI FRUBON ROLL EN BOCAL 200PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1966, '0080119300', 1193, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1194, 'RAJSI KULFI MILK 200PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1967, '0080119400', 1194, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1195, 'RAJSI STRAWBERRY ROLL 200PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1968, '0080119500', 1195, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1196, 'RAJSI SUPER STAR CARAMEL 200PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1969, '0080119600', 1196, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1197, 'RAJSI TRUFFLES COCO 100PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1970, '0080119700', 1197, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1198, 'RAJSI TRUFFLES MILK 100PCS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1971, '0080119800', 1198, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1199, 'RAMBO CHOCOLATE 5G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1972, '0020119900', 1199, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1200, 'RANO VISY', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1973, '0050120000', 1200, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1974, '0050120001', 1200, 'PAQUET', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1201, 'RANO VISY |', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1975, '0020120100', 1201, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1976, '0020120101', 1201, 'PAQUET', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1202, 'RASOIR BIC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1977, '0020120200', 1202, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1978, '0020120201', 1202, 'CARTON', 1, 100.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1203, 'Rasoir dorco double', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1979, '0020120300', 1203, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1980, '0020120301', 1203, 'BOITE', 1, 8.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1981, '0020120302', 1203, 'PAQUET', 2, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1982, '0020120303', 1203, 'CARTON', 3, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1204, 'RASOIR DORCO EN PQT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1983, '0020120400', 1204, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1205, 'RASOIR DORCO SIMPLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1984, '0020120500', 1205, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1985, '0020120501', 1205, 'CARTON', 1, 18.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1206, 'RASOIR DORCO SIMPLE EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1986, '0020120600', 1206, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1207, 'RASOIR SUPER MAX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1987, '0020120700', 1207, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1988, '0020120701', 1207, 'CARTON', 1, 120.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1208, 'RASOIRDORCODOUBLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1989, '0020120800', 1208, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1990, '0020120801', 1208, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1209, 'REAL CREAM BISCUITS MERCI', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1991, '0010120900', 1209, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1992, '0010120901', 1209, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1210, 'RICH BITE PREMIUM BOCALE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1993, '0020121000', 1210, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1994, '0020121001', 1210, 'BOCAL', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1211, 'Ringos', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1995, '0020121100', 1211, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1212, 'ROBIN', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1996, '0020121200', 1212, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1997, '0020121201', 1212, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1213, 'Ronono barea gm', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1998, '0260121300', 1213, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (1999, '0260121301', 1213, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1214, 'RONONO BAREA PM', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2000, '0260121400', 1214, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2001, '0260121401', 1214, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1215, 'RONONO CAPITAL GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2002, '0020121500', 1215, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2003, '0020121501', 1215, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1216, 'RONONO CEBON GM', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2004, '0260121600', 1216, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2005, '0260121601', 1216, 'CARTON', 1, 24.00, 24.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1217, 'ronono cebon pm', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2006, '0260121700', 1217, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2007, '0260121701', 1217, 'CARTON', 1, 48.00, 19.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1218, 'RONONO CHAMPION PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2008, '0020121800', 1218, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2009, '0020121801', 1218, 'CARTON', 1, 48.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1219, 'RONONO DYANAS PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2010, '0020121900', 1219, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2011, '0020121901', 1219, 'CARTON', 1, 48.00, 19.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1220, 'RONONO ELVIA GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2012, '0020122000', 1220, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2013, '0020122001', 1220, 'CARTON', 1, 24.00, 24.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1221, 'RONONO ELVIA PM', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2014, '0260122100', 1221, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2015, '0260122101', 1221, 'CARTON', 1, 48.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1222, 'RONONO EVITA EN BOITE PM', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2016, '0260122200', 1222, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2017, '0260122201', 1222, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1223, 'RONONO GENIE GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2018, '0020122300', 1223, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2019, '0020122301', 1223, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1224, 'RONONO LUCKY COW PM', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2020, '0260122400', 1224, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2021, '0260122401', 1224, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1225, 'RONONO MAMA GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2022, '0020122500', 1225, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2023, '0020122501', 1225, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1226, 'RONONO MAMA PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2024, '0020122600', 1226, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2025, '0020122601', 1226, 'CARTON', 1, 48.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1227, 'RONONO POUDRE FONTERA 1/2KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2026, '0020122700', 1227, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1228, 'RONONO PPM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2027, '0020122800', 1228, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2028, '0020122801', 1228, 'CARTON', 1, 48.00, 17.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1229, 'Ronono shasa gm', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2029, '0260122900', 1229, 'BTE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2030, '0260122901', 1229, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1230, 'Ronono Socolait pm', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2031, '0050123000', 1230, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2032, '0050123001', 1230, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1231, 'RONONO TOPLE PM', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2033, '0260123100', 1231, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2034, '0260123101', 1231, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1232, 'Ronono white gold pm', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2035, '0260123200', 1232, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2036, '0260123201', 1232, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1233, 'RONONO YAMA GM 1KG*24', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2037, '0260123300', 1233, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2038, '0260123301', 1233, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1234, 'RONONO YAMA PM 390G', 26, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2039, '0260123400', 1234, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2040, '0260123401', 1234, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1235, 'RONONOELVIA', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2041, '0050123500', 1235, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2042, '0050123501', 1235, 'CARTON', 1, 48.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1236, 'RONONOELVIAPM', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2043, '0050123600', 1236, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2044, '0050123601', 1236, 'CARTON', 1, 48.00, 19.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1237, 'Saba bleu 25g', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2045, '0190123700', 1237, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1238, 'SABA CITRON 25G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2046, '0190123800', 1238, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1239, 'SABA FLORAL 25G', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2047, '0190123900', 1239, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1240, 'Sac vide 1,20m', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2048, '0020124000', 1240, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1241, 'Sac vide 1,40m', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2049, '0020124100', 1241, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1242, 'SAC VIDE GM 250 kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2050, '0020124200', 1242, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1243, 'Sac vide gm Matoa 250kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2051, '0020124300', 1243, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1244, 'SAC VIDE PM 60 KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2052, '0020124400', 1244, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1245, 'SACHET BEST PRICE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2053, '0020124500', 1245, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2054, '0020124501', 1245, 'BALLE', 1, 10.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2055, '0020124502', 1245, 'PAQUET', 2, 50.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1246, 'SACHET BEST PRICE GM 80CM*500', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2056, '0020124600', 1246, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2057, '0020124601', 1246, 'PQT', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1247, 'SACHET HIPPER LE MAGINFIQUE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2058, '0020124700', 1247, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2059, '0020124701', 1247, 'PAQUET', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1248, 'Sachet moyenne', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2060, '0020124800', 1248, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2061, '0020124801', 1248, 'PAQUET', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1249, 'SACHET OISEAU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2062, '0020124900', 1249, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1250, 'SACHET PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2063, '0020125000', 1250, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1251, 'Sachet pm couleur', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2064, '0020125100', 1251, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1252, 'Sachet pm f49', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2065, '0020125200', 1252, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1253, 'SACHET PM H20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2066, '0020125300', 1253, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1254, 'Sachet pm noire hd20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2067, '0020125400', 1254, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1255, 'Sachet pm trasparent hd15', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2068, '0020125500', 1255, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1256, 'Sachet rose mm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2069, '0020125600', 1256, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2070, '0020125601', 1256, 'PAQUET', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1257, 'SACHET SOUS VIDE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2071, '0020125700', 1257, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2072, '0020125701', 1257, 'PACQUET', 1, 50.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1258, 'SACHET TAVARATRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2073, '0020125800', 1258, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2074, '0020125801', 1258, 'PAQUET', 1, 50.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1259, 'Sachet vorombola gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2075, '0020125900', 1259, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2076, '0020125901', 1259, 'PAQUET', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1260, 'SAF INSTANT 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2077, '0020126000', 1260, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1261, 'Saf instant rouge 11g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2078, '0020126100', 1261, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2079, '0020126101', 1261, 'CARTON', 1, 15.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2080, '0020126102', 1261, 'PAQUET', 2, 180.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1262, 'SALONE CAFE 20G*30PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2081, '0020126200', 1262, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2082, '0020126201', 1262, 'SAC', 1, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2083, '0020126202', 1262, 'PAQUET', 2, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1263, 'SALONE CAFE 30G*20PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2084, '0020126300', 1263, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2085, '0020126301', 1263, 'PAQUET', 1, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2086, '0020126302', 1263, 'SAC', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1264, 'SALTO CHIPS 3D', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2087, '0020126400', 1264, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1265, 'SALTO CHIPS 3D EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2088, '0020126500', 1265, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1266, 'SALTO CHIPS CHILI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2089, '0020126600', 1266, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2090, '0020126601', 1266, 'SACHET', 1, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1267, 'SALTO GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2091, '0010126700', 1267, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2092, '0010126701', 1267, 'CARTON', 1, 7.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2093, '0010126702', 1267, 'SACHET', 2, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1268, 'Samba barre 12mx 500g en pcs', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2094, '0030126800', 1268, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1269, 'Samba barre 9mx 800g en pcs', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2095, '0030126900', 1269, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1270, 'SAMBA DETERGEANT EN POUDRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2096, '0020127000', 1270, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1271, 'SAMBA DETERGEANT EN POUDRE EN (PCS)', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2097, '0190127100', 1271, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1272, 'SAMPOING MARIA ASS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2098, '0020127200', 1272, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1273, 'SARDINE ANNY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2099, '0020127300', 1273, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2100, '0020127301', 1273, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1274, 'SARDINE BON APPETIT 125G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2101, '0050127400', 1274, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2102, '0050127401', 1274, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1275, 'Sardine cebon 125gx50', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2103, '0020127500', 1275, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2104, '0020127501', 1275, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1276, 'SARDINE CHAMPION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2105, '0020127600', 1276, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2106, '0020127601', 1276, 'CARTON', 1, 50.00, 6.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1277, 'SARDINE DELMONACO', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2107, '0050127700', 1277, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2108, '0050127701', 1277, 'CARTON', 1, 50.00, 13.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1278, 'SARDINE ISHA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2109, '0020127800', 1278, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2110, '0020127801', 1278, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1279, 'SARDINE MONICA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2111, '0020127900', 1279, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2112, '0020127901', 1279, 'CARTON', 1, 50.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1280, 'Sardine vivo 125gx25', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2113, '0020128000', 1280, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2114, '0020128001', 1280, 'CARTON', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1281, 'SAUCE CHILLI BON APPETIT 280G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2115, '0020128100', 1281, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1282, 'SAUCE DARK 150 ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2116, '0020128200', 1282, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2117, '0020128201', 1282, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1283, 'SAUCE DARK 625 ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2118, '0020128300', 1283, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2119, '0020128301', 1283, 'CARTON', 1, 12.00, 12.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1284, 'Sauce dark superieure pet 400ml', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2120, '0050128400', 1284, 'BOUTEILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1285, 'SAUCE HUITRE 160G 1ER CHOIX', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2121, '0020128500', 1285, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1286, 'SAUCE HUITRE 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2122, '0020128600', 1286, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2123, '0020128601', 1286, 'CARTON', 1, 15.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1287, 'SAUCE HUITRE 710g GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2124, '0020128700', 1287, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2125, '0020128701', 1287, 'CARTON', 1, 12.00, 9.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1288, 'SAUCE HUITRE PM 280G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2126, '0020128800', 1288, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2127, '0020128801', 1288, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1289, 'SAUCE JERICANE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2128, '0020128900', 1289, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1290, 'Sauce jerycan dark pm', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2129, '0050129000', 1290, 'JERYCAN', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1291, 'Sauce jerycan light pm', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2130, '0050129100', 1291, 'JERYCAN', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1292, 'SAUCE LIGHT 150ml PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2131, '0020129200', 1292, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2132, '0020129201', 1292, 'CARTON', 1, 24.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1293, 'SAUCE LIGHT GM 625 ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2133, '0020129300', 1293, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2134, '0020129301', 1293, 'CARTON', 1, 12.00, 12.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1294, 'SAUCE PLASTIQUE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2135, '0020129400', 1294, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1295, 'Sauce soja 0.25 l', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2136, '0050129500', 1295, 'BOUTEIL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2137, '0050129501', 1295, 'PAQUET', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1296, 'Sauce soja 1L', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2138, '0050129600', 1296, 'BOUTEIL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2139, '0050129601', 1296, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1297, 'SAVEN GARBATHI AG MIRACLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2140, '0020129700', 1297, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2141, '0020129701', 1297, 'BOITE', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2142, '0020129702', 1297, 'CARTON', 2, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1298, 'SAVOKA TARATRA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2143, '0020129800', 1298, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1299, 'SAVON B29 MULTI USAGE 96X150G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2144, '0020129900', 1299, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2145, '0020129901', 1299, 'CARTON', 1, 96.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1300, 'Savon barre parfume citron*9', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2146, '0030130000', 1300, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2147, '0030130001', 1300, 'CARTON', 1, 9.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1301, 'SAVON BARRE PRIMO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2148, '0020130100', 1301, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2149, '0020130101', 1301, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1302, 'SAVON BARRE RUBIS CITRON 800G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2150, '0020130200', 1302, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2151, '0020130201', 1302, 'CARTON', 1, 16.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1303, 'SAVON BARRE VAO LEMON 800G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2152, '0030130300', 1303, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2153, '0030130301', 1303, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1304, 'SAVON CHARBON ANTISEPTIC 90G*72', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2154, '0030130400', 1304, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2155, '0030130401', 1304, 'CARTONT', 1, 72.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1305, 'SAVON CITRON FRAIS 200GR', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2156, '0030130500', 1305, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2157, '0030130501', 1305, 'CARTON', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1306, 'SAVON CITRON MULTI SUPER NATIONNAL', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2158, '0100130600', 1306, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2159, '0100130601', 1306, 'CARTON', 1, 16.00, 13.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1307, 'Savon citron plus king', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2160, '0030130700', 1307, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2161, '0030130701', 1307, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1308, 'SAVON CROWN BLANC MILK', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2162, '0030130800', 1308, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1309, 'SAVON CROWN CITRON VERT PASTEL', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2163, '0030130900', 1309, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1310, 'SAVON CROWN ROUGE (RED)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2164, '0020131000', 1310, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1311, 'SAVON DURU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2165, '0020131100', 1311, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2166, '0020131101', 1311, 'CARTON', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1312, 'SAVON DURU ALOE VERA 150G*30', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2167, '0030131200', 1312, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2168, '0030131201', 1312, 'CARTON', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1313, 'SAVON DURU GLYCERINE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2169, '0020131300', 1313, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2170, '0020131301', 1313, 'CARTON', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1314, 'SAVON DURU ROSE OIL 150G*30', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2171, '0030131400', 1314, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2172, '0030131401', 1314, 'CARTON', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1315, 'Savon Ekono multi purpose soap', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2173, '0030131500', 1315, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2174, '0030131501', 1315, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1316, 'SAVON EN PCS GM', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2175, '0030131600', 1316, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1317, 'SAVON EN PCS PM', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2176, '0240131700', 1317, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1318, 'SAVON EXTRA MARRON 65G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2177, '0020131800', 1318, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1319, 'SAVON FLOR BARRE 900g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2178, '0020131900', 1319, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2179, '0020131901', 1319, 'CARTON', 1, 10.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1320, 'Savon flor barre 900g en Pieces', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2180, '0030132000', 1320, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1321, 'Savon flor*100', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2181, '0020132100', 1321, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2182, '0020132101', 1321, 'CARTON', 1, 100.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1322, 'SAVON FRESH 75G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2183, '0020132200', 1322, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1323, 'SAVON HOTEL DEJOI 15G*500PCS', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2184, '0030132300', 1323, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2185, '0030132301', 1323, 'CARTON', 1, 500.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1324, 'SAVON HOTEL14G VERT', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2186, '0030132400', 1324, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2187, '0030132401', 1324, 'SACHET', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1325, 'SAVON IRIKO ANDRAMENA XG 24MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2188, '0030132500', 1325, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1326, 'SAVON IRIKO FOTSY MM 24MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2189, '0030132600', 1326, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1327, 'SAVON IRIKO MENAKELY XG 24MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2190, '0030132700', 1327, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1328, 'SAVON IRIKO MM TANTELY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2191, '0020132800', 1328, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1329, 'SAVON IRIKO TANTELY XG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2192, '0020132900', 1329, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1330, 'SAVON KANTO K12 VAOVAO', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2193, '0030133000', 1330, 'CARTON', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1331, 'SAVON KIMSA', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2194, '0100133100', 1331, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2195, '0100133101', 1331, 'CARTON', 1, 20.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1332, 'SAVON MAEVA 3 BLANC EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2196, '0240133200', 1332, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1333, 'SAVON MAEVA MAXI BARRE 9', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2197, '0020133300', 1333, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2198, '0020133301', 1333, 'CARTON', 1, 9.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1334, 'SAVON MAEVA P10 BLANC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2199, '0020133400', 1334, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1335, 'SAVON MAEVA P10 BLANC EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2200, '0240133500', 1335, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1336, 'SAVON MAEVA P10 MARRON*36', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2201, '0030133600', 1336, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1337, 'SAVON MAEVA P20 BLANC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2202, '0020133700', 1337, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1338, 'SAVON MAEVA P20 BLANCS EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2203, '0240133800', 1338, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1339, 'Savon maeva p20 marron', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2204, '0020133900', 1339, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1340, 'SAVON MAEVA R50', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2205, '0030134000', 1340, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1341, 'SAVON MATEZA M30 JAUNE EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2206, '0240134100', 1341, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1342, 'SAVON MATEZA M30 MARRON', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2207, '0030134200', 1342, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2208, '0030134201', 1342, 'CARTON', 1, 36.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1343, 'SAVON MATEZA M30+ BLANC', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2209, '0030134300', 1343, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1344, 'SAVON MATEZA M30+ BLANC EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2210, '0240134400', 1344, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1345, 'Savon Meva 100 soa 24mx', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2211, '0030134500', 1345, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1346, 'Savon Meva 200 soa 36mx', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2212, '0030134600', 1346, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1347, 'Savon Meva 300 soa 36mx', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2213, '0030134700', 1347, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1348, 'Savon Meva 400 soa 36mx', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2214, '0030134800', 1348, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1349, 'Savon Meva 500 soa 36mx', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2215, '0030134900', 1349, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1350, 'Savon meva mmV75 tsara', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2216, '0030135000', 1350, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1351, 'Savon meva mv40 soa', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2217, '0030135100', 1351, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1352, 'Savon meva mv70 soa', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2218, '0030135200', 1352, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1353, 'SAVON MOREVA BLANC 4*100G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2219, '0030135300', 1353, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1354, 'SAVON MOREVA ROSE 4*100G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2220, '0030135400', 1354, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1355, 'SAVON MOREVA VERT 4*100G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2221, '0030135500', 1355, 'PACQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1356, 'SAVON NOSY P1 80gr 36mx', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2222, '0020135600', 1356, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2223, '0020135601', 1356, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1357, 'Savon olive classic touch 70G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2224, '0030135700', 1357, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2225, '0030135701', 1357, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2226, '0030135702', 1357, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1358, 'Savon olive lime fresh 125g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2227, '0020135800', 1358, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2228, '0020135801', 1358, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2229, '0020135802', 1358, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1359, 'Savon olive milk delight 70G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2230, '0030135900', 1359, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2231, '0030135901', 1359, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2232, '0030135902', 1359, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1360, 'SAVON RIM 27', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2233, '0030136000', 1360, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1361, 'SAVON RIM 29', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2234, '0030136100', 1361, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1362, 'SAVON RIM M3', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2235, '0030136200', 1362, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1363, 'SAVON RIM M5', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2236, '0020136300', 1363, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1364, 'Savon ruhi 60g*72pcs', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2237, '0030136400', 1364, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2238, '0030136401', 1364, 'CARTON', 1, 72.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1365, 'SAVON SAMBA 12MX 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2239, '0020136500', 1365, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1366, 'SAVON SAMBA 18 MX_120G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2240, '0030136600', 1366, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1367, 'SAVON SAMBA 20MX_85G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2241, '0030136700', 1367, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1368, 'SAVON SAMBA 30MX_100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2242, '0020136800', 1368, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1369, 'SAVON SAMBA 32MX _100G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2243, '0020136900', 1369, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1370, 'SAVON SAMBA 36MX 70G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2244, '0030137000', 1370, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1371, 'SAVON SAMBA 36MX_130G PM', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2245, '0030137100', 1371, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1372, 'SAVON SAMBA 9 BARRE 800 G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2246, '0020137200', 1372, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2247, '0020137201', 1372, 'CARTON', 1, 9.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1373, 'SAVON SAMBA PALMINDUS 36mx 150g', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2248, '0030137300', 1373, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1374, 'SAVON SAMBA S21 24MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2249, '0030137400', 1374, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1375, 'SAVON SAMBA S22 24MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2250, '0030137500', 1375, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1376, 'SAVON SAMBA S23 36MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2251, '0030137600', 1376, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1377, 'SAVON SANTEX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2252, '0030137700', 1377, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2253, '0030137701', 1377, 'CARTON', 1, 12.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1378, 'SAVON SB27 MARRON 36MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2254, '0030137800', 1378, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1379, 'SAVON SEIM BARRE BLANC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2255, '0020137900', 1379, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2256, '0020137901', 1379, 'CARTON', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1380, 'SAVON SEIM S20 BLANC NORD', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2257, '0020138000', 1380, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2258, '0020138001', 1380, 'CARTON', 1, 36.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1381, 'SAVON SEIM S24 MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2259, '0020138100', 1381, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1382, 'SAVON SEIM S27 BLANC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2260, '0020138200', 1382, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2261, '0020138201', 1382, 'CARTON', 1, 36.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1383, 'SAVON SEIM S27 BLANC EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2262, '0240138300', 1383, 'PIENCES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1384, 'SAVON SEIM S27 MARRON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2263, '0020138400', 1384, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2264, '0020138401', 1384, 'CARTON', 1, 36.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1385, 'SAVON SEIM S27 MARRON EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2265, '0240138500', 1385, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1386, 'SAVON SEIM S3', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2266, '0020138600', 1386, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2267, '0020138601', 1386, 'CARTON', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1387, 'SAVON SEIM s30 MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2268, '0020138700', 1387, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2269, '0020138701', 1387, 'CARTON', 1, 36.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1388, 'Savon seim sbp 36mx', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2270, '0030138800', 1388, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1389, 'SAVON SEIM SC1 FOTSY', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2271, '0030138900', 1389, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1390, 'SAVON SEIM SC3 90G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2272, '0020139000', 1390, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1391, 'SAVON SEIM SC30 160G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2273, '0020139100', 1391, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1392, 'SAVON SEIM SR1 ROSE', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2274, '0030139200', 1392, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1393, 'SAVON SK1 EN PCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2275, '0020139300', 1393, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1394, 'SAVON SOBA M20 MARON EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2276, '0240139400', 1394, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1395, 'SAVON SOBA m20 MARRON', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2277, '0030139500', 1395, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2278, '0030139501', 1395, 'CARTON', 1, 36.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1396, 'SAVON SOBA M20+ BLANC', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2279, '0030139600', 1396, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2280, '0030139601', 1396, 'CARTON', 1, 36.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1397, 'SAVON SOBA M20+ EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2281, '0240139700', 1397, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1398, 'SAVON SOBA SB 3+', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2282, '0030139800', 1398, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2283, '0030139801', 1398, 'CARTON', 1, 30.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1399, 'SAVON SOBA SB3+BLANC*30MX', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2284, '0030139900', 1399, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1400, 'SAVON SOBA TSARA BARRE 1kg', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2285, '0100140000', 1400, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2286, '0100140001', 1400, 'CARTON', 1, 9.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1401, 'Savon solar 250Gx48', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2287, '0030140100', 1401, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2288, '0030140101', 1401, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1402, 'SAVON SOLAR CITRON 200G*3*18', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2289, '0030140200', 1402, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2290, '0030140201', 1402, 'CARTON', 1, 18.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1403, 'SAVON SOLAR GRAPE MULTI USAGE150G*48', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2291, '0030140300', 1403, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2292, '0030140301', 1403, 'CARTON', 1, 48.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1404, 'SAVON VAO CITRON', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2293, '0020140400', 1404, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2294, '0020140401', 1404, 'PAQUET', 1, 9.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1405, 'SAVON VAO LUX BLANC', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2295, '0030140500', 1405, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2296, '0030140501', 1405, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1406, 'SAVON VAO LUX CITRON VERT', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2297, '0030140600', 1406, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2298, '0030140601', 1406, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1407, 'SAVON VAO LUX ROSE', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2299, '0030140700', 1407, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2300, '0030140701', 1407, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1408, 'Savon vao up20+ 80g', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2301, '0030140800', 1408, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1409, 'Savon vao v27 175g', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2302, '0030140900', 1409, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1410, 'SAVON VAO V30*24MX*140G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2303, '0030141000', 1410, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1411, 'SAVON VAOLINE BARRE 500G*8', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2304, '0020141100', 1411, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2305, '0020141101', 1411, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1412, 'SAVON VAOLINE BARRE 800G*6', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2306, '0020141200', 1412, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2307, '0020141201', 1412, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1413, 'SAVON VAOLINE MULTI-USAGE 125GX16', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2308, '0030141300', 1413, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2309, '0030141301', 1413, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1414, 'Savon white wash nature 90g', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2310, '0030141400', 1414, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2311, '0030141401', 1414, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1415, 'Savon za koa dr24', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2312, '0020141500', 1415, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1416, 'SAVON ZA KOA DR24 EN PCS', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2313, '0240141600', 1416, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1417, 'SAVON ZA KOA TV24', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2314, '0020141700', 1417, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1418, 'SAVON ZA KOA V40', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2315, '0020141800', 1418, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1419, 'SAVONETTE DIVA - 125G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2316, '0020141900', 1419, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1420, 'SAVONFLOR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2317, '0020142000', 1420, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1421, 'SAVONFLORVAOVAOROSE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2318, '0020142100', 1421, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2319, '0020142101', 1421, 'CARTON', 1, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1422, 'SAVONNETTE CITRUS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2320, '0020142200', 1422, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2321, '0020142201', 1422, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1423, 'SAVONNETTE CLASSIC WHITE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2322, '0020142300', 1423, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2323, '0020142301', 1423, 'CARTON', 1, 6.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2324, '0020142302', 1423, 'PACQUET', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1424, 'SAVONNETTE DIVA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2325, '0020142400', 1424, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2326, '0020142401', 1424, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1425, 'SAVONNETTE GIV', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2327, '0030142500', 1425, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2328, '0030142501', 1425, 'CARTON', 1, 12.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1426, 'SAVONNETTE KRIS', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2329, '0030142600', 1426, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2330, '0030142601', 1426, 'CARTON', 1, 12.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1427, 'SAVONNETTE LARK', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2331, '0020142700', 1427, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2332, '0020142701', 1427, 'CARTON', 1, 48.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1428, 'SAVONNETTE OLEDA', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2333, '0030142800', 1428, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2334, '0030142801', 1428, 'CARTON', 1, 12.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1429, 'SAYA FLAVOUR BEEF BOUILLON CUBE 4G *25', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2335, '0020142900', 1429, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2336, '0020142901', 1429, 'CARTON', 1, 80.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1430, 'SCOTCH TOLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2337, '0020143000', 1430, 'METRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2338, '0020143001', 1430, 'ROULEAU', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1431, 'Sel fin en sachet 25 KG', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2339, '0050143100', 1431, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1432, 'SEL FIN EN SACHET 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2340, '0020143200', 1432, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1433, 'SEL FIN EN SACHET EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2341, '0020143300', 1433, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2342, '0020143301', 1433, 'SAC', 1, 250.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1434, 'SEL FIN EN SACHET TALOHA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2343, '0020143400', 1434, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2344, '0020143401', 1434, 'SAC', 1, 250.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1435, 'SEL FIN EN VRAC 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2345, '0020143500', 1435, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1436, 'sel fin en vrac en kilos', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2346, '0020143600', 1436, 'KILO', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1437, 'SEL FIN VRAC 25 KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2347, '0020143700', 1437, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1438, 'SEL GROS 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2348, '0020143800', 1438, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2349, '0020143801', 1438, 'SAC', 1, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1439, 'SEL GROS EN KILOS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2350, '0020143900', 1439, 'KILO', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1440, 'SERVIETTE DE TABLE PASTEL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2351, '0020144000', 1440, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2352, '0020144001', 1440, 'PACQUET', 1, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1441, 'Serviette de table top 60*60', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2353, '0020144100', 1441, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1442, 'Serviette de table top100*24', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2354, '0020144200', 1442, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1443, 'SERVIETTE MOLPED', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2355, '0020144300', 1443, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1444, 'Shamalow twist', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2356, '0080144400', 1444, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1445, 'Shampoo emeron noir 7ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2357, '0020144500', 1445, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2358, '0020144501', 1445, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1446, 'SHAPE CHOCOLATE BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2359, '0080144600', 1446, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1447, 'Shine coffee', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2360, '0020144700', 1447, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2361, '0020144701', 1447, 'CARTON', 1, 8.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2362, '0020144702', 1447, 'SACHET', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1448, 'SHT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2363, '0020144800', 1448, 'BTE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1449, 'SILL GUM CHLOROPHILE', 13, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2364, '0130144900', 1449, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2365, '0130144901', 1449, 'CARTON', 1, 16.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1450, 'SILL GUM ZOOK (16)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2366, '0020145000', 1450, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2367, '0020145001', 1450, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1451, 'SILL-GUM FRAISH', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2368, '0020145100', 1451, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1452, 'SK1', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2369, '0020145200', 1452, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1453, 'Sk1 en Pieces', 24, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2370, '0240145300', 1453, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1454, 'SK20', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2371, '0020145400', 1454, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1455, 'SKT BARRE', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2372, '0100145500', 1455, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2373, '0100145501', 1455, 'CARTON', 1, 20.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1456, 'SLEEPY 4 -25 MAXI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2374, '0020145600', 1456, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1457, 'SLEEPY CULOTTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2375, '0020145700', 1457, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2376, '0020145701', 1457, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1458, 'SLEEPY JUNIOR 6X20', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2377, '0120145800', 1458, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2378, '0120145801', 1458, 'BALLE', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1459, 'SLEEPY KULOT JEANS JUNIOR 5X24 n°5', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2379, '0120145900', 1459, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2380, '0120145901', 1459, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1460, 'SLEEPY KULOT JEANS MAXI 5X30 N°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2381, '0120146000', 1460, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2382, '0120146001', 1460, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1461, 'SLEEPY KULOT JEANS MIDI 5X34 N°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2383, '0120146100', 1461, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2384, '0120146101', 1461, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1462, 'SLEEPY KULOT NATURAL MAXI 5X30 _ n ° 4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2385, '0120146200', 1462, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2386, '0120146201', 1462, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1463, 'SLEEPY KULOT NATURAL MIDI 5X34 N°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2387, '0120146300', 1463, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2388, '0120146301', 1463, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1464, 'SLEEPY LADY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2389, '0020146400', 1464, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1465, 'SLEEPY MAXI 6X25_ n ° 4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2390, '0120146500', 1465, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2391, '0120146501', 1465, 'BALLE', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1466, 'SLEEPY MIDI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2392, '0020146600', 1466, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1467, 'SLEEPY MIDI 6X30 n°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2393, '0120146700', 1467, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2394, '0120146701', 1467, 'BALLE', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1468, 'SLEEPY MINI 6X35 N°2', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2395, '0020146800', 1468, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2396, '0020146801', 1468, 'BALE', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1469, 'SLEEPY NIGHT PANTS CULOTTE MAXI 5X30 N°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2397, '0120146900', 1469, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2398, '0120146901', 1469, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1470, 'SLEEPY PRINCESSE CULOTTE MAXI 5X30 N°4', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2399, '0120147000', 1470, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2400, '0120147001', 1470, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1471, 'SLEEPY PRINCESSE CULOTTE MIDI 5X34 N°3', 12, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2401, '0120147100', 1471, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2402, '0120147101', 1471, 'BALLE', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1472, 'SLYLO EUROPA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2403, '0020147200', 1472, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2404, '0020147201', 1472, 'BOITE', 1, 50.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1473, 'Small beach bubble water', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2405, '0020147300', 1473, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2406, '0020147301', 1473, 'BOITE', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1474, 'SN PIWI NEWS POULET', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2407, '0010147400', 1474, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1475, 'SN SALTO CHIPS BLEU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2408, '0020147500', 1475, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1476, 'SN SALTO KIDS RINGZ', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2409, '0010147600', 1476, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1477, 'SN SALTO LOOP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2410, '0020147700', 1477, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1478, 'SOA PLUS EN BARRE', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2411, '0100147800', 1478, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2412, '0100147801', 1478, 'CARTON', 1, 9.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1479, 'SOA PLUS EN CARTON', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2413, '0100147900', 1479, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1480, 'SOBA BARRE BLANC', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2414, '0100148000', 1480, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2415, '0100148001', 1480, 'CARTON', 1, 12.00, 6.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1481, 'SOBA GM EN BARRE MAVO', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2416, '0100148100', 1481, 'BARRE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2417, '0100148101', 1481, 'CARTON', 1, 13.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1482, 'SOBA PM EN BARRE', 10, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2418, '0100148200', 1482, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1483, 'Soda sugar boom 20*30 pces', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2419, '0020148300', 1483, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2420, '0020148301', 1483, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1484, 'Softex day long 29cm*8 [Violet/Bleu]', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2421, '0020148400', 1484, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2422, '0020148401', 1484, 'CARTON', 1, 60.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1485, 'SOFTEX MAXI FIT WINGS*8 ALVEOLE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2423, '0020148500', 1485, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2424, '0020148501', 1485, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1486, 'Softex maxi wing''s *8 rose', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2425, '0020148600', 1486, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2426, '0020148601', 1486, 'CARTON', 1, 60.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1487, 'SOFTEX PROTEGE SLIPS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2427, '0020148700', 1487, 'PQT', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1488, 'Soude caustique perlee', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2428, '0160148800', 1488, 'KG', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1489, 'Sour powder candy', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2429, '0020148900', 1489, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2430, '0020148901', 1489, 'SACHET', 1, 70.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1490, 'Soy sauce light prb 500ml', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2431, '0050149000', 1490, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1491, 'SPAGHETI BAREA', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2432, '0270149100', 1491, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2433, '0270149101', 1491, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1492, 'SPAGHETI ELVIA EN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2434, '0020149200', 1492, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2435, '0020149201', 1492, 'CARTON', 1, 20.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1493, 'Spagheti felicia', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2436, '0270149300', 1493, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1494, 'SPAGHETI FELICIA EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2437, '0020149400', 1494, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1495, 'SPAGHETI SANREMO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2438, '0020149500', 1495, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2439, '0020149501', 1495, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1496, 'SPAGHETTI CHAMPION', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2440, '0270149600', 1496, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2441, '0270149601', 1496, 'CARTON', 1, 20.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1497, 'SPAGHETTI CHERIE', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2442, '0270149700', 1497, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2443, '0270149701', 1497, 'CARTON', 1, 20.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1498, 'SPAGHETTI ELVIA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2444, '0020149800', 1498, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1499, 'Spaghetti Francia en carton', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2445, '0270149900', 1499, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2446, '0270149901', 1499, 'CARTON', 1, 20.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1500, 'Spaghetti Francia en pieces', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2447, '0270150000', 1500, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2448, '0270150001', 1500, 'CRT', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1501, 'SPAGHETTI NOUR D''OR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2449, '0020150100', 1501, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1502, 'SPAGHETTI RASMI 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2450, '0020150200', 1502, 'CARTON', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1503, 'Spaghetti rossini 500*20', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2451, '0270150300', 1503, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2452, '0270150301', 1503, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1504, 'SPAGHETTI ROSSINI 500G*20', 27, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2453, '0270150400', 1504, 'CARTON', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1505, 'SPAGUETI', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2454, '0020150500', 1505, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2455, '0020150501', 1505, 'CARTON', 1, 20.00, 10.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1506, 'Spider man srap', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2456, '0020150600', 1506, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2457, '0020150601', 1506, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2458, '0020150602', 1506, 'BOITE', 2, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1507, 'SPIDERMANSRAP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2459, '0080150700', 1507, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1508, 'Sprite Citron pet 1,5 l*6', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2460, '0110150800', 1508, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2461, '0110150801', 1508, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1509, 'Stick fraise [ Strawberry ] powder 2.8g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2462, '0020150900', 1509, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1510, 'Stick milk powder 2.8g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2463, '0020151000', 1510, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1511, 'Stock commander 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2464, '0090151100', 1511, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1512, 'Stock haraka transparent 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2465, '0090151200', 1512, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1513, 'Strawberry kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2466, '0080151300', 1513, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2467, '0080151301', 1513, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1514, 'strip jelly jelloo', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2468, '0020151400', 1514, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1515, 'Stylo classinn 20x50', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2469, '0150151500', 1515, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2470, '0150151501', 1515, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1516, 'STYLO DIGNO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2471, '0020151600', 1516, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2472, '0020151601', 1516, 'BOITE', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1517, 'STYLO LAUREAT BLEU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2473, '0020151700', 1517, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1518, 'STYLO LAUREAT ROUGE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2474, '0020151800', 1518, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1519, 'STYLO LAUREAT VERT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2475, '0020151900', 1519, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1520, 'STYLO MARYA PLUS BLEU', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2476, '0150152000', 1520, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1521, 'STYLO MARYA PLUS ROUGE', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2477, '0150152100', 1521, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1522, 'STYLO NOVA 1MM', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2478, '0150152200', 1522, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2479, '0150152201', 1522, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1523, 'STYLO SCHNEIDER BLEU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2480, '0020152300', 1523, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2481, '0020152301', 1523, 'BOITE', 1, 50.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1524, 'STYLO SCHNEIDER EN PCS', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2482, '0150152400', 1524, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1525, 'STYLO SCHNEIDER NOIR', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2483, '0150152500', 1525, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1526, 'STYLO SCHNEIDER ROUGE', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2484, '0150152600', 1526, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1527, 'STYLO SCHNEIDER VERT', 15, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2485, '0150152700', 1527, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1528, 'STYLO SUPRA BLEU', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2486, '0020152800', 1528, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2487, '0020152801', 1528, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1529, 'STYLO SUPRA ROUGE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2488, '0020152900', 1529, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2489, '0020152901', 1529, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1530, 'STYLO SUPRA VERT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2490, '0020153000', 1530, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2491, '0020153001', 1530, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1531, 'SUCETTE BIG POP GM XXL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2492, '0080153100', 1531, 'BOCAL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2493, '0080153101', 1531, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1532, 'SUCETTE BOCAL ROYAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2494, '0020153200', 1532, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2495, '0020153201', 1532, 'CRT', 1, 6.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1533, 'SUCETTE CHOCO VANILLA DOLLY DOLLY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2496, '0020153300', 1533, 'SACHET', 0, 1.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2497, '0020153301', 1533, 'SACHET', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2498, '0020153302', 1533, 'NEANT', 2, 100.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1534, 'Sucette donut', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2499, '0080153400', 1534, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1535, 'SUCETTE GM BIGG POPS EN SACHET', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2500, '0080153500', 1535, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2501, '0080153501', 1535, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1536, 'Sucette heart pop gm vaovao', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2502, '0080153600', 1536, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1537, 'SUCETTE HEARTY POP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2503, '0020153700', 1537, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2504, '0020153701', 1537, 'CARTON', 1, 20.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1538, 'Sucette hearty pop bocal', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2505, '0020153800', 1538, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1539, 'SUCETTE LOVE POPS RAMA GM', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2506, '0080153900', 1539, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1540, 'SUCETTE NEO POP XXL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2507, '0080154000', 1540, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2508, '0080154001', 1540, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1541, 'SUCETTE PAJ POP TONGUE PAINTER 5G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2509, '0080154100', 1541, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1542, 'Sucette pin pon mx', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2510, '0020154200', 1542, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1543, 'SUCETTE RAMA BIG BOMBOM XXXL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2511, '0080154300', 1543, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1544, 'SUCETTE SWEET ART BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2512, '0080154400', 1544, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1545, 'Sucette trio pop', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2513, '0080154500', 1545, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1546, 'SUCETTE ZIVA MIX FRUIT LOLLIPOP 25G ASS', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2514, '0080154600', 1546, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1547, 'SUCRE 25kg', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2515, '0280154700', 1547, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2516, '0280154701', 1547, 'SAC', 1, 25.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1548, 'SUCRE 50 KG IMPORT', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2517, '0280154800', 1548, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2518, '0280154801', 1548, 'SAC', 1, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1549, 'SUCRE @ SACHET 500 G EN SAC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2519, '0020154900', 1549, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1550, 'SUCRE @ SACHET 500 G EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2520, '0020155000', 1550, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1551, 'SUCRE AMBILOBE 50kg', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2521, '0280155100', 1551, 'KG', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2522, '0280155101', 1551, 'SAC', 1, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1552, 'Sucre blanc en kg', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2523, '0280155200', 1552, 'KG', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1553, 'sucre en kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2524, '0020155300', 1553, 'KILO', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2525, '0020155301', 1553, 'SAC', 1, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1554, 'SUCRE ROUGE SELATI 50 KG', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2526, '0280155400', 1554, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1555, 'SUICETTE ASSORTED POPS BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2527, '0080155500', 1555, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2528, '0080155501', 1555, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2529, '0080155502', 1555, 'BOCAL', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1556, 'SUICETTE BIG ASSORTED MIX EXCEL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2530, '0080155600', 1556, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1557, 'SUICETTE BIG COLA EXCEL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2531, '0080155700', 1557, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1558, 'SUICETTE BIG MILK LOLLIPOP EXCEL 25G', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2532, '0080155800', 1558, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1559, 'SUICETTE ICY POPS BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2533, '0080155900', 1559, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2534, '0080155901', 1559, 'CARTON', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2535, '0080155902', 1559, 'BOCAL', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1560, 'SUICETTE LOVE RING BAGUE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2536, '0080156000', 1560, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1561, 'Suicette mix fruit naturel', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2537, '0080156100', 1561, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2538, '0080156101', 1561, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1562, 'SUICETTE MIX YOGOFRU BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2539, '0080156200', 1562, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2540, '0080156201', 1562, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1563, 'SUICETTE TIK TOK CHEW POP BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2541, '0080156300', 1563, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2542, '0080156301', 1563, 'CARTON', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2543, '0080156302', 1563, 'BOCAL', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1564, 'SUICETTE TIK TOK EXCEL XXL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2544, '0080156400', 1564, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1565, 'SUICETTE TWIST POP EXCEL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2545, '0080156500', 1565, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1566, 'Sundea choco ice cream', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2546, '0080156600', 1566, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2547, '0080156601', 1566, 'CARTON', 1, 20.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2548, '0080156602', 1566, 'BOITE', 2, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1567, 'Sur eau oasis', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2549, '0020156700', 1567, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2550, '0020156701', 1567, 'CARTON', 1, 40.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1568, 'SURPRISE SNACK 20SHT*25PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2551, '0020156800', 1568, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1569, 'Sweet africa poulet en paquet', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2552, '0050156900', 1569, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2553, '0050156901', 1569, 'PAQUET', 1, 42.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1570, 'SWEET AFRICAN CUBE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2554, '0050157000', 1570, 'PQT', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2555, '0050157001', 1570, 'CARTON', 1, 2.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2556, '0050157002', 1570, 'BTE', 2, 41.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1571, 'SWEET BOY CHOCOLATE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2557, '0050157100', 1571, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1572, 'SWEET BOY COCONUT', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2558, '0050157200', 1572, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1573, 'SWEET BOY PINEAPPLE', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2559, '0050157300', 1573, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1574, 'SWEET DREAMS POP', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2560, '0080157400', 1574, 'BCL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2561, '0080157401', 1574, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1575, 'SWEETBOY @ PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2562, '0020157500', 1575, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2563, '0020157501', 1575, 'BOITE', 1, 70.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1576, 'Swety cup choco candy', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2564, '0080157600', 1576, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2565, '0080157601', 1576, 'CARTON', 1, 12.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2566, '0080157602', 1576, 'BOCAL', 2, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1577, 'Talia bleu Nuit*60', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2567, '0020157700', 1577, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2568, '0020157701', 1577, 'CARTON', 1, 60.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1578, 'Talia violet Nuit coton*60', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2569, '0020157800', 1578, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2570, '0020157801', 1578, 'CARTON', 1, 60.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1579, 'TAMARIN PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2571, '0020157900', 1579, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1580, 'Thermos 3l plastique', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2572, '0020158000', 1580, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1581, 'THERMOS VISTA VVF-1120 2L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2573, '0020158100', 1581, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1582, 'THERMOS VISTA VVF-1132H 3.2 L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2574, '0020158200', 1582, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1583, 'Thon en miettes 185g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2575, '0020158300', 1583, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1584, 'TIARA POUDRE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2576, '0020158400', 1584, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1585, 'TIK TOK VETO ASSORTED POPS EN SACHET', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2577, '0080158500', 1585, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1586, 'TOLE 0.18 / 3M', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2578, '0160158600', 1586, 'FEUILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1587, 'TOLE 0.18/2M', 16, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2579, '0160158700', 1587, 'FEUILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1588, 'TOLE 0.25/2M', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2580, '0020158800', 1588, 'FEUILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1589, 'TOLE 0.25/3M', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2581, '0020158900', 1589, 'FEUILLE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1590, 'TOMATE BOITE ALDA 70G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2582, '0050159000', 1590, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2583, '0050159001', 1590, 'CARTON', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1591, 'TOMATE BOITE HELLO FASTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2584, '0020159100', 1591, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2585, '0020159101', 1591, 'CARTON', 1, 100.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1592, 'Tomate boite mama', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2586, '0020159200', 1592, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2587, '0020159201', 1592, 'CARTON', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1593, 'TOMATE BONJOUR @ BTS 70G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2588, '0050159300', 1593, 'BOITES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2589, '0050159301', 1593, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1594, 'TOMATE BONJOUR EN SACHET 50G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2590, '0050159400', 1594, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2591, '0050159401', 1594, 'CARTON', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1595, 'TOMATE BTE GEFCO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2592, '0020159500', 1595, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2593, '0020159501', 1595, 'CARTON', 1, 50.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1596, 'TOMATE BTE LUCIE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2594, '0020159600', 1596, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2595, '0020159601', 1596, 'CARTON', 1, 50.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1597, 'TOMATE DELICIOUS 70GR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2596, '0020159700', 1597, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2597, '0020159701', 1597, 'CARTON', 1, 50.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1598, 'TOMATE ELVIA EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2598, '0020159800', 1598, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1599, 'Tomate en sachet lucie', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2599, '0050159900', 1599, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2600, '0050159901', 1599, 'CARTON', 1, 4.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2601, '0050159902', 1599, 'BOITE', 2, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1600, 'Tomate europa @ boite 70g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2602, '0020160000', 1600, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2603, '0020160001', 1600, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1601, 'TOMATE EUROPA @ SACHET 50G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2604, '0020160100', 1601, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2605, '0020160101', 1601, 'CARTON', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1602, 'Tomate evita en sachet 50g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2606, '0020160200', 1602, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2607, '0020160201', 1602, 'CARTON', 1, 50.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1603, 'TOMATE EVITA ENSACHET 50G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2608, '0050160300', 1603, 'CARTON', 0, 1.00, 2.50, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1604, 'TOMATE FANA EN SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2609, '0020160400', 1604, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2610, '0020160401', 1604, 'CARTON', 1, 4.00, 2.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2611, '0020160402', 1604, 'BOITE', 2, 25.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1605, 'TOMATE FANA EN SACHET50G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2612, '0020160500', 1605, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2613, '0020160501', 1605, 'CARTON', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1606, 'TOMATE KENZY EN SACHET', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2614, '0050160600', 1606, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1607, 'TOMATE KENZY EN SACHET 50G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2615, '0020160700', 1607, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2616, '0020160701', 1607, 'CRT', 1, 4.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2617, '0020160702', 1607, 'BOITE', 2, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1608, 'TONGOLO BE @ KILOS', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2618, '0050160800', 1608, 'KG', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1609, 'Tongue Painte Assorti 5g', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2619, '0080160900', 1609, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2620, '0080160901', 1609, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1610, 'Tongue painter kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2621, '0080161000', 1610, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2622, '0080161001', 1610, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1611, 'TONGUE PAINTER MONSTRE POP KIDDIES', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2623, '0080161100', 1611, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1612, 'Tongue_dancer (100pcs)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2624, '0020161200', 1612, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2625, '0020161201', 1612, 'BOCAL', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1613, 'Top cafe 22g*120', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2626, '0020161300', 1613, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2627, '0020161301', 1613, 'CARTON', 1, 120.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1614, 'TOP CAFE CAPPUCCINO 25G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2628, '0020161400', 1614, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2629, '0020161401', 1614, 'CARTON', 1, 120.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1615, 'TOP CAFE PALM SUGAR 25G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2630, '0020161500', 1615, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2631, '0020161501', 1615, 'CARTON', 1, 120.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1616, 'TOP CAFFE AVOCADO 22G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2632, '0020161600', 1616, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2633, '0020161601', 1616, 'CARTON', 1, 180.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1617, 'TOP CAFFE MAKACHINNO 22G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2634, '0020161700', 1617, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2635, '0020161701', 1617, 'PACQUET', 1, 9.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1618, 'TOP POP', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2636, '0020161800', 1618, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2637, '0020161801', 1618, 'BAL', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1619, 'TOPHYTASTE BOEUF BOUILLON CUBES', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2638, '0020161900', 1619, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2639, '0020161901', 1619, 'CARTON', 1, 2.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2640, '0020161902', 1619, 'BOITE', 2, 41.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1620, 'Triple action aloe vera 100ml', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2641, '0020162000', 1620, 'PCS', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2642, '0020162001', 1620, 'PAQUET', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2643, '0020162002', 1620, 'CARTON', 2, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1621, 'TRIUMPHPLASTIQUE100PGSEN PIECE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2644, '0020162100', 1621, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1622, 'TSARAHIRATRA SAUCE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2645, '0020162200', 1622, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2646, '0020162201', 1622, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1623, 'TSARAMASO BOTA', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2647, '0290162300', 1623, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2648, '0290162301', 1623, 'SAC', 1, 175.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1624, 'TSARAMASO BOTA EN KAPOAKA', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2649, '0290162400', 1624, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1625, 'TSARAMASO EN SAC 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2650, '0020162500', 1625, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1626, 'TSARAMASO LAVA 50KG', 28, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2651, '0280162600', 1626, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1627, 'TSARAMASO LAVA @ kapoaka', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2652, '0020162700', 1627, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2653, '0020162701', 1627, 'SAC', 1, 180.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1628, 'TSARAMASO MENA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2654, '0020162800', 1628, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1629, 'TSARAMASO MENA KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2655, '0020162900', 1629, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1630, 'TSARAMASO MIANDRIVAZO 25 KG', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2656, '0290163000', 1630, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1631, 'Tsaramaso miandrivazo 50kg', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2657, '0290163100', 1631, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1632, 'TSARAMASO MIANDRIVAZO EN KAPOAKA', 29, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2658, '0290163200', 1632, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1633, 'TSIASISA EN KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2659, '0020163300', 1633, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1634, 'TSIASISA EN SAC', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2660, '0050163400', 1634, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2661, '0050163401', 1634, 'SAC', 1, 165.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1635, 'TSIASISA VAO 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2662, '0020163500', 1635, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1636, 'TSIASISA VAO2 EN KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2663, '0020163600', 1636, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1637, 'TSIKY NAKS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2664, '0020163700', 1637, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2665, '0020163701', 1637, 'SACHET', 1, 30.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1638, 'TUC CLASSIC 65*24', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2666, '0020163800', 1638, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2667, '0020163801', 1638, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1639, 'TUC MINI 30G*30', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2668, '0020163900', 1639, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2669, '0020163901', 1639, 'CARTON', 1, 24.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1640, 'TUC POCKET 32G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2670, '0020164000', 1640, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2671, '0020164001', 1640, 'CARTON', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1641, 'Turbo choco gm', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2672, '0020164100', 1641, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2673, '0020164101', 1641, 'CARTON', 1, 12.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1642, 'TURBO CHOCO PM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2674, '0010164200', 1642, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2675, '0010164201', 1642, 'CARTON', 1, 21.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1643, 'TURBO FRAISE GM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2676, '0010164300', 1643, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2677, '0010164301', 1643, 'CARTON', 1, 12.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1644, 'TURBO FRAISE PM', 1, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2678, '0010164400', 1644, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2679, '0010164401', 1644, 'CARTON', 1, 21.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1645, 'U&me MINIS EN BOITE', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2680, '0080164500', 1645, 'BOITE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1646, 'VAO SAVON ANTISEPTIQUE AU CHARBON', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2681, '0030164600', 1646, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2682, '0030164601', 1646, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1647, 'VAO SHAMPOOING PAPAYE SACHET', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2683, '0020164700', 1647, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1648, 'VAO TRANSLUCIDE SDOI U1*36MX*80G', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2684, '0030164800', 1648, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2685, '0030164801', 1648, 'CARTON', 1, 36.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1649, 'Vaoline 30g*108', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2686, '0190164900', 1649, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1650, 'VARY DISTE vao', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2687, '0090165000', 1650, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1651, 'VARY FELIZ FAMILIA 25 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2688, '0090165100', 1651, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1652, 'VARY FELIZ FAMILIA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2689, '0090165200', 1652, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1653, 'VARY FOTSY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2690, '0020165300', 1653, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1654, 'VARY GASY 25KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2691, '0020165400', 1654, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1655, 'VARY GASY ambato @ KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2692, '0020165500', 1655, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1656, 'VARY GASY ANDAPA 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2693, '0090165600', 1656, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1657, 'VARY GASY ANDAPA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2694, '0090165700', 1657, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1658, 'VARY GASY ANDAPA 60KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2695, '0020165800', 1658, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1659, 'VARY GASY ANDAPA @ kapoaka', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2696, '0020165900', 1659, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1660, 'VARY GASY ANDAPA VAO 50 KG', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2697, '0300166000', 1660, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1661, 'VARY GASY BOTA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2698, '0090166100', 1661, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1662, 'VARY GASY BOTA 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2699, '0090166200', 1662, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1663, 'VARY GASY BOTA 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2700, '0090166300', 1663, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1664, 'VARY GASY BOTA VAO 60KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2701, '0090166400', 1664, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1665, 'Vary gasy botamenamena 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2702, '0090166500', 1665, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1666, 'VARY GASY EN KAPOAKA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2703, '0090166600', 1666, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1667, 'VARY GASY EN KAPOAKA FOTSY', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2704, '0090166700', 1667, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1668, 'VARY GASY EN KPK', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2705, '0300166800', 1668, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1669, 'Vary gasy fotsy 2eme choix 50kg', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2706, '0300166900', 1669, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1670, 'VARY GASY fotsy 60kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2707, '0090167000', 1670, 'SAC', 0, 1.00, 60.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1671, 'VARY GASY MENA EN KAPOAKA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2708, '0090167100', 1671, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1672, 'VARY GASY RIO 50kg', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2709, '0300167200', 1672, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1673, 'VARY GASY RIO EN KAPOAKA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2710, '0090167300', 1673, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1674, 'VARY HAPPY FAMILY 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2711, '0090167400', 1674, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1675, 'VARY HAPPY FAMILY 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2712, '0090167500', 1675, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1676, 'VARY HARAKA JAUNE 50 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2713, '0090167600', 1676, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1677, 'VARY LA FAMILLE INDE', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2714, '0090167700', 1677, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2715, '0090167701', 1677, 'SAC', 1, 175.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1678, 'VARY LUX LAXMI', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2716, '0090167800', 1678, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1679, 'VARY MAHAVOKY LUX 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2717, '0090167900', 1679, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1680, 'VARY MAKALIOKA 50KG', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2718, '0300168000', 1680, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1681, 'Vary makalioka 60kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2719, '0090168100', 1681, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1682, 'VARY MAKALIOKA KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2720, '0020168200', 1682, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1683, 'Vary makalioka vao 25Kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2721, '0090168300', 1683, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1684, 'Vary makalioka vao en kapoaka', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2722, '0090168400', 1684, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1685, 'VARY MAKALIOKA VAOVAO 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2723, '0090168500', 1685, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2724, '0090168501', 1685, 'KG', 1, 3.50, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2725, '0090168502', 1685, 'SAC', 2, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1686, 'VARY MAKALIOKA VAOVAO 60KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2726, '0090168600', 1686, 'UNITE', 0, 0.00, 0.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1687, 'VARY MANJARIKA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2727, '0090168700', 1687, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1688, 'VARY MENA DISTE EN KAPOAKA', 30, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2728, '0300168800', 1688, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1689, 'VARY MME ROSE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2729, '0020168900', 1689, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1690, 'VARY ROYAL SALAMI 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2730, '0090169000', 1690, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1691, 'VARY STOCK 25 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2731, '0090169100', 1691, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1692, 'VARY STOCK 50kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2732, '0020169200', 1692, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1693, 'VARY STOCK ACE RICE 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2733, '0090169300', 1693, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1694, 'VARY STOCK ADELCO 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2734, '0090169400', 1694, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1695, 'VARY STOCK AFRICAN GOLD 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2735, '0090169500', 1695, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1696, 'VARY STOCK AONE 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2736, '0090169600', 1696, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1697, 'VARY STOCK ASIAN 5%', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2737, '0090169700', 1697, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1698, 'Vary stock barea 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2738, '0090169800', 1698, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1699, 'Vary stock bon 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2739, '0090169900', 1699, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1700, 'VARY STOCK BOULE PETANQUE 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2740, '0090170000', 1700, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1701, 'Vary stock bulmex 25kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2741, '0090170100', 1701, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1702, 'VARY STOCK CAPITAL 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2742, '0090170200', 1702, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2743, '0090170201', 1702, 'SAC', 1, 1.00, 50.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2744, '0090170202', 1702, 'KG', 2, 3.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1703, 'VARY STOCK CAPITALE', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2745, '0090170300', 1703, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2746, '0090170301', 1703, 'SAC', 1, 175.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1704, 'VARY STOCK CHAMPION 50 KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2747, '0020170400', 1704, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1705, 'Vary stock eagle 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2748, '0090170500', 1705, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1706, 'VARY STOCK EHOALA 50 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2749, '0090170600', 1706, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1707, 'VARY STOCK FALCON 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2750, '0090170700', 1707, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1708, 'VARY STOCK FANEVA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2751, '0020170800', 1708, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1709, 'Vary stock foot ball 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2752, '0090170900', 1709, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1710, 'Vary stock global 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2753, '0090171000', 1710, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1711, 'VARY STOCK GOLD COIN 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2754, '0090171100', 1711, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1712, 'VARY STOCK GOLD SAC 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2755, '0090171200', 1712, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1713, 'VARY STOCK HARY FITIA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2756, '0090171300', 1713, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1714, 'VARY STOCK INDUS 50 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2757, '0090171400', 1714, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1715, 'VARY STOCK KING AFRICA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2758, '0090171500', 1715, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1716, 'VARY STOCK KINTANA 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2759, '0090171600', 1716, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1717, 'Vary Stock Kintana 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2760, '0090171700', 1717, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1718, 'VARY STOCK LA CASCADE 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2761, '0090171800', 1718, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1719, 'VARY STOCK LA FAMILLE INDE 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2762, '0090171900', 1719, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1720, 'VARY STOCK LALA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2763, '0090172000', 1720, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2764, '0090172001', 1720, 'KG', 1, 3.50, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2765, '0090172002', 1720, 'SAC', 2, 50.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1721, 'Vary Stock Lemur 50kg', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2766, '0050172100', 1721, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1722, 'VARY STOCK MAHAVOKY 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2767, '0090172200', 1722, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1723, 'Vary stock mara 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2768, '0090172300', 1723, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1724, 'VARY STOCK MARIO', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2769, '0090172400', 1724, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1725, 'VARY STOCK MOL RIZ 50KG', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2770, '0050172500', 1725, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1726, 'VARY STOCK NAMANA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2771, '0020172600', 1726, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1727, 'Vary stock nitra 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2772, '0090172700', 1727, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1728, 'VARY STOCK PACK RHINO 25KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2773, '0020172800', 1728, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1729, 'VARY STOCK PAPA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2774, '0090172900', 1729, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1730, 'Vary stock pogo 50 kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2775, '0090173000', 1730, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1731, 'VARY STOCK R R PREMIUM 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2776, '0020173100', 1731, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1732, 'VARY STOCK ROMAZAVA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2777, '0090173200', 1732, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1733, 'VARY STOCK SAKSHI SILVER 50KG', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2778, '0050173300', 1733, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1734, 'VARY STOCK SHAVA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2779, '0090173400', 1734, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1735, 'VARY STOCK STAR', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2780, '0090173500', 1735, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1736, 'VARY STOCK STAR 25 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2781, '0090173600', 1736, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1737, 'VARY STOCK SUN FLOWER', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2782, '0090173700', 1737, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1738, 'VARY STOCK TANISHK', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2783, '0090173800', 1738, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1739, 'VARY STOCK TIGRE PAKISTAN 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2784, '0090173900', 1739, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1740, 'VARY STOCK TSINJO 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2785, '0090174000', 1740, 'SAC', 0, 1.00, 25.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1741, 'Vary stock tuctuc 50kg', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2786, '0090174100', 1741, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1742, 'VARY STOCK TULIP 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2787, '0090174200', 1742, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1743, 'Vary stock voky tsara 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2788, '0090174300', 1743, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1744, 'VARY STOCK VOKY TSARA LUXE 5% SAC 50 KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2789, '0090174400', 1744, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1745, 'VARY STOCK VOLAMENA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2790, '0090174500', 1745, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1746, 'VARY STOCK VOLGA 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2791, '0090174600', 1746, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1747, 'VARY TASTE LIFE 25KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2792, '0090174700', 1747, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1748, 'VARY TSINJO 50KG FOTSY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2793, '0020174800', 1748, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1749, 'VARY TSINJO 50KG VAOVAO', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2794, '0090174900', 1749, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1750, 'VARY VOKY TSARA LUXE EN KAPOAKA', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2795, '0090175000', 1750, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1751, 'VARYSTOCK CE BON SAC 50KG', 9, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2796, '0090175100', 1751, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1752, 'Vehicule lollipop 15g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2797, '0020175200', 1752, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1753, 'VERRE A JETER', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2798, '0020175300', 1753, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1754, 'VERRE A JETER TRANQUIL TRANSPARENT', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2799, '0020175400', 1754, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1755, 'VERRE A JETER TRANQUIL WHITE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2800, '0020175500', 1755, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1756, 'Verre a jeter voila *20x50', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2801, '0020175600', 1756, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2802, '0020175601', 1756, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1757, 'VERRE A JETTER CHAMPION', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2803, '0020175700', 1757, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1758, 'VERRE DECORRTED GLRSS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2804, '0020175800', 1758, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2805, '0020175801', 1758, 'CARTON', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1759, 'VESTLIN LEMON 50G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2806, '0020175900', 1759, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2807, '0020175901', 1759, 'CARTON', 1, 10.00, 5.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2808, '0020175902', 1759, 'PACQUET', 2, 12.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1760, 'VETSIN 250G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2809, '0020176000', 1760, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2810, '0020176001', 1760, 'CARTON', 1, 48.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1761, 'VETSIN 50G', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2811, '0050176100', 1761, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2812, '0050176101', 1761, 'CARTON', 1, 100.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1762, 'VETSIN SASA MOTO 3G*160*25', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2813, '0050176200', 1762, 'PAQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2814, '0050176201', 1762, 'CARTON', 1, 25.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1763, 'VETSIN VITA 3G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2815, '0020176300', 1763, 'PACQUET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2816, '0020176301', 1763, 'CARTON', 1, 50.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1764, 'VINAIGRE FOTSY 1 L', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2817, '0050176400', 1764, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2818, '0050176401', 1764, 'PAQUET', 1, 6.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1765, 'VINAIGRE FOTSY TAF [1L] GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2819, '0020176500', 1765, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1766, 'VINAIGRE SACHET SAVOUR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2820, '0020176600', 1766, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2821, '0020176601', 1766, 'BALLE', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1767, 'Vinaigre sachet taf blanc 5cl*40', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2822, '0020176700', 1767, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2823, '0020176701', 1767, 'CARTON', 1, 5.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1768, 'Vinaigre sachet taf rouge', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2824, '0020176800', 1768, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2825, '0020176801', 1768, 'CARTON', 1, 5.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1769, 'VINAIGRE SAVOUR [0.25L ] PM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2826, '0020176900', 1769, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1770, 'VINAIGRE SAVOUR [1L ] GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2827, '0020177000', 1770, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1771, 'VINAIGRE TAF FOTSY 0.25L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2828, '0020177100', 1771, 'BOUTEIL', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2829, '0020177101', 1771, 'PACK', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1772, 'VINAIGRE TAF FOTSY 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2830, '0020177200', 1772, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2831, '0020177201', 1772, 'PAQUET', 1, 6.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1773, 'VINAIGRE TAF mena (0.25l)', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2832, '0020177300', 1773, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2833, '0020177301', 1773, 'PACK', 1, 10.00, 3.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1774, 'VINAIGRE TAF MENA 1l', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2834, '0020177400', 1774, 'BOUTEILLE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2835, '0020177401', 1774, 'PACK', 1, 6.00, 6.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1775, 'VINAIGRE TSOTRA GM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2836, '0020177500', 1775, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2837, '0020177501', 1775, 'PACQUET', 1, 6.00, 6.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1776, 'VINUT COCKTAIL MIXED FRUIT JUICE 330ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2838, '0020177600', 1776, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1777, 'VINUT COCONUT WATER JUICE 330ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2839, '0020177700', 1777, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1778, 'VINUT ORANGE JUICE 330ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2840, '0020177800', 1778, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1779, 'VINUT PASSION FRUIT JUICE 330ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2841, '0020177900', 1779, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1780, 'VINUT STRAWBERRY JUICE 330ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2842, '0020178000', 1780, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1781, 'VINUT VOLTRIC 220 ENERGY JUICE 330ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2843, '0020178100', 1781, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1782, 'Vitalait 1kg', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2844, '0020178200', 1782, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2845, '0020178201', 1782, 'CARTON', 1, 8.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1783, 'Vitalait 500g', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2846, '0020178300', 1783, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2847, '0020178301', 1783, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1784, 'VNL DELUXE TOFFEES100PCS*20BAG', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2848, '0080178400', 1784, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1785, 'VNL FROYO PRETO BLACK TO RED 24PCS*16', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2849, '0080178500', 1785, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1786, 'VNL MILK LOLLIPOP BOCAL', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2850, '0080178600', 1786, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1787, 'VNL STABERRY, M, MF LOLLIPOP BOOM SPLASH', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2851, '0080178700', 1787, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1788, 'VNL STRAWBERRY LOLLIPOP BOOM SPLASH', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2852, '0080178800', 1788, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1789, 'VOANEMBA 50 kg ij', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2853, '0020178900', 1789, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1790, 'VOANEMBA FOTSY @ kapoaka', 5, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2854, '0050179000', 1790, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2855, '0050179001', 1790, 'SAC', 1, 190.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1791, 'VOANJO BORY', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2856, '0020179100', 1791, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1792, 'VOANJOBORY 25KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2857, '0020179200', 1792, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1793, 'VOANJOBORY 50KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2858, '0020179300', 1793, 'KAPOAKA', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2859, '0020179301', 1793, 'SAC', 1, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2860, '0020179302', 1793, 'KG', 2, 3.50, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1794, 'VOANJOBORY @ KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2861, '0020179400', 1794, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1795, 'VOANJOBORY EN KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2862, '0020179500', 1795, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1796, 'VOANTSIROKA MAINTSO @ KAPOAKA', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2863, '0020179600', 1796, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1797, 'VOANTSIROKA MAINTSO @ SAC', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2864, '0020179700', 1797, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1798, 'VOANTSIROKA MAVO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2865, '0020179800', 1798, 'SAC', 0, 1.00, 50.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1799, 'VOANTSIROKA MAVO @ kapoaka', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2866, '0020179900', 1799, 'KAPOAKA', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1800, 'Vovo-tsavony so klin 1kg', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2867, '0190180000', 1800, 'PIECES', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2868, '0190180001', 1800, 'CARTON', 1, 10.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1801, 'VOVON-TSAVONY B29 EN PIESES', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2869, '0190180100', 1801, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1802, 'VOVON-TSAVONY BOOM en carton', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2870, '0190180200', 1802, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2871, '0190180201', 1802, 'CARTON', 1, 150.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1803, 'VOVON-TSAVONY DENOR', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2872, '0190180300', 1803, 'SAC', 0, 1.00, 5.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1804, 'VOVON-TSAVONY EXTRA EN PCS', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2873, '0190180400', 1804, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1805, 'VOVON-TSAVONY FLOR', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2874, '0020180500', 1805, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1806, 'VOVON-TSAVONY FOM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2875, '0020180600', 1806, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1807, 'Vovon-tsavony fom en pcs', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2876, '0190180700', 1807, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1808, 'VOVON-TSAVONY OXI BLEU BREEZE', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2877, '0190180800', 1808, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1809, 'Vovon-tsavony Oxi en pcs', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2878, '0190180900', 1809, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1810, 'VOVON-TSAVONY OXI VIOLET LAVANDE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2879, '0020181000', 1810, 'CARTON', 0, 1.00, 4.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1811, 'Vovon-tsavony saba 25g en pcs', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2880, '0190181100', 1811, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1812, 'VOVON-TSAVONY SAFIDY 30G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2881, '0020181200', 1812, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1813, 'Vovon-tsavony safidy 30g en PCS', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2882, '0190181300', 1813, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1814, 'VOVON-TSAVONY SEIM', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2883, '0020181400', 1814, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1815, 'Vovon-tsavony seim en pcs', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2884, '0190181500', 1815, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1816, 'VOVON-TSAVONY UNO 30G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2885, '0020181600', 1816, 'SAC', 0, 1.00, 2.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1817, 'Vovon-tsavony uno en pcs', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2886, '0190181700', 1817, 'PCS', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1818, 'VOVON-TSAVONY VAO LINE EN PCS', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2887, '0020181800', 1818, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1819, 'Vovontsavony iriko 25g en pcs', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2888, '0190181900', 1819, 'PIECES', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1820, 'Vovontsavony iriko 25g*150', 19, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2889, '0190182000', 1820, 'SAC', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1821, 'Vovotsavony Extra Citrus', 3, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2890, '0030182100', 1821, 'CARTON', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1822, 'WORLD COLA 1.5 l', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2891, '0110182200', 1822, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2892, '0110182201', 1822, 'PAQUET', 1, 6.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1823, 'WORLD COLA 50cl', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2893, '0110182300', 1823, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1824, 'XXL 35CL', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2894, '0110182400', 1824, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2895, '0110182401', 1824, 'PACQUET', 1, 12.00, 6.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1825, 'YARICO GM', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2896, '0170182500', 1825, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2897, '0170182501', 1825, 'CARTON', 1, 24.00, 24.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1826, 'YARICO PM', 17, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2898, '0170182600', 1826, 'BOITE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2899, '0170182601', 1826, 'CARTON', 1, 50.00, 19.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1827, 'YES JUICE APPLE 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2900, '0020182700', 1827, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1828, 'YES JUICE COCKTAIL 200ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2901, '0020182800', 1828, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1829, 'YES JUICE GUAVA 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2902, '0020182900', 1829, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1830, 'YES JUICE ORANGE 200ML', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2903, '0020183000', 1830, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1831, 'YES JUICE PINEAPPLE 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2904, '0020183100', 1831, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1832, 'YES JUICE RAISIN ROUGE 1L', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2905, '0020183200', 1832, 'PIECE', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1833, 'Yogurt pop kiddo', 8, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2906, '0080183300', 1833, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2907, '0080183301', 1833, 'CARTON', 1, 20.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1834, 'YOGURT SUCETTE', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2908, '0020183400', 1834, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2909, '0020183401', 1834, 'CARTON', 1, 16.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1835, 'YOUT LAIT EN POUDRE 1KG', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2910, '0020183500', 1835, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1836, 'YOUT LAIT EN POUDRE 250G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2911, '0020183600', 1836, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1837, 'YOUT LAIT EN POUDRE 500G', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2912, '0020183700', 1837, 'SACHET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1838, 'YOUZOU 1.5l', 11, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2913, '0110183800', 1838, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1839, 'YOUZOU 50 CL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2914, '0020183900', 1839, 'PAQUET', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1840, 'Z bonbon fruit sachet', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2915, '0020184000', 1840, 'SACHET', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2916, '0020184001', 1840, 'CARTON', 1, 24.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1841, 'Z BONBON FRUITY BOCAL', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2917, '0020184100', 1841, 'BOCAL', 0, 1.00, 1.00, 0);

INSERT INTO tb_article (idarticle, designation, idca, alert, alertdepot, deleted, idmag) VALUES (1842, 'ZAKURO', 2, 0, 0, 0, 1);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2918, '0020184200', 1842, 'PIECE', 0, 1.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2919, '0020184201', 1842, 'CARTON', 1, 6.00, 1.00, 0);
INSERT INTO tb_unite (idunite, codearticle, idarticle, designationunite, niveau, qtunite, poids, deleted) VALUES (2920, '0020184202', 1842, 'PACQUET', 2, 12.00, 1.00, 0);

SELECT setval(pg_get_serial_sequence('tb_categoriearticle','idca'), COALESCE((SELECT MAX(idca) FROM tb_categoriearticle), 0), true);
SELECT setval(pg_get_serial_sequence('tb_article','idarticle'), COALESCE((SELECT MAX(idarticle) FROM tb_article), 0), true);
SELECT setval(pg_get_serial_sequence('tb_unite','idunite'), COALESCE((SELECT MAX(idunite) FROM tb_unite), 0), true);

COMMIT;
