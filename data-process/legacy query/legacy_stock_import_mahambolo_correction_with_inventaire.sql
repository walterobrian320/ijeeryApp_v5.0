-- Corrections de stock cumulés basées sur Stock_20260807173615.csv
-- Cette version insère aussi les lignes de tb_inventaire et tb_log_stock.
BEGIN;
SET search_path TO public, pg_catalog;

-- Code article 0010000900 (TOMATE BTE GEFCO) : stock actuel 30, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010000900');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010000900';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 30, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010000900');

-- Code article 0010001100 (FREGO ASS (GM)) : stock actuel 44, stock corrigé 21.7
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (21.7, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010001100');
UPDATE tb_stock SET qtstock = 21.7 WHERE idmag = 1 AND codearticle = '0010001100';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 44, 21.7, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010001100');

-- Code article 0010006300 (MIRA VAISSELLE MAIKA 0.25CL) : stock actuel 192, stock corrigé 41.3
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (41.3, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010006300');
UPDATE tb_stock SET qtstock = 41.3 WHERE idmag = 1 AND codearticle = '0010006300';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 192, 41.3, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010006300');

-- Code article 0010006500 (CAHIER ECRITURE LAUREAT) : stock actuel 8, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010006500');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010006500';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 8, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010006500');

-- Code article 0010006900 (KREAMY MIX) : stock actuel 1, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010006900');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010006900';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 1, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010006900');

-- Code article 0010007000 (KIP COCO) : stock actuel 9, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010007000');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010007000';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 9, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010007000');

-- Code article 0010007300 (DARBEL ORANGE 100CL) : stock actuel 15, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010007300');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010007300';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 15, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010007300');

-- Code article 0010007400 (JUS) : stock actuel 59, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010007400');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010007400';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 59, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010007400');

-- Code article 0010007500 (BONBON SIMON DUE) : stock actuel 16, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010007500');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010007500';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 16, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010007500');

-- Code article 0010007700 (WORLD COLA 50CL) : stock actuel 95, stock corrigé 4
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (4, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010007700');
UPDATE tb_stock SET qtstock = 4 WHERE idmag = 1 AND codearticle = '0010007700';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 95, 4, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010007700');

-- Code article 0010007900 (MENABOLO ALOE VERA FAMILY CARE 50G) : stock actuel 86, stock corrigé 22
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (22, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010007900');
UPDATE tb_stock SET qtstock = 22 WHERE idmag = 1 AND codearticle = '0010007900';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 86, 22, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010007900');

-- Code article 0010008000 (BONBON SUCETTE PM) : stock actuel 97, stock corrigé 6
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (6, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010008000');
UPDATE tb_stock SET qtstock = 6 WHERE idmag = 1 AND codearticle = '0010008000';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 97, 6, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010008000');

-- Code article 0010008600 (SACHET PM NOIRE HD20) : stock actuel 5, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010008600');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010008600';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 5, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010008600');

-- Code article 0010008800 (BISCUIT NICE BLEU PM) : stock actuel 2, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010008800');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010008800';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 2, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010008800');

-- Code article 0010009000 (POTATA 15GG) : stock actuel 10, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010009000');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010009000';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 10, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010009000');

-- Code article 0010009300 (TSARAMASO MIANDRIVAZO 50KG) : stock actuel 10, stock corrigé 5
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (5, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010009300');
UPDATE tb_stock SET qtstock = 5 WHERE idmag = 1 AND codearticle = '0010009300';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 10, 5, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010009300');

-- Code article 0010009500 (CARS POP) : stock actuel 3, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010009500');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010009500';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 3, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010009500');

-- Code article 0010009600 (FAMAFA LUX 812) : stock actuel 18, stock corrigé 9
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (9, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010009600');
UPDATE tb_stock SET qtstock = 9 WHERE idmag = 1 AND codearticle = '0010009600';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 18, 9, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010009600');

-- Code article 0010011700 (RASOIR DORCO DOUBLE) : stock actuel 0, stock corrigé 123.6
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (123.6, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010011700');
UPDATE tb_stock SET qtstock = 123.6 WHERE idmag = 1 AND codearticle = '0010011700';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 0, 123.6, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010011700');

-- Code article 0010012200 (SAF INSTANT ROUGE 11G) : stock actuel 0, stock corrigé 2706.9
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (2706.9, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010012200');
UPDATE tb_stock SET qtstock = 2706.9 WHERE idmag = 1 AND codearticle = '0010012200';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 0, 2706.9, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010012200');

-- Code article 0010012800 (RINGOS) : stock actuel 209, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010012800');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010012800';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 209, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010012800');

-- Code article 0010013300 (FENGCHIPA OPAOBANG*20X30) : stock actuel 4, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010013300');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010013300';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 4, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010013300');

-- Code article 0010013500 (BUBBLE SOURD ANIMAL EN PCS) : stock actuel 26, stock corrigé 0
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (0, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010013500');
UPDATE tb_stock SET qtstock = 0 WHERE idmag = 1 AND codearticle = '0010013500';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 26, 0, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010013500');

-- Code article 0010014800 (FRANCE COILS ROSE JASMIN) : stock actuel 4, stock corrigé 37.6
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (37.6, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010014800');
UPDATE tb_stock SET qtstock = 37.6 WHERE idmag = 1 AND codearticle = '0010014800';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 4, 37.6, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010014800');

-- Code article 0010015100 (ENVELOPPES NITRO GM FORMAT C4) : stock actuel 0, stock corrigé 153
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (153, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010015100');
UPDATE tb_stock SET qtstock = 153 WHERE idmag = 1 AND codearticle = '0010015100';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 0, 153, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010015100');

-- Code article 0010017800 (MAMANGOUT CUBE POULET) : stock actuel 88, stock corrigé 150.4
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (150.4, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010017800');
UPDATE tb_stock SET qtstock = 150.4 WHERE idmag = 1 AND codearticle = '0010017800';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 88, 150.4, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010017800');

-- Code article 0010017900 (CARRY DOYPACK EN SACHET) : stock actuel 23, stock corrigé 70.4
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (70.4, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010017900');
UPDATE tb_stock SET qtstock = 70.4 WHERE idmag = 1 AND codearticle = '0010017900';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 23, 70.4, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010017900');

-- Code article 0010018000 (COLORANT PARFUM NANDI'S STRAWBERRY) : stock actuel 0, stock corrigé 2.2
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (2.2, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010018000');
UPDATE tb_stock SET qtstock = 2.2 WHERE idmag = 1 AND codearticle = '0010018000';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 0, 2.2, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010018000');

-- Code article 0010019800 (MILAY BE MINI BAR A FROMAGES 24PCS*10) : stock actuel 0, stock corrigé 4
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (4, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0010019800');
UPDATE tb_stock SET qtstock = 4 WHERE idmag = 1 AND codearticle = '0010019800';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 0, 4, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0010019800');

-- Code article 0110017300 (SAVON MOREVA ROSE 4*100G) : stock actuel 0, stock corrigé 2
INSERT INTO tb_inventaire (qtinventaire, observation, date, iduser, idmag, codearticle)
VALUES (2, 'Correction inventaire Mahambolo', CURRENT_TIMESTAMP, 1, 1, '0110017300');
UPDATE tb_stock SET qtstock = 2 WHERE idmag = 1 AND codearticle = '0110017300';
INSERT INTO tb_log_stock (idmag, ancien_stock, nouveau_stock, date_action, iduser, type_action, codearticle)
VALUES (1, 0, 2, CURRENT_TIMESTAMP, 1, 'Correction inventaire Mahambolo', '0110017300');

COMMIT;
