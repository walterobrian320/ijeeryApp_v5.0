-- Generated cascade delete SQL (review before running)
-- Ensures tb_inventaire for article has no non-zero qtinventaire before deleting

-- IdArticle=3205 , Designation=GROS POID , Unite=KAPOAKA , IdUnite=4218 , CodeArticle=0180320500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3205 AND idunite=4218;
DELETE FROM tb_log_stock WHERE codearticle='0180320500';
DELETE FROM tb_inventaire WHERE codearticle='0180320500';
DELETE FROM tb_stock WHERE codearticle='0180320500';
DELETE FROM tb_article WHERE idarticle=3205;
DELETE FROM tb_unite WHERE idunite=4218 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4218) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4218);
COMMIT;

-- IdArticle=3139 , Designation=GROS POID , Unite=SAC , IdUnite=4128 , CodeArticle=0180313900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3139 AND idunite=4128;
DELETE FROM tb_log_stock WHERE codearticle='0180313900';
DELETE FROM tb_inventaire WHERE codearticle='0180313900';
DELETE FROM tb_stock WHERE codearticle='0180313900';
DELETE FROM tb_article WHERE idarticle=3139;
DELETE FROM tb_unite WHERE idunite=4128 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4128) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4128);
COMMIT;

-- IdArticle=3139 , Designation=GROS POID 50KG , Unite=SAC , IdUnite=4128 , CodeArticle=0180313900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3139 AND idunite=4128;
DELETE FROM tb_log_stock WHERE codearticle='0180313900';
DELETE FROM tb_inventaire WHERE codearticle='0180313900';
DELETE FROM tb_stock WHERE codearticle='0180313900';
DELETE FROM tb_article WHERE idarticle=3139;
DELETE FROM tb_unite WHERE idunite=4128 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4128) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4128);
COMMIT;

-- IdArticle=3205 , Designation=GROS POID EN KAPOAKA , Unite=KAPOAKA , IdUnite=4218 , CodeArticle=0180320500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3205 AND idunite=4218;
DELETE FROM tb_log_stock WHERE codearticle='0180320500';
DELETE FROM tb_inventaire WHERE codearticle='0180320500';
DELETE FROM tb_stock WHERE codearticle='0180320500';
DELETE FROM tb_article WHERE idarticle=3205;
DELETE FROM tb_unite WHERE idunite=4218 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4218) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4218);
COMMIT;

-- IdArticle=2078 , Designation=HARAKA FOTSY GONY , Unite=SAC , IdUnite=2790 , CodeArticle=0170207800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2078 AND idunite=2790;
DELETE FROM tb_log_stock WHERE codearticle='0170207800';
DELETE FROM tb_inventaire WHERE codearticle='0170207800';
DELETE FROM tb_stock WHERE codearticle='0170207800';
DELETE FROM tb_article WHERE idarticle=2078;
DELETE FROM tb_unite WHERE idunite=2790 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2790) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2790);
COMMIT;

-- IdArticle=3087 , Designation=HILE MOTEUR SPARTANS SAE 30 , Unite=JERYCAN , IdUnite=4047 , CodeArticle=0030308700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3087 AND idunite=4047;
DELETE FROM tb_log_stock WHERE codearticle='0030308700';
DELETE FROM tb_inventaire WHERE codearticle='0030308700';
DELETE FROM tb_stock WHERE codearticle='0030308700';
DELETE FROM tb_article WHERE idarticle=3087;
DELETE FROM tb_unite WHERE idunite=4047 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4047) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4047);
COMMIT;

-- IdArticle=2516 , Designation=HUILE 20W50 ESSENCE EN LITRE , Unite=LITRE , IdUnite=3305 , CodeArticle=0340251600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2516 AND idunite=3305;
DELETE FROM tb_log_stock WHERE codearticle='0340251600';
DELETE FROM tb_inventaire WHERE codearticle='0340251600';
DELETE FROM tb_stock WHERE codearticle='0340251600';
DELETE FROM tb_article WHERE idarticle=2516;
DELETE FROM tb_unite WHERE idunite=3305 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3305) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3305);
COMMIT;

-- IdArticle=2243 , Designation=HUILE COCO TOP 18KG , Unite=DABA , IdUnite=2985 , CodeArticle=0370224300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2243 AND idunite=2985;
DELETE FROM tb_log_stock WHERE codearticle='0370224300';
DELETE FROM tb_inventaire WHERE codearticle='0370224300';
DELETE FROM tb_stock WHERE codearticle='0370224300';
DELETE FROM tb_article WHERE idarticle=2243;
DELETE FROM tb_unite WHERE idunite=2985 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2985) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2985);
COMMIT;

-- IdArticle=3709 , Designation=HUILE ELVIA EN JERYCAN 10L , Unite=JERYCAN , IdUnite=4899 , CodeArticle=0370370900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3709 AND idunite=4899;
DELETE FROM tb_log_stock WHERE codearticle='0370370900';
DELETE FROM tb_inventaire WHERE codearticle='0370370900';
DELETE FROM tb_stock WHERE codearticle='0370370900';
DELETE FROM tb_article WHERE idarticle=3709;
DELETE FROM tb_unite WHERE idunite=4899 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4899) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4899);
COMMIT;

-- IdArticle=3187 , Designation=HUILE EVITA 250CL , Unite=PIECE , IdUnite=4190 , CodeArticle=0260318700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3187 AND idunite=4190;
DELETE FROM tb_log_stock WHERE codearticle='0260318700';
DELETE FROM tb_inventaire WHERE codearticle='0260318700';
DELETE FROM tb_stock WHERE codearticle='0260318700';
DELETE FROM tb_article WHERE idarticle=3187;
DELETE FROM tb_unite WHERE idunite=4190 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4190) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4190);
COMMIT;

-- IdArticle=2670 , Designation=HUILE HAYAT , Unite=JERYCAN , IdUnite=3526 , CodeArticle=0260267000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2670 AND idunite=3526;
DELETE FROM tb_log_stock WHERE codearticle='0260267000';
DELETE FROM tb_inventaire WHERE codearticle='0260267000';
DELETE FROM tb_stock WHERE codearticle='0260267000';
DELETE FROM tb_article WHERE idarticle=2670;
DELETE FROM tb_unite WHERE idunite=3526 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3526) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3526);
COMMIT;

-- IdArticle=2664 , Designation=HUILE TOURNESOL 1L , Unite=PIECE , IdUnite=3517 , CodeArticle=0370266400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2664 AND idunite=3517;
DELETE FROM tb_log_stock WHERE codearticle='0370266400';
DELETE FROM tb_inventaire WHERE codearticle='0370266400';
DELETE FROM tb_stock WHERE codearticle='0370266400';
DELETE FROM tb_article WHERE idarticle=2664;
DELETE FROM tb_unite WHERE idunite=3517 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3517) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3517);
COMMIT;

-- IdArticle=2665 , Designation=HUILE TOURNESOL 5L , Unite=PIECE , IdUnite=3519 , CodeArticle=0370266500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2665 AND idunite=3519;
DELETE FROM tb_log_stock WHERE codearticle='0370266500';
DELETE FROM tb_inventaire WHERE codearticle='0370266500';
DELETE FROM tb_stock WHERE codearticle='0370266500';
DELETE FROM tb_article WHERE idarticle=2665;
DELETE FROM tb_unite WHERE idunite=3519 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3519) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3519);
COMMIT;

-- IdArticle=3113 , Designation=HUILE TOURNESOL COEUR D'OR 1L , Unite=PIECE , IdUnite=4092 , CodeArticle=0260311300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3113 AND idunite=4092;
DELETE FROM tb_log_stock WHERE codearticle='0260311300';
DELETE FROM tb_inventaire WHERE codearticle='0260311300';
DELETE FROM tb_stock WHERE codearticle='0260311300';
DELETE FROM tb_article WHERE idarticle=3113;
DELETE FROM tb_unite WHERE idunite=4092 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4092) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4092);
COMMIT;

-- IdArticle=4019 , Designation=HUILE TOURNESOL LUSSO 1L , Unite=BOUTEILLE , IdUnite=5433 , CodeArticle=0260401900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4019 AND idunite=5433;
DELETE FROM tb_log_stock WHERE codearticle='0260401900';
DELETE FROM tb_inventaire WHERE codearticle='0260401900';
DELETE FROM tb_stock WHERE codearticle='0260401900';
DELETE FROM tb_article WHERE idarticle=4019;
DELETE FROM tb_unite WHERE idunite=5433 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5433) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5433);
COMMIT;

-- IdArticle=3578 , Designation=HUILE TOURNESOL SUNLIFE 1L , Unite=BOUTEIL , IdUnite=4707 , CodeArticle=0260357800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3578 AND idunite=4707;
DELETE FROM tb_log_stock WHERE codearticle='0260357800';
DELETE FROM tb_inventaire WHERE codearticle='0260357800';
DELETE FROM tb_stock WHERE codearticle='0260357800';
DELETE FROM tb_article WHERE idarticle=3578;
DELETE FROM tb_unite WHERE idunite=4707 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4707) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4707);
COMMIT;

-- IdArticle=2647 , Designation=HUILE WHITE LILY OIL , Unite=JERYCAN , IdUnite=3491 , CodeArticle=0260264700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2647 AND idunite=3491;
DELETE FROM tb_log_stock WHERE codearticle='0260264700';
DELETE FROM tb_inventaire WHERE codearticle='0260264700';
DELETE FROM tb_stock WHERE codearticle='0260264700';
DELETE FROM tb_article WHERE idarticle=2647;
DELETE FROM tb_unite WHERE idunite=3491 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3491) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3491);
COMMIT;

-- IdArticle=3849 , Designation=JELLY BEAN , Unite=BOITE , IdUnite=5137 , CodeArticle=0040384900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3849 AND idunite=5137;
DELETE FROM tb_log_stock WHERE codearticle='0040384900';
DELETE FROM tb_inventaire WHERE codearticle='0040384900';
DELETE FROM tb_stock WHERE codearticle='0040384900';
DELETE FROM tb_article WHERE idarticle=3849;
DELETE FROM tb_unite WHERE idunite=5137 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5137) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5137);
COMMIT;

-- IdArticle=2167 , Designation=JELLY_CUP , Unite=SACHET , IdUnite=2887 , CodeArticle=0040216700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2167 AND idunite=2887;
DELETE FROM tb_log_stock WHERE codearticle='0040216700';
DELETE FROM tb_inventaire WHERE codearticle='0040216700';
DELETE FROM tb_stock WHERE codearticle='0040216700';
DELETE FROM tb_article WHERE idarticle=2167;
DELETE FROM tb_unite WHERE idunite=2887 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2887) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2887);
COMMIT;

-- IdArticle=2168 , Designation=JELLY_STICK , Unite=SACHET , IdUnite=2889 , CodeArticle=0040216800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2168 AND idunite=2889;
DELETE FROM tb_log_stock WHERE codearticle='0040216800';
DELETE FROM tb_inventaire WHERE codearticle='0040216800';
DELETE FROM tb_stock WHERE codearticle='0040216800';
DELETE FROM tb_article WHERE idarticle=2168;
DELETE FROM tb_unite WHERE idunite=2889 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2889) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2889);
COMMIT;

-- IdArticle=2667 , Designation=JUMBO EN PIECE , Unite=PIECE , IdUnite=3523 , CodeArticle=0040266700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2667 AND idunite=3523;
DELETE FROM tb_log_stock WHERE codearticle='0040266700';
DELETE FROM tb_inventaire WHERE codearticle='0040266700';
DELETE FROM tb_stock WHERE codearticle='0040266700';
DELETE FROM tb_article WHERE idarticle=2667;
DELETE FROM tb_unite WHERE idunite=3523 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3523) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3523);
COMMIT;

-- IdArticle=3926 , Designation=JUS EN BOITE TOFFEE JELLY , Unite=BOITE , IdUnite=5279 , CodeArticle=0040392600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3926 AND idunite=5279;
DELETE FROM tb_log_stock WHERE codearticle='0040392600';
DELETE FROM tb_inventaire WHERE codearticle='0040392600';
DELETE FROM tb_stock WHERE codearticle='0040392600';
DELETE FROM tb_article WHERE idarticle=3926;
DELETE FROM tb_unite WHERE idunite=5279 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5279) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5279);
COMMIT;

-- IdArticle=759 , Designation=JUS EN POT , Unite=PIECE , IdUnite=959 , CodeArticle=0030075900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=759 AND idunite=959;
DELETE FROM tb_log_stock WHERE codearticle='0030075900';
DELETE FROM tb_inventaire WHERE codearticle='0030075900';
DELETE FROM tb_stock WHERE codearticle='0030075900';
DELETE FROM tb_article WHERE idarticle=759;
DELETE FROM tb_unite WHERE idunite=959 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=959) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=959);
COMMIT;

-- IdArticle=3338 , Designation=JUS GOLDEN COCKTAIL , Unite=BOITE , IdUnite=4368 , CodeArticle=0200333800
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3338 AND idunite=4368;
DELETE FROM tb_log_stock WHERE codearticle='0200333800';
DELETE FROM tb_inventaire WHERE codearticle='0200333800';
DELETE FROM tb_stock WHERE codearticle='0200333800';
DELETE FROM tb_article WHERE idarticle=3338;
DELETE FROM tb_unite WHERE idunite=4368 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4368) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4368);
COMMIT;

-- IdArticle=3339 , Designation=JUS GOLDEN COCONUT , Unite=BOITE , IdUnite=4371 , CodeArticle=0200333900
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3339 AND idunite=4371;
DELETE FROM tb_log_stock WHERE codearticle='0200333900';
DELETE FROM tb_inventaire WHERE codearticle='0200333900';
DELETE FROM tb_stock WHERE codearticle='0200333900';
DELETE FROM tb_article WHERE idarticle=3339;
DELETE FROM tb_unite WHERE idunite=4371 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4371) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4371);
COMMIT;

-- IdArticle=3334 , Designation=JUS GOLDEN FRAISE , Unite=BOITE , IdUnite=4356 , CodeArticle=0200333400
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3334 AND idunite=4356;
DELETE FROM tb_log_stock WHERE codearticle='0200333400';
DELETE FROM tb_inventaire WHERE codearticle='0200333400';
DELETE FROM tb_stock WHERE codearticle='0200333400';
DELETE FROM tb_article WHERE idarticle=3334;
DELETE FROM tb_unite WHERE idunite=4356 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4356) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4356);
COMMIT;

-- IdArticle=765 , Designation=JUS GOLDEN FRAISE , Unite=CARTON , IdUnite=968 , CodeArticle=0030076500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=765 AND idunite=968;
DELETE FROM tb_log_stock WHERE codearticle='0030076500';
DELETE FROM tb_inventaire WHERE codearticle='0030076500';
DELETE FROM tb_stock WHERE codearticle='0030076500';
DELETE FROM tb_article WHERE idarticle=765;
DELETE FROM tb_unite WHERE idunite=968 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=968) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=968);
COMMIT;

-- IdArticle=3336 , Designation=JUS GOLDEN LEMON , Unite=BOITE , IdUnite=4362 , CodeArticle=0200333600
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3336 AND idunite=4362;
DELETE FROM tb_log_stock WHERE codearticle='0200333600';
DELETE FROM tb_inventaire WHERE codearticle='0200333600';
DELETE FROM tb_stock WHERE codearticle='0200333600';
DELETE FROM tb_article WHERE idarticle=3336;
DELETE FROM tb_unite WHERE idunite=4362 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4362) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4362);
COMMIT;

-- IdArticle=766 , Designation=JUS GOLDEN LEMON , Unite=CARTON , IdUnite=969 , CodeArticle=0030076600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=766 AND idunite=969;
DELETE FROM tb_log_stock WHERE codearticle='0030076600';
DELETE FROM tb_inventaire WHERE codearticle='0030076600';
DELETE FROM tb_stock WHERE codearticle='0030076600';
DELETE FROM tb_article WHERE idarticle=766;
DELETE FROM tb_unite WHERE idunite=969 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=969) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=969);
COMMIT;

-- IdArticle=3335 , Designation=JUS GOLDEN ORANGE , Unite=BOITE , IdUnite=4359 , CodeArticle=0200333500
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3335 AND idunite=4359;
DELETE FROM tb_log_stock WHERE codearticle='0200333500';
DELETE FROM tb_inventaire WHERE codearticle='0200333500';
DELETE FROM tb_stock WHERE codearticle='0200333500';
DELETE FROM tb_article WHERE idarticle=3335;
DELETE FROM tb_unite WHERE idunite=4359 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4359) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4359);
COMMIT;

-- IdArticle=3337 , Designation=JUS GOLDEN PINEAPLE , Unite=BOITE , IdUnite=4365 , CodeArticle=0200333700
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3337 AND idunite=4365;
DELETE FROM tb_log_stock WHERE codearticle='0200333700';
DELETE FROM tb_inventaire WHERE codearticle='0200333700';
DELETE FROM tb_stock WHERE codearticle='0200333700';
DELETE FROM tb_article WHERE idarticle=3337;
DELETE FROM tb_unite WHERE idunite=4365 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4365) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4365);
COMMIT;

-- IdArticle=2527 , Designation=JUS LE FRUIT , Unite=PIECE , IdUnite=3323 , CodeArticle=0040252700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2527 AND idunite=3323;
DELETE FROM tb_log_stock WHERE codearticle='0040252700';
DELETE FROM tb_inventaire WHERE codearticle='0040252700';
DELETE FROM tb_stock WHERE codearticle='0040252700';
DELETE FROM tb_article WHERE idarticle=2527;
DELETE FROM tb_unite WHERE idunite=3323 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3323) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3323);
COMMIT;

-- IdArticle=2696 , Designation=JUS LE FRUIT , Unite=PIECE , IdUnite=3570 , CodeArticle=0200269600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2696 AND idunite=3570;
DELETE FROM tb_log_stock WHERE codearticle='0200269600';
DELETE FROM tb_inventaire WHERE codearticle='0200269600';
DELETE FROM tb_stock WHERE codearticle='0200269600';
DELETE FROM tb_article WHERE idarticle=2696;
DELETE FROM tb_unite WHERE idunite=3570 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3570) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3570);
COMMIT;

-- IdArticle=4249 , Designation=JUS LE FRUIT , Unite=PIECE , IdUnite=5859 , CodeArticle=0230424900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4249 AND idunite=5859;
DELETE FROM tb_log_stock WHERE codearticle='0230424900';
DELETE FROM tb_inventaire WHERE codearticle='0230424900';
DELETE FROM tb_stock WHERE codearticle='0230424900';
DELETE FROM tb_article WHERE idarticle=4249;
DELETE FROM tb_unite WHERE idunite=5859 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5859) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5859);
COMMIT;

-- IdArticle=3934 , Designation=JUS SAMIA COLA , Unite=BOITE , IdUnite=5295 , CodeArticle=0040393400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3934 AND idunite=5295;
DELETE FROM tb_log_stock WHERE codearticle='0040393400';
DELETE FROM tb_inventaire WHERE codearticle='0040393400';
DELETE FROM tb_stock WHERE codearticle='0040393400';
DELETE FROM tb_article WHERE idarticle=3934;
DELETE FROM tb_unite WHERE idunite=5295 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5295) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5295);
COMMIT;

-- IdArticle=3937 , Designation=JUS SAMIA FRAISE , Unite=BOITE , IdUnite=5301 , CodeArticle=0040393700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3937 AND idunite=5301;
DELETE FROM tb_log_stock WHERE codearticle='0040393700';
DELETE FROM tb_inventaire WHERE codearticle='0040393700';
DELETE FROM tb_stock WHERE codearticle='0040393700';
DELETE FROM tb_article WHERE idarticle=3937;
DELETE FROM tb_unite WHERE idunite=5301 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5301) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5301);
COMMIT;

-- IdArticle=777 , Designation=JUS SAMIA ORANGE , Unite=BOITE , IdUnite=984 , CodeArticle=0030077700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=777 AND idunite=984;
DELETE FROM tb_log_stock WHERE codearticle='0030077700';
DELETE FROM tb_inventaire WHERE codearticle='0030077700';
DELETE FROM tb_stock WHERE codearticle='0030077700';
DELETE FROM tb_article WHERE idarticle=777;
DELETE FROM tb_unite WHERE idunite=984 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=984) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=984);
COMMIT;

-- IdArticle=3935 , Designation=JUS SAMIA ORANGE , Unite=BOITE , IdUnite=5297 , CodeArticle=0040393500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3935 AND idunite=5297;
DELETE FROM tb_log_stock WHERE codearticle='0040393500';
DELETE FROM tb_inventaire WHERE codearticle='0040393500';
DELETE FROM tb_stock WHERE codearticle='0040393500';
DELETE FROM tb_article WHERE idarticle=3935;
DELETE FROM tb_unite WHERE idunite=5297 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5297) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5297);
COMMIT;

-- IdArticle=1892 , Designation=JUS SHAMPART , Unite=BOITE , IdUnite=2539 , CodeArticle=0200189200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1892 AND idunite=2539;
DELETE FROM tb_log_stock WHERE codearticle='0200189200';
DELETE FROM tb_inventaire WHERE codearticle='0200189200';
DELETE FROM tb_stock WHERE codearticle='0200189200';
DELETE FROM tb_article WHERE idarticle=1892;
DELETE FROM tb_unite WHERE idunite=2539 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2539) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2539);
COMMIT;

-- IdArticle=1893 , Designation=JUS SHAMPART , Unite=BOITE , IdUnite=2541 , CodeArticle=0200189300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1893 AND idunite=2541;
DELETE FROM tb_log_stock WHERE codearticle='0200189300';
DELETE FROM tb_inventaire WHERE codearticle='0200189300';
DELETE FROM tb_stock WHERE codearticle='0200189300';
DELETE FROM tb_article WHERE idarticle=1893;
DELETE FROM tb_unite WHERE idunite=2541 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2541) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2541);
COMMIT;

-- IdArticle=1894 , Designation=JUS SHAMPART , Unite=BOITE , IdUnite=2543 , CodeArticle=0200189400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1894 AND idunite=2543;
DELETE FROM tb_log_stock WHERE codearticle='0200189400';
DELETE FROM tb_inventaire WHERE codearticle='0200189400';
DELETE FROM tb_stock WHERE codearticle='0200189400';
DELETE FROM tb_article WHERE idarticle=1894;
DELETE FROM tb_unite WHERE idunite=2543 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2543) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2543);
COMMIT;

-- IdArticle=1895 , Designation=JUS SHAMPART , Unite=BOITE , IdUnite=2545 , CodeArticle=0200189500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1895 AND idunite=2545;
DELETE FROM tb_log_stock WHERE codearticle='0200189500';
DELETE FROM tb_inventaire WHERE codearticle='0200189500';
DELETE FROM tb_stock WHERE codearticle='0200189500';
DELETE FROM tb_article WHERE idarticle=1895;
DELETE FROM tb_unite WHERE idunite=2545 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2545) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2545);
COMMIT;

-- IdArticle=1896 , Designation=JUS SHAMPART , Unite=BOITE , IdUnite=2547 , CodeArticle=0200189600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1896 AND idunite=2547;
DELETE FROM tb_log_stock WHERE codearticle='0200189600';
DELETE FROM tb_inventaire WHERE codearticle='0200189600';
DELETE FROM tb_stock WHERE codearticle='0200189600';
DELETE FROM tb_article WHERE idarticle=1896;
DELETE FROM tb_unite WHERE idunite=2547 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2547) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2547);
COMMIT;

-- IdArticle=1967 , Designation=JUS SHAMPART , Unite=BOITE , IdUnite=2652 , CodeArticle=0200196700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1967 AND idunite=2652;
DELETE FROM tb_log_stock WHERE codearticle='0200196700';
DELETE FROM tb_inventaire WHERE codearticle='0200196700';
DELETE FROM tb_stock WHERE codearticle='0200196700';
DELETE FROM tb_article WHERE idarticle=1967;
DELETE FROM tb_unite WHERE idunite=2652 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2652) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2652);
COMMIT;

-- IdArticle=1892 , Designation=JUS SHAMPART ANANAS , Unite=BOITE , IdUnite=2539 , CodeArticle=0200189200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1892 AND idunite=2539;
DELETE FROM tb_log_stock WHERE codearticle='0200189200';
DELETE FROM tb_inventaire WHERE codearticle='0200189200';
DELETE FROM tb_stock WHERE codearticle='0200189200';
DELETE FROM tb_article WHERE idarticle=1892;
DELETE FROM tb_unite WHERE idunite=2539 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2539) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2539);
COMMIT;

-- IdArticle=1895 , Designation=JUS SHAMPART COCTAIL , Unite=BOITE , IdUnite=2545 , CodeArticle=0200189500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1895 AND idunite=2545;
DELETE FROM tb_log_stock WHERE codearticle='0200189500';
DELETE FROM tb_inventaire WHERE codearticle='0200189500';
DELETE FROM tb_stock WHERE codearticle='0200189500';
DELETE FROM tb_article WHERE idarticle=1895;
DELETE FROM tb_unite WHERE idunite=2545 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2545) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2545);
COMMIT;

-- IdArticle=1893 , Designation=JUS SHAMPART COLA , Unite=BOITE , IdUnite=2541 , CodeArticle=0200189300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1893 AND idunite=2541;
DELETE FROM tb_log_stock WHERE codearticle='0200189300';
DELETE FROM tb_inventaire WHERE codearticle='0200189300';
DELETE FROM tb_stock WHERE codearticle='0200189300';
DELETE FROM tb_article WHERE idarticle=1893;
DELETE FROM tb_unite WHERE idunite=2541 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2541) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2541);
COMMIT;

-- IdArticle=1894 , Designation=JUS SHAMPART FRAISE , Unite=BOITE , IdUnite=2543 , CodeArticle=0200189400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1894 AND idunite=2543;
DELETE FROM tb_log_stock WHERE codearticle='0200189400';
DELETE FROM tb_inventaire WHERE codearticle='0200189400';
DELETE FROM tb_stock WHERE codearticle='0200189400';
DELETE FROM tb_article WHERE idarticle=1894;
DELETE FROM tb_unite WHERE idunite=2543 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2543) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2543);
COMMIT;

-- IdArticle=1896 , Designation=JUS SHAMPART ORANGE , Unite=BOITE , IdUnite=2547 , CodeArticle=0200189600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1896 AND idunite=2547;
DELETE FROM tb_log_stock WHERE codearticle='0200189600';
DELETE FROM tb_inventaire WHERE codearticle='0200189600';
DELETE FROM tb_stock WHERE codearticle='0200189600';
DELETE FROM tb_article WHERE idarticle=1896;
DELETE FROM tb_unite WHERE idunite=2547 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2547) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2547);
COMMIT;

-- IdArticle=1967 , Designation=JUS SHAMPART PIN , Unite=BOITE , IdUnite=2652 , CodeArticle=0200196700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1967 AND idunite=2652;
DELETE FROM tb_log_stock WHERE codearticle='0200196700';
DELETE FROM tb_inventaire WHERE codearticle='0200196700';
DELETE FROM tb_stock WHERE codearticle='0200196700';
DELETE FROM tb_article WHERE idarticle=1967;
DELETE FROM tb_unite WHERE idunite=2652 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2652) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2652);
COMMIT;

-- IdArticle=1957 , Designation=JUS TAAMA DRINK FRAISE , Unite=BOITE , IdUnite=2627 , CodeArticle=0200195700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1957 AND idunite=2627;
DELETE FROM tb_log_stock WHERE codearticle='0200195700';
DELETE FROM tb_inventaire WHERE codearticle='0200195700';
DELETE FROM tb_stock WHERE codearticle='0200195700';
DELETE FROM tb_article WHERE idarticle=1957;
DELETE FROM tb_unite WHERE idunite=2627 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2627) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2627);
COMMIT;

-- IdArticle=2166 , Designation=JUS_CLARINETTE , Unite=PIECE , IdUnite=2885 , CodeArticle=0040216600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2166 AND idunite=2885;
DELETE FROM tb_log_stock WHERE codearticle='0040216600';
DELETE FROM tb_inventaire WHERE codearticle='0040216600';
DELETE FROM tb_stock WHERE codearticle='0040216600';
DELETE FROM tb_article WHERE idarticle=2166;
DELETE FROM tb_unite WHERE idunite=2885 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2885) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2885);
COMMIT;

-- IdArticle=3066 , Designation=KATSAKA VAINGANY , Unite=KILOS , IdUnite=4013 , CodeArticle=0180306600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3066 AND idunite=4013;
DELETE FROM tb_log_stock WHERE codearticle='0180306600';
DELETE FROM tb_inventaire WHERE codearticle='0180306600';
DELETE FROM tb_stock WHERE codearticle='0180306600';
DELETE FROM tb_article WHERE idarticle=3066;
DELETE FROM tb_unite WHERE idunite=4013 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4013) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4013);
COMMIT;

-- IdArticle=3050 , Designation=KATSAKA VOATOTO EN KILO , Unite=KILOS , IdUnite=3996 , CodeArticle=0040305000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3050 AND idunite=3996;
DELETE FROM tb_log_stock WHERE codearticle='0040305000';
DELETE FROM tb_inventaire WHERE codearticle='0040305000';
DELETE FROM tb_stock WHERE codearticle='0040305000';
DELETE FROM tb_article WHERE idarticle=3050;
DELETE FROM tb_unite WHERE idunite=3996 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3996) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3996);
COMMIT;

-- IdArticle=3599 , Designation=KETCHUP , Unite=PIECE , IdUnite=4735 , CodeArticle=0040359900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3599 AND idunite=4735;
DELETE FROM tb_log_stock WHERE codearticle='0040359900';
DELETE FROM tb_inventaire WHERE codearticle='0040359900';
DELETE FROM tb_stock WHERE codearticle='0040359900';
DELETE FROM tb_article WHERE idarticle=3599;
DELETE FROM tb_unite WHERE idunite=4735 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4735) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4735);
COMMIT;

-- IdArticle=3599 , Designation=KETCHUP EUROPA 340G , Unite=PIECE , IdUnite=4735 , CodeArticle=0040359900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3599 AND idunite=4735;
DELETE FROM tb_log_stock WHERE codearticle='0040359900';
DELETE FROM tb_inventaire WHERE codearticle='0040359900';
DELETE FROM tb_stock WHERE codearticle='0040359900';
DELETE FROM tb_article WHERE idarticle=3599;
DELETE FROM tb_unite WHERE idunite=4735 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4735) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4735);
COMMIT;

-- IdArticle=2654 , Designation=KIP COCO , Unite=SACHET , IdUnite=3501 , CodeArticle=0040265400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2654 AND idunite=3501;
DELETE FROM tb_log_stock WHERE codearticle='0040265400';
DELETE FROM tb_inventaire WHERE codearticle='0040265400';
DELETE FROM tb_stock WHERE codearticle='0040265400';
DELETE FROM tb_article WHERE idarticle=2654;
DELETE FROM tb_unite WHERE idunite=3501 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3501) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3501);
COMMIT;

-- IdArticle=2162 , Designation=KISO FOHY_DIAMANT , Unite=PIECE , IdUnite=2877 , CodeArticle=0130216200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2162 AND idunite=2877;
DELETE FROM tb_log_stock WHERE codearticle='0130216200';
DELETE FROM tb_inventaire WHERE codearticle='0130216200';
DELETE FROM tb_stock WHERE codearticle='0130216200';
DELETE FROM tb_article WHERE idarticle=2162;
DELETE FROM tb_unite WHERE idunite=2877 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2877) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2877);
COMMIT;

-- IdArticle=2163 , Designation=KISO LAVA_DIAMANT , Unite=PIECE , IdUnite=2879 , CodeArticle=0130216300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2163 AND idunite=2879;
DELETE FROM tb_log_stock WHERE codearticle='0130216300';
DELETE FROM tb_inventaire WHERE codearticle='0130216300';
DELETE FROM tb_stock WHERE codearticle='0130216300';
DELETE FROM tb_article WHERE idarticle=2163;
DELETE FROM tb_unite WHERE idunite=2879 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2879) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2879);
COMMIT;

-- IdArticle=3989 , Designation=KOBA AINA BANANA 35G , Unite=PIECE , IdUnite=5381 , CodeArticle=0040398900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3989 AND idunite=5381;
DELETE FROM tb_log_stock WHERE codearticle='0040398900';
DELETE FROM tb_inventaire WHERE codearticle='0040398900';
DELETE FROM tb_stock WHERE codearticle='0040398900';
DELETE FROM tb_article WHERE idarticle=3989;
DELETE FROM tb_unite WHERE idunite=5381 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5381) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5381);
COMMIT;

-- IdArticle=3990 , Designation=KOBA AINA FRAISE 35G , Unite=PIECE , IdUnite=5383 , CodeArticle=0040399000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3990 AND idunite=5383;
DELETE FROM tb_log_stock WHERE codearticle='0040399000';
DELETE FROM tb_inventaire WHERE codearticle='0040399000';
DELETE FROM tb_stock WHERE codearticle='0040399000';
DELETE FROM tb_article WHERE idarticle=3990;
DELETE FROM tb_unite WHERE idunite=5383 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5383) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5383);
COMMIT;

-- IdArticle=817 , Designation=KOBA AINA FRAISE 35G , Unite=SACHET , IdUnite=1033 , CodeArticle=0040081700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=817 AND idunite=1033;
DELETE FROM tb_log_stock WHERE codearticle='0040081700';
DELETE FROM tb_inventaire WHERE codearticle='0040081700';
DELETE FROM tb_stock WHERE codearticle='0040081700';
DELETE FROM tb_article WHERE idarticle=817;
DELETE FROM tb_unite WHERE idunite=1033 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1033) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1033);
COMMIT;

-- IdArticle=818 , Designation=KOBA AINA MOOSLI 25GR , Unite=SACHET , IdUnite=1035 , CodeArticle=0030081800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=818 AND idunite=1035;
DELETE FROM tb_log_stock WHERE codearticle='0030081800';
DELETE FROM tb_inventaire WHERE codearticle='0030081800';
DELETE FROM tb_stock WHERE codearticle='0030081800';
DELETE FROM tb_article WHERE idarticle=818;
DELETE FROM tb_unite WHERE idunite=1035 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1035) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1035);
COMMIT;

-- IdArticle=3991 , Designation=KOBA AINA NATURE 35G , Unite=PIECE , IdUnite=5385 , CodeArticle=0040399100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3991 AND idunite=5385;
DELETE FROM tb_log_stock WHERE codearticle='0040399100';
DELETE FROM tb_inventaire WHERE codearticle='0040399100';
DELETE FROM tb_stock WHERE codearticle='0040399100';
DELETE FROM tb_article WHERE idarticle=3991;
DELETE FROM tb_unite WHERE idunite=5385 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5385) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5385);
COMMIT;

-- IdArticle=3418 , Designation=KOBA SOJA , Unite=PIECE , IdUnite=4469 , CodeArticle=0360341800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3418 AND idunite=4469;
DELETE FROM tb_log_stock WHERE codearticle='0360341800';
DELETE FROM tb_inventaire WHERE codearticle='0360341800';
DELETE FROM tb_stock WHERE codearticle='0360341800';
DELETE FROM tb_article WHERE idarticle=3418;
DELETE FROM tb_unite WHERE idunite=4469 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4469) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4469);
COMMIT;

-- IdArticle=2644 , Designation=KOBAM-BARY 25KG , Unite=SAC , IdUnite=3487 , CodeArticle=0040264400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2644 AND idunite=3487;
DELETE FROM tb_log_stock WHERE codearticle='0040264400';
DELETE FROM tb_inventaire WHERE codearticle='0040264400';
DELETE FROM tb_stock WHERE codearticle='0040264400';
DELETE FROM tb_article WHERE idarticle=2644;
DELETE FROM tb_unite WHERE idunite=3487 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3487) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3487);
COMMIT;

-- IdArticle=2828 , Designation=KREAMY ' N KRUNCH , Unite=BOITE , IdUnite=3730 , CodeArticle=0050282800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2828 AND idunite=3730;
DELETE FROM tb_log_stock WHERE codearticle='0050282800';
DELETE FROM tb_inventaire WHERE codearticle='0050282800';
DELETE FROM tb_stock WHERE codearticle='0050282800';
DELETE FROM tb_article WHERE idarticle=2828;
DELETE FROM tb_unite WHERE idunite=3730 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3730) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3730);
COMMIT;

-- IdArticle=3572 , Designation=KREAMY KRUNCH , Unite=PIECE , IdUnite=4700 , CodeArticle=0050357200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3572 AND idunite=4700;
DELETE FROM tb_log_stock WHERE codearticle='0050357200';
DELETE FROM tb_inventaire WHERE codearticle='0050357200';
DELETE FROM tb_stock WHERE codearticle='0050357200';
DELETE FROM tb_article WHERE idarticle=3572;
DELETE FROM tb_unite WHERE idunite=4700 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4700) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4700);
COMMIT;

-- IdArticle=3243 , Designation=KREAMY WAFER EN  PIECE , Unite=PIECE , IdUnite=4263 , CodeArticle=0050324300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3243 AND idunite=4263;
DELETE FROM tb_log_stock WHERE codearticle='0050324300';
DELETE FROM tb_inventaire WHERE codearticle='0050324300';
DELETE FROM tb_stock WHERE codearticle='0050324300';
DELETE FROM tb_article WHERE idarticle=3243;
DELETE FROM tb_unite WHERE idunite=4263 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4263) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4263);
COMMIT;

-- IdArticle=3246 , Designation=KREAMY WAFER EN PAQUET , Unite=PAQUET , IdUnite=4267 , CodeArticle=0050324600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3246 AND idunite=4267;
DELETE FROM tb_log_stock WHERE codearticle='0050324600';
DELETE FROM tb_inventaire WHERE codearticle='0050324600';
DELETE FROM tb_stock WHERE codearticle='0050324600';
DELETE FROM tb_article WHERE idarticle=3246;
DELETE FROM tb_unite WHERE idunite=4267 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4267) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4267);
COMMIT;

-- IdArticle=3985 , Designation=KREAMY'N KRUNCH PCE , Unite=PIECE , IdUnite=5375 , CodeArticle=0050398500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3985 AND idunite=5375;
DELETE FROM tb_log_stock WHERE codearticle='0050398500';
DELETE FROM tb_inventaire WHERE codearticle='0050398500';
DELETE FROM tb_stock WHERE codearticle='0050398500';
DELETE FROM tb_article WHERE idarticle=3985;
DELETE FROM tb_unite WHERE idunite=5375 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5375) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5375);
COMMIT;

-- IdArticle=3057 , Designation=KRIK KRAK , Unite=SACHET , IdUnite=4003 , CodeArticle=0040305700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3057 AND idunite=4003;
DELETE FROM tb_log_stock WHERE codearticle='0040305700';
DELETE FROM tb_inventaire WHERE codearticle='0040305700';
DELETE FROM tb_stock WHERE codearticle='0040305700';
DELETE FROM tb_article WHERE idarticle=3057;
DELETE FROM tb_unite WHERE idunite=4003 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4003) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4003);
COMMIT;

-- IdArticle=3548 , Designation=KRIS , Unite=PIECE , IdUnite=4676 , CodeArticle=0020354800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3548 AND idunite=4676;
DELETE FROM tb_log_stock WHERE codearticle='0020354800';
DELETE FROM tb_inventaire WHERE codearticle='0020354800';
DELETE FROM tb_stock WHERE codearticle='0020354800';
DELETE FROM tb_article WHERE idarticle=3548;
DELETE FROM tb_unite WHERE idunite=4676 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4676) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4676);
COMMIT;

-- IdArticle=3506 , Designation=LAME BIC EN PIECE , Unite=PIECE , IdUnite=4602 , CodeArticle=0030350600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3506 AND idunite=4602;
DELETE FROM tb_log_stock WHERE codearticle='0030350600';
DELETE FROM tb_inventaire WHERE codearticle='0030350600';
DELETE FROM tb_stock WHERE codearticle='0030350600';
DELETE FROM tb_article WHERE idarticle=3506;
DELETE FROM tb_unite WHERE idunite=4602 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4602) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4602);
COMMIT;

-- IdArticle=2058 , Designation=LAME DORCO NEW PLATINUM ST300 , Unite=PACQUET , IdUnite=2758 , CodeArticle=0030205800
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2058 AND idunite=2758;
DELETE FROM tb_log_stock WHERE codearticle='0030205800';
DELETE FROM tb_inventaire WHERE codearticle='0030205800';
DELETE FROM tb_stock WHERE codearticle='0030205800';
DELETE FROM tb_article WHERE idarticle=2058;
DELETE FROM tb_unite WHERE idunite=2758 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2758) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2758);
COMMIT;

-- IdArticle=4397 , Designation=LEVURE CHIMIQUE  MENA PIECE , Unite=PIECE , IdUnite=6116 , CodeArticle=0400439700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4397 AND idunite=6116;
DELETE FROM tb_log_stock WHERE codearticle='0400439700';
DELETE FROM tb_inventaire WHERE codearticle='0400439700';
DELETE FROM tb_stock WHERE codearticle='0400439700';
DELETE FROM tb_article WHERE idarticle=4397;
DELETE FROM tb_unite WHERE idunite=6116 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6116) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6116);
COMMIT;

-- IdArticle=1864 , Designation=LINGETTE KODOMO , Unite=PIECE , IdUnite=2505 , CodeArticle=0030186400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1864 AND idunite=2505;
DELETE FROM tb_log_stock WHERE codearticle='0030186400';
DELETE FROM tb_inventaire WHERE codearticle='0030186400';
DELETE FROM tb_stock WHERE codearticle='0030186400';
DELETE FROM tb_article WHERE idarticle=1864;
DELETE FROM tb_unite WHERE idunite=2505 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2505) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2505);
COMMIT;

-- IdArticle=2545 , Designation=LINGETTE PATAPON , Unite=PIECE , IdUnite=3358 , CodeArticle=0030254500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2545 AND idunite=3358;
DELETE FROM tb_log_stock WHERE codearticle='0030254500';
DELETE FROM tb_inventaire WHERE codearticle='0030254500';
DELETE FROM tb_stock WHERE codearticle='0030254500';
DELETE FROM tb_article WHERE idarticle=2545;
DELETE FROM tb_unite WHERE idunite=3358 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3358) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3358);
COMMIT;

-- IdArticle=3129 , Designation=LOCKED PM , Unite=PIECE , IdUnite=4116 , CodeArticle=0030312900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3129 AND idunite=4116;
DELETE FROM tb_log_stock WHERE codearticle='0030312900';
DELETE FROM tb_inventaire WHERE codearticle='0030312900';
DELETE FROM tb_stock WHERE codearticle='0030312900';
DELETE FROM tb_article WHERE idarticle=3129;
DELETE FROM tb_unite WHERE idunite=4116 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4116) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4116);
COMMIT;

-- IdArticle=4235 , Designation=MACARONI BELLA VITA Spirales 4KG , Unite=SAC , IdUnite=5835 , CodeArticle=0040423500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4235 AND idunite=5835;
DELETE FROM tb_log_stock WHERE codearticle='0040423500';
DELETE FROM tb_inventaire WHERE codearticle='0040423500';
DELETE FROM tb_stock WHERE codearticle='0040423500';
DELETE FROM tb_article WHERE idarticle=4235;
DELETE FROM tb_unite WHERE idunite=5835 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5835) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5835);
COMMIT;

-- IdArticle=2509 , Designation=MACARONI CHAMPION 450G , Unite=SACHET , IdUnite=3289 , CodeArticle=0040250900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2509 AND idunite=3289;
DELETE FROM tb_log_stock WHERE codearticle='0040250900';
DELETE FROM tb_inventaire WHERE codearticle='0040250900';
DELETE FROM tb_stock WHERE codearticle='0040250900';
DELETE FROM tb_article WHERE idarticle=2509;
DELETE FROM tb_unite WHERE idunite=3289 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3289) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3289);
COMMIT;

-- IdArticle=3948 , Designation=MACARONIE BON PASTA ELBOW , Unite=SAC , IdUnite=5320 , CodeArticle=0040394800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3948 AND idunite=5320;
DELETE FROM tb_log_stock WHERE codearticle='0040394800';
DELETE FROM tb_inventaire WHERE codearticle='0040394800';
DELETE FROM tb_stock WHERE codearticle='0040394800';
DELETE FROM tb_article WHERE idarticle=3948;
DELETE FROM tb_unite WHERE idunite=5320 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5320) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5320);
COMMIT;

-- IdArticle=3947 , Designation=MACARONIE BON PASTA FUSILLI , Unite=SAC , IdUnite=5319 , CodeArticle=0040394700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3947 AND idunite=5319;
DELETE FROM tb_log_stock WHERE codearticle='0040394700';
DELETE FROM tb_inventaire WHERE codearticle='0040394700';
DELETE FROM tb_stock WHERE codearticle='0040394700';
DELETE FROM tb_article WHERE idarticle=3947;
DELETE FROM tb_unite WHERE idunite=5319 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5319) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5319);
COMMIT;

-- IdArticle=2688 , Designation=MACHINE PATE PPM VISTA , Unite=PIECE , IdUnite=3561 , CodeArticle=0030268800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2688 AND idunite=3561;
DELETE FROM tb_log_stock WHERE codearticle='0030268800';
DELETE FROM tb_inventaire WHERE codearticle='0030268800';
DELETE FROM tb_stock WHERE codearticle='0030268800';
DELETE FROM tb_article WHERE idarticle=2688;
DELETE FROM tb_unite WHERE idunite=3561 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3561) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3561);
COMMIT;

-- IdArticle=2543 , Designation=MARGARINE ULTRA 500G , Unite=PIECE , IdUnite=3354 , CodeArticle=0040254300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2543 AND idunite=3354;
DELETE FROM tb_log_stock WHERE codearticle='0040254300';
DELETE FROM tb_inventaire WHERE codearticle='0040254300';
DELETE FROM tb_stock WHERE codearticle='0040254300';
DELETE FROM tb_article WHERE idarticle=2543;
DELETE FROM tb_unite WHERE idunite=3354 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3354) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3354);
COMMIT;

-- IdArticle=2631 , Designation=MARIE LONDON , Unite=SACHET , IdUnite=3465 , CodeArticle=0050263100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2631 AND idunite=3465;
DELETE FROM tb_log_stock WHERE codearticle='0050263100';
DELETE FROM tb_inventaire WHERE codearticle='0050263100';
DELETE FROM tb_stock WHERE codearticle='0050263100';
DELETE FROM tb_article WHERE idarticle=2631;
DELETE FROM tb_unite WHERE idunite=3465 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3465) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3465);
COMMIT;

-- IdArticle=1965 , Designation=MAXAM BLANCHEUR , Unite=PAQUET , IdUnite=2648 , CodeArticle=0120196500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1965 AND idunite=2648;
DELETE FROM tb_log_stock WHERE codearticle='0120196500';
DELETE FROM tb_inventaire WHERE codearticle='0120196500';
DELETE FROM tb_stock WHERE codearticle='0120196500';
DELETE FROM tb_article WHERE idarticle=1965;
DELETE FROM tb_unite WHERE idunite=2648 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2648) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2648);
COMMIT;

-- IdArticle=3079 , Designation=MAXAM FLUOR 50G , Unite=PAQUET , IdUnite=4033 , CodeArticle=0120307900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3079 AND idunite=4033;
DELETE FROM tb_log_stock WHERE codearticle='0120307900';
DELETE FROM tb_inventaire WHERE codearticle='0120307900';
DELETE FROM tb_stock WHERE codearticle='0120307900';
DELETE FROM tb_article WHERE idarticle=3079;
DELETE FROM tb_unite WHERE idunite=4033 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4033) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4033);
COMMIT;

-- IdArticle=3583 , Designation=MAXAM MENTHE PCE , Unite=PIECE , IdUnite=4713 , CodeArticle=0120358300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3583 AND idunite=4713;
DELETE FROM tb_log_stock WHERE codearticle='0120358300';
DELETE FROM tb_inventaire WHERE codearticle='0120358300';
DELETE FROM tb_stock WHERE codearticle='0120358300';
DELETE FROM tb_article WHERE idarticle=3583;
DELETE FROM tb_unite WHERE idunite=4713 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4713) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4713);
COMMIT;

-- IdArticle=920 , Designation=MAXAM SOURIRE PCE , Unite=PIECE , IdUnite=1173 , CodeArticle=0030092000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=920 AND idunite=1173;
DELETE FROM tb_log_stock WHERE codearticle='0030092000';
DELETE FROM tb_inventaire WHERE codearticle='0030092000';
DELETE FROM tb_stock WHERE codearticle='0030092000';
DELETE FROM tb_article WHERE idarticle=920;
DELETE FROM tb_unite WHERE idunite=1173 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1173) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1173);
COMMIT;

-- IdArticle=1960 , Designation=MENABOLO ALOE VERA 200G , Unite=PIECE , IdUnite=2634 , CodeArticle=0030196000
-- Pre-check counts: tb_prix=5, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1960 AND idunite=2634;
DELETE FROM tb_log_stock WHERE codearticle='0030196000';
DELETE FROM tb_inventaire WHERE codearticle='0030196000';
DELETE FROM tb_stock WHERE codearticle='0030196000';
DELETE FROM tb_article WHERE idarticle=1960;
DELETE FROM tb_unite WHERE idunite=2634 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2634) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2634);
COMMIT;

-- IdArticle=2170 , Designation=MENABOLO ALOE VERA 50G , Unite=PACQUET , IdUnite=2893 , CodeArticle=0030217000
-- Pre-check counts: tb_prix=4, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2170 AND idunite=2893;
DELETE FROM tb_log_stock WHERE codearticle='0030217000';
DELETE FROM tb_inventaire WHERE codearticle='0030217000';
DELETE FROM tb_stock WHERE codearticle='0030217000';
DELETE FROM tb_article WHERE idarticle=2170;
DELETE FROM tb_unite WHERE idunite=2893 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2893) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2893);
COMMIT;

-- IdArticle=3788 , Designation=MENABOLO BABY CARE FORMULA 55G , Unite=PAQUET , IdUnite=5040 , CodeArticle=0030378800
-- Pre-check counts: tb_prix=4, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3788 AND idunite=5040;
DELETE FROM tb_log_stock WHERE codearticle='0030378800';
DELETE FROM tb_inventaire WHERE codearticle='0030378800';
DELETE FROM tb_stock WHERE codearticle='0030378800';
DELETE FROM tb_article WHERE idarticle=3788;
DELETE FROM tb_unite WHERE idunite=5040 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5040) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5040);
COMMIT;

-- IdArticle=2232 , Designation=MENABOLO BAOBAB 50G , Unite=PACQUET , IdUnite=2969 , CodeArticle=0030223200
-- Pre-check counts: tb_prix=4, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2232 AND idunite=2969;
DELETE FROM tb_log_stock WHERE codearticle='0030223200';
DELETE FROM tb_inventaire WHERE codearticle='0030223200';
DELETE FROM tb_stock WHERE codearticle='0030223200';
DELETE FROM tb_article WHERE idarticle=2232;
DELETE FROM tb_unite WHERE idunite=2969 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2969) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2969);
COMMIT;

-- IdArticle=2511 , Designation=MENABOLO FAMILY CARE_GM , Unite=PIECE , IdUnite=3292 , CodeArticle=0030251100
-- Pre-check counts: tb_prix=5, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2511 AND idunite=3292;
DELETE FROM tb_log_stock WHERE codearticle='0030251100';
DELETE FROM tb_inventaire WHERE codearticle='0030251100';
DELETE FROM tb_stock WHERE codearticle='0030251100';
DELETE FROM tb_article WHERE idarticle=2511;
DELETE FROM tb_unite WHERE idunite=3292 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3292) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3292);
COMMIT;

-- IdArticle=2134 , Designation=MENABOLO FAMILY CARE_PM , Unite=PAQUET , IdUnite=2847 , CodeArticle=0030213400
-- Pre-check counts: tb_prix=4, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2134 AND idunite=2847;
DELETE FROM tb_log_stock WHERE codearticle='0030213400';
DELETE FROM tb_inventaire WHERE codearticle='0030213400';
DELETE FROM tb_stock WHERE codearticle='0030213400';
DELETE FROM tb_article WHERE idarticle=2134;
DELETE FROM tb_unite WHERE idunite=2847 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2847) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2847);
COMMIT;

-- IdArticle=2531 , Designation=MENABOLO MALIKIA PM , Unite=PACQUET , IdUnite=3331 , CodeArticle=0030253100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2531 AND idunite=3331;
DELETE FROM tb_log_stock WHERE codearticle='0030253100';
DELETE FROM tb_inventaire WHERE codearticle='0030253100';
DELETE FROM tb_stock WHERE codearticle='0030253100';
DELETE FROM tb_article WHERE idarticle=2531;
DELETE FROM tb_unite WHERE idunite=3331 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3331) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3331);
COMMIT;

-- IdArticle=3477 , Designation=MENABOLO MEDICARE PM 50GR , Unite=PIECE , IdUnite=4564 , CodeArticle=0030347700
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3477 AND idunite=4564;
DELETE FROM tb_log_stock WHERE codearticle='0030347700';
DELETE FROM tb_inventaire WHERE codearticle='0030347700';
DELETE FROM tb_stock WHERE codearticle='0030347700';
DELETE FROM tb_article WHERE idarticle=3477;
DELETE FROM tb_unite WHERE idunite=4564 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4564) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4564);
COMMIT;

-- IdArticle=3093 , Designation=MENABOLO MORINGA GM , Unite=PIECE , IdUnite=4057 , CodeArticle=0030309300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3093 AND idunite=4057;
DELETE FROM tb_log_stock WHERE codearticle='0030309300';
DELETE FROM tb_inventaire WHERE codearticle='0030309300';
DELETE FROM tb_stock WHERE codearticle='0030309300';
DELETE FROM tb_article WHERE idarticle=3093;
DELETE FROM tb_unite WHERE idunite=4057 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4057) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4057);
COMMIT;

-- IdArticle=2533 , Designation=MENABOLO MORINGA PM , Unite=PACQUET , IdUnite=3335 , CodeArticle=0030253300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2533 AND idunite=3335;
DELETE FROM tb_log_stock WHERE codearticle='0030253300';
DELETE FROM tb_inventaire WHERE codearticle='0030253300';
DELETE FROM tb_stock WHERE codearticle='0030253300';
DELETE FROM tb_article WHERE idarticle=2533;
DELETE FROM tb_unite WHERE idunite=3335 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3335) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3335);
COMMIT;

-- IdArticle=976 , Designation=MENABOLO PM PIECE , Unite=PIECE , IdUnite=1243 , CodeArticle=0100097600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=976 AND idunite=1243;
DELETE FROM tb_log_stock WHERE codearticle='0100097600';
DELETE FROM tb_inventaire WHERE codearticle='0100097600';
DELETE FROM tb_stock WHERE codearticle='0100097600';
DELETE FROM tb_article WHERE idarticle=976;
DELETE FROM tb_unite WHERE idunite=1243 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1243) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1243);
COMMIT;

-- IdArticle=4123 , Designation=MENABOLO PM PIECE , Unite=PIECE , IdUnite=5635 , CodeArticle=0030412300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4123 AND idunite=5635;
DELETE FROM tb_log_stock WHERE codearticle='0030412300';
DELETE FROM tb_inventaire WHERE codearticle='0030412300';
DELETE FROM tb_stock WHERE codearticle='0030412300';
DELETE FROM tb_article WHERE idarticle=4123;
DELETE FROM tb_unite WHERE idunite=5635 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5635) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5635);
COMMIT;

-- IdArticle=2234 , Designation=MENABOLO PODOA PM , Unite=PACQUET , IdUnite=2972 , CodeArticle=0030223400
-- Pre-check counts: tb_prix=4, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2234 AND idunite=2972;
DELETE FROM tb_log_stock WHERE codearticle='0030223400';
DELETE FROM tb_inventaire WHERE codearticle='0030223400';
DELETE FROM tb_stock WHERE codearticle='0030223400';
DELETE FROM tb_article WHERE idarticle=2234;
DELETE FROM tb_unite WHERE idunite=2972 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2972) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2972);
COMMIT;

-- IdArticle=2135 , Designation=MENABOLO SHEA BUTTER GM , Unite=PAQUET , IdUnite=2849 , CodeArticle=0030213500
-- Pre-check counts: tb_prix=4, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2135 AND idunite=2849;
DELETE FROM tb_log_stock WHERE codearticle='0030213500';
DELETE FROM tb_inventaire WHERE codearticle='0030213500';
DELETE FROM tb_stock WHERE codearticle='0030213500';
DELETE FROM tb_article WHERE idarticle=2135;
DELETE FROM tb_unite WHERE idunite=2849 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2849) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2849);
COMMIT;

-- IdArticle=3471 , Designation=MENABOLO SHEA BUTTER PM 50GR , Unite=PIECE , IdUnite=4547 , CodeArticle=0030347100
-- Pre-check counts: tb_prix=5, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3471 AND idunite=4547;
DELETE FROM tb_log_stock WHERE codearticle='0030347100';
DELETE FROM tb_inventaire WHERE codearticle='0030347100';
DELETE FROM tb_stock WHERE codearticle='0030347100';
DELETE FROM tb_article WHERE idarticle=3471;
DELETE FROM tb_unite WHERE idunite=4547 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4547) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4547);
COMMIT;

-- IdArticle=3584 , Designation=MERIELCE 50G PCE , Unite=PIECE , IdUnite=4714 , CodeArticle=0120358400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3584 AND idunite=4714;
DELETE FROM tb_log_stock WHERE codearticle='0120358400';
DELETE FROM tb_inventaire WHERE codearticle='0120358400';
DELETE FROM tb_stock WHERE codearticle='0120358400';
DELETE FROM tb_article WHERE idarticle=3584;
DELETE FROM tb_unite WHERE idunite=4714 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4714) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4714);
COMMIT;

-- IdArticle=2356 , Designation=MERIELCE ALOE VERA 130G , Unite=PACQUET , IdUnite=3112 , CodeArticle=0120235600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2356 AND idunite=3112;
DELETE FROM tb_log_stock WHERE codearticle='0120235600';
DELETE FROM tb_inventaire WHERE codearticle='0120235600';
DELETE FROM tb_stock WHERE codearticle='0120235600';
DELETE FROM tb_article WHERE idarticle=2356;
DELETE FROM tb_unite WHERE idunite=3112 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3112) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3112);
COMMIT;

-- IdArticle=3837 , Designation=MIAM MINI , Unite=SACHET , IdUnite=5117 , CodeArticle=0050383700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3837 AND idunite=5117;
DELETE FROM tb_log_stock WHERE codearticle='0050383700';
DELETE FROM tb_inventaire WHERE codearticle='0050383700';
DELETE FROM tb_stock WHERE codearticle='0050383700';
DELETE FROM tb_article WHERE idarticle=3837;
DELETE FROM tb_unite WHERE idunite=5117 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5117) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5117);
COMMIT;

-- IdArticle=3404 , Designation=MIAM TOUT CHOCO , Unite=SACHET , IdUnite=4446 , CodeArticle=0050340400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3404 AND idunite=4446;
DELETE FROM tb_log_stock WHERE codearticle='0050340400';
DELETE FROM tb_inventaire WHERE codearticle='0050340400';
DELETE FROM tb_stock WHERE codearticle='0050340400';
DELETE FROM tb_article WHERE idarticle=3404;
DELETE FROM tb_unite WHERE idunite=4446 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4446) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4446);
COMMIT;

-- IdArticle=1975 , Designation=MILANA POULET , Unite=BOITE , IdUnite=2670 , CodeArticle=0040197500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1975 AND idunite=2670;
DELETE FROM tb_log_stock WHERE codearticle='0040197500';
DELETE FROM tb_inventaire WHERE codearticle='0040197500';
DELETE FROM tb_stock WHERE codearticle='0040197500';
DELETE FROM tb_article WHERE idarticle=1975;
DELETE FROM tb_unite WHERE idunite=2670 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2670) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2670);
COMMIT;

-- IdArticle=1001 , Designation=MILANA POULET , Unite=CARTON , IdUnite=1282 , CodeArticle=0030100100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1001 AND idunite=1282;
DELETE FROM tb_log_stock WHERE codearticle='0030100100';
DELETE FROM tb_inventaire WHERE codearticle='0030100100';
DELETE FROM tb_stock WHERE codearticle='0030100100';
DELETE FROM tb_article WHERE idarticle=1001;
DELETE FROM tb_unite WHERE idunite=1282 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1282) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1282);
COMMIT;

-- IdArticle=2242 , Designation=MILK _STICK , Unite=BOCAL , IdUnite=2983 , CodeArticle=0080224200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2242 AND idunite=2983;
DELETE FROM tb_log_stock WHERE codearticle='0080224200';
DELETE FROM tb_inventaire WHERE codearticle='0080224200';
DELETE FROM tb_stock WHERE codearticle='0080224200';
DELETE FROM tb_article WHERE idarticle=2242;
DELETE FROM tb_unite WHERE idunite=2983 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2983) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2983);
COMMIT;

-- IdArticle=1009 , Designation=MIMI SNACKS , Unite=PAQUET , IdUnite=1293 , CodeArticle=0130100900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1009 AND idunite=1293;
DELETE FROM tb_log_stock WHERE codearticle='0130100900';
DELETE FROM tb_inventaire WHERE codearticle='0130100900';
DELETE FROM tb_stock WHERE codearticle='0130100900';
DELETE FROM tb_article WHERE idarticle=1009;
DELETE FROM tb_unite WHERE idunite=1293 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1293) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1293);
COMMIT;

-- IdArticle=2640 , Designation=MINI JELLY STICK , Unite=BOITE , IdUnite=3481 , CodeArticle=0200264000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2640 AND idunite=3481;
DELETE FROM tb_log_stock WHERE codearticle='0200264000';
DELETE FROM tb_inventaire WHERE codearticle='0200264000';
DELETE FROM tb_stock WHERE codearticle='0200264000';
DELETE FROM tb_article WHERE idarticle=2640;
DELETE FROM tb_unite WHERE idunite=3481 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3481) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3481);
COMMIT;

-- IdArticle=2283 , Designation=MIRA NETTOYANT WC 750ML , Unite=PIECE , IdUnite=3030 , CodeArticle=0350228300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2283 AND idunite=3030;
DELETE FROM tb_log_stock WHERE codearticle='0350228300';
DELETE FROM tb_inventaire WHERE codearticle='0350228300';
DELETE FROM tb_stock WHERE codearticle='0350228300';
DELETE FROM tb_article WHERE idarticle=2283;
DELETE FROM tb_unite WHERE idunite=3030 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3030) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3030);
COMMIT;

-- IdArticle=3860 , Designation=MIX FRUIT KIDDO , Unite=SACHET , IdUnite=5160 , CodeArticle=0140386000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3860 AND idunite=5160;
DELETE FROM tb_log_stock WHERE codearticle='0140386000';
DELETE FROM tb_inventaire WHERE codearticle='0140386000';
DELETE FROM tb_stock WHERE codearticle='0140386000';
DELETE FROM tb_article WHERE idarticle=3860;
DELETE FROM tb_unite WHERE idunite=5160 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5160) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5160);
COMMIT;

-- IdArticle=4226 , Designation=MIX FRUIT POP ROYALE , Unite=SACHET , IdUnite=5822 , CodeArticle=0140422600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4226 AND idunite=5822;
DELETE FROM tb_log_stock WHERE codearticle='0140422600';
DELETE FROM tb_inventaire WHERE codearticle='0140422600';
DELETE FROM tb_stock WHERE codearticle='0140422600';
DELETE FROM tb_article WHERE idarticle=4226;
DELETE FROM tb_unite WHERE idunite=5822 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5822) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5822);
COMMIT;

-- IdArticle=2066 , Designation=MOLFIX SMALL PANTS MAXI 8X8 , Unite=PIECE , IdUnite=2769 , CodeArticle=0150206600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2066 AND idunite=2769;
DELETE FROM tb_log_stock WHERE codearticle='0150206600';
DELETE FROM tb_inventaire WHERE codearticle='0150206600';
DELETE FROM tb_stock WHERE codearticle='0150206600';
DELETE FROM tb_article WHERE idarticle=2066;
DELETE FROM tb_unite WHERE idunite=2769 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2769) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2769);
COMMIT;

-- IdArticle=4124 , Designation=MOSQUITO ANITA Citronel , Unite=PACQUET , IdUnite=5636 , CodeArticle=0030412400
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4124 AND idunite=5636;
DELETE FROM tb_log_stock WHERE codearticle='0030412400';
DELETE FROM tb_inventaire WHERE codearticle='0030412400';
DELETE FROM tb_stock WHERE codearticle='0030412400';
DELETE FROM tb_article WHERE idarticle=4124;
DELETE FROM tb_unite WHERE idunite=5636 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5636) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5636);
COMMIT;

-- IdArticle=2233 , Designation=MOTO JOG 90 PNEU LISSE , Unite=PIECE , IdUnite=2971 , CodeArticle=0440223300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2233 AND idunite=2971;
DELETE FROM tb_log_stock WHERE codearticle='0440223300';
DELETE FROM tb_inventaire WHERE codearticle='0440223300';
DELETE FROM tb_stock WHERE codearticle='0440223300';
DELETE FROM tb_article WHERE idarticle=2233;
DELETE FROM tb_unite WHERE idunite=2971 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2971) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2971);
COMMIT;

-- IdArticle=2859 , Designation=MOTO SCOOTER YMT 49 CI BLEU , Unite=PIECE , IdUnite=3775 , CodeArticle=0450285900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2859 AND idunite=3775;
DELETE FROM tb_log_stock WHERE codearticle='0450285900';
DELETE FROM tb_inventaire WHERE codearticle='0450285900';
DELETE FROM tb_stock WHERE codearticle='0450285900';
DELETE FROM tb_article WHERE idarticle=2859;
DELETE FROM tb_unite WHERE idunite=3775 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3775) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3775);
COMMIT;

-- IdArticle=2860 , Designation=MOTO SCOOTER YMT 49 CI GRIS , Unite=PIECE , IdUnite=3776 , CodeArticle=0450286000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2860 AND idunite=3776;
DELETE FROM tb_log_stock WHERE codearticle='0450286000';
DELETE FROM tb_inventaire WHERE codearticle='0450286000';
DELETE FROM tb_stock WHERE codearticle='0450286000';
DELETE FROM tb_article WHERE idarticle=2860;
DELETE FROM tb_unite WHERE idunite=3776 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3776) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3776);
COMMIT;

-- IdArticle=2861 , Designation=MOTO SCOOTER YMT 49 CI NOIR , Unite=PIECE , IdUnite=3777 , CodeArticle=0450286100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2861 AND idunite=3777;
DELETE FROM tb_log_stock WHERE codearticle='0450286100';
DELETE FROM tb_inventaire WHERE codearticle='0450286100';
DELETE FROM tb_stock WHERE codearticle='0450286100';
DELETE FROM tb_article WHERE idarticle=2861;
DELETE FROM tb_unite WHERE idunite=3777 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3777) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3777);
COMMIT;

-- IdArticle=4501 , Designation=NECT CHOCO CARAMEL POP EN SHT , Unite=SACHET , IdUnite=6308 , CodeArticle=0140450100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4501 AND idunite=6308;
DELETE FROM tb_log_stock WHERE codearticle='0140450100';
DELETE FROM tb_inventaire WHERE codearticle='0140450100';
DELETE FROM tb_stock WHERE codearticle='0140450100';
DELETE FROM tb_article WHERE idarticle=4501;
DELETE FROM tb_unite WHERE idunite=6308 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6308) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6308);
COMMIT;

-- IdArticle=4500 , Designation=NECT XTRA PAINTER XXL 16PKT , Unite=SACHET , IdUnite=6306 , CodeArticle=0140450000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4500 AND idunite=6306;
DELETE FROM tb_log_stock WHERE codearticle='0140450000';
DELETE FROM tb_inventaire WHERE codearticle='0140450000';
DELETE FROM tb_stock WHERE codearticle='0140450000';
DELETE FROM tb_article WHERE idarticle=4500;
DELETE FROM tb_unite WHERE idunite=6306 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6306) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6306);
COMMIT;

-- IdArticle=1051 , Designation=NICKEL GEL WC 500ML , Unite=PIECE , IdUnite=1337 , CodeArticle=0100105100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1051 AND idunite=1337;
DELETE FROM tb_log_stock WHERE codearticle='0100105100';
DELETE FROM tb_inventaire WHERE codearticle='0100105100';
DELETE FROM tb_stock WHERE codearticle='0100105100';
DELETE FROM tb_article WHERE idarticle=1051;
DELETE FROM tb_unite WHERE idunite=1337 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1337) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1337);
COMMIT;

-- IdArticle=1052 , Designation=NICKEL LAVE SOL 1L , Unite=PIECE , IdUnite=1338 , CodeArticle=0030105200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1052 AND idunite=1338;
DELETE FROM tb_log_stock WHERE codearticle='0030105200';
DELETE FROM tb_inventaire WHERE codearticle='0030105200';
DELETE FROM tb_stock WHERE codearticle='0030105200';
DELETE FROM tb_article WHERE idarticle=1052;
DELETE FROM tb_unite WHERE idunite=1338 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1338) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1338);
COMMIT;

-- IdArticle=3692 , Designation=NICKEL LAVE SOL 1L , Unite=PIECE , IdUnite=4869 , CodeArticle=0030369200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3692 AND idunite=4869;
DELETE FROM tb_log_stock WHERE codearticle='0030369200';
DELETE FROM tb_inventaire WHERE codearticle='0030369200';
DELETE FROM tb_stock WHERE codearticle='0030369200';
DELETE FROM tb_article WHERE idarticle=3692;
DELETE FROM tb_unite WHERE idunite=4869 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4869) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4869);
COMMIT;

-- IdArticle=2231 , Designation=NICKEL LAVE VITRE 1L , Unite=PIECE , IdUnite=2967 , CodeArticle=0350223100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2231 AND idunite=2967;
DELETE FROM tb_log_stock WHERE codearticle='0350223100';
DELETE FROM tb_inventaire WHERE codearticle='0350223100';
DELETE FROM tb_stock WHERE codearticle='0350223100';
DELETE FROM tb_article WHERE idarticle=2231;
DELETE FROM tb_unite WHERE idunite=2967 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2967) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2967);
COMMIT;

-- IdArticle=4052 , Designation=NICKEL LAVE VITRES 750ML , Unite=PIECE , IdUnite=5508 , CodeArticle=0350405200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4052 AND idunite=5508;
DELETE FROM tb_log_stock WHERE codearticle='0350405200';
DELETE FROM tb_inventaire WHERE codearticle='0350405200';
DELETE FROM tb_stock WHERE codearticle='0350405200';
DELETE FROM tb_article WHERE idarticle=4052;
DELETE FROM tb_unite WHERE idunite=5508 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5508) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5508);
COMMIT;

-- IdArticle=1067 , Designation=NOUILLES , Unite=PIECE , IdUnite=1356 , CodeArticle=0130106700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1067 AND idunite=1356;
DELETE FROM tb_log_stock WHERE codearticle='0130106700';
DELETE FROM tb_inventaire WHERE codearticle='0130106700';
DELETE FROM tb_stock WHERE codearticle='0130106700';
DELETE FROM tb_article WHERE idarticle=1067;
DELETE FROM tb_unite WHERE idunite=1356 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1356) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1356);
COMMIT;

-- IdArticle=1068 , Designation=NOUILLES , Unite=PIECE , IdUnite=1357 , CodeArticle=0130106800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1068 AND idunite=1357;
DELETE FROM tb_log_stock WHERE codearticle='0130106800';
DELETE FROM tb_inventaire WHERE codearticle='0130106800';
DELETE FROM tb_stock WHERE codearticle='0130106800';
DELETE FROM tb_article WHERE idarticle=1068;
DELETE FROM tb_unite WHERE idunite=1357 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1357) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1357);
COMMIT;

-- IdArticle=1079 , Designation=NOUILLES , Unite=PIECE , IdUnite=1374 , CodeArticle=0440107900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1079 AND idunite=1374;
DELETE FROM tb_log_stock WHERE codearticle='0440107900';
DELETE FROM tb_inventaire WHERE codearticle='0440107900';
DELETE FROM tb_stock WHERE codearticle='0440107900';
DELETE FROM tb_article WHERE idarticle=1079;
DELETE FROM tb_unite WHERE idunite=1374 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1374) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1374);
COMMIT;

-- IdArticle=2062 , Designation=ORDI_PORTABLE ASUS 15.6 " , Unite=PIECE , IdUnite=2765 , CodeArticle=0460206200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2062 AND idunite=2765;
DELETE FROM tb_log_stock WHERE codearticle='0460206200';
DELETE FROM tb_inventaire WHERE codearticle='0460206200';
DELETE FROM tb_stock WHERE codearticle='0460206200';
DELETE FROM tb_article WHERE idarticle=2062;
DELETE FROM tb_unite WHERE idunite=2765 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2765) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2765);
COMMIT;

-- IdArticle=2062 , Designation=ORDI_PORTABLE ASUS 15.6 " ( V ) , Unite=PIECE , IdUnite=2765 , CodeArticle=0460206200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2062 AND idunite=2765;
DELETE FROM tb_log_stock WHERE codearticle='0460206200';
DELETE FROM tb_inventaire WHERE codearticle='0460206200';
DELETE FROM tb_stock WHERE codearticle='0460206200';
DELETE FROM tb_article WHERE idarticle=2062;
DELETE FROM tb_unite WHERE idunite=2765 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2765) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2765);
COMMIT;

-- IdArticle=3847 , Designation=PAIL CANDY , Unite=PAQUET , IdUnite=5133 , CodeArticle=0140384700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3847 AND idunite=5133;
DELETE FROM tb_log_stock WHERE codearticle='0140384700';
DELETE FROM tb_inventaire WHERE codearticle='0140384700';
DELETE FROM tb_stock WHERE codearticle='0140384700';
DELETE FROM tb_article WHERE idarticle=3847;
DELETE FROM tb_unite WHERE idunite=5133 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5133) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5133);
COMMIT;

-- IdArticle=2866 , Designation=PAMPERS N°2 ( 4 X 40 ) , Unite=PAQUET , IdUnite=3785 , CodeArticle=0150286600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2866 AND idunite=3785;
DELETE FROM tb_log_stock WHERE codearticle='0150286600';
DELETE FROM tb_inventaire WHERE codearticle='0150286600';
DELETE FROM tb_stock WHERE codearticle='0150286600';
DELETE FROM tb_article WHERE idarticle=2866;
DELETE FROM tb_unite WHERE idunite=3785 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3785) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3785);
COMMIT;

-- IdArticle=2865 , Designation=PAMPERS N°3 ( 4 X 36 ) , Unite=PAQUET , IdUnite=3783 , CodeArticle=0150286500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2865 AND idunite=3783;
DELETE FROM tb_log_stock WHERE codearticle='0150286500';
DELETE FROM tb_inventaire WHERE codearticle='0150286500';
DELETE FROM tb_stock WHERE codearticle='0150286500';
DELETE FROM tb_article WHERE idarticle=2865;
DELETE FROM tb_unite WHERE idunite=3783 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3783) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3783);
COMMIT;

-- IdArticle=2635 , Designation=PAMPERS N°4 ( 4 X 28 ) , Unite=PIECE , IdUnite=3472 , CodeArticle=0150263500
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2635 AND idunite=3472;
DELETE FROM tb_log_stock WHERE codearticle='0150263500';
DELETE FROM tb_inventaire WHERE codearticle='0150263500';
DELETE FROM tb_stock WHERE codearticle='0150263500';
DELETE FROM tb_article WHERE idarticle=2635;
DELETE FROM tb_unite WHERE idunite=3472 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3472) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3472);
COMMIT;

-- IdArticle=3109 , Designation=PAMPERS N°4 ( 4 X 32 ) , Unite=PACQUET , IdUnite=4085 , CodeArticle=0150310900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3109 AND idunite=4085;
DELETE FROM tb_log_stock WHERE codearticle='0150310900';
DELETE FROM tb_inventaire WHERE codearticle='0150310900';
DELETE FROM tb_stock WHERE codearticle='0150310900';
DELETE FROM tb_article WHERE idarticle=3109;
DELETE FROM tb_unite WHERE idunite=4085 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4085) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4085);
COMMIT;

-- IdArticle=2536 , Designation=PAMPERS N°5 (4 X 30) , Unite=PACQUET , IdUnite=3341 , CodeArticle=0150253600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2536 AND idunite=3341;
DELETE FROM tb_log_stock WHERE codearticle='0150253600';
DELETE FROM tb_inventaire WHERE codearticle='0150253600';
DELETE FROM tb_stock WHERE codearticle='0150253600';
DELETE FROM tb_article WHERE idarticle=2536;
DELETE FROM tb_unite WHERE idunite=3341 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3341) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3341);
COMMIT;

-- IdArticle=3498 , Designation=PAPIER DOLPHIN A4 , Unite=PAQUET , IdUnite=4592 , CodeArticle=0330349800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3498 AND idunite=4592;
DELETE FROM tb_log_stock WHERE codearticle='0330349800';
DELETE FROM tb_inventaire WHERE codearticle='0330349800';
DELETE FROM tb_stock WHERE codearticle='0330349800';
DELETE FROM tb_article WHERE idarticle=3498;
DELETE FROM tb_unite WHERE idunite=4592 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4592) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4592);
COMMIT;

-- IdArticle=3828 , Designation=PAPIER EPAPER , Unite=PAQUET , IdUnite=5102 , CodeArticle=0030382800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3828 AND idunite=5102;
DELETE FROM tb_log_stock WHERE codearticle='0030382800';
DELETE FROM tb_inventaire WHERE codearticle='0030382800';
DELETE FROM tb_stock WHERE codearticle='0030382800';
DELETE FROM tb_article WHERE idarticle=3828;
DELETE FROM tb_unite WHERE idunite=5102 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5102) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5102);
COMMIT;

-- IdArticle=3647 , Designation=PAPIER HYGIENIQUE DOUCY , Unite=PIECE , IdUnite=4803 , CodeArticle=0470364700
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3647 AND idunite=4803;
DELETE FROM tb_log_stock WHERE codearticle='0470364700';
DELETE FROM tb_inventaire WHERE codearticle='0470364700';
DELETE FROM tb_stock WHERE codearticle='0470364700';
DELETE FROM tb_article WHERE idarticle=3647;
DELETE FROM tb_unite WHERE idunite=4803 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4803) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4803);
COMMIT;

-- IdArticle=4622 , Designation=PEINTURE ANTI FOULING SARAH V , Unite=BOITE , IdUnite=6517 , CodeArticle=0130462200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4622 AND idunite=6517;
DELETE FROM tb_log_stock WHERE codearticle='0130462200';
DELETE FROM tb_inventaire WHERE codearticle='0130462200';
DELETE FROM tb_stock WHERE codearticle='0130462200';
DELETE FROM tb_article WHERE idarticle=4622;
DELETE FROM tb_unite WHERE idunite=6517 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6517) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6517);
COMMIT;

-- IdArticle=4623 , Designation=PEINTURE EPOXY PREMIERE SARAH V , Unite=BOITE , IdUnite=6518 , CodeArticle=0130462300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4623 AND idunite=6518;
DELETE FROM tb_log_stock WHERE codearticle='0130462300';
DELETE FROM tb_inventaire WHERE codearticle='0130462300';
DELETE FROM tb_stock WHERE codearticle='0130462300';
DELETE FROM tb_article WHERE idarticle=4623;
DELETE FROM tb_unite WHERE idunite=6518 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6518) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6518);
COMMIT;

-- IdArticle=4624 , Designation=PEINTURE EPOXY PREMIERE SARAH V , Unite=BOITE , IdUnite=6519 , CodeArticle=0130462400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4624 AND idunite=6519;
DELETE FROM tb_log_stock WHERE codearticle='0130462400';
DELETE FROM tb_inventaire WHERE codearticle='0130462400';
DELETE FROM tb_stock WHERE codearticle='0130462400';
DELETE FROM tb_article WHERE idarticle=4624;
DELETE FROM tb_unite WHERE idunite=6519 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6519) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6519);
COMMIT;

-- IdArticle=4327 , Designation=PEN FINGER HARD CANDY 3G , Unite=PACQUET , IdUnite=6002 , CodeArticle=0140432700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4327 AND idunite=6002;
DELETE FROM tb_log_stock WHERE codearticle='0140432700';
DELETE FROM tb_inventaire WHERE codearticle='0140432700';
DELETE FROM tb_stock WHERE codearticle='0140432700';
DELETE FROM tb_article WHERE idarticle=4327;
DELETE FROM tb_unite WHERE idunite=6002 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6002) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6002);
COMMIT;

-- IdArticle=2523 , Designation=PENGUIN CHOCO 8G , Unite=PACQUET , IdUnite=3316 , CodeArticle=0080252300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2523 AND idunite=3316;
DELETE FROM tb_log_stock WHERE codearticle='0080252300';
DELETE FROM tb_inventaire WHERE codearticle='0080252300';
DELETE FROM tb_stock WHERE codearticle='0080252300';
DELETE FROM tb_article WHERE idarticle=2523;
DELETE FROM tb_unite WHERE idunite=3316 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3316) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3316);
COMMIT;

-- IdArticle=3119 , Designation=PETIT PIZZA , Unite=SACHET , IdUnite=4101 , CodeArticle=0040311900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3119 AND idunite=4101;
DELETE FROM tb_log_stock WHERE codearticle='0040311900';
DELETE FROM tb_inventaire WHERE codearticle='0040311900';
DELETE FROM tb_stock WHERE codearticle='0040311900';
DELETE FROM tb_article WHERE idarticle=3119;
DELETE FROM tb_unite WHERE idunite=4101 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4101) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4101);
COMMIT;

-- IdArticle=2366 , Designation=PETROL 240L , Unite=LITRE , IdUnite=3129 , CodeArticle=0340236600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2366 AND idunite=3129;
DELETE FROM tb_log_stock WHERE codearticle='0340236600';
DELETE FROM tb_inventaire WHERE codearticle='0340236600';
DELETE FROM tb_stock WHERE codearticle='0340236600';
DELETE FROM tb_article WHERE idarticle=2366;
DELETE FROM tb_unite WHERE idunite=3129 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3129) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3129);
COMMIT;

-- IdArticle=3610 , Designation=PILE CHAMPION R6 , Unite=BOITE , IdUnite=4747 , CodeArticle=0090361000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3610 AND idunite=4747;
DELETE FROM tb_log_stock WHERE codearticle='0090361000';
DELETE FROM tb_inventaire WHERE codearticle='0090361000';
DELETE FROM tb_stock WHERE codearticle='0090361000';
DELETE FROM tb_article WHERE idarticle=3610;
DELETE FROM tb_unite WHERE idunite=4747 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4747) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4747);
COMMIT;

-- IdArticle=4173 , Designation=PINCE , Unite=PIECE , IdUnite=5726 , CodeArticle=0130417300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4173 AND idunite=5726;
DELETE FROM tb_log_stock WHERE codearticle='0130417300';
DELETE FROM tb_inventaire WHERE codearticle='0130417300';
DELETE FROM tb_stock WHERE codearticle='0130417300';
DELETE FROM tb_article WHERE idarticle=4173;
DELETE FROM tb_unite WHERE idunite=5726 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5726) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5726);
COMMIT;

-- IdArticle=4173 , Designation=PINCEAU SARAH V , Unite=PIECE , IdUnite=5726 , CodeArticle=0130417300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4173 AND idunite=5726;
DELETE FROM tb_log_stock WHERE codearticle='0130417300';
DELETE FROM tb_inventaire WHERE codearticle='0130417300';
DELETE FROM tb_stock WHERE codearticle='0130417300';
DELETE FROM tb_article WHERE idarticle=4173;
DELETE FROM tb_unite WHERE idunite=5726 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5726) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5726);
COMMIT;

-- IdArticle=2510 , Designation=PISTASY AVARATRA 200 KAPOAKA , Unite=SAC , IdUnite=3291 , CodeArticle=0180251000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2510 AND idunite=3291;
DELETE FROM tb_log_stock WHERE codearticle='0180251000';
DELETE FROM tb_inventaire WHERE codearticle='0180251000';
DELETE FROM tb_stock WHERE codearticle='0180251000';
DELETE FROM tb_article WHERE idarticle=2510;
DELETE FROM tb_unite WHERE idunite=3291 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3291) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3291);
COMMIT;

-- IdArticle=3845 , Designation=PISTASY MENA TRIER , Unite=KAPOAKA , IdUnite=5130 , CodeArticle=0180384500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3845 AND idunite=5130;
DELETE FROM tb_log_stock WHERE codearticle='0180384500';
DELETE FROM tb_inventaire WHERE codearticle='0180384500';
DELETE FROM tb_stock WHERE codearticle='0180384500';
DELETE FROM tb_article WHERE idarticle=3845;
DELETE FROM tb_unite WHERE idunite=5130 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5130) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5130);
COMMIT;

-- IdArticle=4179 , Designation=PLASMA SARAH V , Unite=PIECE , IdUnite=5732 , CodeArticle=0130417900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4179 AND idunite=5732;
DELETE FROM tb_log_stock WHERE codearticle='0130417900';
DELETE FROM tb_inventaire WHERE codearticle='0130417900';
DELETE FROM tb_stock WHERE codearticle='0130417900';
DELETE FROM tb_article WHERE idarticle=4179;
DELETE FROM tb_unite WHERE idunite=5732 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5732) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5732);
COMMIT;

-- IdArticle=3674 , Designation=PNEU 750/16 , Unite=PIECE , IdUnite=4850 , CodeArticle=0030367400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3674 AND idunite=4850;
DELETE FROM tb_log_stock WHERE codearticle='0030367400';
DELETE FROM tb_inventaire WHERE codearticle='0030367400';
DELETE FROM tb_stock WHERE codearticle='0030367400';
DELETE FROM tb_article WHERE idarticle=3674;
DELETE FROM tb_unite WHERE idunite=4850 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4850) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4850);
COMMIT;

-- IdArticle=3959 , Designation=POINTE 60X20 , Unite=BOITE , IdUnite=5341 , CodeArticle=0030395900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3959 AND idunite=5341;
DELETE FROM tb_log_stock WHERE codearticle='0030395900';
DELETE FROM tb_inventaire WHERE codearticle='0030395900';
DELETE FROM tb_stock WHERE codearticle='0030395900';
DELETE FROM tb_article WHERE idarticle=3959;
DELETE FROM tb_unite WHERE idunite=5341 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5341) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5341);
COMMIT;

-- IdArticle=3016 , Designation=POIVRE DE L' EST , Unite=BOUTEIL , IdUnite=3947 , CodeArticle=0040301600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3016 AND idunite=3947;
DELETE FROM tb_log_stock WHERE codearticle='0040301600';
DELETE FROM tb_inventaire WHERE codearticle='0040301600';
DELETE FROM tb_stock WHERE codearticle='0040301600';
DELETE FROM tb_article WHERE idarticle=3016;
DELETE FROM tb_unite WHERE idunite=3947 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3947) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3947);
COMMIT;

-- IdArticle=2537 , Designation=POIVRE SACHET DOYPACK , Unite=SACHET , IdUnite=3343 , CodeArticle=0040253700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2537 AND idunite=3343;
DELETE FROM tb_log_stock WHERE codearticle='0040253700';
DELETE FROM tb_inventaire WHERE codearticle='0040253700';
DELETE FROM tb_stock WHERE codearticle='0040253700';
DELETE FROM tb_article WHERE idarticle=2537;
DELETE FROM tb_unite WHERE idunite=3343 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3343) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3343);
COMMIT;

-- IdArticle=1158 , Designation=POTATA 15G EN PIECE , Unite=PIECE , IdUnite=1478 , CodeArticle=0030115800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1158 AND idunite=1478;
DELETE FROM tb_log_stock WHERE codearticle='0030115800';
DELETE FROM tb_inventaire WHERE codearticle='0030115800';
DELETE FROM tb_stock WHERE codearticle='0030115800';
DELETE FROM tb_article WHERE idarticle=1158;
DELETE FROM tb_unite WHERE idunite=1478 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1478) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1478);
COMMIT;

-- IdArticle=4083 , Designation=POUDRE SAVON ARIEL FLORAL 500G , Unite=PIECE , IdUnite=5564 , CodeArticle=0020408300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4083 AND idunite=5564;
DELETE FROM tb_log_stock WHERE codearticle='0020408300';
DELETE FROM tb_inventaire WHERE codearticle='0020408300';
DELETE FROM tb_stock WHERE codearticle='0020408300';
DELETE FROM tb_article WHERE idarticle=4083;
DELETE FROM tb_unite WHERE idunite=5564 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5564) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5564);
COMMIT;

-- IdArticle=4084 , Designation=POUDRE SAVON ARIEL LAVENDER 500G , Unite=PIECE , IdUnite=5566 , CodeArticle=0020408400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4084 AND idunite=5566;
DELETE FROM tb_log_stock WHERE codearticle='0020408400';
DELETE FROM tb_inventaire WHERE codearticle='0020408400';
DELETE FROM tb_stock WHERE codearticle='0020408400';
DELETE FROM tb_article WHERE idarticle=4084;
DELETE FROM tb_unite WHERE idunite=5566 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5566) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5566);
COMMIT;

-- IdArticle=1169 , Designation=POUDRE SAVON ARIEL SPRING 500G , Unite=PIECE , IdUnite=1491 , CodeArticle=0030116900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1169 AND idunite=1491;
DELETE FROM tb_log_stock WHERE codearticle='0030116900';
DELETE FROM tb_inventaire WHERE codearticle='0030116900';
DELETE FROM tb_stock WHERE codearticle='0030116900';
DELETE FROM tb_article WHERE idarticle=1169;
DELETE FROM tb_unite WHERE idunite=1491 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1491) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1491);
COMMIT;

-- IdArticle=2825 , Designation=PRINCE FOURRE 130G*20 , Unite=PIECE , IdUnite=3725 , CodeArticle=0050282500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2825 AND idunite=3725;
DELETE FROM tb_log_stock WHERE codearticle='0050282500';
DELETE FROM tb_inventaire WHERE codearticle='0050282500';
DELETE FROM tb_stock WHERE codearticle='0050282500';
DELETE FROM tb_article WHERE idarticle=2825;
DELETE FROM tb_unite WHERE idunite=3725 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3725) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3725);
COMMIT;

-- IdArticle=2427 , Designation=PRINCE FOURRE CHOCO 130G*20 , Unite=PIECE , IdUnite=3202 , CodeArticle=0050242700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2427 AND idunite=3202;
DELETE FROM tb_log_stock WHERE codearticle='0050242700';
DELETE FROM tb_inventaire WHERE codearticle='0050242700';
DELETE FROM tb_stock WHERE codearticle='0050242700';
DELETE FROM tb_article WHERE idarticle=2427;
DELETE FROM tb_unite WHERE idunite=3202 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3202) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3202);
COMMIT;

-- IdArticle=2426 , Designation=PRINCE FOURRE VANILLE 130G*20 , Unite=PIECE , IdUnite=3200 , CodeArticle=0050242600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2426 AND idunite=3200;
DELETE FROM tb_log_stock WHERE codearticle='0050242600';
DELETE FROM tb_inventaire WHERE codearticle='0050242600';
DELETE FROM tb_stock WHERE codearticle='0050242600';
DELETE FROM tb_article WHERE idarticle=2426;
DELETE FROM tb_unite WHERE idunite=3200 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3200) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3200);
COMMIT;

-- IdArticle=2428 , Designation=PRINCE POCHON 60G*35 , Unite=PIECE , IdUnite=3204 , CodeArticle=0050242800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2428 AND idunite=3204;
DELETE FROM tb_log_stock WHERE codearticle='0050242800';
DELETE FROM tb_inventaire WHERE codearticle='0050242800';
DELETE FROM tb_stock WHERE codearticle='0050242800';
DELETE FROM tb_article WHERE idarticle=2428;
DELETE FROM tb_unite WHERE idunite=3204 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3204) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3204);
COMMIT;

-- IdArticle=4213 , Designation=PRINCESS , Unite=PIECE , IdUnite=5797 , CodeArticle=0140421300
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4213 AND idunite=5797;
DELETE FROM tb_log_stock WHERE codearticle='0140421300';
DELETE FROM tb_inventaire WHERE codearticle='0140421300';
DELETE FROM tb_stock WHERE codearticle='0140421300';
DELETE FROM tb_article WHERE idarticle=4213;
DELETE FROM tb_unite WHERE idunite=5797 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5797) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5797);
COMMIT;

-- IdArticle=3416 , Designation=PROBO (KATSAKA NOTOTONA) , Unite=PIECE , IdUnite=4467 , CodeArticle=0040341600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3416 AND idunite=4467;
DELETE FROM tb_log_stock WHERE codearticle='0040341600';
DELETE FROM tb_inventaire WHERE codearticle='0040341600';
DELETE FROM tb_stock WHERE codearticle='0040341600';
DELETE FROM tb_article WHERE idarticle=3416;
DELETE FROM tb_unite WHERE idunite=4467 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4467) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4467);
COMMIT;

-- IdArticle=1192 , Designation=PURE GOLD KHAZANA , Unite=PIECE , IdUnite=1521 , CodeArticle=0130119200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1192 AND idunite=1521;
DELETE FROM tb_log_stock WHERE codearticle='0130119200';
DELETE FROM tb_inventaire WHERE codearticle='0130119200';
DELETE FROM tb_stock WHERE codearticle='0130119200';
DELETE FROM tb_article WHERE idarticle=1192;
DELETE FROM tb_unite WHERE idunite=1521 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1521) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1521);
COMMIT;

-- IdArticle=4202 , Designation=PURE GOLD KHAZANA , Unite=PIECE , IdUnite=5773 , CodeArticle=0140420200
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4202 AND idunite=5773;
DELETE FROM tb_log_stock WHERE codearticle='0140420200';
DELETE FROM tb_inventaire WHERE codearticle='0140420200';
DELETE FROM tb_stock WHERE codearticle='0140420200';
DELETE FROM tb_article WHERE idarticle=4202;
DELETE FROM tb_unite WHERE idunite=5773 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5773) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5773);
COMMIT;

-- IdArticle=2524 , Designation=RAMBO CHOCOLATE 5G , Unite=BOITE , IdUnite=3318 , CodeArticle=0080252400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2524 AND idunite=3318;
DELETE FROM tb_log_stock WHERE codearticle='0080252400';
DELETE FROM tb_inventaire WHERE codearticle='0080252400';
DELETE FROM tb_stock WHERE codearticle='0080252400';
DELETE FROM tb_article WHERE idarticle=2524;
DELETE FROM tb_unite WHERE idunite=3318 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3318) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3318);
COMMIT;

-- IdArticle=1200 , Designation=RANO VISY , Unite=PIECE , IdUnite=1531 , CodeArticle=0130120000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1200 AND idunite=1531;
DELETE FROM tb_log_stock WHERE codearticle='0130120000';
DELETE FROM tb_inventaire WHERE codearticle='0130120000';
DELETE FROM tb_stock WHERE codearticle='0130120000';
DELETE FROM tb_article WHERE idarticle=1200;
DELETE FROM tb_unite WHERE idunite=1531 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1531) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1531);
COMMIT;

-- IdArticle=3762 , Designation=ROBOT LOLLIPOP 5,4G , Unite=BOCAL , IdUnite=4993 , CodeArticle=0140376200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3762 AND idunite=4993;
DELETE FROM tb_log_stock WHERE codearticle='0140376200';
DELETE FROM tb_inventaire WHERE codearticle='0140376200';
DELETE FROM tb_stock WHERE codearticle='0140376200';
DELETE FROM tb_article WHERE idarticle=3762;
DELETE FROM tb_unite WHERE idunite=4993 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4993) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4993);
COMMIT;

-- IdArticle=2630 , Designation=RONONO GENIE  GM , Unite=BOITE , IdUnite=3463 , CodeArticle=0270263000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2630 AND idunite=3463;
DELETE FROM tb_log_stock WHERE codearticle='0270263000';
DELETE FROM tb_inventaire WHERE codearticle='0270263000';
DELETE FROM tb_stock WHERE codearticle='0270263000';
DELETE FROM tb_article WHERE idarticle=2630;
DELETE FROM tb_unite WHERE idunite=3463 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3463) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3463);
COMMIT;

-- IdArticle=4188 , Designation=RONONO LUCKY COW PM*48 , Unite=BOITE , IdUnite=5745 , CodeArticle=0510418800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4188 AND idunite=5745;
DELETE FROM tb_log_stock WHERE codearticle='0510418800';
DELETE FROM tb_inventaire WHERE codearticle='0510418800';
DELETE FROM tb_stock WHERE codearticle='0510418800';
DELETE FROM tb_article WHERE idarticle=4188;
DELETE FROM tb_unite WHERE idunite=5745 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5745) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5745);
COMMIT;

-- IdArticle=3077 , Designation=RONONO MAMA GM , Unite=BOITE , IdUnite=4029 , CodeArticle=0040307700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3077 AND idunite=4029;
DELETE FROM tb_log_stock WHERE codearticle='0040307700';
DELETE FROM tb_inventaire WHERE codearticle='0040307700';
DELETE FROM tb_stock WHERE codearticle='0040307700';
DELETE FROM tb_article WHERE idarticle=3077;
DELETE FROM tb_unite WHERE idunite=4029 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4029) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4029);
COMMIT;

-- IdArticle=2546 , Designation=RONONO POUDRE LACTIMILK , Unite=SAC , IdUnite=3360 , CodeArticle=0040254600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2546 AND idunite=3360;
DELETE FROM tb_log_stock WHERE codearticle='0040254600';
DELETE FROM tb_inventaire WHERE codearticle='0040254600';
DELETE FROM tb_stock WHERE codearticle='0040254600';
DELETE FROM tb_article WHERE idarticle=2546;
DELETE FROM tb_unite WHERE idunite=3360 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3360) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3360);
COMMIT;

-- IdArticle=2547 , Designation=RONONO POUDRE LACTIMILK 1/2 KG , Unite=SACHET , IdUnite=3361 , CodeArticle=0040254700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2547 AND idunite=3361;
DELETE FROM tb_log_stock WHERE codearticle='0040254700';
DELETE FROM tb_inventaire WHERE codearticle='0040254700';
DELETE FROM tb_stock WHERE codearticle='0040254700';
DELETE FROM tb_article WHERE idarticle=2547;
DELETE FROM tb_unite WHERE idunite=3361 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3361) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3361);
COMMIT;

-- IdArticle=3951 , Designation=RONONO SHASA GM , Unite=BOITE , IdUnite=5325 , CodeArticle=0040395100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3951 AND idunite=5325;
DELETE FROM tb_log_stock WHERE codearticle='0040395100';
DELETE FROM tb_inventaire WHERE codearticle='0040395100';
DELETE FROM tb_stock WHERE codearticle='0040395100';
DELETE FROM tb_article WHERE idarticle=3951;
DELETE FROM tb_unite WHERE idunite=5325 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5325) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5325);
COMMIT;

-- IdArticle=3702 , Designation=RONONO WHITE GOLD PM , Unite=BOITE , IdUnite=4888 , CodeArticle=0510370200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3702 AND idunite=4888;
DELETE FROM tb_log_stock WHERE codearticle='0510370200';
DELETE FROM tb_inventaire WHERE codearticle='0510370200';
DELETE FROM tb_stock WHERE codearticle='0510370200';
DELETE FROM tb_article WHERE idarticle=3702;
DELETE FROM tb_unite WHERE idunite=4888 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4888) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4888);
COMMIT;

-- IdArticle=4531 , Designation=ROULAUX GM SARAH V , Unite=PIECE , IdUnite=6367 , CodeArticle=0130453100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4531 AND idunite=6367;
DELETE FROM tb_log_stock WHERE codearticle='0130453100';
DELETE FROM tb_inventaire WHERE codearticle='0130453100';
DELETE FROM tb_stock WHERE codearticle='0130453100';
DELETE FROM tb_article WHERE idarticle=4531;
DELETE FROM tb_unite WHERE idunite=6367 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6367) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6367);
COMMIT;

-- IdArticle=4172 , Designation=ROULAUX PM SARAH V , Unite=PIECE , IdUnite=5725 , CodeArticle=0130417200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4172 AND idunite=5725;
DELETE FROM tb_log_stock WHERE codearticle='0130417200';
DELETE FROM tb_inventaire WHERE codearticle='0130417200';
DELETE FROM tb_stock WHERE codearticle='0130417200';
DELETE FROM tb_article WHERE idarticle=4172;
DELETE FROM tb_unite WHERE idunite=5725 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5725) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5725);
COMMIT;

-- IdArticle=4237 , Designation=ROULEAU KIT PATE LAPIN SARAH V , Unite=PIECE , IdUnite=5837 , CodeArticle=0130423700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4237 AND idunite=5837;
DELETE FROM tb_log_stock WHERE codearticle='0130423700';
DELETE FROM tb_inventaire WHERE codearticle='0130423700';
DELETE FROM tb_stock WHERE codearticle='0130423700';
DELETE FROM tb_article WHERE idarticle=4237;
DELETE FROM tb_unite WHERE idunite=5837 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5837) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5837);
COMMIT;

-- IdArticle=3147 , Designation=SAC VIDE 1,20M , Unite=PIECE , IdUnite=4137 , CodeArticle=0030314700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3147 AND idunite=4137;
DELETE FROM tb_log_stock WHERE codearticle='0030314700';
DELETE FROM tb_inventaire WHERE codearticle='0030314700';
DELETE FROM tb_stock WHERE codearticle='0030314700';
DELETE FROM tb_article WHERE idarticle=3147;
DELETE FROM tb_unite WHERE idunite=4137 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4137) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4137);
COMMIT;

-- IdArticle=3148 , Designation=SAC VIDE 1,40M , Unite=PIECE , IdUnite=4139 , CodeArticle=0030314800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3148 AND idunite=4139;
DELETE FROM tb_log_stock WHERE codearticle='0030314800';
DELETE FROM tb_inventaire WHERE codearticle='0030314800';
DELETE FROM tb_stock WHERE codearticle='0030314800';
DELETE FROM tb_article WHERE idarticle=3148;
DELETE FROM tb_unite WHERE idunite=4139 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4139) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4139);
COMMIT;

-- IdArticle=3635 , Designation=SAC VIDE KINTANA PCE , Unite=PIECE , IdUnite=4789 , CodeArticle=0030363500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3635 AND idunite=4789;
DELETE FROM tb_log_stock WHERE codearticle='0030363500';
DELETE FROM tb_inventaire WHERE codearticle='0030363500';
DELETE FROM tb_stock WHERE codearticle='0030363500';
DELETE FROM tb_article WHERE idarticle=3635;
DELETE FROM tb_unite WHERE idunite=4789 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4789) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4789);
COMMIT;

-- IdArticle=3614 , Designation=SAC VIDE SP 57*100 BLANC , Unite=PIECE , IdUnite=4754 , CodeArticle=0030361400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3614 AND idunite=4754;
DELETE FROM tb_log_stock WHERE codearticle='0030361400';
DELETE FROM tb_inventaire WHERE codearticle='0030361400';
DELETE FROM tb_stock WHERE codearticle='0030361400';
DELETE FROM tb_article WHERE idarticle=3614;
DELETE FROM tb_unite WHERE idunite=4754 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4754) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4754);
COMMIT;

-- IdArticle=3613 , Designation=SAC VIDE SP 70*120 BLANC , Unite=PIECE , IdUnite=4752 , CodeArticle=0030361300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3613 AND idunite=4752;
DELETE FROM tb_log_stock WHERE codearticle='0030361300';
DELETE FROM tb_inventaire WHERE codearticle='0030361300';
DELETE FROM tb_stock WHERE codearticle='0030361300';
DELETE FROM tb_article WHERE idarticle=3613;
DELETE FROM tb_unite WHERE idunite=4752 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4752) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4752);
COMMIT;

-- IdArticle=3175 , Designation=SACHET BEST PRICE BALLE , Unite=BALLE , IdUnite=4172 , CodeArticle=0030317500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3175 AND idunite=4172;
DELETE FROM tb_log_stock WHERE codearticle='0030317500';
DELETE FROM tb_inventaire WHERE codearticle='0030317500';
DELETE FROM tb_stock WHERE codearticle='0030317500';
DELETE FROM tb_article WHERE idarticle=3175;
DELETE FROM tb_unite WHERE idunite=4172 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4172) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4172);
COMMIT;

-- IdArticle=1249 , Designation=SACHET OISEAU , Unite=PIECE , IdUnite=1604 , CodeArticle=0130124900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1249 AND idunite=1604;
DELETE FROM tb_log_stock WHERE codearticle='0130124900';
DELETE FROM tb_inventaire WHERE codearticle='0130124900';
DELETE FROM tb_stock WHERE codearticle='0130124900';
DELETE FROM tb_article WHERE idarticle=1249;
DELETE FROM tb_unite WHERE idunite=1604 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1604) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1604);
COMMIT;

-- IdArticle=2601 , Designation=SACHET PM , Unite=PACQUET , IdUnite=3419 , CodeArticle=0030260100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2601 AND idunite=3419;
DELETE FROM tb_log_stock WHERE codearticle='0030260100';
DELETE FROM tb_inventaire WHERE codearticle='0030260100';
DELETE FROM tb_stock WHERE codearticle='0030260100';
DELETE FROM tb_article WHERE idarticle=2601;
DELETE FROM tb_unite WHERE idunite=3419 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3419) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3419);
COMMIT;

-- IdArticle=2735 , Designation=SACHET PM @ ROULEAU , Unite=ROULEAU , IdUnite=3635 , CodeArticle=0030273500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2735 AND idunite=3635;
DELETE FROM tb_log_stock WHERE codearticle='0030273500';
DELETE FROM tb_inventaire WHERE codearticle='0030273500';
DELETE FROM tb_stock WHERE codearticle='0030273500';
DELETE FROM tb_article WHERE idarticle=2735;
DELETE FROM tb_unite WHERE idunite=3635 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3635) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3635);
COMMIT;

-- IdArticle=1252 , Designation=SACHET PM F49 , Unite=PAQUET , IdUnite=1607 , CodeArticle=0030125200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1252 AND idunite=1607;
DELETE FROM tb_log_stock WHERE codearticle='0030125200';
DELETE FROM tb_inventaire WHERE codearticle='0030125200';
DELETE FROM tb_stock WHERE codearticle='0030125200';
DELETE FROM tb_article WHERE idarticle=1252;
DELETE FROM tb_unite WHERE idunite=1607 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1607) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1607);
COMMIT;

-- IdArticle=2601 , Designation=SACHET PM TRANSPARENT , Unite=PACQUET , IdUnite=3419 , CodeArticle=0030260100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2601 AND idunite=3419;
DELETE FROM tb_log_stock WHERE codearticle='0030260100';
DELETE FROM tb_inventaire WHERE codearticle='0030260100';
DELETE FROM tb_stock WHERE codearticle='0030260100';
DELETE FROM tb_article WHERE idarticle=2601;
DELETE FROM tb_unite WHERE idunite=3419 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3419) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3419);
COMMIT;

-- IdArticle=1273 , Designation=SARDINE ANNY , Unite=PIECE , IdUnite=1635 , CodeArticle=0040127300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1273 AND idunite=1635;
DELETE FROM tb_log_stock WHERE codearticle='0040127300';
DELETE FROM tb_inventaire WHERE codearticle='0040127300';
DELETE FROM tb_stock WHERE codearticle='0040127300';
DELETE FROM tb_article WHERE idarticle=1273;
DELETE FROM tb_unite WHERE idunite=1635 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1635) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1635);
COMMIT;

-- IdArticle=2662 , Designation=SARDINE ANNY , Unite=PIECE , IdUnite=3514 , CodeArticle=0040266200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2662 AND idunite=3514;
DELETE FROM tb_log_stock WHERE codearticle='0040266200';
DELETE FROM tb_inventaire WHERE codearticle='0040266200';
DELETE FROM tb_stock WHERE codearticle='0040266200';
DELETE FROM tb_article WHERE idarticle=2662;
DELETE FROM tb_unite WHERE idunite=3514 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3514) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3514);
COMMIT;

-- IdArticle=3672 , Designation=SARDINE VIVO , Unite=BOITE , IdUnite=4846 , CodeArticle=0040367200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3672 AND idunite=4846;
DELETE FROM tb_log_stock WHERE codearticle='0040367200';
DELETE FROM tb_inventaire WHERE codearticle='0040367200';
DELETE FROM tb_stock WHERE codearticle='0040367200';
DELETE FROM tb_article WHERE idarticle=3672;
DELETE FROM tb_unite WHERE idunite=4846 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4846) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4846);
COMMIT;

-- IdArticle=4048 , Designation=SAUCE CHILI BON APPETIT 280G , Unite=BOUTEILLE , IdUnite=5500 , CodeArticle=0040404800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4048 AND idunite=5500;
DELETE FROM tb_log_stock WHERE codearticle='0040404800';
DELETE FROM tb_inventaire WHERE codearticle='0040404800';
DELETE FROM tb_stock WHERE codearticle='0040404800';
DELETE FROM tb_article WHERE idarticle=4048;
DELETE FROM tb_unite WHERE idunite=5500 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5500) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5500);
COMMIT;

-- IdArticle=1284 , Designation=SAUCE DARK SUPERIEURE PET 400ML , Unite=PCS , IdUnite=1652 , CodeArticle=0040128400
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1284 AND idunite=1652;
DELETE FROM tb_log_stock WHERE codearticle='0040128400';
DELETE FROM tb_inventaire WHERE codearticle='0040128400';
DELETE FROM tb_stock WHERE codearticle='0040128400';
DELETE FROM tb_article WHERE idarticle=1284;
DELETE FROM tb_unite WHERE idunite=1652 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1652) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1652);
COMMIT;

-- IdArticle=3919 , Designation=SAUCE DARK SUPERIEURE PET 400ML , Unite=PCS , IdUnite=5264 , CodeArticle=0040391900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3919 AND idunite=5264;
DELETE FROM tb_log_stock WHERE codearticle='0040391900';
DELETE FROM tb_inventaire WHERE codearticle='0040391900';
DELETE FROM tb_stock WHERE codearticle='0040391900';
DELETE FROM tb_article WHERE idarticle=3919;
DELETE FROM tb_unite WHERE idunite=5264 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5264) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5264);
COMMIT;

-- IdArticle=3843 , Designation=SAUCE SOJA MATSIRO , Unite=BOUTEIL , IdUnite=5128 , CodeArticle=0040384300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3843 AND idunite=5128;
DELETE FROM tb_log_stock WHERE codearticle='0040384300';
DELETE FROM tb_inventaire WHERE codearticle='0040384300';
DELETE FROM tb_stock WHERE codearticle='0040384300';
DELETE FROM tb_article WHERE idarticle=3843;
DELETE FROM tb_unite WHERE idunite=5128 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5128) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5128);
COMMIT;

-- IdArticle=2213 , Designation=SAUCE TSA SIOU , Unite=JERYCANE , IdUnite=2946 , CodeArticle=0040221300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2213 AND idunite=2946;
DELETE FROM tb_log_stock WHERE codearticle='0040221300';
DELETE FROM tb_inventaire WHERE codearticle='0040221300';
DELETE FROM tb_stock WHERE codearticle='0040221300';
DELETE FROM tb_article WHERE idarticle=2213;
DELETE FROM tb_unite WHERE idunite=2946 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2946) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2946);
COMMIT;

-- IdArticle=3069 , Designation=SAVOKA TARATRA , Unite=BOITE , IdUnite=4017 , CodeArticle=0030306900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3069 AND idunite=4017;
DELETE FROM tb_log_stock WHERE codearticle='0030306900';
DELETE FROM tb_inventaire WHERE codearticle='0030306900';
DELETE FROM tb_stock WHERE codearticle='0030306900';
DELETE FROM tb_article WHERE idarticle=3069;
DELETE FROM tb_unite WHERE idunite=4017 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4017) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4017);
COMMIT;

-- IdArticle=3569 , Designation=SAVON CITRUS PCE , Unite=PIECE , IdUnite=4697 , CodeArticle=0020356900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3569 AND idunite=4697;
DELETE FROM tb_log_stock WHERE codearticle='0020356900';
DELETE FROM tb_inventaire WHERE codearticle='0020356900';
DELETE FROM tb_stock WHERE codearticle='0020356900';
DELETE FROM tb_article WHERE idarticle=3569;
DELETE FROM tb_unite WHERE idunite=4697 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4697) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4697);
COMMIT;

-- IdArticle=3529 , Designation=SAVON FAX PINK FLOWERS 60G , Unite=SACHET , IdUnite=4644 , CodeArticle=0020352900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3529 AND idunite=4644;
DELETE FROM tb_log_stock WHERE codearticle='0020352900';
DELETE FROM tb_inventaire WHERE codearticle='0020352900';
DELETE FROM tb_stock WHERE codearticle='0020352900';
DELETE FROM tb_article WHERE idarticle=3529;
DELETE FROM tb_unite WHERE idunite=4644 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4644) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4644);
COMMIT;

-- IdArticle=3527 , Designation=SAVON FAX SUNSHINE APPLES 60G , Unite=SACHET , IdUnite=4640 , CodeArticle=0020352700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3527 AND idunite=4640;
DELETE FROM tb_log_stock WHERE codearticle='0020352700';
DELETE FROM tb_inventaire WHERE codearticle='0020352700';
DELETE FROM tb_stock WHERE codearticle='0020352700';
DELETE FROM tb_article WHERE idarticle=3527;
DELETE FROM tb_unite WHERE idunite=4640 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4640) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4640);
COMMIT;

-- IdArticle=1319 , Designation=SAVON FLOR , Unite=PIECE , IdUnite=1700 , CodeArticle=0130131900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1319 AND idunite=1700;
DELETE FROM tb_log_stock WHERE codearticle='0130131900';
DELETE FROM tb_inventaire WHERE codearticle='0130131900';
DELETE FROM tb_stock WHERE codearticle='0130131900';
DELETE FROM tb_article WHERE idarticle=1319;
DELETE FROM tb_unite WHERE idunite=1700 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1700) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1700);
COMMIT;

-- IdArticle=1320 , Designation=SAVON FLOR , Unite=PIECE , IdUnite=1701 , CodeArticle=0130132000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1320 AND idunite=1701;
DELETE FROM tb_log_stock WHERE codearticle='0130132000';
DELETE FROM tb_inventaire WHERE codearticle='0130132000';
DELETE FROM tb_stock WHERE codearticle='0130132000';
DELETE FROM tb_article WHERE idarticle=1320;
DELETE FROM tb_unite WHERE idunite=1701 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1701) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1701);
COMMIT;

-- IdArticle=3168 , Designation=SAVON FRES 75G , Unite=PAQUET , IdUnite=4162 , CodeArticle=0020316800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3168 AND idunite=4162;
DELETE FROM tb_log_stock WHERE codearticle='0020316800';
DELETE FROM tb_inventaire WHERE codearticle='0020316800';
DELETE FROM tb_stock WHERE codearticle='0020316800';
DELETE FROM tb_article WHERE idarticle=3168;
DELETE FROM tb_unite WHERE idunite=4162 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4162) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4162);
COMMIT;

-- IdArticle=2270 , Designation=SAVON RIM M5 , Unite=CARTON , IdUnite=3014 , CodeArticle=0020227000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2270 AND idunite=3014;
DELETE FROM tb_log_stock WHERE codearticle='0020227000';
DELETE FROM tb_inventaire WHERE codearticle='0020227000';
DELETE FROM tb_stock WHERE codearticle='0020227000';
DELETE FROM tb_article WHERE idarticle=2270;
DELETE FROM tb_unite WHERE idunite=3014 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3014) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3014);
COMMIT;

-- IdArticle=3586 , Designation=SAVON RIM PCE , Unite=PIECE , IdUnite=4716 , CodeArticle=0020358600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3586 AND idunite=4716;
DELETE FROM tb_log_stock WHERE codearticle='0020358600';
DELETE FROM tb_inventaire WHERE codearticle='0020358600';
DELETE FROM tb_stock WHERE codearticle='0020358600';
DELETE FROM tb_article WHERE idarticle=3586;
DELETE FROM tb_unite WHERE idunite=4716 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4716) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4716);
COMMIT;

-- IdArticle=3131 , Designation=SAVON SEIM BARRE BLANC , Unite=BARRE , IdUnite=4118 , CodeArticle=0020313100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3131 AND idunite=4118;
DELETE FROM tb_log_stock WHERE codearticle='0020313100';
DELETE FROM tb_inventaire WHERE codearticle='0020313100';
DELETE FROM tb_stock WHERE codearticle='0020313100';
DELETE FROM tb_article WHERE idarticle=3131;
DELETE FROM tb_unite WHERE idunite=4118 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4118) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4118);
COMMIT;

-- IdArticle=3564 , Designation=SAVON SOBA M20 MARRON PCE , Unite=PIECE , IdUnite=4692 , CodeArticle=0020356400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3564 AND idunite=4692;
DELETE FROM tb_log_stock WHERE codearticle='0020356400';
DELETE FROM tb_inventaire WHERE codearticle='0020356400';
DELETE FROM tb_stock WHERE codearticle='0020356400';
DELETE FROM tb_article WHERE idarticle=3564;
DELETE FROM tb_unite WHERE idunite=4692 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4692) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4692);
COMMIT;

-- IdArticle=3550 , Designation=SAVON SOBA TSARA BARRE , Unite=BARRE , IdUnite=4678 , CodeArticle=0020355000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3550 AND idunite=4678;
DELETE FROM tb_log_stock WHERE codearticle='0020355000';
DELETE FROM tb_inventaire WHERE codearticle='0020355000';
DELETE FROM tb_stock WHERE codearticle='0020355000';
DELETE FROM tb_article WHERE idarticle=3550;
DELETE FROM tb_unite WHERE idunite=4678 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4678) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4678);
COMMIT;

-- IdArticle=2267 , Designation=SAVON VAO CITRON , Unite=PIECE , IdUnite=3010 , CodeArticle=0030226700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2267 AND idunite=3010;
DELETE FROM tb_log_stock WHERE codearticle='0030226700';
DELETE FROM tb_inventaire WHERE codearticle='0030226700';
DELETE FROM tb_stock WHERE codearticle='0030226700';
DELETE FROM tb_article WHERE idarticle=2267;
DELETE FROM tb_unite WHERE idunite=3010 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3010) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3010);
COMMIT;

-- IdArticle=3771 , Designation=SAVON WHITE WASH NATURE 90G , Unite=PIECE , IdUnite=5011 , CodeArticle=0020377100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3771 AND idunite=5011;
DELETE FROM tb_log_stock WHERE codearticle='0020377100';
DELETE FROM tb_inventaire WHERE codearticle='0020377100';
DELETE FROM tb_stock WHERE codearticle='0020377100';
DELETE FROM tb_article WHERE idarticle=3771;
DELETE FROM tb_unite WHERE idunite=5011 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5011) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5011);
COMMIT;

-- IdArticle=2380 , Designation=SAVONNETTE DIVA 125G , Unite=PACQUET , IdUnite=3151 , CodeArticle=0020238000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2380 AND idunite=3151;
DELETE FROM tb_log_stock WHERE codearticle='0020238000';
DELETE FROM tb_inventaire WHERE codearticle='0020238000';
DELETE FROM tb_stock WHERE codearticle='0020238000';
DELETE FROM tb_article WHERE idarticle=2380;
DELETE FROM tb_unite WHERE idunite=3151 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3151) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3151);
COMMIT;

-- IdArticle=2540 , Designation=SAVONY MANITRA , Unite=PIECE , IdUnite=3350 , CodeArticle=0020254000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2540 AND idunite=3350;
DELETE FROM tb_log_stock WHERE codearticle='0020254000';
DELETE FROM tb_inventaire WHERE codearticle='0020254000';
DELETE FROM tb_stock WHERE codearticle='0020254000';
DELETE FROM tb_article WHERE idarticle=2540;
DELETE FROM tb_unite WHERE idunite=3350 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3350) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3350);
COMMIT;

-- IdArticle=2190 , Designation=SCOTCH ALIZE , Unite=PIECE , IdUnite=2917 , CodeArticle=0030219000
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2190 AND idunite=2917;
DELETE FROM tb_log_stock WHERE codearticle='0030219000';
DELETE FROM tb_inventaire WHERE codearticle='0030219000';
DELETE FROM tb_stock WHERE codearticle='0030219000';
DELETE FROM tb_article WHERE idarticle=2190;
DELETE FROM tb_unite WHERE idunite=2917 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2917) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2917);
COMMIT;

-- IdArticle=2190 , Designation=SCOTCH ALIZE GM , Unite=PIECE , IdUnite=2917 , CodeArticle=0030219000
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2190 AND idunite=2917;
DELETE FROM tb_log_stock WHERE codearticle='0030219000';
DELETE FROM tb_inventaire WHERE codearticle='0030219000';
DELETE FROM tb_stock WHERE codearticle='0030219000';
DELETE FROM tb_article WHERE idarticle=2190;
DELETE FROM tb_unite WHERE idunite=2917 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2917) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2917);
COMMIT;

-- IdArticle=2379 , Designation=SCOTCH K2 _ GM , Unite=PIECE , IdUnite=3148 , CodeArticle=0030237900
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2379 AND idunite=3148;
DELETE FROM tb_log_stock WHERE codearticle='0030237900';
DELETE FROM tb_inventaire WHERE codearticle='0030237900';
DELETE FROM tb_stock WHERE codearticle='0030237900';
DELETE FROM tb_article WHERE idarticle=2379;
DELETE FROM tb_unite WHERE idunite=3148 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3148) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3148);
COMMIT;

-- IdArticle=3211 , Designation=SEL FIN EN SACHET 20KG ANTANANKORO , Unite=SAC , IdUnite=4227 , CodeArticle=0520321100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3211 AND idunite=4227;
DELETE FROM tb_log_stock WHERE codearticle='0520321100';
DELETE FROM tb_inventaire WHERE codearticle='0520321100';
DELETE FROM tb_stock WHERE codearticle='0520321100';
DELETE FROM tb_article WHERE idarticle=3211;
DELETE FROM tb_unite WHERE idunite=4227 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4227) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4227);
COMMIT;

-- IdArticle=3209 , Designation=SEL GROS ANTANANKORO , Unite=SAC , IdUnite=4225 , CodeArticle=0520320900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3209 AND idunite=4225;
DELETE FROM tb_log_stock WHERE codearticle='0520320900';
DELETE FROM tb_inventaire WHERE codearticle='0520320900';
DELETE FROM tb_stock WHERE codearticle='0520320900';
DELETE FROM tb_article WHERE idarticle=3209;
DELETE FROM tb_unite WHERE idunite=4225 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4225) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4225);
COMMIT;

-- IdArticle=2522 , Designation=SERVIETTE DE TABLE TOP , Unite=PACQUET , IdUnite=3314 , CodeArticle=0030252200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2522 AND idunite=3314;
DELETE FROM tb_log_stock WHERE codearticle='0030252200';
DELETE FROM tb_inventaire WHERE codearticle='0030252200';
DELETE FROM tb_stock WHERE codearticle='0030252200';
DELETE FROM tb_article WHERE idarticle=2522;
DELETE FROM tb_unite WHERE idunite=3314 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3314) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3314);
COMMIT;

-- IdArticle=4163 , Designation=SHAPE CHOCOLATE BOCAL , Unite=BOCAL , IdUnite=5712 , CodeArticle=0080416300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4163 AND idunite=5712;
DELETE FROM tb_log_stock WHERE codearticle='0080416300';
DELETE FROM tb_inventaire WHERE codearticle='0080416300';
DELETE FROM tb_stock WHERE codearticle='0080416300';
DELETE FROM tb_article WHERE idarticle=4163;
DELETE FROM tb_unite WHERE idunite=5712 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5712) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5712);
COMMIT;

-- IdArticle=3820 , Designation=SHINE COFFEE , Unite=PIECE , IdUnite=5082 , CodeArticle=0040382000
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3820 AND idunite=5082;
DELETE FROM tb_log_stock WHERE codearticle='0040382000';
DELETE FROM tb_inventaire WHERE codearticle='0040382000';
DELETE FROM tb_stock WHERE codearticle='0040382000';
DELETE FROM tb_article WHERE idarticle=3820;
DELETE FROM tb_unite WHERE idunite=5082 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5082) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5082);
COMMIT;

-- IdArticle=3449 , Designation=SHORT COTON A27 65KG , Unite=BALLE , IdUnite=4515 , CodeArticle=0190344900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3449 AND idunite=4515;
DELETE FROM tb_log_stock WHERE codearticle='0190344900';
DELETE FROM tb_inventaire WHERE codearticle='0190344900';
DELETE FROM tb_stock WHERE codearticle='0190344900';
DELETE FROM tb_article WHERE idarticle=3449;
DELETE FROM tb_unite WHERE idunite=4515 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4515) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4515);
COMMIT;

-- IdArticle=3155 , Designation=SIKALITE , Unite=PIECE , IdUnite=4148 , CodeArticle=0030315500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3155 AND idunite=4148;
DELETE FROM tb_log_stock WHERE codearticle='0030315500';
DELETE FROM tb_inventaire WHERE codearticle='0030315500';
DELETE FROM tb_stock WHERE codearticle='0030315500';
DELETE FROM tb_article WHERE idarticle=3155;
DELETE FROM tb_unite WHERE idunite=4148 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4148) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4148);
COMMIT;

-- IdArticle=2374 , Designation=SLEEPY - LADY , Unite=PIECE , IdUnite=3140 , CodeArticle=0470237400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2374 AND idunite=3140;
DELETE FROM tb_log_stock WHERE codearticle='0470237400';
DELETE FROM tb_inventaire WHERE codearticle='0470237400';
DELETE FROM tb_stock WHERE codearticle='0470237400';
DELETE FROM tb_article WHERE idarticle=2374;
DELETE FROM tb_unite WHERE idunite=3140 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3140) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3140);
COMMIT;

-- IdArticle=3047 , Designation=SLEEPY NAT SOFT 8X24 , Unite=PIECE , IdUnite=3991 , CodeArticle=0470304700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3047 AND idunite=3991;
DELETE FROM tb_log_stock WHERE codearticle='0470304700';
DELETE FROM tb_inventaire WHERE codearticle='0470304700';
DELETE FROM tb_stock WHERE codearticle='0470304700';
DELETE FROM tb_article WHERE idarticle=3047;
DELETE FROM tb_unite WHERE idunite=3991 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3991) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3991);
COMMIT;

-- IdArticle=4438 , Designation=SN SALTO POP , Unite=SACHET , IdUnite=6190 , CodeArticle=0040443800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4438 AND idunite=6190;
DELETE FROM tb_log_stock WHERE codearticle='0040443800';
DELETE FROM tb_inventaire WHERE codearticle='0040443800';
DELETE FROM tb_stock WHERE codearticle='0040443800';
DELETE FROM tb_article WHERE idarticle=4438;
DELETE FROM tb_unite WHERE idunite=6190 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6190) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6190);
COMMIT;

-- IdArticle=3120 , Designation=SNACK CHEESSE RINGS 15G , Unite=SACHET , IdUnite=4103 , CodeArticle=0040312000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3120 AND idunite=4103;
DELETE FROM tb_log_stock WHERE codearticle='0040312000';
DELETE FROM tb_inventaire WHERE codearticle='0040312000';
DELETE FROM tb_stock WHERE codearticle='0040312000';
DELETE FROM tb_article WHERE idarticle=3120;
DELETE FROM tb_unite WHERE idunite=4103 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4103) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4103);
COMMIT;

-- IdArticle=4563 , Designation=SNACK CHEESSE RINGS 15G , Unite=SACHET , IdUnite=6429 , CodeArticle=0040456300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4563 AND idunite=6429;
DELETE FROM tb_log_stock WHERE codearticle='0040456300';
DELETE FROM tb_inventaire WHERE codearticle='0040456300';
DELETE FROM tb_stock WHERE codearticle='0040456300';
DELETE FROM tb_article WHERE idarticle=4563;
DELETE FROM tb_unite WHERE idunite=6429 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6429) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6429);
COMMIT;

-- IdArticle=4053 , Designation=SOFTEX MAXI FIT WINGS*8 ALVEOLE , Unite=PACQUET , IdUnite=5510 , CodeArticle=0150405300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4053 AND idunite=5510;
DELETE FROM tb_log_stock WHERE codearticle='0150405300';
DELETE FROM tb_inventaire WHERE codearticle='0150405300';
DELETE FROM tb_stock WHERE codearticle='0150405300';
DELETE FROM tb_article WHERE idarticle=4053;
DELETE FROM tb_unite WHERE idunite=5510 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5510) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5510);
COMMIT;

-- IdArticle=3159 , Designation=SOUDE CAUSTIQUE PERLEE , Unite=KG , IdUnite=4153 , CodeArticle=0030315900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3159 AND idunite=4153;
DELETE FROM tb_log_stock WHERE codearticle='0030315900';
DELETE FROM tb_inventaire WHERE codearticle='0030315900';
DELETE FROM tb_stock WHERE codearticle='0030315900';
DELETE FROM tb_article WHERE idarticle=3159;
DELETE FROM tb_unite WHERE idunite=4153 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4153) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4153);
COMMIT;

-- IdArticle=3146 , Designation=SOUDE CAUSTIQUE PERLEE 25KG , Unite=SAC , IdUnite=4136 , CodeArticle=0030314600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3146 AND idunite=4136;
DELETE FROM tb_log_stock WHERE codearticle='0030314600';
DELETE FROM tb_inventaire WHERE codearticle='0030314600';
DELETE FROM tb_stock WHERE codearticle='0030314600';
DELETE FROM tb_article WHERE idarticle=3146;
DELETE FROM tb_unite WHERE idunite=4136 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4136) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4136);
COMMIT;

-- IdArticle=2196 , Designation=SOUR POWDER CANDY , Unite=PACQUET , IdUnite=2926 , CodeArticle=0140219600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2196 AND idunite=2926;
DELETE FROM tb_log_stock WHERE codearticle='0140219600';
DELETE FROM tb_inventaire WHERE codearticle='0140219600';
DELETE FROM tb_stock WHERE codearticle='0140219600';
DELETE FROM tb_article WHERE idarticle=2196;
DELETE FROM tb_unite WHERE idunite=2926 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2926) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2926);
COMMIT;

-- IdArticle=1497 , Designation=SPAGHETTI CHERIE , Unite=PIECE , IdUnite=1951 , CodeArticle=0110149700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1497 AND idunite=1951;
DELETE FROM tb_log_stock WHERE codearticle='0110149700';
DELETE FROM tb_inventaire WHERE codearticle='0110149700';
DELETE FROM tb_stock WHERE codearticle='0110149700';
DELETE FROM tb_article WHERE idarticle=1497;
DELETE FROM tb_unite WHERE idunite=1951 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1951) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1951);
COMMIT;

-- IdArticle=4177 , Designation=SPATULE DE 10 SARAH V , Unite=PIECE , IdUnite=5730 , CodeArticle=0130417700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4177 AND idunite=5730;
DELETE FROM tb_log_stock WHERE codearticle='0130417700';
DELETE FROM tb_inventaire WHERE codearticle='0130417700';
DELETE FROM tb_stock WHERE codearticle='0130417700';
DELETE FROM tb_article WHERE idarticle=4177;
DELETE FROM tb_unite WHERE idunite=5730 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5730) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5730);
COMMIT;

-- IdArticle=3403 , Designation=STOCK COMMANDER AFRICAN , Unite=SAC , IdUnite=4445 , CodeArticle=0170340300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3403 AND idunite=4445;
DELETE FROM tb_log_stock WHERE codearticle='0170340300';
DELETE FROM tb_inventaire WHERE codearticle='0170340300';
DELETE FROM tb_stock WHERE codearticle='0170340300';
DELETE FROM tb_article WHERE idarticle=3403;
DELETE FROM tb_unite WHERE idunite=4445 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4445) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4445);
COMMIT;

-- IdArticle=1516 , Designation=STYLO DIGNO ( BLEU ) , Unite=CARTON , IdUnite=1979 , CodeArticle=0030151600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1516 AND idunite=1979;
DELETE FROM tb_log_stock WHERE codearticle='0030151600';
DELETE FROM tb_inventaire WHERE codearticle='0030151600';
DELETE FROM tb_stock WHERE codearticle='0030151600';
DELETE FROM tb_article WHERE idarticle=1516;
DELETE FROM tb_unite WHERE idunite=1979 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1979) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1979);
COMMIT;

-- IdArticle=1516 , Designation=STYLO DIGNO ( ROUGE ) , Unite=CARTON , IdUnite=1979 , CodeArticle=0030151600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1516 AND idunite=1979;
DELETE FROM tb_log_stock WHERE codearticle='0030151600';
DELETE FROM tb_inventaire WHERE codearticle='0030151600';
DELETE FROM tb_stock WHERE codearticle='0030151600';
DELETE FROM tb_article WHERE idarticle=1516;
DELETE FROM tb_unite WHERE idunite=1979 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1979) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1979);
COMMIT;

-- IdArticle=3145 , Designation=STYLO EUROPA , Unite=BOITE , IdUnite=4134 , CodeArticle=0030314500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3145 AND idunite=4134;
DELETE FROM tb_log_stock WHERE codearticle='0030314500';
DELETE FROM tb_inventaire WHERE codearticle='0030314500';
DELETE FROM tb_stock WHERE codearticle='0030314500';
DELETE FROM tb_article WHERE idarticle=3145;
DELETE FROM tb_unite WHERE idunite=4134 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4134) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4134);
COMMIT;

-- IdArticle=3981 , Designation=STYLO EUROPA , Unite=BOITE , IdUnite=5371 , CodeArticle=0030398100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3981 AND idunite=5371;
DELETE FROM tb_log_stock WHERE codearticle='0030398100';
DELETE FROM tb_inventaire WHERE codearticle='0030398100';
DELETE FROM tb_stock WHERE codearticle='0030398100';
DELETE FROM tb_article WHERE idarticle=3981;
DELETE FROM tb_unite WHERE idunite=5371 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5371) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5371);
COMMIT;

-- IdArticle=2606 , Designation=STYLO LAUREAT BLEU , Unite=BOITE , IdUnite=3425 , CodeArticle=0030260600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2606 AND idunite=3425;
DELETE FROM tb_log_stock WHERE codearticle='0030260600';
DELETE FROM tb_inventaire WHERE codearticle='0030260600';
DELETE FROM tb_stock WHERE codearticle='0030260600';
DELETE FROM tb_article WHERE idarticle=2606;
DELETE FROM tb_unite WHERE idunite=3425 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3425) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3425);
COMMIT;

-- IdArticle=2607 , Designation=STYLO LAUREAT NOIR , Unite=BOITE , IdUnite=3427 , CodeArticle=0030260700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2607 AND idunite=3427;
DELETE FROM tb_log_stock WHERE codearticle='0030260700';
DELETE FROM tb_inventaire WHERE codearticle='0030260700';
DELETE FROM tb_stock WHERE codearticle='0030260700';
DELETE FROM tb_article WHERE idarticle=2607;
DELETE FROM tb_unite WHERE idunite=3427 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3427) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3427);
COMMIT;

-- IdArticle=2609 , Designation=STYLO LAUREAT VERT , Unite=BOITE , IdUnite=3431 , CodeArticle=0030260900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2609 AND idunite=3431;
DELETE FROM tb_log_stock WHERE codearticle='0030260900';
DELETE FROM tb_inventaire WHERE codearticle='0030260900';
DELETE FROM tb_stock WHERE codearticle='0030260900';
DELETE FROM tb_article WHERE idarticle=2609;
DELETE FROM tb_unite WHERE idunite=3431 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3431) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3431);
COMMIT;

-- IdArticle=4219 , Designation=STYLO NOVA 1mm , Unite=BOITE , IdUnite=5809 , CodeArticle=0130421900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4219 AND idunite=5809;
DELETE FROM tb_log_stock WHERE codearticle='0130421900';
DELETE FROM tb_inventaire WHERE codearticle='0130421900';
DELETE FROM tb_stock WHERE codearticle='0130421900';
DELETE FROM tb_article WHERE idarticle=4219;
DELETE FROM tb_unite WHERE idunite=5809 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5809) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5809);
COMMIT;

-- IdArticle=4491 , Designation=SUCETTE BIG POP GM XXL , Unite=BOITE , IdUnite=6288 , CodeArticle=0140449100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4491 AND idunite=6288;
DELETE FROM tb_log_stock WHERE codearticle='0140449100';
DELETE FROM tb_inventaire WHERE codearticle='0140449100';
DELETE FROM tb_stock WHERE codearticle='0140449100';
DELETE FROM tb_article WHERE idarticle=4491;
DELETE FROM tb_unite WHERE idunite=6288 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6288) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6288);
COMMIT;

-- IdArticle=2276 , Designation=SUCETTE BOCAL ROYAL , Unite=BOITE , IdUnite=3022 , CodeArticle=0140227600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2276 AND idunite=3022;
DELETE FROM tb_log_stock WHERE codearticle='0140227600';
DELETE FROM tb_inventaire WHERE codearticle='0140227600';
DELETE FROM tb_stock WHERE codearticle='0140227600';
DELETE FROM tb_article WHERE idarticle=2276;
DELETE FROM tb_unite WHERE idunite=3022 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3022) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3022);
COMMIT;

-- IdArticle=1856 , Designation=SUCETTE CHOCO VANILLA DOLLY LOLLY , Unite=SACHET , IdUnite=2489 , CodeArticle=0140185600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1856 AND idunite=2489;
DELETE FROM tb_log_stock WHERE codearticle='0140185600';
DELETE FROM tb_inventaire WHERE codearticle='0140185600';
DELETE FROM tb_stock WHERE codearticle='0140185600';
DELETE FROM tb_article WHERE idarticle=1856;
DELETE FROM tb_unite WHERE idunite=2489 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2489) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2489);
COMMIT;

-- IdArticle=3419 , Designation=SUCETTE DONUT , Unite=SACHET , IdUnite=4470 , CodeArticle=0140341900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3419 AND idunite=4470;
DELETE FROM tb_log_stock WHERE codearticle='0140341900';
DELETE FROM tb_inventaire WHERE codearticle='0140341900';
DELETE FROM tb_stock WHERE codearticle='0140341900';
DELETE FROM tb_article WHERE idarticle=3419;
DELETE FROM tb_unite WHERE idunite=4470 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4470) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4470);
COMMIT;

-- IdArticle=3421 , Designation=SUCETTE HEART POP GM VAOVAO , Unite=SACHET , IdUnite=4474 , CodeArticle=0140342100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3421 AND idunite=4474;
DELETE FROM tb_log_stock WHERE codearticle='0140342100';
DELETE FROM tb_inventaire WHERE codearticle='0140342100';
DELETE FROM tb_stock WHERE codearticle='0140342100';
DELETE FROM tb_article WHERE idarticle=3421;
DELETE FROM tb_unite WHERE idunite=4474 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4474) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4474);
COMMIT;

-- IdArticle=3063 , Designation=SUCETTE HEARTY POP , Unite=PIECE , IdUnite=4009 , CodeArticle=0140306300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3063 AND idunite=4009;
DELETE FROM tb_log_stock WHERE codearticle='0140306300';
DELETE FROM tb_inventaire WHERE codearticle='0140306300';
DELETE FROM tb_stock WHERE codearticle='0140306300';
DELETE FROM tb_article WHERE idarticle=3063;
DELETE FROM tb_unite WHERE idunite=4009 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4009) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4009);
COMMIT;

-- IdArticle=3714 , Designation=SUCETTE HEARTY POP BOCAL , Unite=BOCAL , IdUnite=4909 , CodeArticle=0140371400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3714 AND idunite=4909;
DELETE FROM tb_log_stock WHERE codearticle='0140371400';
DELETE FROM tb_inventaire WHERE codearticle='0140371400';
DELETE FROM tb_stock WHERE codearticle='0140371400';
DELETE FROM tb_article WHERE idarticle=3714;
DELETE FROM tb_unite WHERE idunite=4909 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4909) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4909);
COMMIT;

-- IdArticle=4077 , Designation=SUCETTE MIX FRUIT NATURAL , Unite=SACHET , IdUnite=5553 , CodeArticle=0140407700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4077 AND idunite=5553;
DELETE FROM tb_log_stock WHERE codearticle='0140407700';
DELETE FROM tb_inventaire WHERE codearticle='0140407700';
DELETE FROM tb_stock WHERE codearticle='0140407700';
DELETE FROM tb_article WHERE idarticle=4077;
DELETE FROM tb_unite WHERE idunite=5553 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5553) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5553);
COMMIT;

-- IdArticle=4058 , Designation=SUCETTE MIX YOGOFRU BOCAL , Unite=BOCAL , IdUnite=5520 , CodeArticle=0140405800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4058 AND idunite=5520;
DELETE FROM tb_log_stock WHERE codearticle='0140405800';
DELETE FROM tb_inventaire WHERE codearticle='0140405800';
DELETE FROM tb_stock WHERE codearticle='0140405800';
DELETE FROM tb_article WHERE idarticle=4058;
DELETE FROM tb_unite WHERE idunite=5520 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5520) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5520);
COMMIT;

-- IdArticle=4258 , Designation=SUCETTE NECT CHUPITO WHISTLE 50*24 , Unite=SACHET , IdUnite=5879 , CodeArticle=0140425800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4258 AND idunite=5879;
DELETE FROM tb_log_stock WHERE codearticle='0140425800';
DELETE FROM tb_inventaire WHERE codearticle='0140425800';
DELETE FROM tb_stock WHERE codearticle='0140425800';
DELETE FROM tb_article WHERE idarticle=4258;
DELETE FROM tb_unite WHERE idunite=5879 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5879) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5879);
COMMIT;

-- IdArticle=4222 , Designation=SUCETTE NEO POP XXL , Unite=SACHET , IdUnite=5816 , CodeArticle=0140422200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4222 AND idunite=5816;
DELETE FROM tb_log_stock WHERE codearticle='0140422200';
DELETE FROM tb_inventaire WHERE codearticle='0140422200';
DELETE FROM tb_stock WHERE codearticle='0140422200';
DELETE FROM tb_article WHERE idarticle=4222;
DELETE FROM tb_unite WHERE idunite=5816 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5816) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5816);
COMMIT;

-- IdArticle=4384 , Designation=SUCRE EN SACHET MAGASIN D , Unite=KILOS , IdUnite=6093 , CodeArticle=0530438400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4384 AND idunite=6093;
DELETE FROM tb_log_stock WHERE codearticle='0530438400';
DELETE FROM tb_inventaire WHERE codearticle='0530438400';
DELETE FROM tb_stock WHERE codearticle='0530438400';
DELETE FROM tb_article WHERE idarticle=4384;
DELETE FROM tb_unite WHERE idunite=6093 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6093) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6093);
COMMIT;

-- IdArticle=3946 , Designation=SUCRE ROUGE SELATI 50KG , Unite=SAC , IdUnite=5318 , CodeArticle=0530394600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3946 AND idunite=5318;
DELETE FROM tb_log_stock WHERE codearticle='0530394600';
DELETE FROM tb_inventaire WHERE codearticle='0530394600';
DELETE FROM tb_stock WHERE codearticle='0530394600';
DELETE FROM tb_article WHERE idarticle=3946;
DELETE FROM tb_unite WHERE idunite=5318 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5318) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5318);
COMMIT;

-- IdArticle=4200 , Designation=SUPER CONE 12*60 EN BOCAL , Unite=BOCAL , IdUnite=5769 , CodeArticle=0040420000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4200 AND idunite=5769;
DELETE FROM tb_log_stock WHERE codearticle='0040420000';
DELETE FROM tb_inventaire WHERE codearticle='0040420000';
DELETE FROM tb_stock WHERE codearticle='0040420000';
DELETE FROM tb_article WHERE idarticle=4200;
DELETE FROM tb_unite WHERE idunite=5769 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5769) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5769);
COMMIT;

-- IdArticle=3902 , Designation=SWEET AFRICA POULET EN PACQUET , Unite=PACQUET , IdUnite=5229 , CodeArticle=0040390200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3902 AND idunite=5229;
DELETE FROM tb_log_stock WHERE codearticle='0040390200';
DELETE FROM tb_inventaire WHERE codearticle='0040390200';
DELETE FROM tb_stock WHERE codearticle='0040390200';
DELETE FROM tb_article WHERE idarticle=3902;
DELETE FROM tb_unite WHERE idunite=5229 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5229) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5229);
COMMIT;

-- IdArticle=3609 , Designation=SWEET BOY PCE , Unite=PIECE , IdUnite=4746 , CodeArticle=0140360900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3609 AND idunite=4746;
DELETE FROM tb_log_stock WHERE codearticle='0140360900';
DELETE FROM tb_inventaire WHERE codearticle='0140360900';
DELETE FROM tb_stock WHERE codearticle='0140360900';
DELETE FROM tb_article WHERE idarticle=3609;
DELETE FROM tb_unite WHERE idunite=4746 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4746) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4746);
COMMIT;

-- IdArticle=1133 , Designation=TASY , Unite=PIECE , IdUnite=1451 , CodeArticle=0100113300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1133 AND idunite=1451;
DELETE FROM tb_log_stock WHERE codearticle='0100113300';
DELETE FROM tb_inventaire WHERE codearticle='0100113300';
DELETE FROM tb_stock WHERE codearticle='0100113300';
DELETE FROM tb_article WHERE idarticle=1133;
DELETE FROM tb_unite WHERE idunite=1451 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1451) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1451);
COMMIT;

-- IdArticle=1134 , Designation=TASY , Unite=PIECE , IdUnite=1452 , CodeArticle=0100113400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1134 AND idunite=1452;
DELETE FROM tb_log_stock WHERE codearticle='0100113400';
DELETE FROM tb_inventaire WHERE codearticle='0100113400';
DELETE FROM tb_stock WHERE codearticle='0100113400';
DELETE FROM tb_article WHERE idarticle=1134;
DELETE FROM tb_unite WHERE idunite=1452 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1452) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1452);
COMMIT;

-- IdArticle=2731 , Designation=THERMOS 9111A 2L VY , Unite=PIECE , IdUnite=3627 , CodeArticle=0030273100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2731 AND idunite=3627;
DELETE FROM tb_log_stock WHERE codearticle='0030273100';
DELETE FROM tb_inventaire WHERE codearticle='0030273100';
DELETE FROM tb_stock WHERE codearticle='0030273100';
DELETE FROM tb_article WHERE idarticle=2731;
DELETE FROM tb_unite WHERE idunite=3627 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3627) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3627);
COMMIT;

-- IdArticle=2637 , Designation=THERMOS VISTA 2L , Unite=PIECE , IdUnite=3477 , CodeArticle=0030263700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2637 AND idunite=3477;
DELETE FROM tb_log_stock WHERE codearticle='0030263700';
DELETE FROM tb_inventaire WHERE codearticle='0030263700';
DELETE FROM tb_stock WHERE codearticle='0030263700';
DELETE FROM tb_article WHERE idarticle=2637;
DELETE FROM tb_unite WHERE idunite=3477 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3477) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3477);
COMMIT;

-- IdArticle=3522 , Designation=THON EN MIETTES 185G , Unite=PIECE , IdUnite=4630 , CodeArticle=0040352200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3522 AND idunite=4630;
DELETE FROM tb_log_stock WHERE codearticle='0040352200';
DELETE FROM tb_inventaire WHERE codearticle='0040352200';
DELETE FROM tb_stock WHERE codearticle='0040352200';
DELETE FROM tb_article WHERE idarticle=3522;
DELETE FROM tb_unite WHERE idunite=4630 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4630) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4630);
COMMIT;

-- IdArticle=4315 , Designation=TIK TOK VETO ASSORTED POPS EN SACHET , Unite=SACHET , IdUnite=5983 , CodeArticle=0140431500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4315 AND idunite=5983;
DELETE FROM tb_log_stock WHERE codearticle='0140431500';
DELETE FROM tb_inventaire WHERE codearticle='0140431500';
DELETE FROM tb_stock WHERE codearticle='0140431500';
DELETE FROM tb_article WHERE idarticle=4315;
DELETE FROM tb_unite WHERE idunite=5983 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5983) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5983);
COMMIT;

-- IdArticle=2529 , Designation=TOMATE BOITE HELLO FASTE , Unite=BOITE , IdUnite=3327 , CodeArticle=0030252900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2529 AND idunite=3327;
DELETE FROM tb_log_stock WHERE codearticle='0030252900';
DELETE FROM tb_inventaire WHERE codearticle='0030252900';
DELETE FROM tb_stock WHERE codearticle='0030252900';
DELETE FROM tb_article WHERE idarticle=2529;
DELETE FROM tb_unite WHERE idunite=3327 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3327) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3327);
COMMIT;

-- IdArticle=3891 , Designation=TOMATE BOITE MAMA , Unite=BOITE , IdUnite=5210 , CodeArticle=0040389100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3891 AND idunite=5210;
DELETE FROM tb_log_stock WHERE codearticle='0040389100';
DELETE FROM tb_inventaire WHERE codearticle='0040389100';
DELETE FROM tb_stock WHERE codearticle='0040389100';
DELETE FROM tb_article WHERE idarticle=3891;
DELETE FROM tb_unite WHERE idunite=5210 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5210) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5210);
COMMIT;

-- IdArticle=3716 , Designation=TOMATE EUROPA @ BOITE 70G , Unite=BOITE , IdUnite=4913 , CodeArticle=0040371600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3716 AND idunite=4913;
DELETE FROM tb_log_stock WHERE codearticle='0040371600';
DELETE FROM tb_inventaire WHERE codearticle='0040371600';
DELETE FROM tb_stock WHERE codearticle='0040371600';
DELETE FROM tb_article WHERE idarticle=3716;
DELETE FROM tb_unite WHERE idunite=4913 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4913) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4913);
COMMIT;

-- IdArticle=1606 , Designation=TOMATE KENZY EN SACHET 50G , Unite=PIECE , IdUnite=2117 , CodeArticle=0030160600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1606 AND idunite=2117;
DELETE FROM tb_log_stock WHERE codearticle='0030160600';
DELETE FROM tb_inventaire WHERE codearticle='0030160600';
DELETE FROM tb_stock WHERE codearticle='0030160600';
DELETE FROM tb_article WHERE idarticle=1606;
DELETE FROM tb_unite WHERE idunite=2117 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2117) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2117);
COMMIT;

-- IdArticle=4365 , Designation=TONGOLO BE 2 EME EN KILOS , Unite=KILOS , IdUnite=6063 , CodeArticle=0040436500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4365 AND idunite=6063;
DELETE FROM tb_log_stock WHERE codearticle='0040436500';
DELETE FROM tb_inventaire WHERE codearticle='0040436500';
DELETE FROM tb_stock WHERE codearticle='0040436500';
DELETE FROM tb_article WHERE idarticle=4365;
DELETE FROM tb_unite WHERE idunite=6063 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6063) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6063);
COMMIT;

-- IdArticle=4343 , Designation=TONGUE PAINTER JUMBO LOLLIPOP KIDDIES , Unite=SACHET , IdUnite=6034 , CodeArticle=0140434300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4343 AND idunite=6034;
DELETE FROM tb_log_stock WHERE codearticle='0140434300';
DELETE FROM tb_inventaire WHERE codearticle='0140434300';
DELETE FROM tb_stock WHERE codearticle='0140434300';
DELETE FROM tb_article WHERE idarticle=4343;
DELETE FROM tb_unite WHERE idunite=6034 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6034) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6034);
COMMIT;

-- IdArticle=4319 , Designation=TONGUE PAINTER MONSTRE POP KIDDIES , Unite=SACHET , IdUnite=5990 , CodeArticle=0140431900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4319 AND idunite=5990;
DELETE FROM tb_log_stock WHERE codearticle='0140431900';
DELETE FROM tb_inventaire WHERE codearticle='0140431900';
DELETE FROM tb_stock WHERE codearticle='0140431900';
DELETE FROM tb_article WHERE idarticle=4319;
DELETE FROM tb_unite WHERE idunite=5990 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5990) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5990);
COMMIT;

-- IdArticle=2197 , Designation=TONGUE_DANCER (100PCS) , Unite=BOCAL , IdUnite=2928 , CodeArticle=0140219700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2197 AND idunite=2928;
DELETE FROM tb_log_stock WHERE codearticle='0140219700';
DELETE FROM tb_inventaire WHERE codearticle='0140219700';
DELETE FROM tb_stock WHERE codearticle='0140219700';
DELETE FROM tb_article WHERE idarticle=2197;
DELETE FROM tb_unite WHERE idunite=2928 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2928) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2928);
COMMIT;

-- IdArticle=3673 , Designation=TOP CAFE , Unite=PIECE , IdUnite=4848 , CodeArticle=0040367300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3673 AND idunite=4848;
DELETE FROM tb_log_stock WHERE codearticle='0040367300';
DELETE FROM tb_inventaire WHERE codearticle='0040367300';
DELETE FROM tb_stock WHERE codearticle='0040367300';
DELETE FROM tb_article WHERE idarticle=3673;
DELETE FROM tb_unite WHERE idunite=4848 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4848) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4848);
COMMIT;

-- IdArticle=4161 , Designation=TOP CAFFE MOKACHINNO 22G , Unite=PIECE , IdUnite=5707 , CodeArticle=0040416100
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4161 AND idunite=5707;
DELETE FROM tb_log_stock WHERE codearticle='0040416100';
DELETE FROM tb_inventaire WHERE codearticle='0040416100';
DELETE FROM tb_stock WHERE codearticle='0040416100';
DELETE FROM tb_article WHERE idarticle=4161;
DELETE FROM tb_unite WHERE idunite=5707 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5707) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5707);
COMMIT;

-- IdArticle=4763 , Designation=TORCHE AVEC BRIQUET , Unite=BOITE , IdUnite=6764 , CodeArticle=0030476300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4763 AND idunite=6764;
DELETE FROM tb_log_stock WHERE codearticle='0030476300';
DELETE FROM tb_inventaire WHERE codearticle='0030476300';
DELETE FROM tb_stock WHERE codearticle='0030476300';
DELETE FROM tb_article WHERE idarticle=4763;
DELETE FROM tb_unite WHERE idunite=6764 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6764) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6764);
COMMIT;

-- IdArticle=2520 , Designation=TSARAMASO AVARATRA (EN KAPOAKA) , Unite=KAPOAKA , IdUnite=3311 , CodeArticle=0180252000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2520 AND idunite=3311;
DELETE FROM tb_log_stock WHERE codearticle='0180252000';
DELETE FROM tb_inventaire WHERE codearticle='0180252000';
DELETE FROM tb_stock WHERE codearticle='0180252000';
DELETE FROM tb_article WHERE idarticle=2520;
DELETE FROM tb_unite WHERE idunite=3311 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3311) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3311);
COMMIT;

-- IdArticle=3060 , Designation=TSARAMASO AVARATRA 25KG , Unite=SAC , IdUnite=4006 , CodeArticle=0040306000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3060 AND idunite=4006;
DELETE FROM tb_log_stock WHERE codearticle='0040306000';
DELETE FROM tb_inventaire WHERE codearticle='0040306000';
DELETE FROM tb_stock WHERE codearticle='0040306000';
DELETE FROM tb_article WHERE idarticle=3060;
DELETE FROM tb_unite WHERE idunite=4006 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4006) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4006);
COMMIT;

-- IdArticle=1628 , Designation=TSARAMASO MENA , Unite=SAC , IdUnite=2152 , CodeArticle=0170162800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1628 AND idunite=2152;
DELETE FROM tb_log_stock WHERE codearticle='0170162800';
DELETE FROM tb_inventaire WHERE codearticle='0170162800';
DELETE FROM tb_stock WHERE codearticle='0170162800';
DELETE FROM tb_article WHERE idarticle=1628;
DELETE FROM tb_unite WHERE idunite=2152 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2152) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2152);
COMMIT;

-- IdArticle=3092 , Designation=TSIASISA , Unite=KAPOAKA , IdUnite=4056 , CodeArticle=0180309200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3092 AND idunite=4056;
DELETE FROM tb_log_stock WHERE codearticle='0180309200';
DELETE FROM tb_inventaire WHERE codearticle='0180309200';
DELETE FROM tb_stock WHERE codearticle='0180309200';
DELETE FROM tb_article WHERE idarticle=3092;
DELETE FROM tb_unite WHERE idunite=4056 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4056) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4056);
COMMIT;

-- IdArticle=3170 , Designation=TSIASISA , Unite=KAPOAKA , IdUnite=4166 , CodeArticle=0180317000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3170 AND idunite=4166;
DELETE FROM tb_log_stock WHERE codearticle='0180317000';
DELETE FROM tb_inventaire WHERE codearticle='0180317000';
DELETE FROM tb_stock WHERE codearticle='0180317000';
DELETE FROM tb_article WHERE idarticle=3170;
DELETE FROM tb_unite WHERE idunite=4166 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4166) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4166);
COMMIT;

-- IdArticle=4619 , Designation=TSIASISA , Unite=KAPOAKA , IdUnite=6513 , CodeArticle=0180461900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4619 AND idunite=6513;
DELETE FROM tb_log_stock WHERE codearticle='0180461900';
DELETE FROM tb_inventaire WHERE codearticle='0180461900';
DELETE FROM tb_stock WHERE codearticle='0180461900';
DELETE FROM tb_article WHERE idarticle=4619;
DELETE FROM tb_unite WHERE idunite=6513 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6513) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6513);
COMMIT;

-- IdArticle=1845 , Designation=TSIASISA 25KG , Unite=SAC , IdUnite=2470 , CodeArticle=0180184500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1845 AND idunite=2470;
DELETE FROM tb_log_stock WHERE codearticle='0180184500';
DELETE FROM tb_inventaire WHERE codearticle='0180184500';
DELETE FROM tb_stock WHERE codearticle='0180184500';
DELETE FROM tb_article WHERE idarticle=1845;
DELETE FROM tb_unite WHERE idunite=2470 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2470) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2470);
COMMIT;

-- IdArticle=2643 , Designation=TSIASISA ANTANANKORO , Unite=SAC , IdUnite=3486 , CodeArticle=0180264300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2643 AND idunite=3486;
DELETE FROM tb_log_stock WHERE codearticle='0180264300';
DELETE FROM tb_inventaire WHERE codearticle='0180264300';
DELETE FROM tb_stock WHERE codearticle='0180264300';
DELETE FROM tb_article WHERE idarticle=2643;
DELETE FROM tb_unite WHERE idunite=3486 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3486) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3486);
COMMIT;

-- IdArticle=3023 , Designation=TUBE RECTANGLE GALVA , Unite=PIECE , IdUnite=3955 , CodeArticle=0130302300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3023 AND idunite=3955;
DELETE FROM tb_log_stock WHERE codearticle='0130302300';
DELETE FROM tb_inventaire WHERE codearticle='0130302300';
DELETE FROM tb_stock WHERE codearticle='0130302300';
DELETE FROM tb_article WHERE idarticle=3023;
DELETE FROM tb_unite WHERE idunite=3955 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3955) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3955);
COMMIT;

-- IdArticle=3592 , Designation=TUBE RECTANGLE GALVA , Unite=PIECE , IdUnite=4724 , CodeArticle=0130359200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3592 AND idunite=4724;
DELETE FROM tb_log_stock WHERE codearticle='0130359200';
DELETE FROM tb_inventaire WHERE codearticle='0130359200';
DELETE FROM tb_stock WHERE codearticle='0130359200';
DELETE FROM tb_article WHERE idarticle=3592;
DELETE FROM tb_unite WHERE idunite=4724 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4724) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4724);
COMMIT;

-- IdArticle=3023 , Designation=TUBE RECTANGLE GALVA 60X40 , Unite=PIECE , IdUnite=3955 , CodeArticle=0130302300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3023 AND idunite=3955;
DELETE FROM tb_log_stock WHERE codearticle='0130302300';
DELETE FROM tb_inventaire WHERE codearticle='0130302300';
DELETE FROM tb_stock WHERE codearticle='0130302300';
DELETE FROM tb_article WHERE idarticle=3023;
DELETE FROM tb_unite WHERE idunite=3955 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3955) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3955);
COMMIT;

-- IdArticle=3592 , Designation=TUBE RECTANGLE GALVA 60X40 , Unite=PIECE , IdUnite=4724 , CodeArticle=0130359200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3592 AND idunite=4724;
DELETE FROM tb_log_stock WHERE codearticle='0130359200';
DELETE FROM tb_inventaire WHERE codearticle='0130359200';
DELETE FROM tb_stock WHERE codearticle='0130359200';
DELETE FROM tb_article WHERE idarticle=3592;
DELETE FROM tb_unite WHERE idunite=4724 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4724) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4724);
COMMIT;

-- IdArticle=2429 , Designation=TUC CLASSIC  65*24 , Unite=PIECE , IdUnite=3206 , CodeArticle=0050242900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2429 AND idunite=3206;
DELETE FROM tb_log_stock WHERE codearticle='0050242900';
DELETE FROM tb_inventaire WHERE codearticle='0050242900';
DELETE FROM tb_stock WHERE codearticle='0050242900';
DELETE FROM tb_article WHERE idarticle=2429;
DELETE FROM tb_unite WHERE idunite=3206 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3206) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3206);
COMMIT;

-- IdArticle=2826 , Designation=TUC MINI 30G*30 , Unite=PIECE , IdUnite=3727 , CodeArticle=0050282600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2826 AND idunite=3727;
DELETE FROM tb_log_stock WHERE codearticle='0050282600';
DELETE FROM tb_inventaire WHERE codearticle='0050282600';
DELETE FROM tb_stock WHERE codearticle='0050282600';
DELETE FROM tb_article WHERE idarticle=2826;
DELETE FROM tb_unite WHERE idunite=3727 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3727) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3727);
COMMIT;

-- IdArticle=2430 , Designation=TUC POCKET 32G , Unite=BOITE , IdUnite=3208 , CodeArticle=0050243000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2430 AND idunite=3208;
DELETE FROM tb_log_stock WHERE codearticle='0050243000';
DELETE FROM tb_inventaire WHERE codearticle='0050243000';
DELETE FROM tb_stock WHERE codearticle='0050243000';
DELETE FROM tb_article WHERE idarticle=2430;
DELETE FROM tb_unite WHERE idunite=3208 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3208) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3208);
COMMIT;

-- IdArticle=2831 , Designation=VARY DISTE , Unite=KILOS , IdUnite=3735 , CodeArticle=0170283100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2831 AND idunite=3735;
DELETE FROM tb_log_stock WHERE codearticle='0170283100';
DELETE FROM tb_inventaire WHERE codearticle='0170283100';
DELETE FROM tb_stock WHERE codearticle='0170283100';
DELETE FROM tb_article WHERE idarticle=2831;
DELETE FROM tb_unite WHERE idunite=3735 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3735) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3735);
COMMIT;

-- IdArticle=1654 , Designation=VARY GASY 25KG , Unite=SAC , IdUnite=2189 , CodeArticle=0170165400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1654 AND idunite=2189;
DELETE FROM tb_log_stock WHERE codearticle='0170165400';
DELETE FROM tb_inventaire WHERE codearticle='0170165400';
DELETE FROM tb_stock WHERE codearticle='0170165400';
DELETE FROM tb_article WHERE idarticle=1654;
DELETE FROM tb_unite WHERE idunite=2189 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2189) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2189);
COMMIT;

-- IdArticle=1654 , Designation=VARY GASY 25KG ANTANANKORO , Unite=SAC , IdUnite=2189 , CodeArticle=0170165400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1654 AND idunite=2189;
DELETE FROM tb_log_stock WHERE codearticle='0170165400';
DELETE FROM tb_inventaire WHERE codearticle='0170165400';
DELETE FROM tb_stock WHERE codearticle='0170165400';
DELETE FROM tb_article WHERE idarticle=1654;
DELETE FROM tb_unite WHERE idunite=2189 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2189) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2189);
COMMIT;

-- IdArticle=3067 , Designation=VARY GASY 49KG , Unite=SAC , IdUnite=4014 , CodeArticle=0170306700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3067 AND idunite=4014;
DELETE FROM tb_log_stock WHERE codearticle='0170306700';
DELETE FROM tb_inventaire WHERE codearticle='0170306700';
DELETE FROM tb_stock WHERE codearticle='0170306700';
DELETE FROM tb_article WHERE idarticle=3067;
DELETE FROM tb_unite WHERE idunite=4014 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4014) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4014);
COMMIT;

-- IdArticle=2634 , Designation=VARY GASY 60KG , Unite=SAC , IdUnite=3471 , CodeArticle=0170263400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2634 AND idunite=3471;
DELETE FROM tb_log_stock WHERE codearticle='0170263400';
DELETE FROM tb_inventaire WHERE codearticle='0170263400';
DELETE FROM tb_stock WHERE codearticle='0170263400';
DELETE FROM tb_article WHERE idarticle=2634;
DELETE FROM tb_unite WHERE idunite=3471 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3471) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3471);
COMMIT;

-- IdArticle=2634 , Designation=VARY GASY 60KG ANTANANKORO , Unite=SAC , IdUnite=3471 , CodeArticle=0170263400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2634 AND idunite=3471;
DELETE FROM tb_log_stock WHERE codearticle='0170263400';
DELETE FROM tb_inventaire WHERE codearticle='0170263400';
DELETE FROM tb_stock WHERE codearticle='0170263400';
DELETE FROM tb_article WHERE idarticle=2634;
DELETE FROM tb_unite WHERE idunite=3471 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3471) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3471);
COMMIT;

-- IdArticle=3213 , Designation=VARY GASY AMBATORIA 50KG , Unite=SAC , IdUnite=4230 , CodeArticle=0170321300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3213 AND idunite=4230;
DELETE FROM tb_log_stock WHERE codearticle='0170321300';
DELETE FROM tb_inventaire WHERE codearticle='0170321300';
DELETE FROM tb_stock WHERE codearticle='0170321300';
DELETE FROM tb_article WHERE idarticle=3213;
DELETE FROM tb_unite WHERE idunite=4230 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4230) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4230);
COMMIT;

-- IdArticle=3191 , Designation=VARY GASY AMBATORIA 60KG , Unite=SAC , IdUnite=4195 , CodeArticle=0170319100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3191 AND idunite=4195;
DELETE FROM tb_log_stock WHERE codearticle='0170319100';
DELETE FROM tb_inventaire WHERE codearticle='0170319100';
DELETE FROM tb_stock WHERE codearticle='0170319100';
DELETE FROM tb_article WHERE idarticle=3191;
DELETE FROM tb_unite WHERE idunite=4195 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4195) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4195);
COMMIT;

-- IdArticle=1656 , Designation=VARY GASY ANDAPA 25KG , Unite=SAC , IdUnite=2193 , CodeArticle=0170165600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1656 AND idunite=2193;
DELETE FROM tb_log_stock WHERE codearticle='0170165600';
DELETE FROM tb_inventaire WHERE codearticle='0170165600';
DELETE FROM tb_stock WHERE codearticle='0170165600';
DELETE FROM tb_article WHERE idarticle=1656;
DELETE FROM tb_unite WHERE idunite=2193 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2193) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2193);
COMMIT;

-- IdArticle=3126 , Designation=VARY GASY ANDAPA 25KG , Unite=SAC , IdUnite=4113 , CodeArticle=0170312600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3126 AND idunite=4113;
DELETE FROM tb_log_stock WHERE codearticle='0170312600';
DELETE FROM tb_inventaire WHERE codearticle='0170312600';
DELETE FROM tb_stock WHERE codearticle='0170312600';
DELETE FROM tb_article WHERE idarticle=3126;
DELETE FROM tb_unite WHERE idunite=4113 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4113) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4113);
COMMIT;

-- IdArticle=3164 , Designation=VARY GASY ANDAPA 60KG 2E CHOIX , Unite=SAC , IdUnite=4158 , CodeArticle=0170316400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3164 AND idunite=4158;
DELETE FROM tb_log_stock WHERE codearticle='0170316400';
DELETE FROM tb_inventaire WHERE codearticle='0170316400';
DELETE FROM tb_stock WHERE codearticle='0170316400';
DELETE FROM tb_article WHERE idarticle=3164;
DELETE FROM tb_unite WHERE idunite=4158 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4158) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4158);
COMMIT;

-- IdArticle=4122 , Designation=VARY GASY ANDAPA en Kapoaka A , Unite=KAPOAKA , IdUnite=5634 , CodeArticle=0170412200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4122 AND idunite=5634;
DELETE FROM tb_log_stock WHERE codearticle='0170412200';
DELETE FROM tb_inventaire WHERE codearticle='0170412200';
DELETE FROM tb_stock WHERE codearticle='0170412200';
DELETE FROM tb_article WHERE idarticle=4122;
DELETE FROM tb_unite WHERE idunite=5634 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5634) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5634);
COMMIT;

-- IdArticle=4065 , Designation=VARY GASY ANDAPA LUX 50KG , Unite=SAC , IdUnite=5534 , CodeArticle=0170406500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4065 AND idunite=5534;
DELETE FROM tb_log_stock WHERE codearticle='0170406500';
DELETE FROM tb_inventaire WHERE codearticle='0170406500';
DELETE FROM tb_stock WHERE codearticle='0170406500';
DELETE FROM tb_article WHERE idarticle=4065;
DELETE FROM tb_unite WHERE idunite=5534 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5534) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5534);
COMMIT;

-- IdArticle=3143 , Designation=VARY GASY BEFANDRIANA 60KG , Unite=SAC , IdUnite=4132 , CodeArticle=0170314300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3143 AND idunite=4132;
DELETE FROM tb_log_stock WHERE codearticle='0170314300';
DELETE FROM tb_inventaire WHERE codearticle='0170314300';
DELETE FROM tb_stock WHERE codearticle='0170314300';
DELETE FROM tb_article WHERE idarticle=3143;
DELETE FROM tb_unite WHERE idunite=4132 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4132) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4132);
COMMIT;

-- IdArticle=3575 , Designation=VARY GASY FOTSY , Unite=KILOS , IdUnite=4703 , CodeArticle=0170357500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3575 AND idunite=4703;
DELETE FROM tb_log_stock WHERE codearticle='0170357500';
DELETE FROM tb_inventaire WHERE codearticle='0170357500';
DELETE FROM tb_stock WHERE codearticle='0170357500';
DELETE FROM tb_article WHERE idarticle=3575;
DELETE FROM tb_unite WHERE idunite=4703 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4703) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4703);
COMMIT;

-- IdArticle=3144 , Designation=VARY GASY FOTSY 60KG , Unite=SAC , IdUnite=4133 , CodeArticle=0170314400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3144 AND idunite=4133;
DELETE FROM tb_log_stock WHERE codearticle='0170314400';
DELETE FROM tb_inventaire WHERE codearticle='0170314400';
DELETE FROM tb_stock WHERE codearticle='0170314400';
DELETE FROM tb_article WHERE idarticle=3144;
DELETE FROM tb_unite WHERE idunite=4133 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4133) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4133);
COMMIT;

-- IdArticle=3101 , Designation=VARY GASY MAMPIKONY 60KG ANTANANKORO , Unite=SAC , IdUnite=4070 , CodeArticle=0170310100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3101 AND idunite=4070;
DELETE FROM tb_log_stock WHERE codearticle='0170310100';
DELETE FROM tb_inventaire WHERE codearticle='0170310100';
DELETE FROM tb_stock WHERE codearticle='0170310100';
DELETE FROM tb_article WHERE idarticle=3101;
DELETE FROM tb_unite WHERE idunite=4070 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4070) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4070);
COMMIT;

-- IdArticle=2215 , Designation=VARY GASY ZANATANY 50KG , Unite=SAC , IdUnite=2949 , CodeArticle=0170221500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2215 AND idunite=2949;
DELETE FROM tb_log_stock WHERE codearticle='0170221500';
DELETE FROM tb_inventaire WHERE codearticle='0170221500';
DELETE FROM tb_stock WHERE codearticle='0170221500';
DELETE FROM tb_article WHERE idarticle=2215;
DELETE FROM tb_unite WHERE idunite=2949 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2949) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2949);
COMMIT;

-- IdArticle=1863 , Designation=VARY HARAKA BOTAKELY , Unite=SAC , IdUnite=2504 , CodeArticle=0170186300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1863 AND idunite=2504;
DELETE FROM tb_log_stock WHERE codearticle='0170186300';
DELETE FROM tb_inventaire WHERE codearticle='0170186300';
DELETE FROM tb_stock WHERE codearticle='0170186300';
DELETE FROM tb_article WHERE idarticle=1863;
DELETE FROM tb_unite WHERE idunite=2504 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2504) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2504);
COMMIT;

-- IdArticle=2830 , Designation=VARY MAKALIOKA 2EME CHOIX , Unite=SAC , IdUnite=3734 , CodeArticle=0170283000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2830 AND idunite=3734;
DELETE FROM tb_log_stock WHERE codearticle='0170283000';
DELETE FROM tb_inventaire WHERE codearticle='0170283000';
DELETE FROM tb_stock WHERE codearticle='0170283000';
DELETE FROM tb_article WHERE idarticle=2830;
DELETE FROM tb_unite WHERE idunite=3734 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3734) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3734);
COMMIT;

-- IdArticle=2368 , Designation=VARY MAKALIOKA VAO en Kapoaka A , Unite=KAPOAKA , IdUnite=3132 , CodeArticle=0170236800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2368 AND idunite=3132;
DELETE FROM tb_log_stock WHERE codearticle='0170236800';
DELETE FROM tb_inventaire WHERE codearticle='0170236800';
DELETE FROM tb_stock WHERE codearticle='0170236800';
DELETE FROM tb_article WHERE idarticle=2368;
DELETE FROM tb_unite WHERE idunite=3132 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3132) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3132);
COMMIT;

-- IdArticle=3508 , Designation=VARY MANJARIKA 50KG , Unite=SAC , IdUnite=4604 , CodeArticle=0170350800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3508 AND idunite=4604;
DELETE FROM tb_log_stock WHERE codearticle='0170350800';
DELETE FROM tb_inventaire WHERE codearticle='0170350800';
DELETE FROM tb_stock WHERE codearticle='0170350800';
DELETE FROM tb_article WHERE idarticle=3508;
DELETE FROM tb_unite WHERE idunite=4604 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4604) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4604);
COMMIT;

-- IdArticle=3783 , Designation=VARY MME ROSE TALOHA , Unite=KAPOAKA , IdUnite=5030 , CodeArticle=0170378300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3783 AND idunite=5030;
DELETE FROM tb_log_stock WHERE codearticle='0170378300';
DELETE FROM tb_inventaire WHERE codearticle='0170378300';
DELETE FROM tb_stock WHERE codearticle='0170378300';
DELETE FROM tb_article WHERE idarticle=3783;
DELETE FROM tb_unite WHERE idunite=5030 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5030) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5030);
COMMIT;

-- IdArticle=3607 , Designation=VARY STOCK 2ÈME CHOIX , Unite=SAC , IdUnite=4744 , CodeArticle=0170360700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3607 AND idunite=4744;
DELETE FROM tb_log_stock WHERE codearticle='0170360700';
DELETE FROM tb_inventaire WHERE codearticle='0170360700';
DELETE FROM tb_stock WHERE codearticle='0170360700';
DELETE FROM tb_article WHERE idarticle=3607;
DELETE FROM tb_unite WHERE idunite=4744 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4744) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4744);
COMMIT;

-- IdArticle=3706 , Designation=VARY STOCK 2ÈME CHOIX KILOS , Unite=KILOS , IdUnite=4896 , CodeArticle=0170370600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3706 AND idunite=4896;
DELETE FROM tb_log_stock WHERE codearticle='0170370600';
DELETE FROM tb_inventaire WHERE codearticle='0170370600';
DELETE FROM tb_stock WHERE codearticle='0170370600';
DELETE FROM tb_article WHERE idarticle=3706;
DELETE FROM tb_unite WHERE idunite=4896 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4896) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4896);
COMMIT;

-- IdArticle=3166 , Designation=VARY STOCK 50KG , Unite=SAC , IdUnite=4160 , CodeArticle=0170316600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3166 AND idunite=4160;
DELETE FROM tb_log_stock WHERE codearticle='0170316600';
DELETE FROM tb_inventaire WHERE codearticle='0170316600';
DELETE FROM tb_stock WHERE codearticle='0170316600';
DELETE FROM tb_article WHERE idarticle=3166;
DELETE FROM tb_unite WHERE idunite=4160 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4160) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4160);
COMMIT;

-- IdArticle=3190 , Designation=VARY STOCK 50KG , Unite=SAC , IdUnite=4194 , CodeArticle=0170319000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3190 AND idunite=4194;
DELETE FROM tb_log_stock WHERE codearticle='0170319000';
DELETE FROM tb_inventaire WHERE codearticle='0170319000';
DELETE FROM tb_stock WHERE codearticle='0170319000';
DELETE FROM tb_article WHERE idarticle=3190;
DELETE FROM tb_unite WHERE idunite=4194 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4194) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4194);
COMMIT;

-- IdArticle=3190 , Designation=VARY STOCK 50KG ANTANANKORO , Unite=SAC , IdUnite=4194 , CodeArticle=0170319000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3190 AND idunite=4194;
DELETE FROM tb_log_stock WHERE codearticle='0170319000';
DELETE FROM tb_inventaire WHERE codearticle='0170319000';
DELETE FROM tb_stock WHERE codearticle='0170319000';
DELETE FROM tb_article WHERE idarticle=3190;
DELETE FROM tb_unite WHERE idunite=4194 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4194) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4194);
COMMIT;

-- IdArticle=3166 , Designation=VARY STOCK 50KG VITA ANTANANKORO , Unite=SAC , IdUnite=4160 , CodeArticle=0170316600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3166 AND idunite=4160;
DELETE FROM tb_log_stock WHERE codearticle='0170316600';
DELETE FROM tb_inventaire WHERE codearticle='0170316600';
DELETE FROM tb_stock WHERE codearticle='0170316600';
DELETE FROM tb_article WHERE idarticle=3166;
DELETE FROM tb_unite WHERE idunite=4160 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4160) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4160);
COMMIT;

-- IdArticle=2200 , Designation=VARY STOCK AONE 50KG , Unite=SAC , IdUnite=2933 , CodeArticle=0170220000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2200 AND idunite=2933;
DELETE FROM tb_log_stock WHERE codearticle='0170220000';
DELETE FROM tb_inventaire WHERE codearticle='0170220000';
DELETE FROM tb_stock WHERE codearticle='0170220000';
DELETE FROM tb_article WHERE idarticle=2200;
DELETE FROM tb_unite WHERE idunite=2933 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2933) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2933);
COMMIT;

-- IdArticle=3061 , Designation=VARY STOCK BAREA ATM , Unite=SAC , IdUnite=4007 , CodeArticle=0170306100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3061 AND idunite=4007;
DELETE FROM tb_log_stock WHERE codearticle='0170306100';
DELETE FROM tb_inventaire WHERE codearticle='0170306100';
DELETE FROM tb_stock WHERE codearticle='0170306100';
DELETE FROM tb_article WHERE idarticle=3061;
DELETE FROM tb_unite WHERE idunite=4007 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4007) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4007);
COMMIT;

-- IdArticle=3636 , Designation=VARY STOCK BON 50KG , Unite=SAC , IdUnite=4790 , CodeArticle=0170363600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3636 AND idunite=4790;
DELETE FROM tb_log_stock WHERE codearticle='0170363600';
DELETE FROM tb_inventaire WHERE codearticle='0170363600';
DELETE FROM tb_stock WHERE codearticle='0170363600';
DELETE FROM tb_article WHERE idarticle=3636;
DELETE FROM tb_unite WHERE idunite=4790 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4790) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4790);
COMMIT;

-- IdArticle=4467 , Designation=VARY STOCK BOULE PETANQUE SAC 50KG , Unite=SAC , IdUnite=6241 , CodeArticle=0170446700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4467 AND idunite=6241;
DELETE FROM tb_log_stock WHERE codearticle='0170446700';
DELETE FROM tb_inventaire WHERE codearticle='0170446700';
DELETE FROM tb_stock WHERE codearticle='0170446700';
DELETE FROM tb_article WHERE idarticle=4467;
DELETE FROM tb_unite WHERE idunite=6241 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6241) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6241);
COMMIT;

-- IdArticle=3816 , Designation=VARY STOCK BULMEX 50KG , Unite=SAC , IdUnite=5074 , CodeArticle=0170381600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3816 AND idunite=5074;
DELETE FROM tb_log_stock WHERE codearticle='0170381600';
DELETE FROM tb_inventaire WHERE codearticle='0170381600';
DELETE FROM tb_stock WHERE codearticle='0170381600';
DELETE FROM tb_article WHERE idarticle=3816;
DELETE FROM tb_unite WHERE idunite=5074 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5074) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5074);
COMMIT;

-- IdArticle=4354 , Designation=VARY STOCK CE BON SAC 50KG , Unite=SAC , IdUnite=6046 , CodeArticle=0170435400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4354 AND idunite=6046;
DELETE FROM tb_log_stock WHERE codearticle='0170435400';
DELETE FROM tb_inventaire WHERE codearticle='0170435400';
DELETE FROM tb_stock WHERE codearticle='0170435400';
DELETE FROM tb_article WHERE idarticle=4354;
DELETE FROM tb_unite WHERE idunite=6046 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6046) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6046);
COMMIT;

-- IdArticle=3152 , Designation=VARY STOCK EAGLE 50KG , Unite=SAC , IdUnite=4144 , CodeArticle=0170315200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3152 AND idunite=4144;
DELETE FROM tb_log_stock WHERE codearticle='0170315200';
DELETE FROM tb_inventaire WHERE codearticle='0170315200';
DELETE FROM tb_stock WHERE codearticle='0170315200';
DELETE FROM tb_article WHERE idarticle=3152;
DELETE FROM tb_unite WHERE idunite=4144 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4144) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4144);
COMMIT;

-- IdArticle=3436 , Designation=VARY STOCK ECO 25KG , Unite=SAC , IdUnite=4502 , CodeArticle=0170343600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3436 AND idunite=4502;
DELETE FROM tb_log_stock WHERE codearticle='0170343600';
DELETE FROM tb_inventaire WHERE codearticle='0170343600';
DELETE FROM tb_stock WHERE codearticle='0170343600';
DELETE FROM tb_article WHERE idarticle=3436;
DELETE FROM tb_unite WHERE idunite=4502 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4502) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4502);
COMMIT;

-- IdArticle=4323 , Designation=VARY STOCK EHOALA 50KG , Unite=SAC , IdUnite=5995 , CodeArticle=0170432300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4323 AND idunite=5995;
DELETE FROM tb_log_stock WHERE codearticle='0170432300';
DELETE FROM tb_inventaire WHERE codearticle='0170432300';
DELETE FROM tb_stock WHERE codearticle='0170432300';
DELETE FROM tb_article WHERE idarticle=4323;
DELETE FROM tb_unite WHERE idunite=5995 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5995) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5995);
COMMIT;

-- IdArticle=1708 , Designation=VARY STOCK FANEVA , Unite=SAC , IdUnite=2273 , CodeArticle=0180170800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1708 AND idunite=2273;
DELETE FROM tb_log_stock WHERE codearticle='0180170800';
DELETE FROM tb_inventaire WHERE codearticle='0180170800';
DELETE FROM tb_stock WHERE codearticle='0180170800';
DELETE FROM tb_article WHERE idarticle=1708;
DELETE FROM tb_unite WHERE idunite=2273 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2273) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2273);
COMMIT;

-- IdArticle=3134 , Designation=VARY STOCK FOOT BALL 50KG , Unite=SAC , IdUnite=4123 , CodeArticle=0170313400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3134 AND idunite=4123;
DELETE FROM tb_log_stock WHERE codearticle='0170313400';
DELETE FROM tb_inventaire WHERE codearticle='0170313400';
DELETE FROM tb_stock WHERE codearticle='0170313400';
DELETE FROM tb_article WHERE idarticle=3134;
DELETE FROM tb_unite WHERE idunite=4123 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4123) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4123);
COMMIT;

-- IdArticle=3708 , Designation=VARY STOCK GLOBAL 50KG , Unite=SAC , IdUnite=4898 , CodeArticle=0170370800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3708 AND idunite=4898;
DELETE FROM tb_log_stock WHERE codearticle='0170370800';
DELETE FROM tb_inventaire WHERE codearticle='0170370800';
DELETE FROM tb_stock WHERE codearticle='0170370800';
DELETE FROM tb_article WHERE idarticle=3708;
DELETE FROM tb_unite WHERE idunite=4898 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4898) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4898);
COMMIT;

-- IdArticle=1713 , Designation=VARY STOCK HARY FITIA 50KG , Unite=SAC , IdUnite=2281 , CodeArticle=0170171300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1713 AND idunite=2281;
DELETE FROM tb_log_stock WHERE codearticle='0170171300';
DELETE FROM tb_inventaire WHERE codearticle='0170171300';
DELETE FROM tb_stock WHERE codearticle='0170171300';
DELETE FROM tb_article WHERE idarticle=1713;
DELETE FROM tb_unite WHERE idunite=2281 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2281) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2281);
COMMIT;

-- IdArticle=4322 , Designation=VARY STOCK HARY FITIA 50KG , Unite=SAC , IdUnite=5994 , CodeArticle=0170432200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4322 AND idunite=5994;
DELETE FROM tb_log_stock WHERE codearticle='0170432200';
DELETE FROM tb_inventaire WHERE codearticle='0170432200';
DELETE FROM tb_stock WHERE codearticle='0170432200';
DELETE FROM tb_article WHERE idarticle=4322;
DELETE FROM tb_unite WHERE idunite=5994 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5994) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5994);
COMMIT;

-- IdArticle=3136 , Designation=VARY STOCK HELLO 50KG , Unite=SAC , IdUnite=4125 , CodeArticle=0170313600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3136 AND idunite=4125;
DELETE FROM tb_log_stock WHERE codearticle='0170313600';
DELETE FROM tb_inventaire WHERE codearticle='0170313600';
DELETE FROM tb_stock WHERE codearticle='0170313600';
DELETE FROM tb_article WHERE idarticle=3136;
DELETE FROM tb_unite WHERE idunite=4125 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4125) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4125);
COMMIT;

-- IdArticle=1715 , Designation=VARY STOCK KING AFRICA 50KG , Unite=SAC , IdUnite=2283 , CodeArticle=0130171500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1715 AND idunite=2283;
DELETE FROM tb_log_stock WHERE codearticle='0130171500';
DELETE FROM tb_inventaire WHERE codearticle='0130171500';
DELETE FROM tb_stock WHERE codearticle='0130171500';
DELETE FROM tb_article WHERE idarticle=1715;
DELETE FROM tb_unite WHERE idunite=2283 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2283) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2283);
COMMIT;

-- IdArticle=3193 , Designation=VARY STOCK KINTANA 25KG , Unite=SAC , IdUnite=4197 , CodeArticle=0170319300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3193 AND idunite=4197;
DELETE FROM tb_log_stock WHERE codearticle='0170319300';
DELETE FROM tb_inventaire WHERE codearticle='0170319300';
DELETE FROM tb_stock WHERE codearticle='0170319300';
DELETE FROM tb_article WHERE idarticle=3193;
DELETE FROM tb_unite WHERE idunite=4197 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4197) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4197);
COMMIT;

-- IdArticle=3414 , Designation=VARY STOCK KINTANA HARAKA 50KG , Unite=SAC , IdUnite=4464 , CodeArticle=0170341400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3414 AND idunite=4464;
DELETE FROM tb_log_stock WHERE codearticle='0170341400';
DELETE FROM tb_inventaire WHERE codearticle='0170341400';
DELETE FROM tb_stock WHERE codearticle='0170341400';
DELETE FROM tb_article WHERE idarticle=3414;
DELETE FROM tb_unite WHERE idunite=4464 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4464) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4464);
COMMIT;

-- IdArticle=1720 , Designation=VARY STOCK LALA EN SAC , Unite=SAC , IdUnite=2290 , CodeArticle=0170172000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1720 AND idunite=2290;
DELETE FROM tb_log_stock WHERE codearticle='0170172000';
DELETE FROM tb_inventaire WHERE codearticle='0170172000';
DELETE FROM tb_stock WHERE codearticle='0170172000';
DELETE FROM tb_article WHERE idarticle=1720;
DELETE FROM tb_unite WHERE idunite=2290 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2290) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2290);
COMMIT;

-- IdArticle=3248 , Designation=VARY STOCK LEENA 50KG , Unite=SAC , IdUnite=4269 , CodeArticle=0170324800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3248 AND idunite=4269;
DELETE FROM tb_log_stock WHERE codearticle='0170324800';
DELETE FROM tb_inventaire WHERE codearticle='0170324800';
DELETE FROM tb_stock WHERE codearticle='0170324800';
DELETE FROM tb_article WHERE idarticle=3248;
DELETE FROM tb_unite WHERE idunite=4269 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4269) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4269);
COMMIT;

-- IdArticle=3240 , Designation=VARY STOCK LEMUR 50KG , Unite=SAC , IdUnite=4259 , CodeArticle=0170324000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3240 AND idunite=4259;
DELETE FROM tb_log_stock WHERE codearticle='0170324000';
DELETE FROM tb_inventaire WHERE codearticle='0170324000';
DELETE FROM tb_stock WHERE codearticle='0170324000';
DELETE FROM tb_article WHERE idarticle=3240;
DELETE FROM tb_unite WHERE idunite=4259 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4259) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4259);
COMMIT;

-- IdArticle=1723 , Designation=VARY STOCK MARA 50KG , Unite=SAC , IdUnite=2295 , CodeArticle=0180172300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1723 AND idunite=2295;
DELETE FROM tb_log_stock WHERE codearticle='0180172300';
DELETE FROM tb_inventaire WHERE codearticle='0180172300';
DELETE FROM tb_stock WHERE codearticle='0180172300';
DELETE FROM tb_article WHERE idarticle=1723;
DELETE FROM tb_unite WHERE idunite=2295 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2295) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2295);
COMMIT;

-- IdArticle=3794 , Designation=VARY STOCK MARA 50KG , Unite=SAC , IdUnite=5049 , CodeArticle=0170379400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3794 AND idunite=5049;
DELETE FROM tb_log_stock WHERE codearticle='0170379400';
DELETE FROM tb_inventaire WHERE codearticle='0170379400';
DELETE FROM tb_stock WHERE codearticle='0170379400';
DELETE FROM tb_article WHERE idarticle=3794;
DELETE FROM tb_unite WHERE idunite=5049 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5049) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5049);
COMMIT;

-- IdArticle=4529 , Designation=VARY STOCK MARACANA SAC 50KG , Unite=SAC , IdUnite=6364 , CodeArticle=0170452900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4529 AND idunite=6364;
DELETE FROM tb_log_stock WHERE codearticle='0170452900';
DELETE FROM tb_inventaire WHERE codearticle='0170452900';
DELETE FROM tb_stock WHERE codearticle='0170452900';
DELETE FROM tb_article WHERE idarticle=4529;
DELETE FROM tb_unite WHERE idunite=6364 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6364) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6364);
COMMIT;

-- IdArticle=3618 , Designation=VARY STOCK MOL 50KG , Unite=SAC , IdUnite=4760 , CodeArticle=0170361800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3618 AND idunite=4760;
DELETE FROM tb_log_stock WHERE codearticle='0170361800';
DELETE FROM tb_inventaire WHERE codearticle='0170361800';
DELETE FROM tb_stock WHERE codearticle='0170361800';
DELETE FROM tb_article WHERE idarticle=3618;
DELETE FROM tb_unite WHERE idunite=4760 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4760) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4760);
COMMIT;

-- IdArticle=1726 , Designation=VARY STOCK NAMANA , Unite=SAC , IdUnite=2298 , CodeArticle=0170172600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1726 AND idunite=2298;
DELETE FROM tb_log_stock WHERE codearticle='0170172600';
DELETE FROM tb_inventaire WHERE codearticle='0170172600';
DELETE FROM tb_stock WHERE codearticle='0170172600';
DELETE FROM tb_article WHERE idarticle=1726;
DELETE FROM tb_unite WHERE idunite=2298 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2298) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2298);
COMMIT;

-- IdArticle=3125 , Designation=VARY STOCK NAMANA , Unite=SAC , IdUnite=4112 , CodeArticle=0170312500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3125 AND idunite=4112;
DELETE FROM tb_log_stock WHERE codearticle='0170312500';
DELETE FROM tb_inventaire WHERE codearticle='0170312500';
DELETE FROM tb_stock WHERE codearticle='0170312500';
DELETE FROM tb_article WHERE idarticle=3125;
DELETE FROM tb_unite WHERE idunite=4112 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4112) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4112);
COMMIT;

-- IdArticle=1728 , Designation=VARY STOCK PACK RHINO 25KG , Unite=SAC , IdUnite=2300 , CodeArticle=0170172800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1728 AND idunite=2300;
DELETE FROM tb_log_stock WHERE codearticle='0170172800';
DELETE FROM tb_inventaire WHERE codearticle='0170172800';
DELETE FROM tb_stock WHERE codearticle='0170172800';
DELETE FROM tb_article WHERE idarticle=1728;
DELETE FROM tb_unite WHERE idunite=2300 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2300) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2300);
COMMIT;

-- IdArticle=3483 , Designation=VARY STOCK PAPA , Unite=SAC , IdUnite=4574 , CodeArticle=0170348300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3483 AND idunite=4574;
DELETE FROM tb_log_stock WHERE codearticle='0170348300';
DELETE FROM tb_inventaire WHERE codearticle='0170348300';
DELETE FROM tb_stock WHERE codearticle='0170348300';
DELETE FROM tb_article WHERE idarticle=3483;
DELETE FROM tb_unite WHERE idunite=4574 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4574) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4574);
COMMIT;

-- IdArticle=3483 , Designation=VARY STOCK PAPA 50KG , Unite=SAC , IdUnite=4574 , CodeArticle=0170348300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3483 AND idunite=4574;
DELETE FROM tb_log_stock WHERE codearticle='0170348300';
DELETE FROM tb_inventaire WHERE codearticle='0170348300';
DELETE FROM tb_stock WHERE codearticle='0170348300';
DELETE FROM tb_article WHERE idarticle=3483;
DELETE FROM tb_unite WHERE idunite=4574 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4574) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4574);
COMMIT;

-- IdArticle=3890 , Designation=VARY STOCK POGO 50 KG , Unite=SAC , IdUnite=5209 , CodeArticle=0170389000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3890 AND idunite=5209;
DELETE FROM tb_log_stock WHERE codearticle='0170389000';
DELETE FROM tb_inventaire WHERE codearticle='0170389000';
DELETE FROM tb_stock WHERE codearticle='0170389000';
DELETE FROM tb_article WHERE idarticle=3890;
DELETE FROM tb_unite WHERE idunite=5209 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5209) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5209);
COMMIT;

-- IdArticle=1733 , Designation=VARY STOCK SAKSHI SILVER  50KG , Unite=SAC , IdUnite=2305 , CodeArticle=0170173300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1733 AND idunite=2305;
DELETE FROM tb_log_stock WHERE codearticle='0170173300';
DELETE FROM tb_inventaire WHERE codearticle='0170173300';
DELETE FROM tb_stock WHERE codearticle='0170173300';
DELETE FROM tb_article WHERE idarticle=1733;
DELETE FROM tb_unite WHERE idunite=2305 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2305) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2305);
COMMIT;

-- IdArticle=3617 , Designation=VARY STOCK SAKSHI SILVER  50KG , Unite=SAC , IdUnite=4759 , CodeArticle=0170361700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3617 AND idunite=4759;
DELETE FROM tb_log_stock WHERE codearticle='0170361700';
DELETE FROM tb_inventaire WHERE codearticle='0170361700';
DELETE FROM tb_stock WHERE codearticle='0170361700';
DELETE FROM tb_article WHERE idarticle=3617;
DELETE FROM tb_unite WHERE idunite=4759 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4759) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4759);
COMMIT;

-- IdArticle=3111 , Designation=VARY STOCK SHAVA 50KG , Unite=SAC , IdUnite=4089 , CodeArticle=0170311100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3111 AND idunite=4089;
DELETE FROM tb_log_stock WHERE codearticle='0170311100';
DELETE FROM tb_inventaire WHERE codearticle='0170311100';
DELETE FROM tb_stock WHERE codearticle='0170311100';
DELETE FROM tb_article WHERE idarticle=3111;
DELETE FROM tb_unite WHERE idunite=4089 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4089) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4089);
COMMIT;

-- IdArticle=3135 , Designation=VARY STOCK SIMBA PREMIUM QUALITY 50KG , Unite=SAC , IdUnite=4124 , CodeArticle=0170313500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3135 AND idunite=4124;
DELETE FROM tb_log_stock WHERE codearticle='0170313500';
DELETE FROM tb_inventaire WHERE codearticle='0170313500';
DELETE FROM tb_stock WHERE codearticle='0170313500';
DELETE FROM tb_article WHERE idarticle=3135;
DELETE FROM tb_unite WHERE idunite=4124 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4124) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4124);
COMMIT;

-- IdArticle=2621 , Designation=VARY STOCK STAR 50KG , Unite=SAC , IdUnite=3449 , CodeArticle=0170262100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2621 AND idunite=3449;
DELETE FROM tb_log_stock WHERE codearticle='0170262100';
DELETE FROM tb_inventaire WHERE codearticle='0170262100';
DELETE FROM tb_stock WHERE codearticle='0170262100';
DELETE FROM tb_article WHERE idarticle=2621;
DELETE FROM tb_unite WHERE idunite=3449 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3449) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3449);
COMMIT;

-- IdArticle=3490 , Designation=VARY STOCK TIGRE PAKISTAN 50KG , Unite=SAC , IdUnite=4583 , CodeArticle=0170349000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3490 AND idunite=4583;
DELETE FROM tb_log_stock WHERE codearticle='0170349000';
DELETE FROM tb_inventaire WHERE codearticle='0170349000';
DELETE FROM tb_stock WHERE codearticle='0170349000';
DELETE FROM tb_article WHERE idarticle=3490;
DELETE FROM tb_unite WHERE idunite=4583 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4583) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4583);
COMMIT;

-- IdArticle=2284 , Designation=VARY STOCK TSINJO 25KG , Unite=SAC , IdUnite=3032 , CodeArticle=0170228400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2284 AND idunite=3032;
DELETE FROM tb_log_stock WHERE codearticle='0170228400';
DELETE FROM tb_inventaire WHERE codearticle='0170228400';
DELETE FROM tb_stock WHERE codearticle='0170228400';
DELETE FROM tb_article WHERE idarticle=2284;
DELETE FROM tb_unite WHERE idunite=3032 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3032) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3032);
COMMIT;

-- IdArticle=2863 , Designation=VARY STOCK TSINJO 50KG FOTSY , Unite=SAC , IdUnite=3781 , CodeArticle=0170286300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2863 AND idunite=3781;
DELETE FROM tb_log_stock WHERE codearticle='0170286300';
DELETE FROM tb_inventaire WHERE codearticle='0170286300';
DELETE FROM tb_stock WHERE codearticle='0170286300';
DELETE FROM tb_article WHERE idarticle=2863;
DELETE FROM tb_unite WHERE idunite=3781 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3781) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3781);
COMMIT;

-- IdArticle=3437 , Designation=VARY STOCK TUCTUC 50KG , Unite=SAC , IdUnite=4503 , CodeArticle=0170343700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3437 AND idunite=4503;
DELETE FROM tb_log_stock WHERE codearticle='0170343700';
DELETE FROM tb_inventaire WHERE codearticle='0170343700';
DELETE FROM tb_stock WHERE codearticle='0170343700';
DELETE FROM tb_article WHERE idarticle=3437;
DELETE FROM tb_unite WHERE idunite=4503 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4503) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4503);
COMMIT;

-- IdArticle=3491 , Designation=VARY STOCK VOLAMENA 50KG , Unite=SAC , IdUnite=4584 , CodeArticle=0170349100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3491 AND idunite=4584;
DELETE FROM tb_log_stock WHERE codearticle='0170349100';
DELETE FROM tb_inventaire WHERE codearticle='0170349100';
DELETE FROM tb_stock WHERE codearticle='0170349100';
DELETE FROM tb_article WHERE idarticle=3491;
DELETE FROM tb_unite WHERE idunite=4584 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4584) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4584);
COMMIT;

-- IdArticle=4468 , Designation=VARY STOCK VOLGA SAC 50KG , Unite=SAC , IdUnite=6242 , CodeArticle=0170446800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4468 AND idunite=6242;
DELETE FROM tb_log_stock WHERE codearticle='0170446800';
DELETE FROM tb_inventaire WHERE codearticle='0170446800';
DELETE FROM tb_stock WHERE codearticle='0170446800';
DELETE FROM tb_article WHERE idarticle=4468;
DELETE FROM tb_unite WHERE idunite=6242 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6242) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6242);
COMMIT;

-- IdArticle=3165 , Designation=VARY TSINJO 25KG ANTANANKORO , Unite=SAC , IdUnite=4159 , CodeArticle=0170316500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3165 AND idunite=4159;
DELETE FROM tb_log_stock WHERE codearticle='0170316500';
DELETE FROM tb_inventaire WHERE codearticle='0170316500';
DELETE FROM tb_stock WHERE codearticle='0170316500';
DELETE FROM tb_article WHERE idarticle=3165;
DELETE FROM tb_unite WHERE idunite=4159 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4159) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4159);
COMMIT;

-- IdArticle=1883 , Designation=VARY TSINJO 50KG , Unite=SAC , IdUnite=2527 , CodeArticle=0170188300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1883 AND idunite=2527;
DELETE FROM tb_log_stock WHERE codearticle='0170188300';
DELETE FROM tb_inventaire WHERE codearticle='0170188300';
DELETE FROM tb_stock WHERE codearticle='0170188300';
DELETE FROM tb_article WHERE idarticle=1883;
DELETE FROM tb_unite WHERE idunite=2527 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2527) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2527);
COMMIT;

-- IdArticle=3127 , Designation=VARY TSINJO VAOVAO , Unite=SAC , IdUnite=4114 , CodeArticle=0170312700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3127 AND idunite=4114;
DELETE FROM tb_log_stock WHERE codearticle='0170312700';
DELETE FROM tb_inventaire WHERE codearticle='0170312700';
DELETE FROM tb_stock WHERE codearticle='0170312700';
DELETE FROM tb_article WHERE idarticle=3127;
DELETE FROM tb_unite WHERE idunite=4114 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4114) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4114);
COMMIT;

-- IdArticle=2273 , Designation=VARY VOKY TSARA 50KG , Unite=SAC , IdUnite=3017 , CodeArticle=0170227300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2273 AND idunite=3017;
DELETE FROM tb_log_stock WHERE codearticle='0170227300';
DELETE FROM tb_inventaire WHERE codearticle='0170227300';
DELETE FROM tb_stock WHERE codearticle='0170227300';
DELETE FROM tb_article WHERE idarticle=2273;
DELETE FROM tb_unite WHERE idunite=3017 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3017) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3017);
COMMIT;

-- IdArticle=3054 , Designation=VENTILATEUR AKITA , Unite=CARTON , IdUnite=4000 , CodeArticle=0130305400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3054 AND idunite=4000;
DELETE FROM tb_log_stock WHERE codearticle='0130305400';
DELETE FROM tb_inventaire WHERE codearticle='0130305400';
DELETE FROM tb_stock WHERE codearticle='0130305400';
DELETE FROM tb_article WHERE idarticle=3054;
DELETE FROM tb_unite WHERE idunite=4000 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4000) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4000);
COMMIT;

-- IdArticle=3779 , Designation=VERRE A JETTER , Unite=PAQUET , IdUnite=5025 , CodeArticle=0030377900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3779 AND idunite=5025;
DELETE FROM tb_log_stock WHERE codearticle='0030377900';
DELETE FROM tb_inventaire WHERE codearticle='0030377900';
DELETE FROM tb_stock WHERE codearticle='0030377900';
DELETE FROM tb_article WHERE idarticle=3779;
DELETE FROM tb_unite WHERE idunite=5025 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5025) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5025);
COMMIT;

-- IdArticle=2214 , Designation=VERRE PLASTIQUE PM , Unite=PIECE , IdUnite=2948 , CodeArticle=0030221400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2214 AND idunite=2948;
DELETE FROM tb_log_stock WHERE codearticle='0030221400';
DELETE FROM tb_inventaire WHERE codearticle='0030221400';
DELETE FROM tb_stock WHERE codearticle='0030221400';
DELETE FROM tb_article WHERE idarticle=2214;
DELETE FROM tb_unite WHERE idunite=2948 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2948) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2948);
COMMIT;

-- IdArticle=4239 , Designation=VETSIN SASA  Moto 3G*160*25 , Unite=PACQUET , IdUnite=5840 , CodeArticle=0040423900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4239 AND idunite=5840;
DELETE FROM tb_log_stock WHERE codearticle='0040423900';
DELETE FROM tb_inventaire WHERE codearticle='0040423900';
DELETE FROM tb_stock WHERE codearticle='0040423900';
DELETE FROM tb_article WHERE idarticle=4239;
DELETE FROM tb_unite WHERE idunite=5840 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5840) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5840);
COMMIT;

-- IdArticle=2554 , Designation=VINAIGRE SACHET SAVOUR , Unite=SACHET , IdUnite=3368 , CodeArticle=0040255400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2554 AND idunite=3368;
DELETE FROM tb_log_stock WHERE codearticle='0040255400';
DELETE FROM tb_inventaire WHERE codearticle='0040255400';
DELETE FROM tb_stock WHERE codearticle='0040255400';
DELETE FROM tb_article WHERE idarticle=2554;
DELETE FROM tb_unite WHERE idunite=3368 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3368) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3368);
COMMIT;

-- IdArticle=2553 , Designation=VINAIGRE SAVOUR 0.25L , Unite=PACQUET , IdUnite=3367 , CodeArticle=0040255300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2553 AND idunite=3367;
DELETE FROM tb_log_stock WHERE codearticle='0040255300';
DELETE FROM tb_inventaire WHERE codearticle='0040255300';
DELETE FROM tb_stock WHERE codearticle='0040255300';
DELETE FROM tb_article WHERE idarticle=2553;
DELETE FROM tb_unite WHERE idunite=3367 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3367) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3367);
COMMIT;

-- IdArticle=3886 , Designation=VITALAIT 250G , Unite=SACHET , IdUnite=5204 , CodeArticle=0040388600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3886 AND idunite=5204;
DELETE FROM tb_log_stock WHERE codearticle='0040388600';
DELETE FROM tb_inventaire WHERE codearticle='0040388600';
DELETE FROM tb_stock WHERE codearticle='0040388600';
DELETE FROM tb_article WHERE idarticle=3886;
DELETE FROM tb_unite WHERE idunite=5204 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5204) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5204);
COMMIT;

-- IdArticle=3885 , Designation=VITALAIT 250G*32 , Unite=CARTON , IdUnite=5203 , CodeArticle=0040388500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3885 AND idunite=5203;
DELETE FROM tb_log_stock WHERE codearticle='0040388500';
DELETE FROM tb_inventaire WHERE codearticle='0040388500';
DELETE FROM tb_stock WHERE codearticle='0040388500';
DELETE FROM tb_article WHERE idarticle=3885;
DELETE FROM tb_unite WHERE idunite=5203 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5203) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5203);
COMMIT;

-- IdArticle=3249 , Designation=VOANJOBORY 50KG ANTANANKORO , Unite=SAC , IdUnite=4270 , CodeArticle=0180324900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3249 AND idunite=4270;
DELETE FROM tb_log_stock WHERE codearticle='0180324900';
DELETE FROM tb_inventaire WHERE codearticle='0180324900';
DELETE FROM tb_stock WHERE codearticle='0180324900';
DELETE FROM tb_article WHERE idarticle=3249;
DELETE FROM tb_unite WHERE idunite=4270 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4270) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4270);
COMMIT;

-- IdArticle=2526 , Designation=VOANJOBORY 60KG , Unite=SAC , IdUnite=3322 , CodeArticle=0180252600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2526 AND idunite=3322;
DELETE FROM tb_log_stock WHERE codearticle='0180252600';
DELETE FROM tb_inventaire WHERE codearticle='0180252600';
DELETE FROM tb_stock WHERE codearticle='0180252600';
DELETE FROM tb_article WHERE idarticle=2526;
DELETE FROM tb_unite WHERE idunite=3322 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3322) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3322);
COMMIT;

-- IdArticle=3034 , Designation=VOANTSIROKA , Unite=KILOS , IdUnite=3975 , CodeArticle=0180303400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3034 AND idunite=3975;
DELETE FROM tb_log_stock WHERE codearticle='0180303400';
DELETE FROM tb_inventaire WHERE codearticle='0180303400';
DELETE FROM tb_stock WHERE codearticle='0180303400';
DELETE FROM tb_article WHERE idarticle=3034;
DELETE FROM tb_unite WHERE idunite=3975 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3975) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3975);
COMMIT;

-- IdArticle=3124 , Designation=VOANTSIROKA MAINTSO , Unite=KAPOAKA , IdUnite=4111 , CodeArticle=0180312400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3124 AND idunite=4111;
DELETE FROM tb_log_stock WHERE codearticle='0180312400';
DELETE FROM tb_inventaire WHERE codearticle='0180312400';
DELETE FROM tb_stock WHERE codearticle='0180312400';
DELETE FROM tb_article WHERE idarticle=3124;
DELETE FROM tb_unite WHERE idunite=4111 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4111) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4111);
COMMIT;

-- IdArticle=2269 , Designation=VOANTSIROKA MAINTSO 25KG , Unite=SAC , IdUnite=3013 , CodeArticle=0180226900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2269 AND idunite=3013;
DELETE FROM tb_log_stock WHERE codearticle='0180226900';
DELETE FROM tb_inventaire WHERE codearticle='0180226900';
DELETE FROM tb_stock WHERE codearticle='0180226900';
DELETE FROM tb_article WHERE idarticle=2269;
DELETE FROM tb_unite WHERE idunite=3013 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3013) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3013);
COMMIT;

-- IdArticle=3606 , Designation=VOVO -TSAVONY SAFIDY PCE , Unite=PIECE , IdUnite=4743 , CodeArticle=0020360600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3606 AND idunite=4743;
DELETE FROM tb_log_stock WHERE codearticle='0020360600';
DELETE FROM tb_inventaire WHERE codearticle='0020360600';
DELETE FROM tb_stock WHERE codearticle='0020360600';
DELETE FROM tb_article WHERE idarticle=3606;
DELETE FROM tb_unite WHERE idunite=4743 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4743) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4743);
COMMIT;

-- IdArticle=3150 , Designation=VOVON-TSAVONY FOM , Unite=PIECE , IdUnite=4142 , CodeArticle=0030315000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3150 AND idunite=4142;
DELETE FROM tb_log_stock WHERE codearticle='0030315000';
DELETE FROM tb_inventaire WHERE codearticle='0030315000';
DELETE FROM tb_stock WHERE codearticle='0030315000';
DELETE FROM tb_article WHERE idarticle=3150;
DELETE FROM tb_unite WHERE idunite=4142 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4142) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4142);
COMMIT;

-- IdArticle=1814 , Designation=VOVON-TSAVONY SEIM , Unite=PIECE , IdUnite=2404 , CodeArticle=0400181400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1814 AND idunite=2404;
DELETE FROM tb_log_stock WHERE codearticle='0400181400';
DELETE FROM tb_inventaire WHERE codearticle='0400181400';
DELETE FROM tb_stock WHERE codearticle='0400181400';
DELETE FROM tb_article WHERE idarticle=1814;
DELETE FROM tb_unite WHERE idunite=2404 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2404) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2404);
COMMIT;

-- IdArticle=1815 , Designation=VOVON-TSAVONY SEIM , Unite=PIECE , IdUnite=2406 , CodeArticle=0400181500
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1815 AND idunite=2406;
DELETE FROM tb_log_stock WHERE codearticle='0400181500';
DELETE FROM tb_inventaire WHERE codearticle='0400181500';
DELETE FROM tb_stock WHERE codearticle='0400181500';
DELETE FROM tb_article WHERE idarticle=1815;
DELETE FROM tb_unite WHERE idunite=2406 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2406) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2406);
COMMIT;

-- IdArticle=1890 , Designation=VOVON-TSAVONY UNO 15G , Unite=SAC , IdUnite=2537 , CodeArticle=0020189000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1890 AND idunite=2537;
DELETE FROM tb_log_stock WHERE codearticle='0020189000';
DELETE FROM tb_inventaire WHERE codearticle='0020189000';
DELETE FROM tb_stock WHERE codearticle='0020189000';
DELETE FROM tb_article WHERE idarticle=1890;
DELETE FROM tb_unite WHERE idunite=2537 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2537) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2537);
COMMIT;

-- IdArticle=1825 , Designation=YARICO GM , Unite=BOITE , IdUnite=2432 , CodeArticle=0030182500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1825 AND idunite=2432;
DELETE FROM tb_log_stock WHERE codearticle='0030182500';
DELETE FROM tb_inventaire WHERE codearticle='0030182500';
DELETE FROM tb_stock WHERE codearticle='0030182500';
DELETE FROM tb_article WHERE idarticle=1825;
DELETE FROM tb_unite WHERE idunite=2432 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2432) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2432);
COMMIT;

-- IdArticle=3858 , Designation=YOGURT POP KIDDO , Unite=SACHET , IdUnite=5156 , CodeArticle=0140385800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3858 AND idunite=5156;
DELETE FROM tb_log_stock WHERE codearticle='0140385800';
DELETE FROM tb_inventaire WHERE codearticle='0140385800';
DELETE FROM tb_stock WHERE codearticle='0140385800';
DELETE FROM tb_article WHERE idarticle=3858;
DELETE FROM tb_unite WHERE idunite=5156 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5156) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5156);
COMMIT;

-- IdArticle=2872 , Designation=YOUT LAIT EN POUDRE 1KG , Unite=SACHET , IdUnite=3792 , CodeArticle=0040287200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2872 AND idunite=3792;
DELETE FROM tb_log_stock WHERE codearticle='0040287200';
DELETE FROM tb_inventaire WHERE codearticle='0040287200';
DELETE FROM tb_stock WHERE codearticle='0040287200';
DELETE FROM tb_article WHERE idarticle=2872;
DELETE FROM tb_unite WHERE idunite=3792 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3792) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3792);
COMMIT;

-- IdArticle=2874 , Designation=YOUT LAIT EN POUDRE 500G , Unite=SACHET , IdUnite=3796 , CodeArticle=0040287400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2874 AND idunite=3796;
DELETE FROM tb_log_stock WHERE codearticle='0040287400';
DELETE FROM tb_inventaire WHERE codearticle='0040287400';
DELETE FROM tb_stock WHERE codearticle='0040287400';
DELETE FROM tb_article WHERE idarticle=2874;
DELETE FROM tb_unite WHERE idunite=3796 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3796) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3796);
COMMIT;

-- IdArticle=1839 , Designation=YOUZOU 50 CL , Unite=PACQUET , IdUnite=2458 , CodeArticle=0030183900
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1839 AND idunite=2458;
DELETE FROM tb_log_stock WHERE codearticle='0030183900';
DELETE FROM tb_inventaire WHERE codearticle='0030183900';
DELETE FROM tb_stock WHERE codearticle='0030183900';
DELETE FROM tb_article WHERE idarticle=1839;
DELETE FROM tb_unite WHERE idunite=2458 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2458) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2458);
COMMIT;

-- IdArticle=2599 , Designation=CITRON VERELLE 60G X 96PCS , Unite=PIECE , IdUnite=3415 , CodeArticle=0020259900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2599 AND idunite=3415;
DELETE FROM tb_log_stock WHERE codearticle='0020259900';
DELETE FROM tb_inventaire WHERE codearticle='0020259900';
DELETE FROM tb_stock WHERE codearticle='0020259900';
DELETE FROM tb_article WHERE idarticle=2599;
DELETE FROM tb_unite WHERE idunite=3415 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3415) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3415);
COMMIT;

-- IdArticle=2651 , Designation=4X4 50 , Unite=SACHET , IdUnite=3495 , CodeArticle=0050265100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2651 AND idunite=3495;
DELETE FROM tb_log_stock WHERE codearticle='0050265100';
DELETE FROM tb_inventaire WHERE codearticle='0050265100';
DELETE FROM tb_stock WHERE codearticle='0050265100';
DELETE FROM tb_article WHERE idarticle=2651;
DELETE FROM tb_unite WHERE idunite=3495 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3495) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3495);
COMMIT;

-- IdArticle=2294 , Designation=AIGLE  D OR  FOOTLOOSE MAR P35 , Unite=PAIRE , IdUnite=3042 , CodeArticle=0070229400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2294 AND idunite=3042;
DELETE FROM tb_log_stock WHERE codearticle='0070229400';
DELETE FROM tb_inventaire WHERE codearticle='0070229400';
DELETE FROM tb_stock WHERE codearticle='0070229400';
DELETE FROM tb_article WHERE idarticle=2294;
DELETE FROM tb_unite WHERE idunite=3042 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3042) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3042);
COMMIT;

-- IdArticle=2295 , Designation=AIGLE  D OR  FOOTLOOSE MAR P36 , Unite=PAIRE , IdUnite=3043 , CodeArticle=0070229500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2295 AND idunite=3043;
DELETE FROM tb_log_stock WHERE codearticle='0070229500';
DELETE FROM tb_inventaire WHERE codearticle='0070229500';
DELETE FROM tb_stock WHERE codearticle='0070229500';
DELETE FROM tb_article WHERE idarticle=2295;
DELETE FROM tb_unite WHERE idunite=3043 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3043) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3043);
COMMIT;

-- IdArticle=2296 , Designation=AIGLE  D OR  FOOTLOOSE MAR P37 , Unite=PAIRE , IdUnite=3044 , CodeArticle=0070229600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2296 AND idunite=3044;
DELETE FROM tb_log_stock WHERE codearticle='0070229600';
DELETE FROM tb_inventaire WHERE codearticle='0070229600';
DELETE FROM tb_stock WHERE codearticle='0070229600';
DELETE FROM tb_article WHERE idarticle=2296;
DELETE FROM tb_unite WHERE idunite=3044 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3044) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3044);
COMMIT;

-- IdArticle=2297 , Designation=AIGLE  D OR  FOOTLOOSE MAR P38 , Unite=PAIRE , IdUnite=3045 , CodeArticle=0070229700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2297 AND idunite=3045;
DELETE FROM tb_log_stock WHERE codearticle='0070229700';
DELETE FROM tb_inventaire WHERE codearticle='0070229700';
DELETE FROM tb_stock WHERE codearticle='0070229700';
DELETE FROM tb_article WHERE idarticle=2297;
DELETE FROM tb_unite WHERE idunite=3045 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3045) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3045);
COMMIT;

-- IdArticle=2298 , Designation=AIGLE  D OR  FOOTLOOSE MAR P39 , Unite=PAIRE , IdUnite=3046 , CodeArticle=0070229800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2298 AND idunite=3046;
DELETE FROM tb_log_stock WHERE codearticle='0070229800';
DELETE FROM tb_inventaire WHERE codearticle='0070229800';
DELETE FROM tb_stock WHERE codearticle='0070229800';
DELETE FROM tb_article WHERE idarticle=2298;
DELETE FROM tb_unite WHERE idunite=3046 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3046) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3046);
COMMIT;

-- IdArticle=2299 , Designation=AIGLE  D OR  FOOTLOOSE MAR P40 , Unite=PAIRE , IdUnite=3047 , CodeArticle=0070229900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2299 AND idunite=3047;
DELETE FROM tb_log_stock WHERE codearticle='0070229900';
DELETE FROM tb_inventaire WHERE codearticle='0070229900';
DELETE FROM tb_stock WHERE codearticle='0070229900';
DELETE FROM tb_article WHERE idarticle=2299;
DELETE FROM tb_unite WHERE idunite=3047 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3047) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3047);
COMMIT;

-- IdArticle=2300 , Designation=AIGLE  D OR  FOOTLOOSE MAR P41 , Unite=PAIRE , IdUnite=3048 , CodeArticle=0070230000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2300 AND idunite=3048;
DELETE FROM tb_log_stock WHERE codearticle='0070230000';
DELETE FROM tb_inventaire WHERE codearticle='0070230000';
DELETE FROM tb_stock WHERE codearticle='0070230000';
DELETE FROM tb_article WHERE idarticle=2300;
DELETE FROM tb_unite WHERE idunite=3048 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3048) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3048);
COMMIT;

-- IdArticle=2301 , Designation=AIGLE  D OR  FOOTLOOSE MAR P42 , Unite=PAIRE , IdUnite=3049 , CodeArticle=0070230100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2301 AND idunite=3049;
DELETE FROM tb_log_stock WHERE codearticle='0070230100';
DELETE FROM tb_inventaire WHERE codearticle='0070230100';
DELETE FROM tb_stock WHERE codearticle='0070230100';
DELETE FROM tb_article WHERE idarticle=2301;
DELETE FROM tb_unite WHERE idunite=3049 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3049) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3049);
COMMIT;

-- IdArticle=2302 , Designation=AIGLE  D OR  FOOTLOOSE MAR P43 , Unite=PAIRE , IdUnite=3050 , CodeArticle=0070230200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2302 AND idunite=3050;
DELETE FROM tb_log_stock WHERE codearticle='0070230200';
DELETE FROM tb_inventaire WHERE codearticle='0070230200';
DELETE FROM tb_stock WHERE codearticle='0070230200';
DELETE FROM tb_article WHERE idarticle=2302;
DELETE FROM tb_unite WHERE idunite=3050 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3050) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3050);
COMMIT;

-- IdArticle=2285 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P35 , Unite=PAIRE , IdUnite=3033 , CodeArticle=0070228500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2285 AND idunite=3033;
DELETE FROM tb_log_stock WHERE codearticle='0070228500';
DELETE FROM tb_inventaire WHERE codearticle='0070228500';
DELETE FROM tb_stock WHERE codearticle='0070228500';
DELETE FROM tb_article WHERE idarticle=2285;
DELETE FROM tb_unite WHERE idunite=3033 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3033) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3033);
COMMIT;

-- IdArticle=2286 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P36 , Unite=PAIRE , IdUnite=3034 , CodeArticle=0070228600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2286 AND idunite=3034;
DELETE FROM tb_log_stock WHERE codearticle='0070228600';
DELETE FROM tb_inventaire WHERE codearticle='0070228600';
DELETE FROM tb_stock WHERE codearticle='0070228600';
DELETE FROM tb_article WHERE idarticle=2286;
DELETE FROM tb_unite WHERE idunite=3034 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3034) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3034);
COMMIT;

-- IdArticle=2287 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P37 , Unite=PAIRE , IdUnite=3035 , CodeArticle=0070228700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2287 AND idunite=3035;
DELETE FROM tb_log_stock WHERE codearticle='0070228700';
DELETE FROM tb_inventaire WHERE codearticle='0070228700';
DELETE FROM tb_stock WHERE codearticle='0070228700';
DELETE FROM tb_article WHERE idarticle=2287;
DELETE FROM tb_unite WHERE idunite=3035 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3035) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3035);
COMMIT;

-- IdArticle=2288 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P38 , Unite=PAIRE , IdUnite=3036 , CodeArticle=0070228800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2288 AND idunite=3036;
DELETE FROM tb_log_stock WHERE codearticle='0070228800';
DELETE FROM tb_inventaire WHERE codearticle='0070228800';
DELETE FROM tb_stock WHERE codearticle='0070228800';
DELETE FROM tb_article WHERE idarticle=2288;
DELETE FROM tb_unite WHERE idunite=3036 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3036) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3036);
COMMIT;

-- IdArticle=2290 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P40 , Unite=PAIRE , IdUnite=3038 , CodeArticle=0070229000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2290 AND idunite=3038;
DELETE FROM tb_log_stock WHERE codearticle='0070229000';
DELETE FROM tb_inventaire WHERE codearticle='0070229000';
DELETE FROM tb_stock WHERE codearticle='0070229000';
DELETE FROM tb_article WHERE idarticle=2290;
DELETE FROM tb_unite WHERE idunite=3038 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3038) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3038);
COMMIT;

-- IdArticle=2291 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P41 , Unite=PAIRE , IdUnite=3039 , CodeArticle=0070229100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2291 AND idunite=3039;
DELETE FROM tb_log_stock WHERE codearticle='0070229100';
DELETE FROM tb_inventaire WHERE codearticle='0070229100';
DELETE FROM tb_stock WHERE codearticle='0070229100';
DELETE FROM tb_article WHERE idarticle=2291;
DELETE FROM tb_unite WHERE idunite=3039 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3039) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3039);
COMMIT;

-- IdArticle=2292 , Designation=AIGLE  D OR  FOOTLOOSE NOIR P42 , Unite=PAIRE , IdUnite=3040 , CodeArticle=0070229200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2292 AND idunite=3040;
DELETE FROM tb_log_stock WHERE codearticle='0070229200';
DELETE FROM tb_inventaire WHERE codearticle='0070229200';
DELETE FROM tb_stock WHERE codearticle='0070229200';
DELETE FROM tb_article WHERE idarticle=2292;
DELETE FROM tb_unite WHERE idunite=3040 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3040) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3040);
COMMIT;

-- IdArticle=2557 , Designation=AIGLE  D OR  FOOTLOOSE VIO P35 , Unite=PAIRE , IdUnite=3372 , CodeArticle=0070255700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2557 AND idunite=3372;
DELETE FROM tb_log_stock WHERE codearticle='0070255700';
DELETE FROM tb_inventaire WHERE codearticle='0070255700';
DELETE FROM tb_stock WHERE codearticle='0070255700';
DELETE FROM tb_article WHERE idarticle=2557;
DELETE FROM tb_unite WHERE idunite=3372 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3372) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3372);
COMMIT;

-- IdArticle=2558 , Designation=AIGLE  D OR  FOOTLOOSE VIO P41 , Unite=PAIRE , IdUnite=3373 , CodeArticle=0070255800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2558 AND idunite=3373;
DELETE FROM tb_log_stock WHERE codearticle='0070255800';
DELETE FROM tb_inventaire WHERE codearticle='0070255800';
DELETE FROM tb_stock WHERE codearticle='0070255800';
DELETE FROM tb_article WHERE idarticle=2558;
DELETE FROM tb_unite WHERE idunite=3373 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3373) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3373);
COMMIT;

-- IdArticle=2303 , Designation=AIGLE  D OR  FOOTLOOSE VRJ P40 , Unite=PAIRE , IdUnite=3051 , CodeArticle=0070230300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2303 AND idunite=3051;
DELETE FROM tb_log_stock WHERE codearticle='0070230300';
DELETE FROM tb_inventaire WHERE codearticle='0070230300';
DELETE FROM tb_stock WHERE codearticle='0070230300';
DELETE FROM tb_article WHERE idarticle=2303;
DELETE FROM tb_unite WHERE idunite=3051 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3051) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3051);
COMMIT;

-- IdArticle=2304 , Designation=AIGLE  D OR  FOOTLOOSE VRV P41 , Unite=PAIRE , IdUnite=3052 , CodeArticle=0070230400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2304 AND idunite=3052;
DELETE FROM tb_log_stock WHERE codearticle='0070230400';
DELETE FROM tb_inventaire WHERE codearticle='0070230400';
DELETE FROM tb_stock WHERE codearticle='0070230400';
DELETE FROM tb_article WHERE idarticle=2304;
DELETE FROM tb_unite WHERE idunite=3052 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3052) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3052);
COMMIT;

-- IdArticle=2305 , Designation=AIGLE  D OR  FOOTLOOSE VRV P42 , Unite=PAIRE , IdUnite=3053 , CodeArticle=0070230500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2305 AND idunite=3053;
DELETE FROM tb_log_stock WHERE codearticle='0070230500';
DELETE FROM tb_inventaire WHERE codearticle='0070230500';
DELETE FROM tb_stock WHERE codearticle='0070230500';
DELETE FROM tb_article WHERE idarticle=2305;
DELETE FROM tb_unite WHERE idunite=3053 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3053) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3053);
COMMIT;

-- IdArticle=2306 , Designation=AIGLE  D OR  FOOTLOOSE VRV P43 , Unite=PAIRE , IdUnite=3054 , CodeArticle=0070230600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2306 AND idunite=3054;
DELETE FROM tb_log_stock WHERE codearticle='0070230600';
DELETE FROM tb_inventaire WHERE codearticle='0070230600';
DELETE FROM tb_stock WHERE codearticle='0070230600';
DELETE FROM tb_article WHERE idarticle=2306;
DELETE FROM tb_unite WHERE idunite=3054 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3054) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3054);
COMMIT;

-- IdArticle=3001 , Designation=AIGLE  D OR  MIRADO FOM P39 , Unite=PAIRE , IdUnite=3931 , CodeArticle=0070300100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3001 AND idunite=3931;
DELETE FROM tb_log_stock WHERE codearticle='0070300100';
DELETE FROM tb_inventaire WHERE codearticle='0070300100';
DELETE FROM tb_stock WHERE codearticle='0070300100';
DELETE FROM tb_article WHERE idarticle=3001;
DELETE FROM tb_unite WHERE idunite=3931 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3931) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3931);
COMMIT;

-- IdArticle=3003 , Designation=AIGLE  D OR  MIRADO FOM P40 , Unite=PAIRE , IdUnite=3933 , CodeArticle=0070300300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3003 AND idunite=3933;
DELETE FROM tb_log_stock WHERE codearticle='0070300300';
DELETE FROM tb_inventaire WHERE codearticle='0070300300';
DELETE FROM tb_stock WHERE codearticle='0070300300';
DELETE FROM tb_article WHERE idarticle=3003;
DELETE FROM tb_unite WHERE idunite=3933 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3933) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3933);
COMMIT;

-- IdArticle=3002 , Designation=AIGLE  D OR  MIRADO FOM P41 , Unite=PAIRE , IdUnite=3932 , CodeArticle=0070300200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3002 AND idunite=3932;
DELETE FROM tb_log_stock WHERE codearticle='0070300200';
DELETE FROM tb_inventaire WHERE codearticle='0070300200';
DELETE FROM tb_stock WHERE codearticle='0070300200';
DELETE FROM tb_article WHERE idarticle=3002;
DELETE FROM tb_unite WHERE idunite=3932 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3932) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3932);
COMMIT;

-- IdArticle=3005 , Designation=AIGLE  D OR  MIRADO FOM P43 , Unite=PAIRE , IdUnite=3935 , CodeArticle=0070300500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3005 AND idunite=3935;
DELETE FROM tb_log_stock WHERE codearticle='0070300500';
DELETE FROM tb_inventaire WHERE codearticle='0070300500';
DELETE FROM tb_stock WHERE codearticle='0070300500';
DELETE FROM tb_article WHERE idarticle=3005;
DELETE FROM tb_unite WHERE idunite=3935 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3935) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3935);
COMMIT;

-- IdArticle=3008 , Designation=AIGLE  D OR  MIRADO NOIR P39 , Unite=PAIRE , IdUnite=3938 , CodeArticle=0070300800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3008 AND idunite=3938;
DELETE FROM tb_log_stock WHERE codearticle='0070300800';
DELETE FROM tb_inventaire WHERE codearticle='0070300800';
DELETE FROM tb_stock WHERE codearticle='0070300800';
DELETE FROM tb_article WHERE idarticle=3008;
DELETE FROM tb_unite WHERE idunite=3938 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3938) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3938);
COMMIT;

-- IdArticle=3220 , Designation=AIGLE  D OR TEAKO FR P36 , Unite=PAIRE , IdUnite=4237 , CodeArticle=0070322000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3220 AND idunite=4237;
DELETE FROM tb_log_stock WHERE codearticle='0070322000';
DELETE FROM tb_inventaire WHERE codearticle='0070322000';
DELETE FROM tb_stock WHERE codearticle='0070322000';
DELETE FROM tb_article WHERE idarticle=3220;
DELETE FROM tb_unite WHERE idunite=4237 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4237) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4237);
COMMIT;

-- IdArticle=3221 , Designation=AIGLE  D OR TEAKO FR P37 , Unite=PAIRE , IdUnite=4238 , CodeArticle=0070322100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3221 AND idunite=4238;
DELETE FROM tb_log_stock WHERE codearticle='0070322100';
DELETE FROM tb_inventaire WHERE codearticle='0070322100';
DELETE FROM tb_stock WHERE codearticle='0070322100';
DELETE FROM tb_article WHERE idarticle=3221;
DELETE FROM tb_unite WHERE idunite=4238 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4238) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4238);
COMMIT;

-- IdArticle=3222 , Designation=AIGLE  D OR TEAKO FR P38 , Unite=PAIRE , IdUnite=4239 , CodeArticle=0070322200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3222 AND idunite=4239;
DELETE FROM tb_log_stock WHERE codearticle='0070322200';
DELETE FROM tb_inventaire WHERE codearticle='0070322200';
DELETE FROM tb_stock WHERE codearticle='0070322200';
DELETE FROM tb_article WHERE idarticle=3222;
DELETE FROM tb_unite WHERE idunite=4239 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4239) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4239);
COMMIT;

-- IdArticle=3223 , Designation=AIGLE  D OR TEAKO FR P39 , Unite=PAIRE , IdUnite=4240 , CodeArticle=0070322300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3223 AND idunite=4240;
DELETE FROM tb_log_stock WHERE codearticle='0070322300';
DELETE FROM tb_inventaire WHERE codearticle='0070322300';
DELETE FROM tb_stock WHERE codearticle='0070322300';
DELETE FROM tb_article WHERE idarticle=3223;
DELETE FROM tb_unite WHERE idunite=4240 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4240) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4240);
COMMIT;

-- IdArticle=3215 , Designation=AIGLE  D OR TEAKO MARRON P35 , Unite=PAIRE , IdUnite=4232 , CodeArticle=0070321500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3215 AND idunite=4232;
DELETE FROM tb_log_stock WHERE codearticle='0070321500';
DELETE FROM tb_inventaire WHERE codearticle='0070321500';
DELETE FROM tb_stock WHERE codearticle='0070321500';
DELETE FROM tb_article WHERE idarticle=3215;
DELETE FROM tb_unite WHERE idunite=4232 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4232) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4232);
COMMIT;

-- IdArticle=3214 , Designation=AIGLE  D OR TEAKO MARRON P37 , Unite=PAIRE , IdUnite=4231 , CodeArticle=0070321400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3214 AND idunite=4231;
DELETE FROM tb_log_stock WHERE codearticle='0070321400';
DELETE FROM tb_inventaire WHERE codearticle='0070321400';
DELETE FROM tb_stock WHERE codearticle='0070321400';
DELETE FROM tb_article WHERE idarticle=3214;
DELETE FROM tb_unite WHERE idunite=4231 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4231) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4231);
COMMIT;

-- IdArticle=3216 , Designation=AIGLE  D OR TEAKO MARRON P38 , Unite=PAIRE , IdUnite=4233 , CodeArticle=0070321600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3216 AND idunite=4233;
DELETE FROM tb_log_stock WHERE codearticle='0070321600';
DELETE FROM tb_inventaire WHERE codearticle='0070321600';
DELETE FROM tb_stock WHERE codearticle='0070321600';
DELETE FROM tb_article WHERE idarticle=3216;
DELETE FROM tb_unite WHERE idunite=4233 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4233) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4233);
COMMIT;

-- IdArticle=3218 , Designation=AIGLE  D OR TEAKO MARRON P39 , Unite=PAIRE , IdUnite=4235 , CodeArticle=0070321800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3218 AND idunite=4235;
DELETE FROM tb_log_stock WHERE codearticle='0070321800';
DELETE FROM tb_inventaire WHERE codearticle='0070321800';
DELETE FROM tb_stock WHERE codearticle='0070321800';
DELETE FROM tb_article WHERE idarticle=3218;
DELETE FROM tb_unite WHERE idunite=4235 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4235) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4235);
COMMIT;

-- IdArticle=3217 , Designation=AIGLE  D OR TEAKO MARRON P41 , Unite=PAIRE , IdUnite=4234 , CodeArticle=0070321700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3217 AND idunite=4234;
DELETE FROM tb_log_stock WHERE codearticle='0070321700';
DELETE FROM tb_inventaire WHERE codearticle='0070321700';
DELETE FROM tb_stock WHERE codearticle='0070321700';
DELETE FROM tb_article WHERE idarticle=3217;
DELETE FROM tb_unite WHERE idunite=4234 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4234) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4234);
COMMIT;

-- IdArticle=2460 , Designation=AIGLE D OR ADANA MARRON P35 , Unite=PAIRE , IdUnite=3240 , CodeArticle=0070246000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2460 AND idunite=3240;
DELETE FROM tb_log_stock WHERE codearticle='0070246000';
DELETE FROM tb_inventaire WHERE codearticle='0070246000';
DELETE FROM tb_stock WHERE codearticle='0070246000';
DELETE FROM tb_article WHERE idarticle=2460;
DELETE FROM tb_unite WHERE idunite=3240 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3240) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3240);
COMMIT;

-- IdArticle=2461 , Designation=AIGLE D OR ADANA MARRON P36 , Unite=PAIRE , IdUnite=3241 , CodeArticle=0070246100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2461 AND idunite=3241;
DELETE FROM tb_log_stock WHERE codearticle='0070246100';
DELETE FROM tb_inventaire WHERE codearticle='0070246100';
DELETE FROM tb_stock WHERE codearticle='0070246100';
DELETE FROM tb_article WHERE idarticle=2461;
DELETE FROM tb_unite WHERE idunite=3241 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3241) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3241);
COMMIT;

-- IdArticle=2462 , Designation=AIGLE D OR ADANA MARRON P37 , Unite=PAIRE , IdUnite=3242 , CodeArticle=0070246200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2462 AND idunite=3242;
DELETE FROM tb_log_stock WHERE codearticle='0070246200';
DELETE FROM tb_inventaire WHERE codearticle='0070246200';
DELETE FROM tb_stock WHERE codearticle='0070246200';
DELETE FROM tb_article WHERE idarticle=2462;
DELETE FROM tb_unite WHERE idunite=3242 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3242) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3242);
COMMIT;

-- IdArticle=2463 , Designation=AIGLE D OR ADANA MARRON P38 , Unite=PAIRE , IdUnite=3243 , CodeArticle=0070246300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2463 AND idunite=3243;
DELETE FROM tb_log_stock WHERE codearticle='0070246300';
DELETE FROM tb_inventaire WHERE codearticle='0070246300';
DELETE FROM tb_stock WHERE codearticle='0070246300';
DELETE FROM tb_article WHERE idarticle=2463;
DELETE FROM tb_unite WHERE idunite=3243 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3243) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3243);
COMMIT;

-- IdArticle=2464 , Designation=AIGLE D OR ADANA MARRON P39 , Unite=PAIRE , IdUnite=3244 , CodeArticle=0070246400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2464 AND idunite=3244;
DELETE FROM tb_log_stock WHERE codearticle='0070246400';
DELETE FROM tb_inventaire WHERE codearticle='0070246400';
DELETE FROM tb_stock WHERE codearticle='0070246400';
DELETE FROM tb_article WHERE idarticle=2464;
DELETE FROM tb_unite WHERE idunite=3244 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3244) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3244);
COMMIT;

-- IdArticle=2465 , Designation=AIGLE D OR ADANA MARRON P40 , Unite=PAIRE , IdUnite=3245 , CodeArticle=0070246500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2465 AND idunite=3245;
DELETE FROM tb_log_stock WHERE codearticle='0070246500';
DELETE FROM tb_inventaire WHERE codearticle='0070246500';
DELETE FROM tb_stock WHERE codearticle='0070246500';
DELETE FROM tb_article WHERE idarticle=2465;
DELETE FROM tb_unite WHERE idunite=3245 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3245) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3245);
COMMIT;

-- IdArticle=2466 , Designation=AIGLE D OR ADANA MARRON P41 , Unite=PAIRE , IdUnite=3246 , CodeArticle=0070246600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2466 AND idunite=3246;
DELETE FROM tb_log_stock WHERE codearticle='0070246600';
DELETE FROM tb_inventaire WHERE codearticle='0070246600';
DELETE FROM tb_stock WHERE codearticle='0070246600';
DELETE FROM tb_article WHERE idarticle=2466;
DELETE FROM tb_unite WHERE idunite=3246 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3246) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3246);
COMMIT;

-- IdArticle=2210 , Designation=AIGLE D OR ALOALO_TAB P36 , Unite=PAIRE , IdUnite=2943 , CodeArticle=0070221000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2210 AND idunite=2943;
DELETE FROM tb_log_stock WHERE codearticle='0070221000';
DELETE FROM tb_inventaire WHERE codearticle='0070221000';
DELETE FROM tb_stock WHERE codearticle='0070221000';
DELETE FROM tb_article WHERE idarticle=2210;
DELETE FROM tb_unite WHERE idunite=2943 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2943) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2943);
COMMIT;

-- IdArticle=2211 , Designation=AIGLE D OR ALOALO_TAB P37 , Unite=PAIRE , IdUnite=2944 , CodeArticle=0070221100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2211 AND idunite=2944;
DELETE FROM tb_log_stock WHERE codearticle='0070221100';
DELETE FROM tb_inventaire WHERE codearticle='0070221100';
DELETE FROM tb_stock WHERE codearticle='0070221100';
DELETE FROM tb_article WHERE idarticle=2211;
DELETE FROM tb_unite WHERE idunite=2944 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2944) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2944);
COMMIT;

-- IdArticle=2249 , Designation=AIGLE D OR ALOALO_TAB P38 , Unite=PAIRE , IdUnite=2992 , CodeArticle=0070224900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2249 AND idunite=2992;
DELETE FROM tb_log_stock WHERE codearticle='0070224900';
DELETE FROM tb_inventaire WHERE codearticle='0070224900';
DELETE FROM tb_stock WHERE codearticle='0070224900';
DELETE FROM tb_article WHERE idarticle=2249;
DELETE FROM tb_unite WHERE idunite=2992 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2992) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2992);
COMMIT;

-- IdArticle=1874 , Designation=AIGLE D OR ALOALO_TAB P39 , Unite=PAIRE , IdUnite=2518 , CodeArticle=0070187400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1874 AND idunite=2518;
DELETE FROM tb_log_stock WHERE codearticle='0070187400';
DELETE FROM tb_inventaire WHERE codearticle='0070187400';
DELETE FROM tb_stock WHERE codearticle='0070187400';
DELETE FROM tb_article WHERE idarticle=1874;
DELETE FROM tb_unite WHERE idunite=2518 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2518) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2518);
COMMIT;

-- IdArticle=2212 , Designation=AIGLE D OR ALOALO_TAB P40 , Unite=PAIRE , IdUnite=2945 , CodeArticle=0070221200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2212 AND idunite=2945;
DELETE FROM tb_log_stock WHERE codearticle='0070221200';
DELETE FROM tb_inventaire WHERE codearticle='0070221200';
DELETE FROM tb_stock WHERE codearticle='0070221200';
DELETE FROM tb_article WHERE idarticle=2212;
DELETE FROM tb_unite WHERE idunite=2945 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2945) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2945);
COMMIT;

-- IdArticle=1988 , Designation=AIGLE D OR ALOALO_TAB P41 , Unite=PAIRE , IdUnite=2684 , CodeArticle=0070198800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1988 AND idunite=2684;
DELETE FROM tb_log_stock WHERE codearticle='0070198800';
DELETE FROM tb_inventaire WHERE codearticle='0070198800';
DELETE FROM tb_stock WHERE codearticle='0070198800';
DELETE FROM tb_article WHERE idarticle=1988;
DELETE FROM tb_unite WHERE idunite=2684 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2684) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2684);
COMMIT;

-- IdArticle=1989 , Designation=AIGLE D OR ALOALO_TAB P42 , Unite=PAIRE , IdUnite=2685 , CodeArticle=0070198900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1989 AND idunite=2685;
DELETE FROM tb_log_stock WHERE codearticle='0070198900';
DELETE FROM tb_inventaire WHERE codearticle='0070198900';
DELETE FROM tb_stock WHERE codearticle='0070198900';
DELETE FROM tb_article WHERE idarticle=1989;
DELETE FROM tb_unite WHERE idunite=2685 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2685) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2685);
COMMIT;

-- IdArticle=1990 , Designation=AIGLE D OR ALOALO_TAB P43 , Unite=PAIRE , IdUnite=2686 , CodeArticle=0070199000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1990 AND idunite=2686;
DELETE FROM tb_log_stock WHERE codearticle='0070199000';
DELETE FROM tb_inventaire WHERE codearticle='0070199000';
DELETE FROM tb_stock WHERE codearticle='0070199000';
DELETE FROM tb_article WHERE idarticle=1990;
DELETE FROM tb_unite WHERE idunite=2686 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2686) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2686);
COMMIT;

-- IdArticle=2889 , Designation=AIGLE D OR ALOALO_TAB P44 , Unite=PAIRE , IdUnite=3819 , CodeArticle=0070288900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2889 AND idunite=3819;
DELETE FROM tb_log_stock WHERE codearticle='0070288900';
DELETE FROM tb_inventaire WHERE codearticle='0070288900';
DELETE FROM tb_stock WHERE codearticle='0070288900';
DELETE FROM tb_article WHERE idarticle=2889;
DELETE FROM tb_unite WHERE idunite=3819 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3819) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3819);
COMMIT;

-- IdArticle=2467 , Designation=AIGLE D OR AMBY MARINE P35 , Unite=PAIRE , IdUnite=3247 , CodeArticle=0070246700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2467 AND idunite=3247;
DELETE FROM tb_log_stock WHERE codearticle='0070246700';
DELETE FROM tb_inventaire WHERE codearticle='0070246700';
DELETE FROM tb_stock WHERE codearticle='0070246700';
DELETE FROM tb_article WHERE idarticle=2467;
DELETE FROM tb_unite WHERE idunite=3247 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3247) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3247);
COMMIT;

-- IdArticle=2468 , Designation=AIGLE D OR AMBY MARINE P36 , Unite=PAIRE , IdUnite=3248 , CodeArticle=0070246800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2468 AND idunite=3248;
DELETE FROM tb_log_stock WHERE codearticle='0070246800';
DELETE FROM tb_inventaire WHERE codearticle='0070246800';
DELETE FROM tb_stock WHERE codearticle='0070246800';
DELETE FROM tb_article WHERE idarticle=2468;
DELETE FROM tb_unite WHERE idunite=3248 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3248) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3248);
COMMIT;

-- IdArticle=2469 , Designation=AIGLE D OR AMBY MARINE P37 , Unite=PAIRE , IdUnite=3249 , CodeArticle=0070246900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2469 AND idunite=3249;
DELETE FROM tb_log_stock WHERE codearticle='0070246900';
DELETE FROM tb_inventaire WHERE codearticle='0070246900';
DELETE FROM tb_stock WHERE codearticle='0070246900';
DELETE FROM tb_article WHERE idarticle=2469;
DELETE FROM tb_unite WHERE idunite=3249 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3249) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3249);
COMMIT;

-- IdArticle=2470 , Designation=AIGLE D OR AMBY MARINE P38 , Unite=PAIRE , IdUnite=3250 , CodeArticle=0070247000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2470 AND idunite=3250;
DELETE FROM tb_log_stock WHERE codearticle='0070247000';
DELETE FROM tb_inventaire WHERE codearticle='0070247000';
DELETE FROM tb_stock WHERE codearticle='0070247000';
DELETE FROM tb_article WHERE idarticle=2470;
DELETE FROM tb_unite WHERE idunite=3250 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3250) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3250);
COMMIT;

-- IdArticle=2471 , Designation=AIGLE D OR AMBY MARINE P39 , Unite=PAIRE , IdUnite=3251 , CodeArticle=0070247100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2471 AND idunite=3251;
DELETE FROM tb_log_stock WHERE codearticle='0070247100';
DELETE FROM tb_inventaire WHERE codearticle='0070247100';
DELETE FROM tb_stock WHERE codearticle='0070247100';
DELETE FROM tb_article WHERE idarticle=2471;
DELETE FROM tb_unite WHERE idunite=3251 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3251) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3251);
COMMIT;

-- IdArticle=2472 , Designation=AIGLE D OR AMBY MARINE P40 , Unite=PAIRE , IdUnite=3252 , CodeArticle=0070247200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2472 AND idunite=3252;
DELETE FROM tb_log_stock WHERE codearticle='0070247200';
DELETE FROM tb_inventaire WHERE codearticle='0070247200';
DELETE FROM tb_stock WHERE codearticle='0070247200';
DELETE FROM tb_article WHERE idarticle=2472;
DELETE FROM tb_unite WHERE idunite=3252 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3252) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3252);
COMMIT;

-- IdArticle=2473 , Designation=AIGLE D OR AMBY MARINE P41 , Unite=PAIRE , IdUnite=3253 , CodeArticle=0070247300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2473 AND idunite=3253;
DELETE FROM tb_log_stock WHERE codearticle='0070247300';
DELETE FROM tb_inventaire WHERE codearticle='0070247300';
DELETE FROM tb_stock WHERE codearticle='0070247300';
DELETE FROM tb_article WHERE idarticle=2473;
DELETE FROM tb_unite WHERE idunite=3253 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3253) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3253);
COMMIT;

-- IdArticle=3258 , Designation=AIGLE D OR AMPINGA C P39 , Unite=PAIRE , IdUnite=4280 , CodeArticle=0070325800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3258 AND idunite=4280;
DELETE FROM tb_log_stock WHERE codearticle='0070325800';
DELETE FROM tb_inventaire WHERE codearticle='0070325800';
DELETE FROM tb_stock WHERE codearticle='0070325800';
DELETE FROM tb_article WHERE idarticle=3258;
DELETE FROM tb_unite WHERE idunite=4280 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4280) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4280);
COMMIT;

-- IdArticle=3257 , Designation=AIGLE D OR AMPINGA C P40 , Unite=PAIRE , IdUnite=4279 , CodeArticle=0070325700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3257 AND idunite=4279;
DELETE FROM tb_log_stock WHERE codearticle='0070325700';
DELETE FROM tb_inventaire WHERE codearticle='0070325700';
DELETE FROM tb_stock WHERE codearticle='0070325700';
DELETE FROM tb_article WHERE idarticle=3257;
DELETE FROM tb_unite WHERE idunite=4279 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4279) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4279);
COMMIT;

-- IdArticle=3256 , Designation=AIGLE D OR AMPINGA C P41 , Unite=PAIRE , IdUnite=4278 , CodeArticle=0070325600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3256 AND idunite=4278;
DELETE FROM tb_log_stock WHERE codearticle='0070325600';
DELETE FROM tb_inventaire WHERE codearticle='0070325600';
DELETE FROM tb_stock WHERE codearticle='0070325600';
DELETE FROM tb_article WHERE idarticle=3256;
DELETE FROM tb_unite WHERE idunite=4278 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4278) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4278);
COMMIT;

-- IdArticle=3255 , Designation=AIGLE D OR AMPINGA C P42 , Unite=PAIRE , IdUnite=4277 , CodeArticle=0070325500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3255 AND idunite=4277;
DELETE FROM tb_log_stock WHERE codearticle='0070325500';
DELETE FROM tb_inventaire WHERE codearticle='0070325500';
DELETE FROM tb_stock WHERE codearticle='0070325500';
DELETE FROM tb_article WHERE idarticle=3255;
DELETE FROM tb_unite WHERE idunite=4277 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4277) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4277);
COMMIT;

-- IdArticle=3254 , Designation=AIGLE D OR AMPINGA C P43 , Unite=PAIRE , IdUnite=4276 , CodeArticle=0070325400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3254 AND idunite=4276;
DELETE FROM tb_log_stock WHERE codearticle='0070325400';
DELETE FROM tb_inventaire WHERE codearticle='0070325400';
DELETE FROM tb_stock WHERE codearticle='0070325400';
DELETE FROM tb_article WHERE idarticle=3254;
DELETE FROM tb_unite WHERE idunite=4276 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4276) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4276);
COMMIT;

-- IdArticle=3253 , Designation=AIGLE D OR AMPINGA C P44 , Unite=PAIRE , IdUnite=4275 , CodeArticle=0070325300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3253 AND idunite=4275;
DELETE FROM tb_log_stock WHERE codearticle='0070325300';
DELETE FROM tb_inventaire WHERE codearticle='0070325300';
DELETE FROM tb_stock WHERE codearticle='0070325300';
DELETE FROM tb_article WHERE idarticle=3253;
DELETE FROM tb_unite WHERE idunite=4275 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4275) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4275);
COMMIT;

-- IdArticle=3252 , Designation=AIGLE D OR AMPINGA C P45 , Unite=PAIRE , IdUnite=4274 , CodeArticle=0070325200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3252 AND idunite=4274;
DELETE FROM tb_log_stock WHERE codearticle='0070325200';
DELETE FROM tb_inventaire WHERE codearticle='0070325200';
DELETE FROM tb_stock WHERE codearticle='0070325200';
DELETE FROM tb_article WHERE idarticle=3252;
DELETE FROM tb_unite WHERE idunite=4274 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4274) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4274);
COMMIT;

-- IdArticle=1919 , Designation=AIGLE D OR ANKOAY-FOM P35 , Unite=PAIRE , IdUnite=2577 , CodeArticle=0070191900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1919 AND idunite=2577;
DELETE FROM tb_log_stock WHERE codearticle='0070191900';
DELETE FROM tb_inventaire WHERE codearticle='0070191900';
DELETE FROM tb_stock WHERE codearticle='0070191900';
DELETE FROM tb_article WHERE idarticle=1919;
DELETE FROM tb_unite WHERE idunite=2577 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2577) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2577);
COMMIT;

-- IdArticle=2201 , Designation=AIGLE D OR ANKOAY-FOM P36 , Unite=PAIRE , IdUnite=2934 , CodeArticle=0070220100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2201 AND idunite=2934;
DELETE FROM tb_log_stock WHERE codearticle='0070220100';
DELETE FROM tb_inventaire WHERE codearticle='0070220100';
DELETE FROM tb_stock WHERE codearticle='0070220100';
DELETE FROM tb_article WHERE idarticle=2201;
DELETE FROM tb_unite WHERE idunite=2934 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2934) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2934);
COMMIT;

-- IdArticle=1916 , Designation=AIGLE D OR ANKOAY-FOM P37 , Unite=PAIRE , IdUnite=2574 , CodeArticle=0070191600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1916 AND idunite=2574;
DELETE FROM tb_log_stock WHERE codearticle='0070191600';
DELETE FROM tb_inventaire WHERE codearticle='0070191600';
DELETE FROM tb_stock WHERE codearticle='0070191600';
DELETE FROM tb_article WHERE idarticle=1916;
DELETE FROM tb_unite WHERE idunite=2574 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2574) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2574);
COMMIT;

-- IdArticle=1917 , Designation=AIGLE D OR ANKOAY-FOM P38 , Unite=PAIRE , IdUnite=2575 , CodeArticle=0070191700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1917 AND idunite=2575;
DELETE FROM tb_log_stock WHERE codearticle='0070191700';
DELETE FROM tb_inventaire WHERE codearticle='0070191700';
DELETE FROM tb_stock WHERE codearticle='0070191700';
DELETE FROM tb_article WHERE idarticle=1917;
DELETE FROM tb_unite WHERE idunite=2575 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2575) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2575);
COMMIT;

-- IdArticle=1918 , Designation=AIGLE D OR ANKOAY-FOM P39 , Unite=PAIRE , IdUnite=2576 , CodeArticle=0070191800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1918 AND idunite=2576;
DELETE FROM tb_log_stock WHERE codearticle='0070191800';
DELETE FROM tb_inventaire WHERE codearticle='0070191800';
DELETE FROM tb_stock WHERE codearticle='0070191800';
DELETE FROM tb_article WHERE idarticle=1918;
DELETE FROM tb_unite WHERE idunite=2576 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2576) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2576);
COMMIT;

-- IdArticle=1924 , Designation=AIGLE D OR ANKOAY-FOM P40 , Unite=PAIRE , IdUnite=2582 , CodeArticle=0070192400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1924 AND idunite=2582;
DELETE FROM tb_log_stock WHERE codearticle='0070192400';
DELETE FROM tb_inventaire WHERE codearticle='0070192400';
DELETE FROM tb_stock WHERE codearticle='0070192400';
DELETE FROM tb_article WHERE idarticle=1924;
DELETE FROM tb_unite WHERE idunite=2582 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2582) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2582);
COMMIT;

-- IdArticle=1915 , Designation=AIGLE D OR ANKOAY-FOM P41 , Unite=PAIRE , IdUnite=2573 , CodeArticle=0070191500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1915 AND idunite=2573;
DELETE FROM tb_log_stock WHERE codearticle='0070191500';
DELETE FROM tb_inventaire WHERE codearticle='0070191500';
DELETE FROM tb_stock WHERE codearticle='0070191500';
DELETE FROM tb_article WHERE idarticle=1915;
DELETE FROM tb_unite WHERE idunite=2573 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2573) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2573);
COMMIT;

-- IdArticle=2988 , Designation=AIGLE D OR ARINALA-MAR P39 , Unite=PAIRE , IdUnite=3918 , CodeArticle=0070298800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2988 AND idunite=3918;
DELETE FROM tb_log_stock WHERE codearticle='0070298800';
DELETE FROM tb_inventaire WHERE codearticle='0070298800';
DELETE FROM tb_stock WHERE codearticle='0070298800';
DELETE FROM tb_article WHERE idarticle=2988;
DELETE FROM tb_unite WHERE idunite=3918 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3918) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3918);
COMMIT;

-- IdArticle=2989 , Designation=AIGLE D OR ARINALA-MAR P40 , Unite=PAIRE , IdUnite=3919 , CodeArticle=0070298900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2989 AND idunite=3919;
DELETE FROM tb_log_stock WHERE codearticle='0070298900';
DELETE FROM tb_inventaire WHERE codearticle='0070298900';
DELETE FROM tb_stock WHERE codearticle='0070298900';
DELETE FROM tb_article WHERE idarticle=2989;
DELETE FROM tb_unite WHERE idunite=3919 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3919) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3919);
COMMIT;

-- IdArticle=2991 , Designation=AIGLE D OR ARINALA-MAR P41 , Unite=PAIRE , IdUnite=3921 , CodeArticle=0070299100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2991 AND idunite=3921;
DELETE FROM tb_log_stock WHERE codearticle='0070299100';
DELETE FROM tb_inventaire WHERE codearticle='0070299100';
DELETE FROM tb_stock WHERE codearticle='0070299100';
DELETE FROM tb_article WHERE idarticle=2991;
DELETE FROM tb_unite WHERE idunite=3921 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3921) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3921);
COMMIT;

-- IdArticle=2992 , Designation=AIGLE D OR ARINALA-MAR P42 , Unite=PAIRE , IdUnite=3922 , CodeArticle=0070299200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2992 AND idunite=3922;
DELETE FROM tb_log_stock WHERE codearticle='0070299200';
DELETE FROM tb_inventaire WHERE codearticle='0070299200';
DELETE FROM tb_stock WHERE codearticle='0070299200';
DELETE FROM tb_article WHERE idarticle=2992;
DELETE FROM tb_unite WHERE idunite=3922 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3922) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3922);
COMMIT;

-- IdArticle=2993 , Designation=AIGLE D OR ARINALA-MAR P43 , Unite=PAIRE , IdUnite=3923 , CodeArticle=0070299300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2993 AND idunite=3923;
DELETE FROM tb_log_stock WHERE codearticle='0070299300';
DELETE FROM tb_inventaire WHERE codearticle='0070299300';
DELETE FROM tb_stock WHERE codearticle='0070299300';
DELETE FROM tb_article WHERE idarticle=2993;
DELETE FROM tb_unite WHERE idunite=3923 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3923) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3923);
COMMIT;

-- IdArticle=2994 , Designation=AIGLE D OR ARINALA-MAR P44 , Unite=PAIRE , IdUnite=3924 , CodeArticle=0070299400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2994 AND idunite=3924;
DELETE FROM tb_log_stock WHERE codearticle='0070299400';
DELETE FROM tb_inventaire WHERE codearticle='0070299400';
DELETE FROM tb_stock WHERE codearticle='0070299400';
DELETE FROM tb_article WHERE idarticle=2994;
DELETE FROM tb_unite WHERE idunite=3924 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3924) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3924);
COMMIT;

-- IdArticle=2990 , Designation=AIGLE D OR ARINALA-MAR P45 , Unite=PAIRE , IdUnite=3920 , CodeArticle=0070299000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2990 AND idunite=3920;
DELETE FROM tb_log_stock WHERE codearticle='0070299000';
DELETE FROM tb_inventaire WHERE codearticle='0070299000';
DELETE FROM tb_stock WHERE codearticle='0070299000';
DELETE FROM tb_article WHERE idarticle=2990;
DELETE FROM tb_unite WHERE idunite=3920 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3920) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3920);
COMMIT;

-- IdArticle=2999 , Designation=AIGLE D OR ARIVELO-MAR P39 , Unite=PAIRE , IdUnite=3929 , CodeArticle=0070299900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2999 AND idunite=3929;
DELETE FROM tb_log_stock WHERE codearticle='0070299900';
DELETE FROM tb_inventaire WHERE codearticle='0070299900';
DELETE FROM tb_stock WHERE codearticle='0070299900';
DELETE FROM tb_article WHERE idarticle=2999;
DELETE FROM tb_unite WHERE idunite=3929 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3929) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3929);
COMMIT;

-- IdArticle=2995 , Designation=AIGLE D OR ARIVELO-MAR P40 , Unite=PAIRE , IdUnite=3925 , CodeArticle=0070299500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2995 AND idunite=3925;
DELETE FROM tb_log_stock WHERE codearticle='0070299500';
DELETE FROM tb_inventaire WHERE codearticle='0070299500';
DELETE FROM tb_stock WHERE codearticle='0070299500';
DELETE FROM tb_article WHERE idarticle=2995;
DELETE FROM tb_unite WHERE idunite=3925 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3925) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3925);
COMMIT;

-- IdArticle=2997 , Designation=AIGLE D OR ARIVELO-MAR P41 , Unite=PAIRE , IdUnite=3927 , CodeArticle=0070299700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2997 AND idunite=3927;
DELETE FROM tb_log_stock WHERE codearticle='0070299700';
DELETE FROM tb_inventaire WHERE codearticle='0070299700';
DELETE FROM tb_stock WHERE codearticle='0070299700';
DELETE FROM tb_article WHERE idarticle=2997;
DELETE FROM tb_unite WHERE idunite=3927 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3927) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3927);
COMMIT;

-- IdArticle=2998 , Designation=AIGLE D OR ARIVELO-MAR P42 , Unite=PAIRE , IdUnite=3928 , CodeArticle=0070299800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2998 AND idunite=3928;
DELETE FROM tb_log_stock WHERE codearticle='0070299800';
DELETE FROM tb_inventaire WHERE codearticle='0070299800';
DELETE FROM tb_stock WHERE codearticle='0070299800';
DELETE FROM tb_article WHERE idarticle=2998;
DELETE FROM tb_unite WHERE idunite=3928 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3928) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3928);
COMMIT;

-- IdArticle=3000 , Designation=AIGLE D OR ARIVELO-MAR P43 , Unite=PAIRE , IdUnite=3930 , CodeArticle=0070300000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3000 AND idunite=3930;
DELETE FROM tb_log_stock WHERE codearticle='0070300000';
DELETE FROM tb_inventaire WHERE codearticle='0070300000';
DELETE FROM tb_stock WHERE codearticle='0070300000';
DELETE FROM tb_article WHERE idarticle=3000;
DELETE FROM tb_unite WHERE idunite=3930 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3930) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3930);
COMMIT;

-- IdArticle=2421 , Designation=AIGLE D OR AVO NOIR P28 , Unite=PAIRE , IdUnite=3195 , CodeArticle=0070242100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2421 AND idunite=3195;
DELETE FROM tb_log_stock WHERE codearticle='0070242100';
DELETE FROM tb_inventaire WHERE codearticle='0070242100';
DELETE FROM tb_stock WHERE codearticle='0070242100';
DELETE FROM tb_article WHERE idarticle=2421;
DELETE FROM tb_unite WHERE idunite=3195 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3195) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3195);
COMMIT;

-- IdArticle=2422 , Designation=AIGLE D OR AVO NOIR P29 , Unite=PAIRE , IdUnite=3196 , CodeArticle=0070242200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2422 AND idunite=3196;
DELETE FROM tb_log_stock WHERE codearticle='0070242200';
DELETE FROM tb_inventaire WHERE codearticle='0070242200';
DELETE FROM tb_stock WHERE codearticle='0070242200';
DELETE FROM tb_article WHERE idarticle=2422;
DELETE FROM tb_unite WHERE idunite=3196 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3196) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3196);
COMMIT;

-- IdArticle=2423 , Designation=AIGLE D OR AVO NOIR P30 , Unite=PAIRE , IdUnite=3197 , CodeArticle=0070242300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2423 AND idunite=3197;
DELETE FROM tb_log_stock WHERE codearticle='0070242300';
DELETE FROM tb_inventaire WHERE codearticle='0070242300';
DELETE FROM tb_stock WHERE codearticle='0070242300';
DELETE FROM tb_article WHERE idarticle=2423;
DELETE FROM tb_unite WHERE idunite=3197 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3197) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3197);
COMMIT;

-- IdArticle=2424 , Designation=AIGLE D OR AVO NOIR P31 , Unite=PAIRE , IdUnite=3198 , CodeArticle=0070242400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2424 AND idunite=3198;
DELETE FROM tb_log_stock WHERE codearticle='0070242400';
DELETE FROM tb_inventaire WHERE codearticle='0070242400';
DELETE FROM tb_stock WHERE codearticle='0070242400';
DELETE FROM tb_article WHERE idarticle=2424;
DELETE FROM tb_unite WHERE idunite=3198 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3198) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3198);
COMMIT;

-- IdArticle=2425 , Designation=AIGLE D OR AVO NOIR P32 , Unite=PAIRE , IdUnite=3199 , CodeArticle=0070242500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2425 AND idunite=3199;
DELETE FROM tb_log_stock WHERE codearticle='0070242500';
DELETE FROM tb_inventaire WHERE codearticle='0070242500';
DELETE FROM tb_stock WHERE codearticle='0070242500';
DELETE FROM tb_article WHERE idarticle=2425;
DELETE FROM tb_unite WHERE idunite=3199 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3199) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3199);
COMMIT;

-- IdArticle=2432 , Designation=AIGLE D OR AVO NOIR P33 , Unite=PAIRE , IdUnite=3212 , CodeArticle=0070243200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2432 AND idunite=3212;
DELETE FROM tb_log_stock WHERE codearticle='0070243200';
DELETE FROM tb_inventaire WHERE codearticle='0070243200';
DELETE FROM tb_stock WHERE codearticle='0070243200';
DELETE FROM tb_article WHERE idarticle=2432;
DELETE FROM tb_unite WHERE idunite=3212 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3212) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3212);
COMMIT;

-- IdArticle=2433 , Designation=AIGLE D OR AVO NOIR P34 , Unite=PAIRE , IdUnite=3213 , CodeArticle=0070243300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2433 AND idunite=3213;
DELETE FROM tb_log_stock WHERE codearticle='0070243300';
DELETE FROM tb_inventaire WHERE codearticle='0070243300';
DELETE FROM tb_stock WHERE codearticle='0070243300';
DELETE FROM tb_article WHERE idarticle=2433;
DELETE FROM tb_unite WHERE idunite=3213 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3213) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3213);
COMMIT;

-- IdArticle=2950 , Designation=AIGLE D OR AVOLAZA MRN P28 , Unite=PAIRE , IdUnite=3880 , CodeArticle=0070295000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2950 AND idunite=3880;
DELETE FROM tb_log_stock WHERE codearticle='0070295000';
DELETE FROM tb_inventaire WHERE codearticle='0070295000';
DELETE FROM tb_stock WHERE codearticle='0070295000';
DELETE FROM tb_article WHERE idarticle=2950;
DELETE FROM tb_unite WHERE idunite=3880 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3880) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3880);
COMMIT;

-- IdArticle=2947 , Designation=AIGLE D OR AVOLAZA MRN P29 , Unite=PAIRE , IdUnite=3877 , CodeArticle=0070294700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2947 AND idunite=3877;
DELETE FROM tb_log_stock WHERE codearticle='0070294700';
DELETE FROM tb_inventaire WHERE codearticle='0070294700';
DELETE FROM tb_stock WHERE codearticle='0070294700';
DELETE FROM tb_article WHERE idarticle=2947;
DELETE FROM tb_unite WHERE idunite=3877 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3877) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3877);
COMMIT;

-- IdArticle=2946 , Designation=AIGLE D OR AVOLAZA MRN P30 , Unite=PAIRE , IdUnite=3876 , CodeArticle=0070294600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2946 AND idunite=3876;
DELETE FROM tb_log_stock WHERE codearticle='0070294600';
DELETE FROM tb_inventaire WHERE codearticle='0070294600';
DELETE FROM tb_stock WHERE codearticle='0070294600';
DELETE FROM tb_article WHERE idarticle=2946;
DELETE FROM tb_unite WHERE idunite=3876 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3876) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3876);
COMMIT;

-- IdArticle=2948 , Designation=AIGLE D OR AVOLAZA MRN P31 , Unite=PAIRE , IdUnite=3878 , CodeArticle=0070294800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2948 AND idunite=3878;
DELETE FROM tb_log_stock WHERE codearticle='0070294800';
DELETE FROM tb_inventaire WHERE codearticle='0070294800';
DELETE FROM tb_stock WHERE codearticle='0070294800';
DELETE FROM tb_article WHERE idarticle=2948;
DELETE FROM tb_unite WHERE idunite=3878 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3878) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3878);
COMMIT;

-- IdArticle=2951 , Designation=AIGLE D OR AVOLAZA MRN P32 , Unite=PAIRE , IdUnite=3881 , CodeArticle=0070295100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2951 AND idunite=3881;
DELETE FROM tb_log_stock WHERE codearticle='0070295100';
DELETE FROM tb_inventaire WHERE codearticle='0070295100';
DELETE FROM tb_stock WHERE codearticle='0070295100';
DELETE FROM tb_article WHERE idarticle=2951;
DELETE FROM tb_unite WHERE idunite=3881 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3881) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3881);
COMMIT;

-- IdArticle=2949 , Designation=AIGLE D OR AVOLAZA MRN P33 , Unite=PAIRE , IdUnite=3879 , CodeArticle=0070294900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2949 AND idunite=3879;
DELETE FROM tb_log_stock WHERE codearticle='0070294900';
DELETE FROM tb_inventaire WHERE codearticle='0070294900';
DELETE FROM tb_stock WHERE codearticle='0070294900';
DELETE FROM tb_article WHERE idarticle=2949;
DELETE FROM tb_unite WHERE idunite=3879 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3879) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3879);
COMMIT;

-- IdArticle=2952 , Designation=AIGLE D OR AVOLAZA MRN P34 , Unite=PAIRE , IdUnite=3882 , CodeArticle=0070295200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2952 AND idunite=3882;
DELETE FROM tb_log_stock WHERE codearticle='0070295200';
DELETE FROM tb_inventaire WHERE codearticle='0070295200';
DELETE FROM tb_stock WHERE codearticle='0070295200';
DELETE FROM tb_article WHERE idarticle=2952;
DELETE FROM tb_unite WHERE idunite=3882 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3882) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3882);
COMMIT;

-- IdArticle=2175 , Designation=AIGLE D OR AVOLAZA NOIR P39 , Unite=PAIRE , IdUnite=2902 , CodeArticle=0070217500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2175 AND idunite=2902;
DELETE FROM tb_log_stock WHERE codearticle='0070217500';
DELETE FROM tb_inventaire WHERE codearticle='0070217500';
DELETE FROM tb_stock WHERE codearticle='0070217500';
DELETE FROM tb_article WHERE idarticle=2175;
DELETE FROM tb_unite WHERE idunite=2902 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2902) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2902);
COMMIT;

-- IdArticle=2007 , Designation=AIGLE D OR AVOLAZA NOIR P40 , Unite=PAIRE , IdUnite=2703 , CodeArticle=0070200700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2007 AND idunite=2703;
DELETE FROM tb_log_stock WHERE codearticle='0070200700';
DELETE FROM tb_inventaire WHERE codearticle='0070200700';
DELETE FROM tb_stock WHERE codearticle='0070200700';
DELETE FROM tb_article WHERE idarticle=2007;
DELETE FROM tb_unite WHERE idunite=2703 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2703) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2703);
COMMIT;

-- IdArticle=1878 , Designation=AIGLE D OR AVOLAZA NOIR P41 , Unite=PAIRE , IdUnite=2522 , CodeArticle=0070187800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1878 AND idunite=2522;
DELETE FROM tb_log_stock WHERE codearticle='0070187800';
DELETE FROM tb_inventaire WHERE codearticle='0070187800';
DELETE FROM tb_stock WHERE codearticle='0070187800';
DELETE FROM tb_article WHERE idarticle=1878;
DELETE FROM tb_unite WHERE idunite=2522 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2522) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2522);
COMMIT;

-- IdArticle=2005 , Designation=AIGLE D OR AVOLAZA NOIR P42 , Unite=PAIRE , IdUnite=2701 , CodeArticle=0070200500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2005 AND idunite=2701;
DELETE FROM tb_log_stock WHERE codearticle='0070200500';
DELETE FROM tb_inventaire WHERE codearticle='0070200500';
DELETE FROM tb_stock WHERE codearticle='0070200500';
DELETE FROM tb_article WHERE idarticle=2005;
DELETE FROM tb_unite WHERE idunite=2701 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2701) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2701);
COMMIT;

-- IdArticle=2006 , Designation=AIGLE D OR AVOLAZA NOIR P43 , Unite=PAIRE , IdUnite=2702 , CodeArticle=0070200600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2006 AND idunite=2702;
DELETE FROM tb_log_stock WHERE codearticle='0070200600';
DELETE FROM tb_inventaire WHERE codearticle='0070200600';
DELETE FROM tb_stock WHERE codearticle='0070200600';
DELETE FROM tb_article WHERE idarticle=2006;
DELETE FROM tb_unite WHERE idunite=2702 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2702) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2702);
COMMIT;

-- IdArticle=1911 , Designation=AIGLE D OR DIHY , Unite=PAIRE , IdUnite=2569 , CodeArticle=0070191100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1911 AND idunite=2569;
DELETE FROM tb_log_stock WHERE codearticle='0070191100';
DELETE FROM tb_inventaire WHERE codearticle='0070191100';
DELETE FROM tb_stock WHERE codearticle='0070191100';
DELETE FROM tb_article WHERE idarticle=1911;
DELETE FROM tb_unite WHERE idunite=2569 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2569) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2569);
COMMIT;

-- IdArticle=1912 , Designation=AIGLE D OR DIHY , Unite=PAIRE , IdUnite=2570 , CodeArticle=0070191200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1912 AND idunite=2570;
DELETE FROM tb_log_stock WHERE codearticle='0070191200';
DELETE FROM tb_inventaire WHERE codearticle='0070191200';
DELETE FROM tb_stock WHERE codearticle='0070191200';
DELETE FROM tb_article WHERE idarticle=1912;
DELETE FROM tb_unite WHERE idunite=2570 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2570) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2570);
COMMIT;

-- IdArticle=1913 , Designation=AIGLE D OR DIHY , Unite=PAIRE , IdUnite=2571 , CodeArticle=0070191300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1913 AND idunite=2571;
DELETE FROM tb_log_stock WHERE codearticle='0070191300';
DELETE FROM tb_inventaire WHERE codearticle='0070191300';
DELETE FROM tb_stock WHERE codearticle='0070191300';
DELETE FROM tb_article WHERE idarticle=1913;
DELETE FROM tb_unite WHERE idunite=2571 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2571) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2571);
COMMIT;

-- IdArticle=1914 , Designation=AIGLE D OR DIHY , Unite=PAIRE , IdUnite=2572 , CodeArticle=0070191400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1914 AND idunite=2572;
DELETE FROM tb_log_stock WHERE codearticle='0070191400';
DELETE FROM tb_inventaire WHERE codearticle='0070191400';
DELETE FROM tb_stock WHERE codearticle='0070191400';
DELETE FROM tb_article WHERE idarticle=1914;
DELETE FROM tb_unite WHERE idunite=2572 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2572) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2572);
COMMIT;

-- IdArticle=1911 , Designation=AIGLE D OR DIHY-MARRON P35 , Unite=PAIRE , IdUnite=2569 , CodeArticle=0070191100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1911 AND idunite=2569;
DELETE FROM tb_log_stock WHERE codearticle='0070191100';
DELETE FROM tb_inventaire WHERE codearticle='0070191100';
DELETE FROM tb_stock WHERE codearticle='0070191100';
DELETE FROM tb_article WHERE idarticle=1911;
DELETE FROM tb_unite WHERE idunite=2569 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2569) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2569);
COMMIT;

-- IdArticle=1912 , Designation=AIGLE D OR DIHY-MARRON P37 , Unite=PAIRE , IdUnite=2570 , CodeArticle=0070191200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1912 AND idunite=2570;
DELETE FROM tb_log_stock WHERE codearticle='0070191200';
DELETE FROM tb_inventaire WHERE codearticle='0070191200';
DELETE FROM tb_stock WHERE codearticle='0070191200';
DELETE FROM tb_article WHERE idarticle=1912;
DELETE FROM tb_unite WHERE idunite=2570 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2570) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2570);
COMMIT;

-- IdArticle=1913 , Designation=AIGLE D OR DIHY-MARRON P38 , Unite=PAIRE , IdUnite=2571 , CodeArticle=0070191300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1913 AND idunite=2571;
DELETE FROM tb_log_stock WHERE codearticle='0070191300';
DELETE FROM tb_inventaire WHERE codearticle='0070191300';
DELETE FROM tb_stock WHERE codearticle='0070191300';
DELETE FROM tb_article WHERE idarticle=1913;
DELETE FROM tb_unite WHERE idunite=2571 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2571) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2571);
COMMIT;

-- IdArticle=1914 , Designation=AIGLE D OR DIHY-MARRON P39 , Unite=PAIRE , IdUnite=2572 , CodeArticle=0070191400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1914 AND idunite=2572;
DELETE FROM tb_log_stock WHERE codearticle='0070191400';
DELETE FROM tb_inventaire WHERE codearticle='0070191400';
DELETE FROM tb_stock WHERE codearticle='0070191400';
DELETE FROM tb_article WHERE idarticle=1914;
DELETE FROM tb_unite WHERE idunite=2572 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2572) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2572);
COMMIT;

-- IdArticle=2312 , Designation=AIGLE D OR ELATRA NOIR P39 , Unite=PAIRE , IdUnite=3060 , CodeArticle=0070231200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2312 AND idunite=3060;
DELETE FROM tb_log_stock WHERE codearticle='0070231200';
DELETE FROM tb_inventaire WHERE codearticle='0070231200';
DELETE FROM tb_stock WHERE codearticle='0070231200';
DELETE FROM tb_article WHERE idarticle=2312;
DELETE FROM tb_unite WHERE idunite=3060 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3060) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3060);
COMMIT;

-- IdArticle=2313 , Designation=AIGLE D OR ELATRA NOIR P40 , Unite=PAIRE , IdUnite=3061 , CodeArticle=0070231300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2313 AND idunite=3061;
DELETE FROM tb_log_stock WHERE codearticle='0070231300';
DELETE FROM tb_inventaire WHERE codearticle='0070231300';
DELETE FROM tb_stock WHERE codearticle='0070231300';
DELETE FROM tb_article WHERE idarticle=2313;
DELETE FROM tb_unite WHERE idunite=3061 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3061) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3061);
COMMIT;

-- IdArticle=2314 , Designation=AIGLE D OR ELATRA NOIR P41 , Unite=PAIRE , IdUnite=3062 , CodeArticle=0070231400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2314 AND idunite=3062;
DELETE FROM tb_log_stock WHERE codearticle='0070231400';
DELETE FROM tb_inventaire WHERE codearticle='0070231400';
DELETE FROM tb_stock WHERE codearticle='0070231400';
DELETE FROM tb_article WHERE idarticle=2314;
DELETE FROM tb_unite WHERE idunite=3062 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3062) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3062);
COMMIT;

-- IdArticle=2315 , Designation=AIGLE D OR ELATRA NOIR P42 , Unite=PAIRE , IdUnite=3063 , CodeArticle=0070231500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2315 AND idunite=3063;
DELETE FROM tb_log_stock WHERE codearticle='0070231500';
DELETE FROM tb_inventaire WHERE codearticle='0070231500';
DELETE FROM tb_stock WHERE codearticle='0070231500';
DELETE FROM tb_article WHERE idarticle=2315;
DELETE FROM tb_unite WHERE idunite=3063 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3063) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3063);
COMMIT;

-- IdArticle=2316 , Designation=AIGLE D OR ELATRA NOIR P43 , Unite=PAIRE , IdUnite=3064 , CodeArticle=0070231600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2316 AND idunite=3064;
DELETE FROM tb_log_stock WHERE codearticle='0070231600';
DELETE FROM tb_inventaire WHERE codearticle='0070231600';
DELETE FROM tb_stock WHERE codearticle='0070231600';
DELETE FROM tb_article WHERE idarticle=2316;
DELETE FROM tb_unite WHERE idunite=3064 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3064) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3064);
COMMIT;

-- IdArticle=3262 , Designation=AIGLE D OR FANOVA C P40 , Unite=PAIRE , IdUnite=4284 , CodeArticle=0070326200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3262 AND idunite=4284;
DELETE FROM tb_log_stock WHERE codearticle='0070326200';
DELETE FROM tb_inventaire WHERE codearticle='0070326200';
DELETE FROM tb_stock WHERE codearticle='0070326200';
DELETE FROM tb_article WHERE idarticle=3262;
DELETE FROM tb_unite WHERE idunite=4284 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4284) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4284);
COMMIT;

-- IdArticle=3261 , Designation=AIGLE D OR FANOVA C P41 , Unite=PAIRE , IdUnite=4283 , CodeArticle=0070326100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3261 AND idunite=4283;
DELETE FROM tb_log_stock WHERE codearticle='0070326100';
DELETE FROM tb_inventaire WHERE codearticle='0070326100';
DELETE FROM tb_stock WHERE codearticle='0070326100';
DELETE FROM tb_article WHERE idarticle=3261;
DELETE FROM tb_unite WHERE idunite=4283 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4283) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4283);
COMMIT;

-- IdArticle=1877 , Designation=AIGLE D OR FEHINY , Unite=PAIRE , IdUnite=2521 , CodeArticle=0070187700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1877 AND idunite=2521;
DELETE FROM tb_log_stock WHERE codearticle='0070187700';
DELETE FROM tb_inventaire WHERE codearticle='0070187700';
DELETE FROM tb_stock WHERE codearticle='0070187700';
DELETE FROM tb_article WHERE idarticle=1877;
DELETE FROM tb_unite WHERE idunite=2521 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2521) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2521);
COMMIT;

-- IdArticle=2555 , Designation=AIGLE D OR FOOTLOOSE BLANC P35 , Unite=PAIRE , IdUnite=3370 , CodeArticle=0070255500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2555 AND idunite=3370;
DELETE FROM tb_log_stock WHERE codearticle='0070255500';
DELETE FROM tb_inventaire WHERE codearticle='0070255500';
DELETE FROM tb_stock WHERE codearticle='0070255500';
DELETE FROM tb_article WHERE idarticle=2555;
DELETE FROM tb_unite WHERE idunite=3370 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3370) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3370);
COMMIT;

-- IdArticle=2763 , Designation=AIGLE D OR FOOTLOOSE BLANC P36 , Unite=PAIRE , IdUnite=3663 , CodeArticle=0070276300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2763 AND idunite=3663;
DELETE FROM tb_log_stock WHERE codearticle='0070276300';
DELETE FROM tb_inventaire WHERE codearticle='0070276300';
DELETE FROM tb_stock WHERE codearticle='0070276300';
DELETE FROM tb_article WHERE idarticle=2763;
DELETE FROM tb_unite WHERE idunite=3663 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3663) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3663);
COMMIT;

-- IdArticle=2761 , Designation=AIGLE D OR FOOTLOOSE BLANC P38 , Unite=PAIRE , IdUnite=3661 , CodeArticle=0070276100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2761 AND idunite=3661;
DELETE FROM tb_log_stock WHERE codearticle='0070276100';
DELETE FROM tb_inventaire WHERE codearticle='0070276100';
DELETE FROM tb_stock WHERE codearticle='0070276100';
DELETE FROM tb_article WHERE idarticle=2761;
DELETE FROM tb_unite WHERE idunite=3661 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3661) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3661);
COMMIT;

-- IdArticle=2556 , Designation=AIGLE D OR FOOTLOOSE BLANC P39 , Unite=PAIRE , IdUnite=3371 , CodeArticle=0070255600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2556 AND idunite=3371;
DELETE FROM tb_log_stock WHERE codearticle='0070255600';
DELETE FROM tb_inventaire WHERE codearticle='0070255600';
DELETE FROM tb_stock WHERE codearticle='0070255600';
DELETE FROM tb_article WHERE idarticle=2556;
DELETE FROM tb_unite WHERE idunite=3371 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3371) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3371);
COMMIT;

-- IdArticle=2762 , Designation=AIGLE D OR FOOTLOOSE BLANC P40 , Unite=PAIRE , IdUnite=3662 , CodeArticle=0070276200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2762 AND idunite=3662;
DELETE FROM tb_log_stock WHERE codearticle='0070276200';
DELETE FROM tb_inventaire WHERE codearticle='0070276200';
DELETE FROM tb_stock WHERE codearticle='0070276200';
DELETE FROM tb_article WHERE idarticle=2762;
DELETE FROM tb_unite WHERE idunite=3662 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3662) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3662);
COMMIT;

-- IdArticle=2574 , Designation=AIGLE D OR GASIKARA_MAR P37 , Unite=PAIRE , IdUnite=3389 , CodeArticle=0070257400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2574 AND idunite=3389;
DELETE FROM tb_log_stock WHERE codearticle='0070257400';
DELETE FROM tb_inventaire WHERE codearticle='0070257400';
DELETE FROM tb_stock WHERE codearticle='0070257400';
DELETE FROM tb_article WHERE idarticle=2574;
DELETE FROM tb_unite WHERE idunite=3389 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3389) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3389);
COMMIT;

-- IdArticle=1876 , Designation=AIGLE D OR GASIKARA_MAR P38 , Unite=PAIRE , IdUnite=2520 , CodeArticle=0070187600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1876 AND idunite=2520;
DELETE FROM tb_log_stock WHERE codearticle='0070187600';
DELETE FROM tb_inventaire WHERE codearticle='0070187600';
DELETE FROM tb_stock WHERE codearticle='0070187600';
DELETE FROM tb_article WHERE idarticle=1876;
DELETE FROM tb_unite WHERE idunite=2520 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2520) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2520);
COMMIT;

-- IdArticle=2262 , Designation=AIGLE D OR GASIKARA_MAR P39 , Unite=PAIRE , IdUnite=3005 , CodeArticle=0070226200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2262 AND idunite=3005;
DELETE FROM tb_log_stock WHERE codearticle='0070226200';
DELETE FROM tb_inventaire WHERE codearticle='0070226200';
DELETE FROM tb_stock WHERE codearticle='0070226200';
DELETE FROM tb_article WHERE idarticle=2262;
DELETE FROM tb_unite WHERE idunite=3005 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3005) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3005);
COMMIT;

-- IdArticle=2263 , Designation=AIGLE D OR GASIKARA_MAR P40 , Unite=PAIRE , IdUnite=3006 , CodeArticle=0070226300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2263 AND idunite=3006;
DELETE FROM tb_log_stock WHERE codearticle='0070226300';
DELETE FROM tb_inventaire WHERE codearticle='0070226300';
DELETE FROM tb_stock WHERE codearticle='0070226300';
DELETE FROM tb_article WHERE idarticle=2263;
DELETE FROM tb_unite WHERE idunite=3006 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3006) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3006);
COMMIT;

-- IdArticle=2264 , Designation=AIGLE D OR GASIKARA_MAR P41 , Unite=PAIRE , IdUnite=3007 , CodeArticle=0070226400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2264 AND idunite=3007;
DELETE FROM tb_log_stock WHERE codearticle='0070226400';
DELETE FROM tb_inventaire WHERE codearticle='0070226400';
DELETE FROM tb_stock WHERE codearticle='0070226400';
DELETE FROM tb_article WHERE idarticle=2264;
DELETE FROM tb_unite WHERE idunite=3007 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3007) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3007);
COMMIT;

-- IdArticle=2265 , Designation=AIGLE D OR GASIKARA_MAR P42 , Unite=PAIRE , IdUnite=3008 , CodeArticle=0070226500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2265 AND idunite=3008;
DELETE FROM tb_log_stock WHERE codearticle='0070226500';
DELETE FROM tb_inventaire WHERE codearticle='0070226500';
DELETE FROM tb_stock WHERE codearticle='0070226500';
DELETE FROM tb_article WHERE idarticle=2265;
DELETE FROM tb_unite WHERE idunite=3008 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3008) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3008);
COMMIT;

-- IdArticle=2575 , Designation=AIGLE D OR GASIKARA_MAR P43 , Unite=PAIRE , IdUnite=3390 , CodeArticle=0070257500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2575 AND idunite=3390;
DELETE FROM tb_log_stock WHERE codearticle='0070257500';
DELETE FROM tb_inventaire WHERE codearticle='0070257500';
DELETE FROM tb_stock WHERE codearticle='0070257500';
DELETE FROM tb_article WHERE idarticle=2575;
DELETE FROM tb_unite WHERE idunite=3390 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3390) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3390);
COMMIT;

-- IdArticle=2891 , Designation=AIGLE D OR GASIKARA_MAR P44 , Unite=PAIRE , IdUnite=3821 , CodeArticle=0070289100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2891 AND idunite=3821;
DELETE FROM tb_log_stock WHERE codearticle='0070289100';
DELETE FROM tb_inventaire WHERE codearticle='0070289100';
DELETE FROM tb_stock WHERE codearticle='0070289100';
DELETE FROM tb_article WHERE idarticle=2891;
DELETE FROM tb_unite WHERE idunite=3821 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3821) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3821);
COMMIT;

-- IdArticle=2576 , Designation=AIGLE D OR GASIKARA_NOIR P39 , Unite=PAIRE , IdUnite=3391 , CodeArticle=0070257600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2576 AND idunite=3391;
DELETE FROM tb_log_stock WHERE codearticle='0070257600';
DELETE FROM tb_inventaire WHERE codearticle='0070257600';
DELETE FROM tb_stock WHERE codearticle='0070257600';
DELETE FROM tb_article WHERE idarticle=2576;
DELETE FROM tb_unite WHERE idunite=3391 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3391) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3391);
COMMIT;

-- IdArticle=2577 , Designation=AIGLE D OR GASIKARA_NOIR P40 , Unite=PAIRE , IdUnite=3392 , CodeArticle=0070257700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2577 AND idunite=3392;
DELETE FROM tb_log_stock WHERE codearticle='0070257700';
DELETE FROM tb_inventaire WHERE codearticle='0070257700';
DELETE FROM tb_stock WHERE codearticle='0070257700';
DELETE FROM tb_article WHERE idarticle=2577;
DELETE FROM tb_unite WHERE idunite=3392 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3392) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3392);
COMMIT;

-- IdArticle=2578 , Designation=AIGLE D OR GASIKARA_NOIR P41 , Unite=PAIRE , IdUnite=3393 , CodeArticle=0070257800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2578 AND idunite=3393;
DELETE FROM tb_log_stock WHERE codearticle='0070257800';
DELETE FROM tb_inventaire WHERE codearticle='0070257800';
DELETE FROM tb_stock WHERE codearticle='0070257800';
DELETE FROM tb_article WHERE idarticle=2578;
DELETE FROM tb_unite WHERE idunite=3393 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3393) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3393);
COMMIT;

-- IdArticle=2890 , Designation=AIGLE D OR GASIKARA_NOIR P42 , Unite=PAIRE , IdUnite=3820 , CodeArticle=0070289000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2890 AND idunite=3820;
DELETE FROM tb_log_stock WHERE codearticle='0070289000';
DELETE FROM tb_inventaire WHERE codearticle='0070289000';
DELETE FROM tb_stock WHERE codearticle='0070289000';
DELETE FROM tb_article WHERE idarticle=2890;
DELETE FROM tb_unite WHERE idunite=3820 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3820) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3820);
COMMIT;

-- IdArticle=2579 , Designation=AIGLE D OR GASIKARA_NOIR P43 , Unite=PAIRE , IdUnite=3394 , CodeArticle=0070257900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2579 AND idunite=3394;
DELETE FROM tb_log_stock WHERE codearticle='0070257900';
DELETE FROM tb_inventaire WHERE codearticle='0070257900';
DELETE FROM tb_stock WHERE codearticle='0070257900';
DELETE FROM tb_article WHERE idarticle=2579;
DELETE FROM tb_unite WHERE idunite=3394 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3394) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3394);
COMMIT;

-- IdArticle=2892 , Designation=AIGLE D OR GASIKARA_NOIR P44 , Unite=PAIRE , IdUnite=3822 , CodeArticle=0070289200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2892 AND idunite=3822;
DELETE FROM tb_log_stock WHERE codearticle='0070289200';
DELETE FROM tb_inventaire WHERE codearticle='0070289200';
DELETE FROM tb_stock WHERE codearticle='0070289200';
DELETE FROM tb_article WHERE idarticle=2892;
DELETE FROM tb_unite WHERE idunite=3822 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3822) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3822);
COMMIT;

-- IdArticle=2788 , Designation=AIGLE D OR HAJA MAR P45 , Unite=PAIRE , IdUnite=3688 , CodeArticle=0070278800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2788 AND idunite=3688;
DELETE FROM tb_log_stock WHERE codearticle='0070278800';
DELETE FROM tb_inventaire WHERE codearticle='0070278800';
DELETE FROM tb_stock WHERE codearticle='0070278800';
DELETE FROM tb_article WHERE idarticle=2788;
DELETE FROM tb_unite WHERE idunite=3688 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3688) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3688);
COMMIT;

-- IdArticle=2204 , Designation=AIGLE D OR HAJA MARRON P39 , Unite=PAIRE , IdUnite=2937 , CodeArticle=0070220400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2204 AND idunite=2937;
DELETE FROM tb_log_stock WHERE codearticle='0070220400';
DELETE FROM tb_inventaire WHERE codearticle='0070220400';
DELETE FROM tb_stock WHERE codearticle='0070220400';
DELETE FROM tb_article WHERE idarticle=2204;
DELETE FROM tb_unite WHERE idunite=2937 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2937) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2937);
COMMIT;

-- IdArticle=1870 , Designation=AIGLE D OR HAJA MARRON P40 , Unite=PAIRE , IdUnite=2514 , CodeArticle=0070187000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1870 AND idunite=2514;
DELETE FROM tb_log_stock WHERE codearticle='0070187000';
DELETE FROM tb_inventaire WHERE codearticle='0070187000';
DELETE FROM tb_stock WHERE codearticle='0070187000';
DELETE FROM tb_article WHERE idarticle=1870;
DELETE FROM tb_unite WHERE idunite=2514 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2514) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2514);
COMMIT;

-- IdArticle=1992 , Designation=AIGLE D OR HAJA MARRON P42 , Unite=PAIRE , IdUnite=2688 , CodeArticle=0070199200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1992 AND idunite=2688;
DELETE FROM tb_log_stock WHERE codearticle='0070199200';
DELETE FROM tb_inventaire WHERE codearticle='0070199200';
DELETE FROM tb_stock WHERE codearticle='0070199200';
DELETE FROM tb_article WHERE idarticle=1992;
DELETE FROM tb_unite WHERE idunite=2688 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2688) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2688);
COMMIT;

-- IdArticle=1993 , Designation=AIGLE D OR HAJA MARRON P43 , Unite=PAIRE , IdUnite=2689 , CodeArticle=0070199300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1993 AND idunite=2689;
DELETE FROM tb_log_stock WHERE codearticle='0070199300';
DELETE FROM tb_inventaire WHERE codearticle='0070199300';
DELETE FROM tb_stock WHERE codearticle='0070199300';
DELETE FROM tb_article WHERE idarticle=1993;
DELETE FROM tb_unite WHERE idunite=2689 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2689) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2689);
COMMIT;

-- IdArticle=3232 , Designation=AIGLE D OR HAJA NOIR P38 , Unite=PAIRE , IdUnite=4249 , CodeArticle=0070323200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3232 AND idunite=4249;
DELETE FROM tb_log_stock WHERE codearticle='0070323200';
DELETE FROM tb_inventaire WHERE codearticle='0070323200';
DELETE FROM tb_stock WHERE codearticle='0070323200';
DELETE FROM tb_article WHERE idarticle=3232;
DELETE FROM tb_unite WHERE idunite=4249 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4249) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4249);
COMMIT;

-- IdArticle=1994 , Designation=AIGLE D OR HAJA NOIR P40 , Unite=PAIRE , IdUnite=2690 , CodeArticle=0070199400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1994 AND idunite=2690;
DELETE FROM tb_log_stock WHERE codearticle='0070199400';
DELETE FROM tb_inventaire WHERE codearticle='0070199400';
DELETE FROM tb_stock WHERE codearticle='0070199400';
DELETE FROM tb_article WHERE idarticle=1994;
DELETE FROM tb_unite WHERE idunite=2690 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2690) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2690);
COMMIT;

-- IdArticle=1995 , Designation=AIGLE D OR HAJA NOIR P41 , Unite=PAIRE , IdUnite=2691 , CodeArticle=0070199500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1995 AND idunite=2691;
DELETE FROM tb_log_stock WHERE codearticle='0070199500';
DELETE FROM tb_inventaire WHERE codearticle='0070199500';
DELETE FROM tb_stock WHERE codearticle='0070199500';
DELETE FROM tb_article WHERE idarticle=1995;
DELETE FROM tb_unite WHERE idunite=2691 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2691) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2691);
COMMIT;

-- IdArticle=1996 , Designation=AIGLE D OR HAJA NOIR P42 , Unite=PAIRE , IdUnite=2692 , CodeArticle=0070199600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1996 AND idunite=2692;
DELETE FROM tb_log_stock WHERE codearticle='0070199600';
DELETE FROM tb_inventaire WHERE codearticle='0070199600';
DELETE FROM tb_stock WHERE codearticle='0070199600';
DELETE FROM tb_article WHERE idarticle=1996;
DELETE FROM tb_unite WHERE idunite=2692 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2692) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2692);
COMMIT;

-- IdArticle=1997 , Designation=AIGLE D OR HAJA NOIR P43 , Unite=PAIRE , IdUnite=2693 , CodeArticle=0070199700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1997 AND idunite=2693;
DELETE FROM tb_log_stock WHERE codearticle='0070199700';
DELETE FROM tb_inventaire WHERE codearticle='0070199700';
DELETE FROM tb_stock WHERE codearticle='0070199700';
DELETE FROM tb_article WHERE idarticle=1997;
DELETE FROM tb_unite WHERE idunite=2693 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2693) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2693);
COMMIT;

-- IdArticle=2789 , Designation=AIGLE D OR HAJA NOIR P44 , Unite=PAIRE , IdUnite=3689 , CodeArticle=0070278900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2789 AND idunite=3689;
DELETE FROM tb_log_stock WHERE codearticle='0070278900';
DELETE FROM tb_inventaire WHERE codearticle='0070278900';
DELETE FROM tb_stock WHERE codearticle='0070278900';
DELETE FROM tb_article WHERE idarticle=2789;
DELETE FROM tb_unite WHERE idunite=3689 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3689) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3689);
COMMIT;

-- IdArticle=3310 , Designation=AIGLE D OR HAMITRA C P36 , Unite=PAIRE , IdUnite=4332 , CodeArticle=0070331000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3310 AND idunite=4332;
DELETE FROM tb_log_stock WHERE codearticle='0070331000';
DELETE FROM tb_inventaire WHERE codearticle='0070331000';
DELETE FROM tb_stock WHERE codearticle='0070331000';
DELETE FROM tb_article WHERE idarticle=3310;
DELETE FROM tb_unite WHERE idunite=4332 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4332) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4332);
COMMIT;

-- IdArticle=3308 , Designation=AIGLE D OR HAMITRA C P38 , Unite=PAIRE , IdUnite=4330 , CodeArticle=0070330800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3308 AND idunite=4330;
DELETE FROM tb_log_stock WHERE codearticle='0070330800';
DELETE FROM tb_inventaire WHERE codearticle='0070330800';
DELETE FROM tb_stock WHERE codearticle='0070330800';
DELETE FROM tb_article WHERE idarticle=3308;
DELETE FROM tb_unite WHERE idunite=4330 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4330) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4330);
COMMIT;

-- IdArticle=3307 , Designation=AIGLE D OR HAMITRA C P39 , Unite=PAIRE , IdUnite=4329 , CodeArticle=0070330700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3307 AND idunite=4329;
DELETE FROM tb_log_stock WHERE codearticle='0070330700';
DELETE FROM tb_inventaire WHERE codearticle='0070330700';
DELETE FROM tb_stock WHERE codearticle='0070330700';
DELETE FROM tb_article WHERE idarticle=3307;
DELETE FROM tb_unite WHERE idunite=4329 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4329) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4329);
COMMIT;

-- IdArticle=3306 , Designation=AIGLE D OR HAMITRA C P40 , Unite=PAIRE , IdUnite=4328 , CodeArticle=0070330600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3306 AND idunite=4328;
DELETE FROM tb_log_stock WHERE codearticle='0070330600';
DELETE FROM tb_inventaire WHERE codearticle='0070330600';
DELETE FROM tb_stock WHERE codearticle='0070330600';
DELETE FROM tb_article WHERE idarticle=3306;
DELETE FROM tb_unite WHERE idunite=4328 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4328) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4328);
COMMIT;

-- IdArticle=3305 , Designation=AIGLE D OR HAMITRA C P41 , Unite=PAIRE , IdUnite=4327 , CodeArticle=0070330500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3305 AND idunite=4327;
DELETE FROM tb_log_stock WHERE codearticle='0070330500';
DELETE FROM tb_inventaire WHERE codearticle='0070330500';
DELETE FROM tb_stock WHERE codearticle='0070330500';
DELETE FROM tb_article WHERE idarticle=3305;
DELETE FROM tb_unite WHERE idunite=4327 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4327) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4327);
COMMIT;

-- IdArticle=1882 , Designation=AIGLE D OR HERY MARRON P39 , Unite=PAIRE , IdUnite=2526 , CodeArticle=0070188200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1882 AND idunite=2526;
DELETE FROM tb_log_stock WHERE codearticle='0070188200';
DELETE FROM tb_inventaire WHERE codearticle='0070188200';
DELETE FROM tb_stock WHERE codearticle='0070188200';
DELETE FROM tb_article WHERE idarticle=1882;
DELETE FROM tb_unite WHERE idunite=2526 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2526) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2526);
COMMIT;

-- IdArticle=2012 , Designation=AIGLE D OR HERY MARRON P40 , Unite=PAIRE , IdUnite=2708 , CodeArticle=0070201200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2012 AND idunite=2708;
DELETE FROM tb_log_stock WHERE codearticle='0070201200';
DELETE FROM tb_inventaire WHERE codearticle='0070201200';
DELETE FROM tb_stock WHERE codearticle='0070201200';
DELETE FROM tb_article WHERE idarticle=2012;
DELETE FROM tb_unite WHERE idunite=2708 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2708) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2708);
COMMIT;

-- IdArticle=2013 , Designation=AIGLE D OR HERY MARRON P41 , Unite=PAIRE , IdUnite=2709 , CodeArticle=0070201300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2013 AND idunite=2709;
DELETE FROM tb_log_stock WHERE codearticle='0070201300';
DELETE FROM tb_inventaire WHERE codearticle='0070201300';
DELETE FROM tb_stock WHERE codearticle='0070201300';
DELETE FROM tb_article WHERE idarticle=2013;
DELETE FROM tb_unite WHERE idunite=2709 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2709) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2709);
COMMIT;

-- IdArticle=2014 , Designation=AIGLE D OR HERY MARRON P42 , Unite=PAIRE , IdUnite=2710 , CodeArticle=0070201400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2014 AND idunite=2710;
DELETE FROM tb_log_stock WHERE codearticle='0070201400';
DELETE FROM tb_inventaire WHERE codearticle='0070201400';
DELETE FROM tb_stock WHERE codearticle='0070201400';
DELETE FROM tb_article WHERE idarticle=2014;
DELETE FROM tb_unite WHERE idunite=2710 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2710) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2710);
COMMIT;

-- IdArticle=2016 , Designation=AIGLE D OR HERY NOIR P39 , Unite=PAIRE , IdUnite=2712 , CodeArticle=0070201600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2016 AND idunite=2712;
DELETE FROM tb_log_stock WHERE codearticle='0070201600';
DELETE FROM tb_inventaire WHERE codearticle='0070201600';
DELETE FROM tb_stock WHERE codearticle='0070201600';
DELETE FROM tb_article WHERE idarticle=2016;
DELETE FROM tb_unite WHERE idunite=2712 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2712) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2712);
COMMIT;

-- IdArticle=2017 , Designation=AIGLE D OR HERY NOIR P40 , Unite=PAIRE , IdUnite=2713 , CodeArticle=0070201700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2017 AND idunite=2713;
DELETE FROM tb_log_stock WHERE codearticle='0070201700';
DELETE FROM tb_inventaire WHERE codearticle='0070201700';
DELETE FROM tb_stock WHERE codearticle='0070201700';
DELETE FROM tb_article WHERE idarticle=2017;
DELETE FROM tb_unite WHERE idunite=2713 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2713) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2713);
COMMIT;

-- IdArticle=2018 , Designation=AIGLE D OR HERY NOIR P41 , Unite=PAIRE , IdUnite=2714 , CodeArticle=0070201800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2018 AND idunite=2714;
DELETE FROM tb_log_stock WHERE codearticle='0070201800';
DELETE FROM tb_inventaire WHERE codearticle='0070201800';
DELETE FROM tb_stock WHERE codearticle='0070201800';
DELETE FROM tb_article WHERE idarticle=2018;
DELETE FROM tb_unite WHERE idunite=2714 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2714) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2714);
COMMIT;

-- IdArticle=2019 , Designation=AIGLE D OR HERY NOIR P42 , Unite=PAIRE , IdUnite=2715 , CodeArticle=0070201900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2019 AND idunite=2715;
DELETE FROM tb_log_stock WHERE codearticle='0070201900';
DELETE FROM tb_inventaire WHERE codearticle='0070201900';
DELETE FROM tb_stock WHERE codearticle='0070201900';
DELETE FROM tb_article WHERE idarticle=2019;
DELETE FROM tb_unite WHERE idunite=2715 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2715) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2715);
COMMIT;

-- IdArticle=2790 , Designation=AIGLE D OR HERY NOIR P45 , Unite=PAIRE , IdUnite=3690 , CodeArticle=0070279000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2790 AND idunite=3690;
DELETE FROM tb_log_stock WHERE codearticle='0070279000';
DELETE FROM tb_inventaire WHERE codearticle='0070279000';
DELETE FROM tb_stock WHERE codearticle='0070279000';
DELETE FROM tb_article WHERE idarticle=2790;
DELETE FROM tb_unite WHERE idunite=3690 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3690) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3690);
COMMIT;

-- IdArticle=3360 , Designation=AIGLE D OR HITSY C P37 , Unite=PAIRE , IdUnite=4396 , CodeArticle=0070336000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3360 AND idunite=4396;
DELETE FROM tb_log_stock WHERE codearticle='0070336000';
DELETE FROM tb_inventaire WHERE codearticle='0070336000';
DELETE FROM tb_stock WHERE codearticle='0070336000';
DELETE FROM tb_article WHERE idarticle=3360;
DELETE FROM tb_unite WHERE idunite=4396 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4396) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4396);
COMMIT;

-- IdArticle=3359 , Designation=AIGLE D OR HITSY C P38 , Unite=PAIRE , IdUnite=4395 , CodeArticle=0070335900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3359 AND idunite=4395;
DELETE FROM tb_log_stock WHERE codearticle='0070335900';
DELETE FROM tb_inventaire WHERE codearticle='0070335900';
DELETE FROM tb_stock WHERE codearticle='0070335900';
DELETE FROM tb_article WHERE idarticle=3359;
DELETE FROM tb_unite WHERE idunite=4395 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4395) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4395);
COMMIT;

-- IdArticle=3357 , Designation=AIGLE D OR HITSY C P39 , Unite=PAIRE , IdUnite=4393 , CodeArticle=0070335700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3357 AND idunite=4393;
DELETE FROM tb_log_stock WHERE codearticle='0070335700';
DELETE FROM tb_inventaire WHERE codearticle='0070335700';
DELETE FROM tb_stock WHERE codearticle='0070335700';
DELETE FROM tb_article WHERE idarticle=3357;
DELETE FROM tb_unite WHERE idunite=4393 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4393) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4393);
COMMIT;

-- IdArticle=3356 , Designation=AIGLE D OR HITSY C P40 , Unite=PAIRE , IdUnite=4392 , CodeArticle=0070335600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3356 AND idunite=4392;
DELETE FROM tb_log_stock WHERE codearticle='0070335600';
DELETE FROM tb_inventaire WHERE codearticle='0070335600';
DELETE FROM tb_stock WHERE codearticle='0070335600';
DELETE FROM tb_article WHERE idarticle=3356;
DELETE FROM tb_unite WHERE idunite=4392 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4392) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4392);
COMMIT;

-- IdArticle=3358 , Designation=AIGLE D OR HITSY C P41 , Unite=PAIRE , IdUnite=4394 , CodeArticle=0070335800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3358 AND idunite=4394;
DELETE FROM tb_log_stock WHERE codearticle='0070335800';
DELETE FROM tb_inventaire WHERE codearticle='0070335800';
DELETE FROM tb_stock WHERE codearticle='0070335800';
DELETE FROM tb_article WHERE idarticle=3358;
DELETE FROM tb_unite WHERE idunite=4394 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4394) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4394);
COMMIT;

-- IdArticle=3354 , Designation=AIGLE D OR HITSY C P42 , Unite=PAIRE , IdUnite=4390 , CodeArticle=0070335400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3354 AND idunite=4390;
DELETE FROM tb_log_stock WHERE codearticle='0070335400';
DELETE FROM tb_inventaire WHERE codearticle='0070335400';
DELETE FROM tb_stock WHERE codearticle='0070335400';
DELETE FROM tb_article WHERE idarticle=3354;
DELETE FROM tb_unite WHERE idunite=4390 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4390) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4390);
COMMIT;

-- IdArticle=3353 , Designation=AIGLE D OR HITSY C P43 , Unite=PAIRE , IdUnite=4389 , CodeArticle=0070335300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3353 AND idunite=4389;
DELETE FROM tb_log_stock WHERE codearticle='0070335300';
DELETE FROM tb_inventaire WHERE codearticle='0070335300';
DELETE FROM tb_stock WHERE codearticle='0070335300';
DELETE FROM tb_article WHERE idarticle=3353;
DELETE FROM tb_unite WHERE idunite=4389 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4389) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4389);
COMMIT;

-- IdArticle=3296 , Designation=AIGLE D OR HITSY C P44 , Unite=PAIRE , IdUnite=4318 , CodeArticle=0070329600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3296 AND idunite=4318;
DELETE FROM tb_log_stock WHERE codearticle='0070329600';
DELETE FROM tb_inventaire WHERE codearticle='0070329600';
DELETE FROM tb_stock WHERE codearticle='0070329600';
DELETE FROM tb_article WHERE idarticle=3296;
DELETE FROM tb_unite WHERE idunite=4318 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4318) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4318);
COMMIT;

-- IdArticle=3355 , Designation=AIGLE D OR HITSY C P45 , Unite=PAIRE , IdUnite=4391 , CodeArticle=0070335500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3355 AND idunite=4391;
DELETE FROM tb_log_stock WHERE codearticle='0070335500';
DELETE FROM tb_inventaire WHERE codearticle='0070335500';
DELETE FROM tb_stock WHERE codearticle='0070335500';
DELETE FROM tb_article WHERE idarticle=3355;
DELETE FROM tb_unite WHERE idunite=4391 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4391) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4391);
COMMIT;

-- IdArticle=3387 , Designation=AIGLE D OR HOBY COU P39 , Unite=PAIRE , IdUnite=4423 , CodeArticle=0070338700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3387 AND idunite=4423;
DELETE FROM tb_log_stock WHERE codearticle='0070338700';
DELETE FROM tb_inventaire WHERE codearticle='0070338700';
DELETE FROM tb_stock WHERE codearticle='0070338700';
DELETE FROM tb_article WHERE idarticle=3387;
DELETE FROM tb_unite WHERE idunite=4423 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4423) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4423);
COMMIT;

-- IdArticle=3389 , Designation=AIGLE D OR HOBY COU P41 , Unite=PAIRE , IdUnite=4425 , CodeArticle=0070338900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3389 AND idunite=4425;
DELETE FROM tb_log_stock WHERE codearticle='0070338900';
DELETE FROM tb_inventaire WHERE codearticle='0070338900';
DELETE FROM tb_stock WHERE codearticle='0070338900';
DELETE FROM tb_article WHERE idarticle=3389;
DELETE FROM tb_unite WHERE idunite=4425 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4425) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4425);
COMMIT;

-- IdArticle=3390 , Designation=AIGLE D OR HOBY COU P42 , Unite=PAIRE , IdUnite=4426 , CodeArticle=0070339000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3390 AND idunite=4426;
DELETE FROM tb_log_stock WHERE codearticle='0070339000';
DELETE FROM tb_inventaire WHERE codearticle='0070339000';
DELETE FROM tb_stock WHERE codearticle='0070339000';
DELETE FROM tb_article WHERE idarticle=3390;
DELETE FROM tb_unite WHERE idunite=4426 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4426) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4426);
COMMIT;

-- IdArticle=3391 , Designation=AIGLE D OR HOBY COU P43 , Unite=PAIRE , IdUnite=4427 , CodeArticle=0070339100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3391 AND idunite=4427;
DELETE FROM tb_log_stock WHERE codearticle='0070339100';
DELETE FROM tb_inventaire WHERE codearticle='0070339100';
DELETE FROM tb_stock WHERE codearticle='0070339100';
DELETE FROM tb_article WHERE idarticle=3391;
DELETE FROM tb_unite WHERE idunite=4427 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4427) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4427);
COMMIT;

-- IdArticle=3392 , Designation=AIGLE D OR HOBY COU P44 , Unite=PAIRE , IdUnite=4428 , CodeArticle=0070339200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3392 AND idunite=4428;
DELETE FROM tb_log_stock WHERE codearticle='0070339200';
DELETE FROM tb_inventaire WHERE codearticle='0070339200';
DELETE FROM tb_stock WHERE codearticle='0070339200';
DELETE FROM tb_article WHERE idarticle=3392;
DELETE FROM tb_unite WHERE idunite=4428 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4428) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4428);
COMMIT;

-- IdArticle=3393 , Designation=AIGLE D OR HOBY COU P45 , Unite=PAIRE , IdUnite=4429 , CodeArticle=0070339300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3393 AND idunite=4429;
DELETE FROM tb_log_stock WHERE codearticle='0070339300';
DELETE FROM tb_inventaire WHERE codearticle='0070339300';
DELETE FROM tb_stock WHERE codearticle='0070339300';
DELETE FROM tb_article WHERE idarticle=3393;
DELETE FROM tb_unite WHERE idunite=4429 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4429) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4429);
COMMIT;

-- IdArticle=2223 , Designation=AIGLE D OR HOBY-CAR P39 , Unite=PAIRE , IdUnite=2957 , CodeArticle=0070222300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2223 AND idunite=2957;
DELETE FROM tb_log_stock WHERE codearticle='0070222300';
DELETE FROM tb_inventaire WHERE codearticle='0070222300';
DELETE FROM tb_stock WHERE codearticle='0070222300';
DELETE FROM tb_article WHERE idarticle=2223;
DELETE FROM tb_unite WHERE idunite=2957 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2957) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2957);
COMMIT;

-- IdArticle=2254 , Designation=AIGLE D OR HOBY-CAR P40 , Unite=PAIRE , IdUnite=2997 , CodeArticle=0070225400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2254 AND idunite=2997;
DELETE FROM tb_log_stock WHERE codearticle='0070225400';
DELETE FROM tb_inventaire WHERE codearticle='0070225400';
DELETE FROM tb_stock WHERE codearticle='0070225400';
DELETE FROM tb_article WHERE idarticle=2254;
DELETE FROM tb_unite WHERE idunite=2997 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2997) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2997);
COMMIT;

-- IdArticle=2255 , Designation=AIGLE D OR HOBY-CAR P41 , Unite=PAIRE , IdUnite=2998 , CodeArticle=0070225500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2255 AND idunite=2998;
DELETE FROM tb_log_stock WHERE codearticle='0070225500';
DELETE FROM tb_inventaire WHERE codearticle='0070225500';
DELETE FROM tb_stock WHERE codearticle='0070225500';
DELETE FROM tb_article WHERE idarticle=2255;
DELETE FROM tb_unite WHERE idunite=2998 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2998) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2998);
COMMIT;

-- IdArticle=2256 , Designation=AIGLE D OR HOBY-CAR P43 , Unite=PAIRE , IdUnite=2999 , CodeArticle=0070225600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2256 AND idunite=2999;
DELETE FROM tb_log_stock WHERE codearticle='0070225600';
DELETE FROM tb_inventaire WHERE codearticle='0070225600';
DELETE FROM tb_stock WHERE codearticle='0070225600';
DELETE FROM tb_article WHERE idarticle=2256;
DELETE FROM tb_unite WHERE idunite=2999 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2999) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2999);
COMMIT;

-- IdArticle=2804 , Designation=AIGLE D OR HOBY-CAR P44 , Unite=PAIRE , IdUnite=3704 , CodeArticle=0070280400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2804 AND idunite=3704;
DELETE FROM tb_log_stock WHERE codearticle='0070280400';
DELETE FROM tb_inventaire WHERE codearticle='0070280400';
DELETE FROM tb_stock WHERE codearticle='0070280400';
DELETE FROM tb_article WHERE idarticle=2804;
DELETE FROM tb_unite WHERE idunite=3704 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3704) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3704);
COMMIT;

-- IdArticle=2803 , Designation=AIGLE D OR HOBY-CAR P45 , Unite=PAIRE , IdUnite=3703 , CodeArticle=0070280300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2803 AND idunite=3703;
DELETE FROM tb_log_stock WHERE codearticle='0070280300';
DELETE FROM tb_inventaire WHERE codearticle='0070280300';
DELETE FROM tb_stock WHERE codearticle='0070280300';
DELETE FROM tb_article WHERE idarticle=2803;
DELETE FROM tb_unite WHERE idunite=3703 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3703) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3703);
COMMIT;

-- IdArticle=2257 , Designation=AIGLE D OR HOBY-MAR P39 , Unite=PAIRE , IdUnite=3000 , CodeArticle=0070225700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2257 AND idunite=3000;
DELETE FROM tb_log_stock WHERE codearticle='0070225700';
DELETE FROM tb_inventaire WHERE codearticle='0070225700';
DELETE FROM tb_stock WHERE codearticle='0070225700';
DELETE FROM tb_article WHERE idarticle=2257;
DELETE FROM tb_unite WHERE idunite=3000 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3000) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3000);
COMMIT;

-- IdArticle=2258 , Designation=AIGLE D OR HOBY-MAR P40 , Unite=PAIRE , IdUnite=3001 , CodeArticle=0070225800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2258 AND idunite=3001;
DELETE FROM tb_log_stock WHERE codearticle='0070225800';
DELETE FROM tb_inventaire WHERE codearticle='0070225800';
DELETE FROM tb_stock WHERE codearticle='0070225800';
DELETE FROM tb_article WHERE idarticle=2258;
DELETE FROM tb_unite WHERE idunite=3001 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3001) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3001);
COMMIT;

-- IdArticle=2259 , Designation=AIGLE D OR HOBY-MAR P41 , Unite=PAIRE , IdUnite=3002 , CodeArticle=0070225900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2259 AND idunite=3002;
DELETE FROM tb_log_stock WHERE codearticle='0070225900';
DELETE FROM tb_inventaire WHERE codearticle='0070225900';
DELETE FROM tb_stock WHERE codearticle='0070225900';
DELETE FROM tb_article WHERE idarticle=2259;
DELETE FROM tb_unite WHERE idunite=3002 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3002) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3002);
COMMIT;

-- IdArticle=2260 , Designation=AIGLE D OR HOBY-MAR P42 , Unite=PAIRE , IdUnite=3003 , CodeArticle=0070226000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2260 AND idunite=3003;
DELETE FROM tb_log_stock WHERE codearticle='0070226000';
DELETE FROM tb_inventaire WHERE codearticle='0070226000';
DELETE FROM tb_stock WHERE codearticle='0070226000';
DELETE FROM tb_article WHERE idarticle=2260;
DELETE FROM tb_unite WHERE idunite=3003 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3003) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3003);
COMMIT;

-- IdArticle=2261 , Designation=AIGLE D OR HOBY-MAR P43 , Unite=PAIRE , IdUnite=3004 , CodeArticle=0070226100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2261 AND idunite=3004;
DELETE FROM tb_log_stock WHERE codearticle='0070226100';
DELETE FROM tb_inventaire WHERE codearticle='0070226100';
DELETE FROM tb_stock WHERE codearticle='0070226100';
DELETE FROM tb_article WHERE idarticle=2261;
DELETE FROM tb_unite WHERE idunite=3004 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3004) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3004);
COMMIT;

-- IdArticle=2572 , Designation=AIGLE D OR HOBY-MAR P44 , Unite=PAIRE , IdUnite=3387 , CodeArticle=0070257200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2572 AND idunite=3387;
DELETE FROM tb_log_stock WHERE codearticle='0070257200';
DELETE FROM tb_inventaire WHERE codearticle='0070257200';
DELETE FROM tb_stock WHERE codearticle='0070257200';
DELETE FROM tb_article WHERE idarticle=2572;
DELETE FROM tb_unite WHERE idunite=3387 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3387) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3387);
COMMIT;

-- IdArticle=2573 , Designation=AIGLE D OR HOBY-MAR P45 , Unite=PAIRE , IdUnite=3388 , CodeArticle=0070257300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2573 AND idunite=3388;
DELETE FROM tb_log_stock WHERE codearticle='0070257300';
DELETE FROM tb_inventaire WHERE codearticle='0070257300';
DELETE FROM tb_stock WHERE codearticle='0070257300';
DELETE FROM tb_article WHERE idarticle=2573;
DELETE FROM tb_unite WHERE idunite=3388 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3388) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3388);
COMMIT;

-- IdArticle=2587 , Designation=AIGLE D OR HOBY-NOIR P39 , Unite=PAIRE , IdUnite=3402 , CodeArticle=0070258700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2587 AND idunite=3402;
DELETE FROM tb_log_stock WHERE codearticle='0070258700';
DELETE FROM tb_inventaire WHERE codearticle='0070258700';
DELETE FROM tb_stock WHERE codearticle='0070258700';
DELETE FROM tb_article WHERE idarticle=2587;
DELETE FROM tb_unite WHERE idunite=3402 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3402) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3402);
COMMIT;

-- IdArticle=2588 , Designation=AIGLE D OR HOBY-NOIR P40 , Unite=PAIRE , IdUnite=3403 , CodeArticle=0070258800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2588 AND idunite=3403;
DELETE FROM tb_log_stock WHERE codearticle='0070258800';
DELETE FROM tb_inventaire WHERE codearticle='0070258800';
DELETE FROM tb_stock WHERE codearticle='0070258800';
DELETE FROM tb_article WHERE idarticle=2588;
DELETE FROM tb_unite WHERE idunite=3403 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3403) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3403);
COMMIT;

-- IdArticle=2589 , Designation=AIGLE D OR HOBY-NOIR P41 , Unite=PAIRE , IdUnite=3404 , CodeArticle=0070258900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2589 AND idunite=3404;
DELETE FROM tb_log_stock WHERE codearticle='0070258900';
DELETE FROM tb_inventaire WHERE codearticle='0070258900';
DELETE FROM tb_stock WHERE codearticle='0070258900';
DELETE FROM tb_article WHERE idarticle=2589;
DELETE FROM tb_unite WHERE idunite=3404 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3404) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3404);
COMMIT;

-- IdArticle=2590 , Designation=AIGLE D OR HOBY-NOIR P42 , Unite=PAIRE , IdUnite=3405 , CodeArticle=0070259000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2590 AND idunite=3405;
DELETE FROM tb_log_stock WHERE codearticle='0070259000';
DELETE FROM tb_inventaire WHERE codearticle='0070259000';
DELETE FROM tb_stock WHERE codearticle='0070259000';
DELETE FROM tb_article WHERE idarticle=2590;
DELETE FROM tb_unite WHERE idunite=3405 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3405) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3405);
COMMIT;

-- IdArticle=2591 , Designation=AIGLE D OR HOBY-NOIR P43 , Unite=PAIRE , IdUnite=3406 , CodeArticle=0070259100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2591 AND idunite=3406;
DELETE FROM tb_log_stock WHERE codearticle='0070259100';
DELETE FROM tb_inventaire WHERE codearticle='0070259100';
DELETE FROM tb_stock WHERE codearticle='0070259100';
DELETE FROM tb_article WHERE idarticle=2591;
DELETE FROM tb_unite WHERE idunite=3406 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3406) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3406);
COMMIT;

-- IdArticle=2592 , Designation=AIGLE D OR HOBY-NOIR P44 , Unite=PAIRE , IdUnite=3407 , CodeArticle=0070259200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2592 AND idunite=3407;
DELETE FROM tb_log_stock WHERE codearticle='0070259200';
DELETE FROM tb_inventaire WHERE codearticle='0070259200';
DELETE FROM tb_stock WHERE codearticle='0070259200';
DELETE FROM tb_article WHERE idarticle=2592;
DELETE FROM tb_unite WHERE idunite=3407 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3407) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3407);
COMMIT;

-- IdArticle=2593 , Designation=AIGLE D OR HOBY-NOIR P45 , Unite=PAIRE , IdUnite=3408 , CodeArticle=0070259300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2593 AND idunite=3408;
DELETE FROM tb_log_stock WHERE codearticle='0070259300';
DELETE FROM tb_inventaire WHERE codearticle='0070259300';
DELETE FROM tb_stock WHERE codearticle='0070259300';
DELETE FROM tb_article WHERE idarticle=2593;
DELETE FROM tb_unite WHERE idunite=3408 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3408) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3408);
COMMIT;

-- IdArticle=3276 , Designation=AIGLE D OR IHOLY P 35 , Unite=PAIRE , IdUnite=4298 , CodeArticle=0070327600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3276 AND idunite=4298;
DELETE FROM tb_log_stock WHERE codearticle='0070327600';
DELETE FROM tb_inventaire WHERE codearticle='0070327600';
DELETE FROM tb_stock WHERE codearticle='0070327600';
DELETE FROM tb_article WHERE idarticle=3276;
DELETE FROM tb_unite WHERE idunite=4298 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4298) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4298);
COMMIT;

-- IdArticle=3275 , Designation=AIGLE D OR IHOLY P 36 , Unite=PAIRE , IdUnite=4297 , CodeArticle=0070327500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3275 AND idunite=4297;
DELETE FROM tb_log_stock WHERE codearticle='0070327500';
DELETE FROM tb_inventaire WHERE codearticle='0070327500';
DELETE FROM tb_stock WHERE codearticle='0070327500';
DELETE FROM tb_article WHERE idarticle=3275;
DELETE FROM tb_unite WHERE idunite=4297 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4297) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4297);
COMMIT;

-- IdArticle=3274 , Designation=AIGLE D OR IHOLY P 37 , Unite=PAIRE , IdUnite=4296 , CodeArticle=0070327400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3274 AND idunite=4296;
DELETE FROM tb_log_stock WHERE codearticle='0070327400';
DELETE FROM tb_inventaire WHERE codearticle='0070327400';
DELETE FROM tb_stock WHERE codearticle='0070327400';
DELETE FROM tb_article WHERE idarticle=3274;
DELETE FROM tb_unite WHERE idunite=4296 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4296) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4296);
COMMIT;

-- IdArticle=3273 , Designation=AIGLE D OR IHOLY P 38 , Unite=PAIRE , IdUnite=4295 , CodeArticle=0070327300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3273 AND idunite=4295;
DELETE FROM tb_log_stock WHERE codearticle='0070327300';
DELETE FROM tb_inventaire WHERE codearticle='0070327300';
DELETE FROM tb_stock WHERE codearticle='0070327300';
DELETE FROM tb_article WHERE idarticle=3273;
DELETE FROM tb_unite WHERE idunite=4295 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4295) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4295);
COMMIT;

-- IdArticle=3272 , Designation=AIGLE D OR IHOLY P 39 , Unite=PAIRE , IdUnite=4294 , CodeArticle=0070327200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3272 AND idunite=4294;
DELETE FROM tb_log_stock WHERE codearticle='0070327200';
DELETE FROM tb_inventaire WHERE codearticle='0070327200';
DELETE FROM tb_stock WHERE codearticle='0070327200';
DELETE FROM tb_article WHERE idarticle=3272;
DELETE FROM tb_unite WHERE idunite=4294 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4294) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4294);
COMMIT;

-- IdArticle=3270 , Designation=AIGLE D OR IHOLY P 40 , Unite=PAIRE , IdUnite=4292 , CodeArticle=0070327000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3270 AND idunite=4292;
DELETE FROM tb_log_stock WHERE codearticle='0070327000';
DELETE FROM tb_inventaire WHERE codearticle='0070327000';
DELETE FROM tb_stock WHERE codearticle='0070327000';
DELETE FROM tb_article WHERE idarticle=3270;
DELETE FROM tb_unite WHERE idunite=4292 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4292) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4292);
COMMIT;

-- IdArticle=3271 , Designation=AIGLE D OR IHOLY P 41 , Unite=PAIRE , IdUnite=4293 , CodeArticle=0070327100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3271 AND idunite=4293;
DELETE FROM tb_log_stock WHERE codearticle='0070327100';
DELETE FROM tb_inventaire WHERE codearticle='0070327100';
DELETE FROM tb_stock WHERE codearticle='0070327100';
DELETE FROM tb_article WHERE idarticle=3271;
DELETE FROM tb_unite WHERE idunite=4293 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4293) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4293);
COMMIT;

-- IdArticle=3226 , Designation=AIGLE D OR IKOLOINA P37 , Unite=PAIRE , IdUnite=4243 , CodeArticle=0070322600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3226 AND idunite=4243;
DELETE FROM tb_log_stock WHERE codearticle='0070322600';
DELETE FROM tb_inventaire WHERE codearticle='0070322600';
DELETE FROM tb_stock WHERE codearticle='0070322600';
DELETE FROM tb_article WHERE idarticle=3226;
DELETE FROM tb_unite WHERE idunite=4243 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4243) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4243);
COMMIT;

-- IdArticle=3227 , Designation=AIGLE D OR IKOLOINA P39 , Unite=PAIRE , IdUnite=4244 , CodeArticle=0070322700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3227 AND idunite=4244;
DELETE FROM tb_log_stock WHERE codearticle='0070322700';
DELETE FROM tb_inventaire WHERE codearticle='0070322700';
DELETE FROM tb_stock WHERE codearticle='0070322700';
DELETE FROM tb_article WHERE idarticle=3227;
DELETE FROM tb_unite WHERE idunite=4244 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4244) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4244);
COMMIT;

-- IdArticle=2266 , Designation=AIGLE D OR JORO-MAR 35-44 , Unite=PAIRE , IdUnite=3009 , CodeArticle=0070226600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2266 AND idunite=3009;
DELETE FROM tb_log_stock WHERE codearticle='0070226600';
DELETE FROM tb_inventaire WHERE codearticle='0070226600';
DELETE FROM tb_stock WHERE codearticle='0070226600';
DELETE FROM tb_article WHERE idarticle=2266;
DELETE FROM tb_unite WHERE idunite=3009 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3009) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3009);
COMMIT;

-- IdArticle=2385 , Designation=AIGLE D OR LAKA MAR P22 , Unite=PAIRE , IdUnite=3159 , CodeArticle=0070238500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2385 AND idunite=3159;
DELETE FROM tb_log_stock WHERE codearticle='0070238500';
DELETE FROM tb_inventaire WHERE codearticle='0070238500';
DELETE FROM tb_stock WHERE codearticle='0070238500';
DELETE FROM tb_article WHERE idarticle=2385;
DELETE FROM tb_unite WHERE idunite=3159 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3159) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3159);
COMMIT;

-- IdArticle=2386 , Designation=AIGLE D OR LAKA MAR P23 , Unite=PAIRE , IdUnite=3160 , CodeArticle=0070238600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2386 AND idunite=3160;
DELETE FROM tb_log_stock WHERE codearticle='0070238600';
DELETE FROM tb_inventaire WHERE codearticle='0070238600';
DELETE FROM tb_stock WHERE codearticle='0070238600';
DELETE FROM tb_article WHERE idarticle=2386;
DELETE FROM tb_unite WHERE idunite=3160 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3160) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3160);
COMMIT;

-- IdArticle=2387 , Designation=AIGLE D OR LAKA MAR P24 , Unite=PAIRE , IdUnite=3161 , CodeArticle=0070238700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2387 AND idunite=3161;
DELETE FROM tb_log_stock WHERE codearticle='0070238700';
DELETE FROM tb_inventaire WHERE codearticle='0070238700';
DELETE FROM tb_stock WHERE codearticle='0070238700';
DELETE FROM tb_article WHERE idarticle=2387;
DELETE FROM tb_unite WHERE idunite=3161 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3161) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3161);
COMMIT;

-- IdArticle=2391 , Designation=AIGLE D OR LAKA MAR P28 , Unite=PAIRE , IdUnite=3165 , CodeArticle=0070239100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2391 AND idunite=3165;
DELETE FROM tb_log_stock WHERE codearticle='0070239100';
DELETE FROM tb_inventaire WHERE codearticle='0070239100';
DELETE FROM tb_stock WHERE codearticle='0070239100';
DELETE FROM tb_article WHERE idarticle=2391;
DELETE FROM tb_unite WHERE idunite=3165 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3165) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3165);
COMMIT;

-- IdArticle=2392 , Designation=AIGLE D OR LAKA MAR P29 , Unite=PAIRE , IdUnite=3166 , CodeArticle=0070239200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2392 AND idunite=3166;
DELETE FROM tb_log_stock WHERE codearticle='0070239200';
DELETE FROM tb_inventaire WHERE codearticle='0070239200';
DELETE FROM tb_stock WHERE codearticle='0070239200';
DELETE FROM tb_article WHERE idarticle=2392;
DELETE FROM tb_unite WHERE idunite=3166 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3166) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3166);
COMMIT;

-- IdArticle=2393 , Designation=AIGLE D OR LAKA MAR P30 , Unite=PAIRE , IdUnite=3167 , CodeArticle=0070239300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2393 AND idunite=3167;
DELETE FROM tb_log_stock WHERE codearticle='0070239300';
DELETE FROM tb_inventaire WHERE codearticle='0070239300';
DELETE FROM tb_stock WHERE codearticle='0070239300';
DELETE FROM tb_article WHERE idarticle=2393;
DELETE FROM tb_unite WHERE idunite=3167 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3167) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3167);
COMMIT;

-- IdArticle=2394 , Designation=AIGLE D OR LAKA MAR P31 , Unite=PAIRE , IdUnite=3168 , CodeArticle=0070239400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2394 AND idunite=3168;
DELETE FROM tb_log_stock WHERE codearticle='0070239400';
DELETE FROM tb_inventaire WHERE codearticle='0070239400';
DELETE FROM tb_stock WHERE codearticle='0070239400';
DELETE FROM tb_article WHERE idarticle=2394;
DELETE FROM tb_unite WHERE idunite=3168 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3168) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3168);
COMMIT;

-- IdArticle=2396 , Designation=AIGLE D OR LAKA MAR P33 , Unite=PAIRE , IdUnite=3170 , CodeArticle=0070239600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2396 AND idunite=3170;
DELETE FROM tb_log_stock WHERE codearticle='0070239600';
DELETE FROM tb_inventaire WHERE codearticle='0070239600';
DELETE FROM tb_stock WHERE codearticle='0070239600';
DELETE FROM tb_article WHERE idarticle=2396;
DELETE FROM tb_unite WHERE idunite=3170 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3170) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3170);
COMMIT;

-- IdArticle=2397 , Designation=AIGLE D OR LAKA MAR P34 , Unite=PAIRE , IdUnite=3171 , CodeArticle=0070239700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2397 AND idunite=3171;
DELETE FROM tb_log_stock WHERE codearticle='0070239700';
DELETE FROM tb_inventaire WHERE codearticle='0070239700';
DELETE FROM tb_stock WHERE codearticle='0070239700';
DELETE FROM tb_article WHERE idarticle=2397;
DELETE FROM tb_unite WHERE idunite=3171 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3171) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3171);
COMMIT;

-- IdArticle=2398 , Designation=AIGLE D OR LAKA MAR P35 , Unite=PAIRE , IdUnite=3172 , CodeArticle=0070239800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2398 AND idunite=3172;
DELETE FROM tb_log_stock WHERE codearticle='0070239800';
DELETE FROM tb_inventaire WHERE codearticle='0070239800';
DELETE FROM tb_stock WHERE codearticle='0070239800';
DELETE FROM tb_article WHERE idarticle=2398;
DELETE FROM tb_unite WHERE idunite=3172 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3172) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3172);
COMMIT;

-- IdArticle=2399 , Designation=AIGLE D OR LAKA MAR P36 , Unite=PAIRE , IdUnite=3173 , CodeArticle=0070239900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2399 AND idunite=3173;
DELETE FROM tb_log_stock WHERE codearticle='0070239900';
DELETE FROM tb_inventaire WHERE codearticle='0070239900';
DELETE FROM tb_stock WHERE codearticle='0070239900';
DELETE FROM tb_article WHERE idarticle=2399;
DELETE FROM tb_unite WHERE idunite=3173 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3173) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3173);
COMMIT;

-- IdArticle=2401 , Designation=AIGLE D OR LAKA MAR P38 , Unite=PAIRE , IdUnite=3175 , CodeArticle=0070240100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2401 AND idunite=3175;
DELETE FROM tb_log_stock WHERE codearticle='0070240100';
DELETE FROM tb_inventaire WHERE codearticle='0070240100';
DELETE FROM tb_stock WHERE codearticle='0070240100';
DELETE FROM tb_article WHERE idarticle=2401;
DELETE FROM tb_unite WHERE idunite=3175 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3175) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3175);
COMMIT;

-- IdArticle=3347 , Designation=AIGLE D OR LEFA COU P39 , Unite=PAIRE , IdUnite=4383 , CodeArticle=0070334700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3347 AND idunite=4383;
DELETE FROM tb_log_stock WHERE codearticle='0070334700';
DELETE FROM tb_inventaire WHERE codearticle='0070334700';
DELETE FROM tb_stock WHERE codearticle='0070334700';
DELETE FROM tb_article WHERE idarticle=3347;
DELETE FROM tb_unite WHERE idunite=4383 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4383) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4383);
COMMIT;

-- IdArticle=3346 , Designation=AIGLE D OR LEFA COU P40 , Unite=PAIRE , IdUnite=4382 , CodeArticle=0070334600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3346 AND idunite=4382;
DELETE FROM tb_log_stock WHERE codearticle='0070334600';
DELETE FROM tb_inventaire WHERE codearticle='0070334600';
DELETE FROM tb_stock WHERE codearticle='0070334600';
DELETE FROM tb_article WHERE idarticle=3346;
DELETE FROM tb_unite WHERE idunite=4382 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4382) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4382);
COMMIT;

-- IdArticle=3345 , Designation=AIGLE D OR LEFA COU P41 , Unite=PAIRE , IdUnite=4381 , CodeArticle=0070334500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3345 AND idunite=4381;
DELETE FROM tb_log_stock WHERE codearticle='0070334500';
DELETE FROM tb_inventaire WHERE codearticle='0070334500';
DELETE FROM tb_stock WHERE codearticle='0070334500';
DELETE FROM tb_article WHERE idarticle=3345;
DELETE FROM tb_unite WHERE idunite=4381 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4381) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4381);
COMMIT;

-- IdArticle=3344 , Designation=AIGLE D OR LEFA COU P42 , Unite=PAIRE , IdUnite=4380 , CodeArticle=0070334400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3344 AND idunite=4380;
DELETE FROM tb_log_stock WHERE codearticle='0070334400';
DELETE FROM tb_inventaire WHERE codearticle='0070334400';
DELETE FROM tb_stock WHERE codearticle='0070334400';
DELETE FROM tb_article WHERE idarticle=3344;
DELETE FROM tb_unite WHERE idunite=4380 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4380) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4380);
COMMIT;

-- IdArticle=3342 , Designation=AIGLE D OR LEFA COU P44 , Unite=PAIRE , IdUnite=4378 , CodeArticle=0070334200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3342 AND idunite=4378;
DELETE FROM tb_log_stock WHERE codearticle='0070334200';
DELETE FROM tb_inventaire WHERE codearticle='0070334200';
DELETE FROM tb_stock WHERE codearticle='0070334200';
DELETE FROM tb_article WHERE idarticle=3342;
DELETE FROM tb_unite WHERE idunite=4378 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4378) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4378);
COMMIT;

-- IdArticle=3341 , Designation=AIGLE D OR LEFA COU P45 , Unite=PAIRE , IdUnite=4377 , CodeArticle=0070334100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3341 AND idunite=4377;
DELETE FROM tb_log_stock WHERE codearticle='0070334100';
DELETE FROM tb_inventaire WHERE codearticle='0070334100';
DELETE FROM tb_stock WHERE codearticle='0070334100';
DELETE FROM tb_article WHERE idarticle=3341;
DELETE FROM tb_unite WHERE idunite=4377 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4377) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4377);
COMMIT;

-- IdArticle=1998 , Designation=AIGLE D OR MAHANDRY MARRON P35 , Unite=PAIRE , IdUnite=2694 , CodeArticle=0070199800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1998 AND idunite=2694;
DELETE FROM tb_log_stock WHERE codearticle='0070199800';
DELETE FROM tb_inventaire WHERE codearticle='0070199800';
DELETE FROM tb_stock WHERE codearticle='0070199800';
DELETE FROM tb_article WHERE idarticle=1998;
DELETE FROM tb_unite WHERE idunite=2694 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2694) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2694);
COMMIT;

-- IdArticle=1879 , Designation=AIGLE D OR MAHANDRY MARRON P36 , Unite=PAIRE , IdUnite=2523 , CodeArticle=0070187900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1879 AND idunite=2523;
DELETE FROM tb_log_stock WHERE codearticle='0070187900';
DELETE FROM tb_inventaire WHERE codearticle='0070187900';
DELETE FROM tb_stock WHERE codearticle='0070187900';
DELETE FROM tb_article WHERE idarticle=1879;
DELETE FROM tb_unite WHERE idunite=2523 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2523) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2523);
COMMIT;

-- IdArticle=1999 , Designation=AIGLE D OR MAHANDRY MARRON P37 , Unite=PAIRE , IdUnite=2695 , CodeArticle=0070199900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1999 AND idunite=2695;
DELETE FROM tb_log_stock WHERE codearticle='0070199900';
DELETE FROM tb_inventaire WHERE codearticle='0070199900';
DELETE FROM tb_stock WHERE codearticle='0070199900';
DELETE FROM tb_article WHERE idarticle=1999;
DELETE FROM tb_unite WHERE idunite=2695 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2695) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2695);
COMMIT;

-- IdArticle=2000 , Designation=AIGLE D OR MAHANDRY MARRON P38 , Unite=PAIRE , IdUnite=2696 , CodeArticle=0070200000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2000 AND idunite=2696;
DELETE FROM tb_log_stock WHERE codearticle='0070200000';
DELETE FROM tb_inventaire WHERE codearticle='0070200000';
DELETE FROM tb_stock WHERE codearticle='0070200000';
DELETE FROM tb_article WHERE idarticle=2000;
DELETE FROM tb_unite WHERE idunite=2696 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2696) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2696);
COMMIT;

-- IdArticle=2206 , Designation=AIGLE D OR MAHANDRY MARRON P39 , Unite=PAIRE , IdUnite=2939 , CodeArticle=0070220600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2206 AND idunite=2939;
DELETE FROM tb_log_stock WHERE codearticle='0070220600';
DELETE FROM tb_inventaire WHERE codearticle='0070220600';
DELETE FROM tb_stock WHERE codearticle='0070220600';
DELETE FROM tb_article WHERE idarticle=2206;
DELETE FROM tb_unite WHERE idunite=2939 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2939) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2939);
COMMIT;

-- IdArticle=2001 , Designation=AIGLE D OR MAHANDRY MARRON P40 , Unite=PAIRE , IdUnite=2697 , CodeArticle=0070200100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2001 AND idunite=2697;
DELETE FROM tb_log_stock WHERE codearticle='0070200100';
DELETE FROM tb_inventaire WHERE codearticle='0070200100';
DELETE FROM tb_stock WHERE codearticle='0070200100';
DELETE FROM tb_article WHERE idarticle=2001;
DELETE FROM tb_unite WHERE idunite=2697 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2697) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2697);
COMMIT;

-- IdArticle=2002 , Designation=AIGLE D OR MAHANDRY MARRON P41 , Unite=PAIRE , IdUnite=2698 , CodeArticle=0070200200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2002 AND idunite=2698;
DELETE FROM tb_log_stock WHERE codearticle='0070200200';
DELETE FROM tb_inventaire WHERE codearticle='0070200200';
DELETE FROM tb_stock WHERE codearticle='0070200200';
DELETE FROM tb_article WHERE idarticle=2002;
DELETE FROM tb_unite WHERE idunite=2698 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2698) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2698);
COMMIT;

-- IdArticle=2003 , Designation=AIGLE D OR MAHANDRY MARRON P42 , Unite=PAIRE , IdUnite=2699 , CodeArticle=0070200300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2003 AND idunite=2699;
DELETE FROM tb_log_stock WHERE codearticle='0070200300';
DELETE FROM tb_inventaire WHERE codearticle='0070200300';
DELETE FROM tb_stock WHERE codearticle='0070200300';
DELETE FROM tb_article WHERE idarticle=2003;
DELETE FROM tb_unite WHERE idunite=2699 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2699) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2699);
COMMIT;

-- IdArticle=2004 , Designation=AIGLE D OR MAHANDRY MARRON P43 , Unite=PAIRE , IdUnite=2700 , CodeArticle=0070200400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2004 AND idunite=2700;
DELETE FROM tb_log_stock WHERE codearticle='0070200400';
DELETE FROM tb_inventaire WHERE codearticle='0070200400';
DELETE FROM tb_stock WHERE codearticle='0070200400';
DELETE FROM tb_article WHERE idarticle=2004;
DELETE FROM tb_unite WHERE idunite=2700 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2700) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2700);
COMMIT;

-- IdArticle=2560 , Designation=AIGLE D OR MAHANDRY MARRON P44 , Unite=PAIRE , IdUnite=3375 , CodeArticle=0070256000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2560 AND idunite=3375;
DELETE FROM tb_log_stock WHERE codearticle='0070256000';
DELETE FROM tb_inventaire WHERE codearticle='0070256000';
DELETE FROM tb_stock WHERE codearticle='0070256000';
DELETE FROM tb_article WHERE idarticle=2560;
DELETE FROM tb_unite WHERE idunite=3375 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3375) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3375);
COMMIT;

-- IdArticle=2561 , Designation=AIGLE D OR MAHANDRY MARRON P45 , Unite=PAIRE , IdUnite=3376 , CodeArticle=0070256100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2561 AND idunite=3376;
DELETE FROM tb_log_stock WHERE codearticle='0070256100';
DELETE FROM tb_inventaire WHERE codearticle='0070256100';
DELETE FROM tb_stock WHERE codearticle='0070256100';
DELETE FROM tb_article WHERE idarticle=2561;
DELETE FROM tb_unite WHERE idunite=3376 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3376) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3376);
COMMIT;

-- IdArticle=2454 , Designation=AIGLE D OR MAHASOA MARINE P36 , Unite=PAIRE , IdUnite=3234 , CodeArticle=0070245400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2454 AND idunite=3234;
DELETE FROM tb_log_stock WHERE codearticle='0070245400';
DELETE FROM tb_inventaire WHERE codearticle='0070245400';
DELETE FROM tb_stock WHERE codearticle='0070245400';
DELETE FROM tb_article WHERE idarticle=2454;
DELETE FROM tb_unite WHERE idunite=3234 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3234) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3234);
COMMIT;

-- IdArticle=2455 , Designation=AIGLE D OR MAHASOA MARINE P37 , Unite=PAIRE , IdUnite=3235 , CodeArticle=0070245500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2455 AND idunite=3235;
DELETE FROM tb_log_stock WHERE codearticle='0070245500';
DELETE FROM tb_inventaire WHERE codearticle='0070245500';
DELETE FROM tb_stock WHERE codearticle='0070245500';
DELETE FROM tb_article WHERE idarticle=2455;
DELETE FROM tb_unite WHERE idunite=3235 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3235) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3235);
COMMIT;

-- IdArticle=2456 , Designation=AIGLE D OR MAHASOA MARINE P38 , Unite=PAIRE , IdUnite=3236 , CodeArticle=0070245600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2456 AND idunite=3236;
DELETE FROM tb_log_stock WHERE codearticle='0070245600';
DELETE FROM tb_inventaire WHERE codearticle='0070245600';
DELETE FROM tb_stock WHERE codearticle='0070245600';
DELETE FROM tb_article WHERE idarticle=2456;
DELETE FROM tb_unite WHERE idunite=3236 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3236) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3236);
COMMIT;

-- IdArticle=2457 , Designation=AIGLE D OR MAHASOA MARINE P39 , Unite=PAIRE , IdUnite=3237 , CodeArticle=0070245700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2457 AND idunite=3237;
DELETE FROM tb_log_stock WHERE codearticle='0070245700';
DELETE FROM tb_inventaire WHERE codearticle='0070245700';
DELETE FROM tb_stock WHERE codearticle='0070245700';
DELETE FROM tb_article WHERE idarticle=2457;
DELETE FROM tb_unite WHERE idunite=3237 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3237) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3237);
COMMIT;

-- IdArticle=2458 , Designation=AIGLE D OR MAHASOA MARINE P40 , Unite=PAIRE , IdUnite=3238 , CodeArticle=0070245800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2458 AND idunite=3238;
DELETE FROM tb_log_stock WHERE codearticle='0070245800';
DELETE FROM tb_inventaire WHERE codearticle='0070245800';
DELETE FROM tb_stock WHERE codearticle='0070245800';
DELETE FROM tb_article WHERE idarticle=2458;
DELETE FROM tb_unite WHERE idunite=3238 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3238) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3238);
COMMIT;

-- IdArticle=2494 , Designation=AIGLE D OR MAHEFA MARRON P39 , Unite=PAIRE , IdUnite=3274 , CodeArticle=0070249400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2494 AND idunite=3274;
DELETE FROM tb_log_stock WHERE codearticle='0070249400';
DELETE FROM tb_inventaire WHERE codearticle='0070249400';
DELETE FROM tb_stock WHERE codearticle='0070249400';
DELETE FROM tb_article WHERE idarticle=2494;
DELETE FROM tb_unite WHERE idunite=3274 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3274) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3274);
COMMIT;

-- IdArticle=2495 , Designation=AIGLE D OR MAHEFA MARRON P40 , Unite=PAIRE , IdUnite=3275 , CodeArticle=0070249500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2495 AND idunite=3275;
DELETE FROM tb_log_stock WHERE codearticle='0070249500';
DELETE FROM tb_inventaire WHERE codearticle='0070249500';
DELETE FROM tb_stock WHERE codearticle='0070249500';
DELETE FROM tb_article WHERE idarticle=2495;
DELETE FROM tb_unite WHERE idunite=3275 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3275) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3275);
COMMIT;

-- IdArticle=2496 , Designation=AIGLE D OR MAHEFA MARRON P41 , Unite=PAIRE , IdUnite=3276 , CodeArticle=0070249600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2496 AND idunite=3276;
DELETE FROM tb_log_stock WHERE codearticle='0070249600';
DELETE FROM tb_inventaire WHERE codearticle='0070249600';
DELETE FROM tb_stock WHERE codearticle='0070249600';
DELETE FROM tb_article WHERE idarticle=2496;
DELETE FROM tb_unite WHERE idunite=3276 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3276) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3276);
COMMIT;

-- IdArticle=2497 , Designation=AIGLE D OR MAHEFA MARRON P42 , Unite=PAIRE , IdUnite=3277 , CodeArticle=0070249700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2497 AND idunite=3277;
DELETE FROM tb_log_stock WHERE codearticle='0070249700';
DELETE FROM tb_inventaire WHERE codearticle='0070249700';
DELETE FROM tb_stock WHERE codearticle='0070249700';
DELETE FROM tb_article WHERE idarticle=2497;
DELETE FROM tb_unite WHERE idunite=3277 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3277) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3277);
COMMIT;

-- IdArticle=2498 , Designation=AIGLE D OR MAHEFA MARRON P43 , Unite=PAIRE , IdUnite=3278 , CodeArticle=0070249800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2498 AND idunite=3278;
DELETE FROM tb_log_stock WHERE codearticle='0070249800';
DELETE FROM tb_inventaire WHERE codearticle='0070249800';
DELETE FROM tb_stock WHERE codearticle='0070249800';
DELETE FROM tb_article WHERE idarticle=2498;
DELETE FROM tb_unite WHERE idunite=3278 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3278) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3278);
COMMIT;

-- IdArticle=2499 , Designation=AIGLE D OR MAHEFA MARRON P44 , Unite=PAIRE , IdUnite=3279 , CodeArticle=0070249900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2499 AND idunite=3279;
DELETE FROM tb_log_stock WHERE codearticle='0070249900';
DELETE FROM tb_inventaire WHERE codearticle='0070249900';
DELETE FROM tb_stock WHERE codearticle='0070249900';
DELETE FROM tb_article WHERE idarticle=2499;
DELETE FROM tb_unite WHERE idunite=3279 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3279) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3279);
COMMIT;

-- IdArticle=2500 , Designation=AIGLE D OR MAHEFA MARRON P45 , Unite=PAIRE , IdUnite=3280 , CodeArticle=0070250000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2500 AND idunite=3280;
DELETE FROM tb_log_stock WHERE codearticle='0070250000';
DELETE FROM tb_inventaire WHERE codearticle='0070250000';
DELETE FROM tb_stock WHERE codearticle='0070250000';
DELETE FROM tb_article WHERE idarticle=2500;
DELETE FROM tb_unite WHERE idunite=3280 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3280) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3280);
COMMIT;

-- IdArticle=1880 , Designation=AIGLE D OR MAHEFA NOIR P39 , Unite=PAIRE , IdUnite=2524 , CodeArticle=0070188000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1880 AND idunite=2524;
DELETE FROM tb_log_stock WHERE codearticle='0070188000';
DELETE FROM tb_inventaire WHERE codearticle='0070188000';
DELETE FROM tb_stock WHERE codearticle='0070188000';
DELETE FROM tb_article WHERE idarticle=1880;
DELETE FROM tb_unite WHERE idunite=2524 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2524) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2524);
COMMIT;

-- IdArticle=2483 , Designation=AIGLE D OR MAHEFA NOIR P40 , Unite=PAIRE , IdUnite=3263 , CodeArticle=0070248300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2483 AND idunite=3263;
DELETE FROM tb_log_stock WHERE codearticle='0070248300';
DELETE FROM tb_inventaire WHERE codearticle='0070248300';
DELETE FROM tb_stock WHERE codearticle='0070248300';
DELETE FROM tb_article WHERE idarticle=2483;
DELETE FROM tb_unite WHERE idunite=3263 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3263) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3263);
COMMIT;

-- IdArticle=2484 , Designation=AIGLE D OR MAHEFA NOIR P41 , Unite=PAIRE , IdUnite=3264 , CodeArticle=0070248400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2484 AND idunite=3264;
DELETE FROM tb_log_stock WHERE codearticle='0070248400';
DELETE FROM tb_inventaire WHERE codearticle='0070248400';
DELETE FROM tb_stock WHERE codearticle='0070248400';
DELETE FROM tb_article WHERE idarticle=2484;
DELETE FROM tb_unite WHERE idunite=3264 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3264) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3264);
COMMIT;

-- IdArticle=2485 , Designation=AIGLE D OR MAHEFA NOIR P42 , Unite=PAIRE , IdUnite=3265 , CodeArticle=0070248500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2485 AND idunite=3265;
DELETE FROM tb_log_stock WHERE codearticle='0070248500';
DELETE FROM tb_inventaire WHERE codearticle='0070248500';
DELETE FROM tb_stock WHERE codearticle='0070248500';
DELETE FROM tb_article WHERE idarticle=2485;
DELETE FROM tb_unite WHERE idunite=3265 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3265) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3265);
COMMIT;

-- IdArticle=2486 , Designation=AIGLE D OR MAHEFA NOIR P43 , Unite=PAIRE , IdUnite=3266 , CodeArticle=0070248600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2486 AND idunite=3266;
DELETE FROM tb_log_stock WHERE codearticle='0070248600';
DELETE FROM tb_inventaire WHERE codearticle='0070248600';
DELETE FROM tb_stock WHERE codearticle='0070248600';
DELETE FROM tb_article WHERE idarticle=2486;
DELETE FROM tb_unite WHERE idunite=3266 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3266) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3266);
COMMIT;

-- IdArticle=2487 , Designation=AIGLE D OR MAHEFA NOIR P44 , Unite=PAIRE , IdUnite=3267 , CodeArticle=0070248700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2487 AND idunite=3267;
DELETE FROM tb_log_stock WHERE codearticle='0070248700';
DELETE FROM tb_inventaire WHERE codearticle='0070248700';
DELETE FROM tb_stock WHERE codearticle='0070248700';
DELETE FROM tb_article WHERE idarticle=2487;
DELETE FROM tb_unite WHERE idunite=3267 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3267) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3267);
COMMIT;

-- IdArticle=2488 , Designation=AIGLE D OR MAHEFA NOIR P45 , Unite=PAIRE , IdUnite=3268 , CodeArticle=0070248800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2488 AND idunite=3268;
DELETE FROM tb_log_stock WHERE codearticle='0070248800';
DELETE FROM tb_inventaire WHERE codearticle='0070248800';
DELETE FROM tb_stock WHERE codearticle='0070248800';
DELETE FROM tb_article WHERE idarticle=2488;
DELETE FROM tb_unite WHERE idunite=3268 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3268) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3268);
COMMIT;

-- IdArticle=3289 , Designation=AIGLE D OR MANAMPY C P39 , Unite=PAIRE , IdUnite=4311 , CodeArticle=0070328900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3289 AND idunite=4311;
DELETE FROM tb_log_stock WHERE codearticle='0070328900';
DELETE FROM tb_inventaire WHERE codearticle='0070328900';
DELETE FROM tb_stock WHERE codearticle='0070328900';
DELETE FROM tb_article WHERE idarticle=3289;
DELETE FROM tb_unite WHERE idunite=4311 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4311) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4311);
COMMIT;

-- IdArticle=3288 , Designation=AIGLE D OR MANAMPY C P40 , Unite=PAIRE , IdUnite=4310 , CodeArticle=0070328800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3288 AND idunite=4310;
DELETE FROM tb_log_stock WHERE codearticle='0070328800';
DELETE FROM tb_inventaire WHERE codearticle='0070328800';
DELETE FROM tb_stock WHERE codearticle='0070328800';
DELETE FROM tb_article WHERE idarticle=3288;
DELETE FROM tb_unite WHERE idunite=4310 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4310) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4310);
COMMIT;

-- IdArticle=3287 , Designation=AIGLE D OR MANAMPY C P41 , Unite=PAIRE , IdUnite=4309 , CodeArticle=0070328700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3287 AND idunite=4309;
DELETE FROM tb_log_stock WHERE codearticle='0070328700';
DELETE FROM tb_inventaire WHERE codearticle='0070328700';
DELETE FROM tb_stock WHERE codearticle='0070328700';
DELETE FROM tb_article WHERE idarticle=3287;
DELETE FROM tb_unite WHERE idunite=4309 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4309) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4309);
COMMIT;

-- IdArticle=3286 , Designation=AIGLE D OR MANAMPY C P42 , Unite=PAIRE , IdUnite=4308 , CodeArticle=0070328600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3286 AND idunite=4308;
DELETE FROM tb_log_stock WHERE codearticle='0070328600';
DELETE FROM tb_inventaire WHERE codearticle='0070328600';
DELETE FROM tb_stock WHERE codearticle='0070328600';
DELETE FROM tb_article WHERE idarticle=3286;
DELETE FROM tb_unite WHERE idunite=4308 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4308) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4308);
COMMIT;

-- IdArticle=3285 , Designation=AIGLE D OR MANAMPY C P43 , Unite=PAIRE , IdUnite=4307 , CodeArticle=0070328500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3285 AND idunite=4307;
DELETE FROM tb_log_stock WHERE codearticle='0070328500';
DELETE FROM tb_inventaire WHERE codearticle='0070328500';
DELETE FROM tb_stock WHERE codearticle='0070328500';
DELETE FROM tb_article WHERE idarticle=3285;
DELETE FROM tb_unite WHERE idunite=4307 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4307) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4307);
COMMIT;

-- IdArticle=2085 , Designation=AIGLE D OR MANJA-MAT P38 , Unite=PAIRE , IdUnite=2797 , CodeArticle=0070208500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2085 AND idunite=2797;
DELETE FROM tb_log_stock WHERE codearticle='0070208500';
DELETE FROM tb_inventaire WHERE codearticle='0070208500';
DELETE FROM tb_stock WHERE codearticle='0070208500';
DELETE FROM tb_article WHERE idarticle=2085;
DELETE FROM tb_unite WHERE idunite=2797 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2797) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2797);
COMMIT;

-- IdArticle=2083 , Designation=AIGLE D OR MANJA-MAT P39 , Unite=PAIRE , IdUnite=2795 , CodeArticle=0070208300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2083 AND idunite=2795;
DELETE FROM tb_log_stock WHERE codearticle='0070208300';
DELETE FROM tb_inventaire WHERE codearticle='0070208300';
DELETE FROM tb_stock WHERE codearticle='0070208300';
DELETE FROM tb_article WHERE idarticle=2083;
DELETE FROM tb_unite WHERE idunite=2795 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2795) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2795);
COMMIT;

-- IdArticle=2084 , Designation=AIGLE D OR MANJA-MAT P40 , Unite=PAIRE , IdUnite=2796 , CodeArticle=0070208400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2084 AND idunite=2796;
DELETE FROM tb_log_stock WHERE codearticle='0070208400';
DELETE FROM tb_inventaire WHERE codearticle='0070208400';
DELETE FROM tb_stock WHERE codearticle='0070208400';
DELETE FROM tb_article WHERE idarticle=2084;
DELETE FROM tb_unite WHERE idunite=2796 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2796) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2796);
COMMIT;

-- IdArticle=2086 , Designation=AIGLE D OR MANJA-MAT P41 , Unite=PAIRE , IdUnite=2798 , CodeArticle=0070208600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2086 AND idunite=2798;
DELETE FROM tb_log_stock WHERE codearticle='0070208600';
DELETE FROM tb_inventaire WHERE codearticle='0070208600';
DELETE FROM tb_stock WHERE codearticle='0070208600';
DELETE FROM tb_article WHERE idarticle=2086;
DELETE FROM tb_unite WHERE idunite=2798 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2798) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2798);
COMMIT;

-- IdArticle=2079 , Designation=AIGLE D OR MANJA-NOIR P35 , Unite=PAIRE , IdUnite=2791 , CodeArticle=0070207900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2079 AND idunite=2791;
DELETE FROM tb_log_stock WHERE codearticle='0070207900';
DELETE FROM tb_inventaire WHERE codearticle='0070207900';
DELETE FROM tb_stock WHERE codearticle='0070207900';
DELETE FROM tb_article WHERE idarticle=2079;
DELETE FROM tb_unite WHERE idunite=2791 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2791) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2791);
COMMIT;

-- IdArticle=2080 , Designation=AIGLE D OR MANJA-NOIR P36 , Unite=PAIRE , IdUnite=2792 , CodeArticle=0070208000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2080 AND idunite=2792;
DELETE FROM tb_log_stock WHERE codearticle='0070208000';
DELETE FROM tb_inventaire WHERE codearticle='0070208000';
DELETE FROM tb_stock WHERE codearticle='0070208000';
DELETE FROM tb_article WHERE idarticle=2080;
DELETE FROM tb_unite WHERE idunite=2792 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2792) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2792);
COMMIT;

-- IdArticle=2081 , Designation=AIGLE D OR MANJA-NOIR P37 , Unite=PAIRE , IdUnite=2793 , CodeArticle=0070208100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2081 AND idunite=2793;
DELETE FROM tb_log_stock WHERE codearticle='0070208100';
DELETE FROM tb_inventaire WHERE codearticle='0070208100';
DELETE FROM tb_stock WHERE codearticle='0070208100';
DELETE FROM tb_article WHERE idarticle=2081;
DELETE FROM tb_unite WHERE idunite=2793 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2793) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2793);
COMMIT;

-- IdArticle=1940 , Designation=AIGLE D OR MANJA-NOIR P38 , Unite=PAIRE , IdUnite=2598 , CodeArticle=0070194000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1940 AND idunite=2598;
DELETE FROM tb_log_stock WHERE codearticle='0070194000';
DELETE FROM tb_inventaire WHERE codearticle='0070194000';
DELETE FROM tb_stock WHERE codearticle='0070194000';
DELETE FROM tb_article WHERE idarticle=1940;
DELETE FROM tb_unite WHERE idunite=2598 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2598) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2598);
COMMIT;

-- IdArticle=1941 , Designation=AIGLE D OR MANJA-NOIR P39 , Unite=PAIRE , IdUnite=2599 , CodeArticle=0070194100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1941 AND idunite=2599;
DELETE FROM tb_log_stock WHERE codearticle='0070194100';
DELETE FROM tb_inventaire WHERE codearticle='0070194100';
DELETE FROM tb_stock WHERE codearticle='0070194100';
DELETE FROM tb_article WHERE idarticle=1941;
DELETE FROM tb_unite WHERE idunite=2599 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2599) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2599);
COMMIT;

-- IdArticle=1942 , Designation=AIGLE D OR MANJA-NOIR P40 , Unite=PAIRE , IdUnite=2600 , CodeArticle=0070194200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1942 AND idunite=2600;
DELETE FROM tb_log_stock WHERE codearticle='0070194200';
DELETE FROM tb_inventaire WHERE codearticle='0070194200';
DELETE FROM tb_stock WHERE codearticle='0070194200';
DELETE FROM tb_article WHERE idarticle=1942;
DELETE FROM tb_unite WHERE idunite=2600 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2600) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2600);
COMMIT;

-- IdArticle=1943 , Designation=AIGLE D OR MANJA-NOIR P41 , Unite=PAIRE , IdUnite=2601 , CodeArticle=0070194300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1943 AND idunite=2601;
DELETE FROM tb_log_stock WHERE codearticle='0070194300';
DELETE FROM tb_inventaire WHERE codearticle='0070194300';
DELETE FROM tb_stock WHERE codearticle='0070194300';
DELETE FROM tb_article WHERE idarticle=1943;
DELETE FROM tb_unite WHERE idunite=2601 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2601) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2601);
COMMIT;

-- IdArticle=1872 , Designation=AIGLE D OR MARTIORA _ MRN P35 , Unite=PAIRE , IdUnite=2516 , CodeArticle=0070187200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1872 AND idunite=2516;
DELETE FROM tb_log_stock WHERE codearticle='0070187200';
DELETE FROM tb_inventaire WHERE codearticle='0070187200';
DELETE FROM tb_stock WHERE codearticle='0070187200';
DELETE FROM tb_article WHERE idarticle=1872;
DELETE FROM tb_unite WHERE idunite=2516 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2516) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2516);
COMMIT;

-- IdArticle=1981 , Designation=AIGLE D OR MARTIORA _ MRN P36 , Unite=PAIRE , IdUnite=2677 , CodeArticle=0070198100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1981 AND idunite=2677;
DELETE FROM tb_log_stock WHERE codearticle='0070198100';
DELETE FROM tb_inventaire WHERE codearticle='0070198100';
DELETE FROM tb_stock WHERE codearticle='0070198100';
DELETE FROM tb_article WHERE idarticle=1981;
DELETE FROM tb_unite WHERE idunite=2677 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2677) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2677);
COMMIT;

-- IdArticle=1982 , Designation=AIGLE D OR MARTIORA _ MRN P37 , Unite=PAIRE , IdUnite=2678 , CodeArticle=0070198200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1982 AND idunite=2678;
DELETE FROM tb_log_stock WHERE codearticle='0070198200';
DELETE FROM tb_inventaire WHERE codearticle='0070198200';
DELETE FROM tb_stock WHERE codearticle='0070198200';
DELETE FROM tb_article WHERE idarticle=1982;
DELETE FROM tb_unite WHERE idunite=2678 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2678) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2678);
COMMIT;

-- IdArticle=1983 , Designation=AIGLE D OR MARTIORA _ MRN P38 , Unite=PAIRE , IdUnite=2679 , CodeArticle=0070198300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1983 AND idunite=2679;
DELETE FROM tb_log_stock WHERE codearticle='0070198300';
DELETE FROM tb_inventaire WHERE codearticle='0070198300';
DELETE FROM tb_stock WHERE codearticle='0070198300';
DELETE FROM tb_article WHERE idarticle=1983;
DELETE FROM tb_unite WHERE idunite=2679 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2679) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2679);
COMMIT;

-- IdArticle=1984 , Designation=AIGLE D OR MARTIORA _ MRN P39 , Unite=PAIRE , IdUnite=2680 , CodeArticle=0070198400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1984 AND idunite=2680;
DELETE FROM tb_log_stock WHERE codearticle='0070198400';
DELETE FROM tb_inventaire WHERE codearticle='0070198400';
DELETE FROM tb_stock WHERE codearticle='0070198400';
DELETE FROM tb_article WHERE idarticle=1984;
DELETE FROM tb_unite WHERE idunite=2680 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2680) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2680);
COMMIT;

-- IdArticle=1985 , Designation=AIGLE D OR MARTIORA _ MRN P41 , Unite=PAIRE , IdUnite=2681 , CodeArticle=0070198500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1985 AND idunite=2681;
DELETE FROM tb_log_stock WHERE codearticle='0070198500';
DELETE FROM tb_inventaire WHERE codearticle='0070198500';
DELETE FROM tb_stock WHERE codearticle='0070198500';
DELETE FROM tb_article WHERE idarticle=1985;
DELETE FROM tb_unite WHERE idunite=2681 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2681) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2681);
COMMIT;

-- IdArticle=1986 , Designation=AIGLE D OR MARTIORA _ MRN P42 , Unite=PAIRE , IdUnite=2682 , CodeArticle=0070198600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1986 AND idunite=2682;
DELETE FROM tb_log_stock WHERE codearticle='0070198600';
DELETE FROM tb_inventaire WHERE codearticle='0070198600';
DELETE FROM tb_stock WHERE codearticle='0070198600';
DELETE FROM tb_article WHERE idarticle=1986;
DELETE FROM tb_unite WHERE idunite=2682 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2682) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2682);
COMMIT;

-- IdArticle=1987 , Designation=AIGLE D OR MARTIORA _ MRN P43 , Unite=PAIRE , IdUnite=2683 , CodeArticle=0070198700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1987 AND idunite=2683;
DELETE FROM tb_log_stock WHERE codearticle='0070198700';
DELETE FROM tb_inventaire WHERE codearticle='0070198700';
DELETE FROM tb_stock WHERE codearticle='0070198700';
DELETE FROM tb_article WHERE idarticle=1987;
DELETE FROM tb_unite WHERE idunite=2683 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2683) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2683);
COMMIT;

-- IdArticle=2250 , Designation=AIGLE D OR MARTIORA_ MRN P40 , Unite=PAIRE , IdUnite=2993 , CodeArticle=0070225000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2250 AND idunite=2993;
DELETE FROM tb_log_stock WHERE codearticle='0070225000';
DELETE FROM tb_inventaire WHERE codearticle='0070225000';
DELETE FROM tb_stock WHERE codearticle='0070225000';
DELETE FROM tb_article WHERE idarticle=2250;
DELETE FROM tb_unite WHERE idunite=2993 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2993) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2993);
COMMIT;

-- IdArticle=1873 , Designation=AIGLE D OR MASOANDRO_FOM , Unite=PAIRE , IdUnite=2517 , CodeArticle=0070187300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1873 AND idunite=2517;
DELETE FROM tb_log_stock WHERE codearticle='0070187300';
DELETE FROM tb_inventaire WHERE codearticle='0070187300';
DELETE FROM tb_stock WHERE codearticle='0070187300';
DELETE FROM tb_article WHERE idarticle=1873;
DELETE FROM tb_unite WHERE idunite=2517 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2517) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2517);
COMMIT;

-- IdArticle=2802 , Designation=AIGLE D OR MIATO MAR P41 , Unite=PAIRE , IdUnite=3702 , CodeArticle=0070280200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2802 AND idunite=3702;
DELETE FROM tb_log_stock WHERE codearticle='0070280200';
DELETE FROM tb_inventaire WHERE codearticle='0070280200';
DELETE FROM tb_stock WHERE codearticle='0070280200';
DELETE FROM tb_article WHERE idarticle=2802;
DELETE FROM tb_unite WHERE idunite=3702 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3702) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3702);
COMMIT;

-- IdArticle=2801 , Designation=AIGLE D OR MIATO MAR P42 , Unite=PAIRE , IdUnite=3701 , CodeArticle=0070280100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2801 AND idunite=3701;
DELETE FROM tb_log_stock WHERE codearticle='0070280100';
DELETE FROM tb_inventaire WHERE codearticle='0070280100';
DELETE FROM tb_stock WHERE codearticle='0070280100';
DELETE FROM tb_article WHERE idarticle=2801;
DELETE FROM tb_unite WHERE idunite=3701 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3701) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3701);
COMMIT;

-- IdArticle=2036 , Designation=AIGLE D OR MILY CARMEL P36 , Unite=PAIRE , IdUnite=2732 , CodeArticle=0070203600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2036 AND idunite=2732;
DELETE FROM tb_log_stock WHERE codearticle='0070203600';
DELETE FROM tb_inventaire WHERE codearticle='0070203600';
DELETE FROM tb_stock WHERE codearticle='0070203600';
DELETE FROM tb_article WHERE idarticle=2036;
DELETE FROM tb_unite WHERE idunite=2732 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2732) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2732);
COMMIT;

-- IdArticle=2037 , Designation=AIGLE D OR MILY CARMEL P37 , Unite=PAIRE , IdUnite=2733 , CodeArticle=0070203700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2037 AND idunite=2733;
DELETE FROM tb_log_stock WHERE codearticle='0070203700';
DELETE FROM tb_inventaire WHERE codearticle='0070203700';
DELETE FROM tb_stock WHERE codearticle='0070203700';
DELETE FROM tb_article WHERE idarticle=2037;
DELETE FROM tb_unite WHERE idunite=2733 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2733) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2733);
COMMIT;

-- IdArticle=2038 , Designation=AIGLE D OR MILY CARMEL P38 , Unite=PAIRE , IdUnite=2734 , CodeArticle=0070203800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2038 AND idunite=2734;
DELETE FROM tb_log_stock WHERE codearticle='0070203800';
DELETE FROM tb_inventaire WHERE codearticle='0070203800';
DELETE FROM tb_stock WHERE codearticle='0070203800';
DELETE FROM tb_article WHERE idarticle=2038;
DELETE FROM tb_unite WHERE idunite=2734 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2734) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2734);
COMMIT;

-- IdArticle=2039 , Designation=AIGLE D OR MILY CARMEL P39 , Unite=PAIRE , IdUnite=2735 , CodeArticle=0070203900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2039 AND idunite=2735;
DELETE FROM tb_log_stock WHERE codearticle='0070203900';
DELETE FROM tb_inventaire WHERE codearticle='0070203900';
DELETE FROM tb_stock WHERE codearticle='0070203900';
DELETE FROM tb_article WHERE idarticle=2039;
DELETE FROM tb_unite WHERE idunite=2735 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2735) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2735);
COMMIT;

-- IdArticle=2040 , Designation=AIGLE D OR MILY CARMEL P40 , Unite=PAIRE , IdUnite=2736 , CodeArticle=0070204000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2040 AND idunite=2736;
DELETE FROM tb_log_stock WHERE codearticle='0070204000';
DELETE FROM tb_inventaire WHERE codearticle='0070204000';
DELETE FROM tb_stock WHERE codearticle='0070204000';
DELETE FROM tb_article WHERE idarticle=2040;
DELETE FROM tb_unite WHERE idunite=2736 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2736) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2736);
COMMIT;

-- IdArticle=2041 , Designation=AIGLE D OR MILY CARMEL P41 , Unite=PAIRE , IdUnite=2737 , CodeArticle=0070204100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2041 AND idunite=2737;
DELETE FROM tb_log_stock WHERE codearticle='0070204100';
DELETE FROM tb_inventaire WHERE codearticle='0070204100';
DELETE FROM tb_stock WHERE codearticle='0070204100';
DELETE FROM tb_article WHERE idarticle=2041;
DELETE FROM tb_unite WHERE idunite=2737 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2737) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2737);
COMMIT;

-- IdArticle=2209 , Designation=AIGLE D OR MILY-MARRON P35 , Unite=PAIRE , IdUnite=2942 , CodeArticle=0070220900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2209 AND idunite=2942;
DELETE FROM tb_log_stock WHERE codearticle='0070220900';
DELETE FROM tb_inventaire WHERE codearticle='0070220900';
DELETE FROM tb_stock WHERE codearticle='0070220900';
DELETE FROM tb_article WHERE idarticle=2209;
DELETE FROM tb_unite WHERE idunite=2942 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2942) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2942);
COMMIT;

-- IdArticle=1927 , Designation=AIGLE D OR MILY-MARRON P38 , Unite=PAIRE , IdUnite=2585 , CodeArticle=0070192700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1927 AND idunite=2585;
DELETE FROM tb_log_stock WHERE codearticle='0070192700';
DELETE FROM tb_inventaire WHERE codearticle='0070192700';
DELETE FROM tb_stock WHERE codearticle='0070192700';
DELETE FROM tb_article WHERE idarticle=1927;
DELETE FROM tb_unite WHERE idunite=2585 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2585) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2585);
COMMIT;

-- IdArticle=1928 , Designation=AIGLE D OR MILY-MARRON P39 , Unite=PAIRE , IdUnite=2586 , CodeArticle=0070192800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1928 AND idunite=2586;
DELETE FROM tb_log_stock WHERE codearticle='0070192800';
DELETE FROM tb_inventaire WHERE codearticle='0070192800';
DELETE FROM tb_stock WHERE codearticle='0070192800';
DELETE FROM tb_article WHERE idarticle=1928;
DELETE FROM tb_unite WHERE idunite=2586 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2586) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2586);
COMMIT;

-- IdArticle=1930 , Designation=AIGLE D OR MILY-MARRON P41 , Unite=PAIRE , IdUnite=2588 , CodeArticle=0070193000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1930 AND idunite=2588;
DELETE FROM tb_log_stock WHERE codearticle='0070193000';
DELETE FROM tb_inventaire WHERE codearticle='0070193000';
DELETE FROM tb_stock WHERE codearticle='0070193000';
DELETE FROM tb_article WHERE idarticle=1930;
DELETE FROM tb_unite WHERE idunite=2588 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2588) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2588);
COMMIT;

-- IdArticle=1931 , Designation=AIGLE D OR MILY-MARRON P42 , Unite=PAIRE , IdUnite=2589 , CodeArticle=0070193100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1931 AND idunite=2589;
DELETE FROM tb_log_stock WHERE codearticle='0070193100';
DELETE FROM tb_inventaire WHERE codearticle='0070193100';
DELETE FROM tb_stock WHERE codearticle='0070193100';
DELETE FROM tb_article WHERE idarticle=1931;
DELETE FROM tb_unite WHERE idunite=2589 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2589) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2589);
COMMIT;

-- IdArticle=2183 , Designation=AIGLE D OR MILY-MARRON P43 , Unite=PAIRE , IdUnite=2910 , CodeArticle=0070218300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2183 AND idunite=2910;
DELETE FROM tb_log_stock WHERE codearticle='0070218300';
DELETE FROM tb_inventaire WHERE codearticle='0070218300';
DELETE FROM tb_stock WHERE codearticle='0070218300';
DELETE FROM tb_article WHERE idarticle=2183;
DELETE FROM tb_unite WHERE idunite=2910 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2910) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2910);
COMMIT;

-- IdArticle=3384 , Designation=AIGLE D OR MIRA P40 , Unite=PAIRE , IdUnite=4420 , CodeArticle=0070338400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3384 AND idunite=4420;
DELETE FROM tb_log_stock WHERE codearticle='0070338400';
DELETE FROM tb_inventaire WHERE codearticle='0070338400';
DELETE FROM tb_stock WHERE codearticle='0070338400';
DELETE FROM tb_article WHERE idarticle=3384;
DELETE FROM tb_unite WHERE idunite=4420 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4420) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4420);
COMMIT;

-- IdArticle=3380 , Designation=AIGLE D OR MIRA P43 , Unite=PAIRE , IdUnite=4416 , CodeArticle=0070338000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3380 AND idunite=4416;
DELETE FROM tb_log_stock WHERE codearticle='0070338000';
DELETE FROM tb_inventaire WHERE codearticle='0070338000';
DELETE FROM tb_stock WHERE codearticle='0070338000';
DELETE FROM tb_article WHERE idarticle=3380;
DELETE FROM tb_unite WHERE idunite=4416 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4416) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4416);
COMMIT;

-- IdArticle=3379 , Designation=AIGLE D OR MIRA P44 , Unite=PAIRE , IdUnite=4415 , CodeArticle=0070337900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3379 AND idunite=4415;
DELETE FROM tb_log_stock WHERE codearticle='0070337900';
DELETE FROM tb_inventaire WHERE codearticle='0070337900';
DELETE FROM tb_stock WHERE codearticle='0070337900';
DELETE FROM tb_article WHERE idarticle=3379;
DELETE FROM tb_unite WHERE idunite=4415 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4415) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4415);
COMMIT;

-- IdArticle=2896 , Designation=AIGLE D OR MIRENTY MAR P40 , Unite=PAIRE , IdUnite=3826 , CodeArticle=0070289600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2896 AND idunite=3826;
DELETE FROM tb_log_stock WHERE codearticle='0070289600';
DELETE FROM tb_inventaire WHERE codearticle='0070289600';
DELETE FROM tb_stock WHERE codearticle='0070289600';
DELETE FROM tb_article WHERE idarticle=2896;
DELETE FROM tb_unite WHERE idunite=3826 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3826) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3826);
COMMIT;

-- IdArticle=2897 , Designation=AIGLE D OR MIRENTY MAR P41 , Unite=PAIRE , IdUnite=3827 , CodeArticle=0070289700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2897 AND idunite=3827;
DELETE FROM tb_log_stock WHERE codearticle='0070289700';
DELETE FROM tb_inventaire WHERE codearticle='0070289700';
DELETE FROM tb_stock WHERE codearticle='0070289700';
DELETE FROM tb_article WHERE idarticle=2897;
DELETE FROM tb_unite WHERE idunite=3827 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3827) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3827);
COMMIT;

-- IdArticle=2898 , Designation=AIGLE D OR MIRENTY MAR P42 , Unite=PAIRE , IdUnite=3828 , CodeArticle=0070289800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2898 AND idunite=3828;
DELETE FROM tb_log_stock WHERE codearticle='0070289800';
DELETE FROM tb_inventaire WHERE codearticle='0070289800';
DELETE FROM tb_stock WHERE codearticle='0070289800';
DELETE FROM tb_article WHERE idarticle=2898;
DELETE FROM tb_unite WHERE idunite=3828 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3828) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3828);
COMMIT;

-- IdArticle=2900 , Designation=AIGLE D OR MIRENTY MAR P44 , Unite=PAIRE , IdUnite=3830 , CodeArticle=0070290000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2900 AND idunite=3830;
DELETE FROM tb_log_stock WHERE codearticle='0070290000';
DELETE FROM tb_inventaire WHERE codearticle='0070290000';
DELETE FROM tb_stock WHERE codearticle='0070290000';
DELETE FROM tb_article WHERE idarticle=2900;
DELETE FROM tb_unite WHERE idunite=3830 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3830) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3830);
COMMIT;

-- IdArticle=2769 , Designation=AIGLE D OR MIRENTY NOIR P40 , Unite=PAIRE , IdUnite=3669 , CodeArticle=0070276900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2769 AND idunite=3669;
DELETE FROM tb_log_stock WHERE codearticle='0070276900';
DELETE FROM tb_inventaire WHERE codearticle='0070276900';
DELETE FROM tb_stock WHERE codearticle='0070276900';
DELETE FROM tb_article WHERE idarticle=2769;
DELETE FROM tb_unite WHERE idunite=3669 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3669) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3669);
COMMIT;

-- IdArticle=2768 , Designation=AIGLE D OR MIRENTY NOIR P41 , Unite=PAIRE , IdUnite=3668 , CodeArticle=0070276800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2768 AND idunite=3668;
DELETE FROM tb_log_stock WHERE codearticle='0070276800';
DELETE FROM tb_inventaire WHERE codearticle='0070276800';
DELETE FROM tb_stock WHERE codearticle='0070276800';
DELETE FROM tb_article WHERE idarticle=2768;
DELETE FROM tb_unite WHERE idunite=3668 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3668) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3668);
COMMIT;

-- IdArticle=2767 , Designation=AIGLE D OR MIRENTY NOIR P42 , Unite=PAIRE , IdUnite=3667 , CodeArticle=0070276700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2767 AND idunite=3667;
DELETE FROM tb_log_stock WHERE codearticle='0070276700';
DELETE FROM tb_inventaire WHERE codearticle='0070276700';
DELETE FROM tb_stock WHERE codearticle='0070276700';
DELETE FROM tb_article WHERE idarticle=2767;
DELETE FROM tb_unite WHERE idunite=3667 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3667) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3667);
COMMIT;

-- IdArticle=2765 , Designation=AIGLE D OR MIRENTY NOIR P44 , Unite=PAIRE , IdUnite=3665 , CodeArticle=0070276500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2765 AND idunite=3665;
DELETE FROM tb_log_stock WHERE codearticle='0070276500';
DELETE FROM tb_inventaire WHERE codearticle='0070276500';
DELETE FROM tb_stock WHERE codearticle='0070276500';
DELETE FROM tb_article WHERE idarticle=2765;
DELETE FROM tb_unite WHERE idunite=3665 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3665) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3665);
COMMIT;

-- IdArticle=2894 , Designation=AIGLE D OR MIRENTY NOIR P45 , Unite=PAIRE , IdUnite=3824 , CodeArticle=0070289400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2894 AND idunite=3824;
DELETE FROM tb_log_stock WHERE codearticle='0070289400';
DELETE FROM tb_inventaire WHERE codearticle='0070289400';
DELETE FROM tb_stock WHERE codearticle='0070289400';
DELETE FROM tb_article WHERE idarticle=2894;
DELETE FROM tb_unite WHERE idunite=3824 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3824) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3824);
COMMIT;

-- IdArticle=2046 , Designation=AIGLE D OR MIRINDRA NOIR P35 , Unite=PAIRE , IdUnite=2742 , CodeArticle=0070204600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2046 AND idunite=2742;
DELETE FROM tb_log_stock WHERE codearticle='0070204600';
DELETE FROM tb_inventaire WHERE codearticle='0070204600';
DELETE FROM tb_stock WHERE codearticle='0070204600';
DELETE FROM tb_article WHERE idarticle=2046;
DELETE FROM tb_unite WHERE idunite=2742 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2742) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2742);
COMMIT;

-- IdArticle=2047 , Designation=AIGLE D OR MIRINDRA NOIR P36 , Unite=PAIRE , IdUnite=2743 , CodeArticle=0070204700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2047 AND idunite=2743;
DELETE FROM tb_log_stock WHERE codearticle='0070204700';
DELETE FROM tb_inventaire WHERE codearticle='0070204700';
DELETE FROM tb_stock WHERE codearticle='0070204700';
DELETE FROM tb_article WHERE idarticle=2047;
DELETE FROM tb_unite WHERE idunite=2743 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2743) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2743);
COMMIT;

-- IdArticle=2048 , Designation=AIGLE D OR MIRINDRA NOIR P37 , Unite=PAIRE , IdUnite=2744 , CodeArticle=0070204800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2048 AND idunite=2744;
DELETE FROM tb_log_stock WHERE codearticle='0070204800';
DELETE FROM tb_inventaire WHERE codearticle='0070204800';
DELETE FROM tb_stock WHERE codearticle='0070204800';
DELETE FROM tb_article WHERE idarticle=2048;
DELETE FROM tb_unite WHERE idunite=2744 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2744) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2744);
COMMIT;

-- IdArticle=2049 , Designation=AIGLE D OR MIRINDRA NOIR P38 , Unite=PAIRE , IdUnite=2745 , CodeArticle=0070204900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2049 AND idunite=2745;
DELETE FROM tb_log_stock WHERE codearticle='0070204900';
DELETE FROM tb_inventaire WHERE codearticle='0070204900';
DELETE FROM tb_stock WHERE codearticle='0070204900';
DELETE FROM tb_article WHERE idarticle=2049;
DELETE FROM tb_unite WHERE idunite=2745 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2745) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2745);
COMMIT;

-- IdArticle=2050 , Designation=AIGLE D OR MIRINDRA NOIR P39 , Unite=PAIRE , IdUnite=2746 , CodeArticle=0070205000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2050 AND idunite=2746;
DELETE FROM tb_log_stock WHERE codearticle='0070205000';
DELETE FROM tb_inventaire WHERE codearticle='0070205000';
DELETE FROM tb_stock WHERE codearticle='0070205000';
DELETE FROM tb_article WHERE idarticle=2050;
DELETE FROM tb_unite WHERE idunite=2746 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2746) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2746);
COMMIT;

-- IdArticle=2051 , Designation=AIGLE D OR MIRINDRA NOIR P40 , Unite=PAIRE , IdUnite=2747 , CodeArticle=0070205100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2051 AND idunite=2747;
DELETE FROM tb_log_stock WHERE codearticle='0070205100';
DELETE FROM tb_inventaire WHERE codearticle='0070205100';
DELETE FROM tb_stock WHERE codearticle='0070205100';
DELETE FROM tb_article WHERE idarticle=2051;
DELETE FROM tb_unite WHERE idunite=2747 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2747) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2747);
COMMIT;

-- IdArticle=2052 , Designation=AIGLE D OR MIRINDRA NOIR P41 , Unite=PAIRE , IdUnite=2748 , CodeArticle=0070205200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2052 AND idunite=2748;
DELETE FROM tb_log_stock WHERE codearticle='0070205200';
DELETE FROM tb_inventaire WHERE codearticle='0070205200';
DELETE FROM tb_stock WHERE codearticle='0070205200';
DELETE FROM tb_article WHERE idarticle=2052;
DELETE FROM tb_unite WHERE idunite=2748 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2748) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2748);
COMMIT;

-- IdArticle=2953 , Designation=AIGLE D OR MIRINDRA ROB P28 , Unite=PAIRE , IdUnite=3883 , CodeArticle=0070295300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2953 AND idunite=3883;
DELETE FROM tb_log_stock WHERE codearticle='0070295300';
DELETE FROM tb_inventaire WHERE codearticle='0070295300';
DELETE FROM tb_stock WHERE codearticle='0070295300';
DELETE FROM tb_article WHERE idarticle=2953;
DELETE FROM tb_unite WHERE idunite=3883 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3883) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3883);
COMMIT;

-- IdArticle=2954 , Designation=AIGLE D OR MIRINDRA ROB P29 , Unite=PAIRE , IdUnite=3884 , CodeArticle=0070295400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2954 AND idunite=3884;
DELETE FROM tb_log_stock WHERE codearticle='0070295400';
DELETE FROM tb_inventaire WHERE codearticle='0070295400';
DELETE FROM tb_stock WHERE codearticle='0070295400';
DELETE FROM tb_article WHERE idarticle=2954;
DELETE FROM tb_unite WHERE idunite=3884 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3884) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3884);
COMMIT;

-- IdArticle=2957 , Designation=AIGLE D OR MIRINDRA ROB P30 , Unite=PAIRE , IdUnite=3887 , CodeArticle=0070295700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2957 AND idunite=3887;
DELETE FROM tb_log_stock WHERE codearticle='0070295700';
DELETE FROM tb_inventaire WHERE codearticle='0070295700';
DELETE FROM tb_stock WHERE codearticle='0070295700';
DELETE FROM tb_article WHERE idarticle=2957;
DELETE FROM tb_unite WHERE idunite=3887 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3887) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3887);
COMMIT;

-- IdArticle=2958 , Designation=AIGLE D OR MIRINDRA ROB P31 , Unite=PAIRE , IdUnite=3888 , CodeArticle=0070295800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2958 AND idunite=3888;
DELETE FROM tb_log_stock WHERE codearticle='0070295800';
DELETE FROM tb_inventaire WHERE codearticle='0070295800';
DELETE FROM tb_stock WHERE codearticle='0070295800';
DELETE FROM tb_article WHERE idarticle=2958;
DELETE FROM tb_unite WHERE idunite=3888 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3888) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3888);
COMMIT;

-- IdArticle=2959 , Designation=AIGLE D OR MIRINDRA ROB P32 , Unite=PAIRE , IdUnite=3889 , CodeArticle=0070295900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2959 AND idunite=3889;
DELETE FROM tb_log_stock WHERE codearticle='0070295900';
DELETE FROM tb_inventaire WHERE codearticle='0070295900';
DELETE FROM tb_stock WHERE codearticle='0070295900';
DELETE FROM tb_article WHERE idarticle=2959;
DELETE FROM tb_unite WHERE idunite=3889 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3889) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3889);
COMMIT;

-- IdArticle=2955 , Designation=AIGLE D OR MIRINDRA ROB P33 , Unite=PAIRE , IdUnite=3885 , CodeArticle=0070295500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2955 AND idunite=3885;
DELETE FROM tb_log_stock WHERE codearticle='0070295500';
DELETE FROM tb_inventaire WHERE codearticle='0070295500';
DELETE FROM tb_stock WHERE codearticle='0070295500';
DELETE FROM tb_article WHERE idarticle=2955;
DELETE FROM tb_unite WHERE idunite=3885 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3885) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3885);
COMMIT;

-- IdArticle=2956 , Designation=AIGLE D OR MIRINDRA ROB P34 , Unite=PAIRE , IdUnite=3886 , CodeArticle=0070295600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2956 AND idunite=3886;
DELETE FROM tb_log_stock WHERE codearticle='0070295600';
DELETE FROM tb_inventaire WHERE codearticle='0070295600';
DELETE FROM tb_stock WHERE codearticle='0070295600';
DELETE FROM tb_article WHERE idarticle=2956;
DELETE FROM tb_unite WHERE idunite=3886 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3886) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3886);
COMMIT;

-- IdArticle=2138 , Designation=AIGLE D OR MIRINDRA-MARRON P35 , Unite=PAIRE , IdUnite=2853 , CodeArticle=0070213800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2138 AND idunite=2853;
DELETE FROM tb_log_stock WHERE codearticle='0070213800';
DELETE FROM tb_inventaire WHERE codearticle='0070213800';
DELETE FROM tb_stock WHERE codearticle='0070213800';
DELETE FROM tb_article WHERE idarticle=2138;
DELETE FROM tb_unite WHERE idunite=2853 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2853) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2853);
COMMIT;

-- IdArticle=1920 , Designation=AIGLE D OR MIRINDRA-MARRON P37 , Unite=PAIRE , IdUnite=2578 , CodeArticle=0070192000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1920 AND idunite=2578;
DELETE FROM tb_log_stock WHERE codearticle='0070192000';
DELETE FROM tb_inventaire WHERE codearticle='0070192000';
DELETE FROM tb_stock WHERE codearticle='0070192000';
DELETE FROM tb_article WHERE idarticle=1920;
DELETE FROM tb_unite WHERE idunite=2578 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2578) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2578);
COMMIT;

-- IdArticle=1921 , Designation=AIGLE D OR MIRINDRA-MARRON P38 , Unite=PAIRE , IdUnite=2579 , CodeArticle=0070192100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1921 AND idunite=2579;
DELETE FROM tb_log_stock WHERE codearticle='0070192100';
DELETE FROM tb_inventaire WHERE codearticle='0070192100';
DELETE FROM tb_stock WHERE codearticle='0070192100';
DELETE FROM tb_article WHERE idarticle=1921;
DELETE FROM tb_unite WHERE idunite=2579 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2579) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2579);
COMMIT;

-- IdArticle=1922 , Designation=AIGLE D OR MIRINDRA-MARRON P39 , Unite=PAIRE , IdUnite=2580 , CodeArticle=0070192200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1922 AND idunite=2580;
DELETE FROM tb_log_stock WHERE codearticle='0070192200';
DELETE FROM tb_inventaire WHERE codearticle='0070192200';
DELETE FROM tb_stock WHERE codearticle='0070192200';
DELETE FROM tb_article WHERE idarticle=1922;
DELETE FROM tb_unite WHERE idunite=2580 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2580) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2580);
COMMIT;

-- IdArticle=1923 , Designation=AIGLE D OR MIRINDRA-MARRON P40 , Unite=PAIRE , IdUnite=2581 , CodeArticle=0070192300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1923 AND idunite=2581;
DELETE FROM tb_log_stock WHERE codearticle='0070192300';
DELETE FROM tb_inventaire WHERE codearticle='0070192300';
DELETE FROM tb_stock WHERE codearticle='0070192300';
DELETE FROM tb_article WHERE idarticle=1923;
DELETE FROM tb_unite WHERE idunite=2581 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2581) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2581);
COMMIT;

-- IdArticle=1926 , Designation=AIGLE D OR MIRINDRA-MARRON P41 , Unite=PAIRE , IdUnite=2584 , CodeArticle=0070192600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1926 AND idunite=2584;
DELETE FROM tb_log_stock WHERE codearticle='0070192600';
DELETE FROM tb_inventaire WHERE codearticle='0070192600';
DELETE FROM tb_stock WHERE codearticle='0070192600';
DELETE FROM tb_article WHERE idarticle=1926;
DELETE FROM tb_unite WHERE idunite=2584 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2584) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2584);
COMMIT;

-- IdArticle=2332 , Designation=AIGLE D OR MIZA MAR P36 , Unite=PAIRE , IdUnite=3080 , CodeArticle=0070233200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2332 AND idunite=3080;
DELETE FROM tb_log_stock WHERE codearticle='0070233200';
DELETE FROM tb_inventaire WHERE codearticle='0070233200';
DELETE FROM tb_stock WHERE codearticle='0070233200';
DELETE FROM tb_article WHERE idarticle=2332;
DELETE FROM tb_unite WHERE idunite=3080 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3080) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3080);
COMMIT;

-- IdArticle=2333 , Designation=AIGLE D OR MIZA MAR P37 , Unite=PAIRE , IdUnite=3081 , CodeArticle=0070233300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2333 AND idunite=3081;
DELETE FROM tb_log_stock WHERE codearticle='0070233300';
DELETE FROM tb_inventaire WHERE codearticle='0070233300';
DELETE FROM tb_stock WHERE codearticle='0070233300';
DELETE FROM tb_article WHERE idarticle=2333;
DELETE FROM tb_unite WHERE idunite=3081 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3081) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3081);
COMMIT;

-- IdArticle=2334 , Designation=AIGLE D OR MIZA MAR P38 , Unite=PAIRE , IdUnite=3082 , CodeArticle=0070233400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2334 AND idunite=3082;
DELETE FROM tb_log_stock WHERE codearticle='0070233400';
DELETE FROM tb_inventaire WHERE codearticle='0070233400';
DELETE FROM tb_stock WHERE codearticle='0070233400';
DELETE FROM tb_article WHERE idarticle=2334;
DELETE FROM tb_unite WHERE idunite=3082 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3082) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3082);
COMMIT;

-- IdArticle=2335 , Designation=AIGLE D OR MIZA MAR P39 , Unite=PAIRE , IdUnite=3083 , CodeArticle=0070233500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2335 AND idunite=3083;
DELETE FROM tb_log_stock WHERE codearticle='0070233500';
DELETE FROM tb_inventaire WHERE codearticle='0070233500';
DELETE FROM tb_stock WHERE codearticle='0070233500';
DELETE FROM tb_article WHERE idarticle=2335;
DELETE FROM tb_unite WHERE idunite=3083 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3083) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3083);
COMMIT;

-- IdArticle=2336 , Designation=AIGLE D OR MIZA MAR P40 , Unite=PAIRE , IdUnite=3084 , CodeArticle=0070233600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2336 AND idunite=3084;
DELETE FROM tb_log_stock WHERE codearticle='0070233600';
DELETE FROM tb_inventaire WHERE codearticle='0070233600';
DELETE FROM tb_stock WHERE codearticle='0070233600';
DELETE FROM tb_article WHERE idarticle=2336;
DELETE FROM tb_unite WHERE idunite=3084 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3084) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3084);
COMMIT;

-- IdArticle=2337 , Designation=AIGLE D OR MIZA MAR P41 , Unite=PAIRE , IdUnite=3085 , CodeArticle=0070233700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2337 AND idunite=3085;
DELETE FROM tb_log_stock WHERE codearticle='0070233700';
DELETE FROM tb_inventaire WHERE codearticle='0070233700';
DELETE FROM tb_stock WHERE codearticle='0070233700';
DELETE FROM tb_article WHERE idarticle=2337;
DELETE FROM tb_unite WHERE idunite=3085 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3085) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3085);
COMMIT;

-- IdArticle=2338 , Designation=AIGLE D OR MIZA MAR P42 , Unite=PAIRE , IdUnite=3086 , CodeArticle=0070233800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2338 AND idunite=3086;
DELETE FROM tb_log_stock WHERE codearticle='0070233800';
DELETE FROM tb_inventaire WHERE codearticle='0070233800';
DELETE FROM tb_stock WHERE codearticle='0070233800';
DELETE FROM tb_article WHERE idarticle=2338;
DELETE FROM tb_unite WHERE idunite=3086 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3086) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3086);
COMMIT;

-- IdArticle=2339 , Designation=AIGLE D OR MIZA MAR P43 , Unite=PAIRE , IdUnite=3087 , CodeArticle=0070233900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2339 AND idunite=3087;
DELETE FROM tb_log_stock WHERE codearticle='0070233900';
DELETE FROM tb_inventaire WHERE codearticle='0070233900';
DELETE FROM tb_stock WHERE codearticle='0070233900';
DELETE FROM tb_article WHERE idarticle=2339;
DELETE FROM tb_unite WHERE idunite=3087 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3087) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3087);
COMMIT;

-- IdArticle=3371 , Designation=AIGLE D OR NIARY CO P40 , Unite=PAIRE , IdUnite=4407 , CodeArticle=0070337100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3371 AND idunite=4407;
DELETE FROM tb_log_stock WHERE codearticle='0070337100';
DELETE FROM tb_inventaire WHERE codearticle='0070337100';
DELETE FROM tb_stock WHERE codearticle='0070337100';
DELETE FROM tb_article WHERE idarticle=3371;
DELETE FROM tb_unite WHERE idunite=4407 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4407) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4407);
COMMIT;

-- IdArticle=3370 , Designation=AIGLE D OR NIARY CO P41 , Unite=PAIRE , IdUnite=4406 , CodeArticle=0070337000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3370 AND idunite=4406;
DELETE FROM tb_log_stock WHERE codearticle='0070337000';
DELETE FROM tb_inventaire WHERE codearticle='0070337000';
DELETE FROM tb_stock WHERE codearticle='0070337000';
DELETE FROM tb_article WHERE idarticle=3370;
DELETE FROM tb_unite WHERE idunite=4406 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4406) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4406);
COMMIT;

-- IdArticle=3369 , Designation=AIGLE D OR NIARY CO P42 , Unite=PAIRE , IdUnite=4405 , CodeArticle=0070336900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3369 AND idunite=4405;
DELETE FROM tb_log_stock WHERE codearticle='0070336900';
DELETE FROM tb_inventaire WHERE codearticle='0070336900';
DELETE FROM tb_stock WHERE codearticle='0070336900';
DELETE FROM tb_article WHERE idarticle=3369;
DELETE FROM tb_unite WHERE idunite=4405 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4405) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4405);
COMMIT;

-- IdArticle=3351 , Designation=AIGLE D OR NIARY CO P44 , Unite=PAIRE , IdUnite=4387 , CodeArticle=0070335100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3351 AND idunite=4387;
DELETE FROM tb_log_stock WHERE codearticle='0070335100';
DELETE FROM tb_inventaire WHERE codearticle='0070335100';
DELETE FROM tb_stock WHERE codearticle='0070335100';
DELETE FROM tb_article WHERE idarticle=3351;
DELETE FROM tb_unite WHERE idunite=4387 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4387) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4387);
COMMIT;

-- IdArticle=3326 , Designation=AIGLE D OR NJARY CO P35 , Unite=PAIRE , IdUnite=4348 , CodeArticle=0070332600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3326 AND idunite=4348;
DELETE FROM tb_log_stock WHERE codearticle='0070332600';
DELETE FROM tb_inventaire WHERE codearticle='0070332600';
DELETE FROM tb_stock WHERE codearticle='0070332600';
DELETE FROM tb_article WHERE idarticle=3326;
DELETE FROM tb_unite WHERE idunite=4348 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4348) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4348);
COMMIT;

-- IdArticle=3325 , Designation=AIGLE D OR NJARY CO P36 , Unite=PAIRE , IdUnite=4347 , CodeArticle=0070332500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3325 AND idunite=4347;
DELETE FROM tb_log_stock WHERE codearticle='0070332500';
DELETE FROM tb_inventaire WHERE codearticle='0070332500';
DELETE FROM tb_stock WHERE codearticle='0070332500';
DELETE FROM tb_article WHERE idarticle=3325;
DELETE FROM tb_unite WHERE idunite=4347 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4347) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4347);
COMMIT;

-- IdArticle=3324 , Designation=AIGLE D OR NJARY CO P37 , Unite=PAIRE , IdUnite=4346 , CodeArticle=0070332400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3324 AND idunite=4346;
DELETE FROM tb_log_stock WHERE codearticle='0070332400';
DELETE FROM tb_inventaire WHERE codearticle='0070332400';
DELETE FROM tb_stock WHERE codearticle='0070332400';
DELETE FROM tb_article WHERE idarticle=3324;
DELETE FROM tb_unite WHERE idunite=4346 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4346) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4346);
COMMIT;

-- IdArticle=3323 , Designation=AIGLE D OR NJARY CO P38 , Unite=PAIRE , IdUnite=4345 , CodeArticle=0070332300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3323 AND idunite=4345;
DELETE FROM tb_log_stock WHERE codearticle='0070332300';
DELETE FROM tb_inventaire WHERE codearticle='0070332300';
DELETE FROM tb_stock WHERE codearticle='0070332300';
DELETE FROM tb_article WHERE idarticle=3323;
DELETE FROM tb_unite WHERE idunite=4345 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4345) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4345);
COMMIT;

-- IdArticle=3320 , Designation=AIGLE D OR NJARY CO P41 , Unite=PAIRE , IdUnite=4342 , CodeArticle=0070332000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3320 AND idunite=4342;
DELETE FROM tb_log_stock WHERE codearticle='0070332000';
DELETE FROM tb_inventaire WHERE codearticle='0070332000';
DELETE FROM tb_stock WHERE codearticle='0070332000';
DELETE FROM tb_article WHERE idarticle=3320;
DELETE FROM tb_unite WHERE idunite=4342 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4342) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4342);
COMMIT;

-- IdArticle=3319 , Designation=AIGLE D OR NJARY CO P42 , Unite=PAIRE , IdUnite=4341 , CodeArticle=0070331900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3319 AND idunite=4341;
DELETE FROM tb_log_stock WHERE codearticle='0070331900';
DELETE FROM tb_inventaire WHERE codearticle='0070331900';
DELETE FROM tb_stock WHERE codearticle='0070331900';
DELETE FROM tb_article WHERE idarticle=3319;
DELETE FROM tb_unite WHERE idunite=4341 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4341) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4341);
COMMIT;

-- IdArticle=2907 , Designation=AIGLE D OR NOTIANA-FR P20 , Unite=PAIRE , IdUnite=3837 , CodeArticle=0070290700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2907 AND idunite=3837;
DELETE FROM tb_log_stock WHERE codearticle='0070290700';
DELETE FROM tb_inventaire WHERE codearticle='0070290700';
DELETE FROM tb_stock WHERE codearticle='0070290700';
DELETE FROM tb_article WHERE idarticle=2907;
DELETE FROM tb_unite WHERE idunite=3837 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3837) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3837);
COMMIT;

-- IdArticle=2910 , Designation=AIGLE D OR NOTIANA-FR P22 , Unite=PAIRE , IdUnite=3840 , CodeArticle=0070291000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2910 AND idunite=3840;
DELETE FROM tb_log_stock WHERE codearticle='0070291000';
DELETE FROM tb_inventaire WHERE codearticle='0070291000';
DELETE FROM tb_stock WHERE codearticle='0070291000';
DELETE FROM tb_article WHERE idarticle=2910;
DELETE FROM tb_unite WHERE idunite=3840 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3840) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3840);
COMMIT;

-- IdArticle=2909 , Designation=AIGLE D OR NOTIANA-FR P23 , Unite=PAIRE , IdUnite=3839 , CodeArticle=0070290900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2909 AND idunite=3839;
DELETE FROM tb_log_stock WHERE codearticle='0070290900';
DELETE FROM tb_inventaire WHERE codearticle='0070290900';
DELETE FROM tb_stock WHERE codearticle='0070290900';
DELETE FROM tb_article WHERE idarticle=2909;
DELETE FROM tb_unite WHERE idunite=3839 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3839) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3839);
COMMIT;

-- IdArticle=2928 , Designation=AIGLE D OR NOTIANA-FR P24 , Unite=PAIRE , IdUnite=3858 , CodeArticle=0070292800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2928 AND idunite=3858;
DELETE FROM tb_log_stock WHERE codearticle='0070292800';
DELETE FROM tb_inventaire WHERE codearticle='0070292800';
DELETE FROM tb_stock WHERE codearticle='0070292800';
DELETE FROM tb_article WHERE idarticle=2928;
DELETE FROM tb_unite WHERE idunite=3858 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3858) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3858);
COMMIT;

-- IdArticle=2929 , Designation=AIGLE D OR NOTIANA-FR P25 , Unite=PAIRE , IdUnite=3859 , CodeArticle=0070292900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2929 AND idunite=3859;
DELETE FROM tb_log_stock WHERE codearticle='0070292900';
DELETE FROM tb_inventaire WHERE codearticle='0070292900';
DELETE FROM tb_stock WHERE codearticle='0070292900';
DELETE FROM tb_article WHERE idarticle=2929;
DELETE FROM tb_unite WHERE idunite=3859 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3859) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3859);
COMMIT;

-- IdArticle=2930 , Designation=AIGLE D OR NOTIANA-FR P26 , Unite=PAIRE , IdUnite=3860 , CodeArticle=0070293000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2930 AND idunite=3860;
DELETE FROM tb_log_stock WHERE codearticle='0070293000';
DELETE FROM tb_inventaire WHERE codearticle='0070293000';
DELETE FROM tb_stock WHERE codearticle='0070293000';
DELETE FROM tb_article WHERE idarticle=2930;
DELETE FROM tb_unite WHERE idunite=3860 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3860) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3860);
COMMIT;

-- IdArticle=2927 , Designation=AIGLE D OR NOTIANA-FR P27 , Unite=PAIRE , IdUnite=3857 , CodeArticle=0070292700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2927 AND idunite=3857;
DELETE FROM tb_log_stock WHERE codearticle='0070292700';
DELETE FROM tb_inventaire WHERE codearticle='0070292700';
DELETE FROM tb_stock WHERE codearticle='0070292700';
DELETE FROM tb_article WHERE idarticle=2927;
DELETE FROM tb_unite WHERE idunite=3857 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3857) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3857);
COMMIT;

-- IdArticle=2961 , Designation=AIGLE D OR NOTIANA-FR P28 , Unite=PAIRE , IdUnite=3891 , CodeArticle=0070296100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2961 AND idunite=3891;
DELETE FROM tb_log_stock WHERE codearticle='0070296100';
DELETE FROM tb_inventaire WHERE codearticle='0070296100';
DELETE FROM tb_stock WHERE codearticle='0070296100';
DELETE FROM tb_article WHERE idarticle=2961;
DELETE FROM tb_unite WHERE idunite=3891 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3891) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3891);
COMMIT;

-- IdArticle=2965 , Designation=AIGLE D OR NOTIANA-FR P29 , Unite=PAIRE , IdUnite=3895 , CodeArticle=0070296500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2965 AND idunite=3895;
DELETE FROM tb_log_stock WHERE codearticle='0070296500';
DELETE FROM tb_inventaire WHERE codearticle='0070296500';
DELETE FROM tb_stock WHERE codearticle='0070296500';
DELETE FROM tb_article WHERE idarticle=2965;
DELETE FROM tb_unite WHERE idunite=3895 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3895) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3895);
COMMIT;

-- IdArticle=2966 , Designation=AIGLE D OR NOTIANA-FR P30 , Unite=PAIRE , IdUnite=3896 , CodeArticle=0070296600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2966 AND idunite=3896;
DELETE FROM tb_log_stock WHERE codearticle='0070296600';
DELETE FROM tb_inventaire WHERE codearticle='0070296600';
DELETE FROM tb_stock WHERE codearticle='0070296600';
DELETE FROM tb_article WHERE idarticle=2966;
DELETE FROM tb_unite WHERE idunite=3896 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3896) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3896);
COMMIT;

-- IdArticle=2967 , Designation=AIGLE D OR NOTIANA-FR P31 , Unite=PAIRE , IdUnite=3897 , CodeArticle=0070296700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2967 AND idunite=3897;
DELETE FROM tb_log_stock WHERE codearticle='0070296700';
DELETE FROM tb_inventaire WHERE codearticle='0070296700';
DELETE FROM tb_stock WHERE codearticle='0070296700';
DELETE FROM tb_article WHERE idarticle=2967;
DELETE FROM tb_unite WHERE idunite=3897 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3897) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3897);
COMMIT;

-- IdArticle=2962 , Designation=AIGLE D OR NOTIANA-FR P32 , Unite=PAIRE , IdUnite=3892 , CodeArticle=0070296200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2962 AND idunite=3892;
DELETE FROM tb_log_stock WHERE codearticle='0070296200';
DELETE FROM tb_inventaire WHERE codearticle='0070296200';
DELETE FROM tb_stock WHERE codearticle='0070296200';
DELETE FROM tb_article WHERE idarticle=2962;
DELETE FROM tb_unite WHERE idunite=3892 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3892) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3892);
COMMIT;

-- IdArticle=2932 , Designation=AIGLE D OR NOTIANA-NOIR P24 , Unite=PAIRE , IdUnite=3862 , CodeArticle=0070293200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2932 AND idunite=3862;
DELETE FROM tb_log_stock WHERE codearticle='0070293200';
DELETE FROM tb_inventaire WHERE codearticle='0070293200';
DELETE FROM tb_stock WHERE codearticle='0070293200';
DELETE FROM tb_article WHERE idarticle=2932;
DELETE FROM tb_unite WHERE idunite=3862 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3862) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3862);
COMMIT;

-- IdArticle=2933 , Designation=AIGLE D OR NOTIANA-NOIR P25 , Unite=PAIRE , IdUnite=3863 , CodeArticle=0070293300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2933 AND idunite=3863;
DELETE FROM tb_log_stock WHERE codearticle='0070293300';
DELETE FROM tb_inventaire WHERE codearticle='0070293300';
DELETE FROM tb_stock WHERE codearticle='0070293300';
DELETE FROM tb_article WHERE idarticle=2933;
DELETE FROM tb_unite WHERE idunite=3863 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3863) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3863);
COMMIT;

-- IdArticle=3317 , Designation=AIGLE D OR PAPANGO C P36 , Unite=PAIRE , IdUnite=4339 , CodeArticle=0070331700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3317 AND idunite=4339;
DELETE FROM tb_log_stock WHERE codearticle='0070331700';
DELETE FROM tb_inventaire WHERE codearticle='0070331700';
DELETE FROM tb_stock WHERE codearticle='0070331700';
DELETE FROM tb_article WHERE idarticle=3317;
DELETE FROM tb_unite WHERE idunite=4339 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4339) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4339);
COMMIT;

-- IdArticle=3316 , Designation=AIGLE D OR PAPANGO C P37 , Unite=PAIRE , IdUnite=4338 , CodeArticle=0070331600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3316 AND idunite=4338;
DELETE FROM tb_log_stock WHERE codearticle='0070331600';
DELETE FROM tb_inventaire WHERE codearticle='0070331600';
DELETE FROM tb_stock WHERE codearticle='0070331600';
DELETE FROM tb_article WHERE idarticle=3316;
DELETE FROM tb_unite WHERE idunite=4338 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4338) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4338);
COMMIT;

-- IdArticle=3315 , Designation=AIGLE D OR PAPANGO C P38 , Unite=PAIRE , IdUnite=4337 , CodeArticle=0070331500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3315 AND idunite=4337;
DELETE FROM tb_log_stock WHERE codearticle='0070331500';
DELETE FROM tb_inventaire WHERE codearticle='0070331500';
DELETE FROM tb_stock WHERE codearticle='0070331500';
DELETE FROM tb_article WHERE idarticle=3315;
DELETE FROM tb_unite WHERE idunite=4337 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4337) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4337);
COMMIT;

-- IdArticle=3314 , Designation=AIGLE D OR PAPANGO C P39 , Unite=PAIRE , IdUnite=4336 , CodeArticle=0070331400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3314 AND idunite=4336;
DELETE FROM tb_log_stock WHERE codearticle='0070331400';
DELETE FROM tb_inventaire WHERE codearticle='0070331400';
DELETE FROM tb_stock WHERE codearticle='0070331400';
DELETE FROM tb_article WHERE idarticle=3314;
DELETE FROM tb_unite WHERE idunite=4336 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4336) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4336);
COMMIT;

-- IdArticle=3313 , Designation=AIGLE D OR PAPANGO C P40 , Unite=PAIRE , IdUnite=4335 , CodeArticle=0070331300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3313 AND idunite=4335;
DELETE FROM tb_log_stock WHERE codearticle='0070331300';
DELETE FROM tb_inventaire WHERE codearticle='0070331300';
DELETE FROM tb_stock WHERE codearticle='0070331300';
DELETE FROM tb_article WHERE idarticle=3313;
DELETE FROM tb_unite WHERE idunite=4335 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4335) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4335);
COMMIT;

-- IdArticle=3312 , Designation=AIGLE D OR PAPANGO C P41 , Unite=PAIRE , IdUnite=4334 , CodeArticle=0070331200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3312 AND idunite=4334;
DELETE FROM tb_log_stock WHERE codearticle='0070331200';
DELETE FROM tb_inventaire WHERE codearticle='0070331200';
DELETE FROM tb_stock WHERE codearticle='0070331200';
DELETE FROM tb_article WHERE idarticle=3312;
DELETE FROM tb_unite WHERE idunite=4334 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4334) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4334);
COMMIT;

-- IdArticle=3329 , Designation=AIGLE D OR RANJA CO P42 , Unite=PAIRE , IdUnite=4351 , CodeArticle=0070332900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3329 AND idunite=4351;
DELETE FROM tb_log_stock WHERE codearticle='0070332900';
DELETE FROM tb_inventaire WHERE codearticle='0070332900';
DELETE FROM tb_stock WHERE codearticle='0070332900';
DELETE FROM tb_article WHERE idarticle=3329;
DELETE FROM tb_unite WHERE idunite=4351 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4351) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4351);
COMMIT;

-- IdArticle=3328 , Designation=AIGLE D OR RANJA CO P43 , Unite=PAIRE , IdUnite=4350 , CodeArticle=0070332800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3328 AND idunite=4350;
DELETE FROM tb_log_stock WHERE codearticle='0070332800';
DELETE FROM tb_inventaire WHERE codearticle='0070332800';
DELETE FROM tb_stock WHERE codearticle='0070332800';
DELETE FROM tb_article WHERE idarticle=3328;
DELETE FROM tb_unite WHERE idunite=4350 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4350) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4350);
COMMIT;

-- IdArticle=3283 , Designation=AIGLE D OR REJO COU P35 , Unite=PAIRE , IdUnite=4305 , CodeArticle=0070328300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3283 AND idunite=4305;
DELETE FROM tb_log_stock WHERE codearticle='0070328300';
DELETE FROM tb_inventaire WHERE codearticle='0070328300';
DELETE FROM tb_stock WHERE codearticle='0070328300';
DELETE FROM tb_article WHERE idarticle=3283;
DELETE FROM tb_unite WHERE idunite=4305 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4305) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4305);
COMMIT;

-- IdArticle=3282 , Designation=AIGLE D OR REJO COU P36 , Unite=PAIRE , IdUnite=4304 , CodeArticle=0070328200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3282 AND idunite=4304;
DELETE FROM tb_log_stock WHERE codearticle='0070328200';
DELETE FROM tb_inventaire WHERE codearticle='0070328200';
DELETE FROM tb_stock WHERE codearticle='0070328200';
DELETE FROM tb_article WHERE idarticle=3282;
DELETE FROM tb_unite WHERE idunite=4304 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4304) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4304);
COMMIT;

-- IdArticle=3281 , Designation=AIGLE D OR REJO COU P37 , Unite=PAIRE , IdUnite=4303 , CodeArticle=0070328100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3281 AND idunite=4303;
DELETE FROM tb_log_stock WHERE codearticle='0070328100';
DELETE FROM tb_inventaire WHERE codearticle='0070328100';
DELETE FROM tb_stock WHERE codearticle='0070328100';
DELETE FROM tb_article WHERE idarticle=3281;
DELETE FROM tb_unite WHERE idunite=4303 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4303) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4303);
COMMIT;

-- IdArticle=3280 , Designation=AIGLE D OR REJO COU P38 , Unite=PAIRE , IdUnite=4302 , CodeArticle=0070328000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3280 AND idunite=4302;
DELETE FROM tb_log_stock WHERE codearticle='0070328000';
DELETE FROM tb_inventaire WHERE codearticle='0070328000';
DELETE FROM tb_stock WHERE codearticle='0070328000';
DELETE FROM tb_article WHERE idarticle=3280;
DELETE FROM tb_unite WHERE idunite=4302 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4302) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4302);
COMMIT;

-- IdArticle=3279 , Designation=AIGLE D OR REJO COU P39 , Unite=PAIRE , IdUnite=4301 , CodeArticle=0070327900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3279 AND idunite=4301;
DELETE FROM tb_log_stock WHERE codearticle='0070327900';
DELETE FROM tb_inventaire WHERE codearticle='0070327900';
DELETE FROM tb_stock WHERE codearticle='0070327900';
DELETE FROM tb_article WHERE idarticle=3279;
DELETE FROM tb_unite WHERE idunite=4301 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4301) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4301);
COMMIT;

-- IdArticle=3278 , Designation=AIGLE D OR REJO COU P40 , Unite=PAIRE , IdUnite=4300 , CodeArticle=0070327800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3278 AND idunite=4300;
DELETE FROM tb_log_stock WHERE codearticle='0070327800';
DELETE FROM tb_inventaire WHERE codearticle='0070327800';
DELETE FROM tb_stock WHERE codearticle='0070327800';
DELETE FROM tb_article WHERE idarticle=3278;
DELETE FROM tb_unite WHERE idunite=4300 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4300) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4300);
COMMIT;

-- IdArticle=3363 , Designation=AIGLE D OR REJO COU P42 , Unite=PAIRE , IdUnite=4399 , CodeArticle=0070336300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3363 AND idunite=4399;
DELETE FROM tb_log_stock WHERE codearticle='0070336300';
DELETE FROM tb_inventaire WHERE codearticle='0070336300';
DELETE FROM tb_stock WHERE codearticle='0070336300';
DELETE FROM tb_article WHERE idarticle=3363;
DELETE FROM tb_unite WHERE idunite=4399 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4399) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4399);
COMMIT;

-- IdArticle=3362 , Designation=AIGLE D OR REJO COU P43 , Unite=PAIRE , IdUnite=4398 , CodeArticle=0070336200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3362 AND idunite=4398;
DELETE FROM tb_log_stock WHERE codearticle='0070336200';
DELETE FROM tb_inventaire WHERE codearticle='0070336200';
DELETE FROM tb_stock WHERE codearticle='0070336200';
DELETE FROM tb_article WHERE idarticle=3362;
DELETE FROM tb_unite WHERE idunite=4398 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4398) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4398);
COMMIT;

-- IdArticle=3361 , Designation=AIGLE D OR REJO COU P44 , Unite=PAIRE , IdUnite=4397 , CodeArticle=0070336100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3361 AND idunite=4397;
DELETE FROM tb_log_stock WHERE codearticle='0070336100';
DELETE FROM tb_inventaire WHERE codearticle='0070336100';
DELETE FROM tb_stock WHERE codearticle='0070336100';
DELETE FROM tb_article WHERE idarticle=3361;
DELETE FROM tb_unite WHERE idunite=4397 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4397) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4397);
COMMIT;

-- IdArticle=2402 , Designation=AIGLE D OR ROSO NOIR P20 , Unite=PAIRE , IdUnite=3176 , CodeArticle=0070240200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2402 AND idunite=3176;
DELETE FROM tb_log_stock WHERE codearticle='0070240200';
DELETE FROM tb_inventaire WHERE codearticle='0070240200';
DELETE FROM tb_stock WHERE codearticle='0070240200';
DELETE FROM tb_article WHERE idarticle=2402;
DELETE FROM tb_unite WHERE idunite=3176 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3176) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3176);
COMMIT;

-- IdArticle=2403 , Designation=AIGLE D OR ROSO NOIR P21 , Unite=PAIRE , IdUnite=3177 , CodeArticle=0070240300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2403 AND idunite=3177;
DELETE FROM tb_log_stock WHERE codearticle='0070240300';
DELETE FROM tb_inventaire WHERE codearticle='0070240300';
DELETE FROM tb_stock WHERE codearticle='0070240300';
DELETE FROM tb_article WHERE idarticle=2403;
DELETE FROM tb_unite WHERE idunite=3177 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3177) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3177);
COMMIT;

-- IdArticle=2405 , Designation=AIGLE D OR ROSO NOIR P23 , Unite=PAIRE , IdUnite=3179 , CodeArticle=0070240500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2405 AND idunite=3179;
DELETE FROM tb_log_stock WHERE codearticle='0070240500';
DELETE FROM tb_inventaire WHERE codearticle='0070240500';
DELETE FROM tb_stock WHERE codearticle='0070240500';
DELETE FROM tb_article WHERE idarticle=2405;
DELETE FROM tb_unite WHERE idunite=3179 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3179) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3179);
COMMIT;

-- IdArticle=2407 , Designation=AIGLE D OR ROSO NOIR P25 , Unite=PAIRE , IdUnite=3181 , CodeArticle=0070240700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2407 AND idunite=3181;
DELETE FROM tb_log_stock WHERE codearticle='0070240700';
DELETE FROM tb_inventaire WHERE codearticle='0070240700';
DELETE FROM tb_stock WHERE codearticle='0070240700';
DELETE FROM tb_article WHERE idarticle=2407;
DELETE FROM tb_unite WHERE idunite=3181 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3181) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3181);
COMMIT;

-- IdArticle=2409 , Designation=AIGLE D OR ROSO NOIR P27 , Unite=PAIRE , IdUnite=3183 , CodeArticle=0070240900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2409 AND idunite=3183;
DELETE FROM tb_log_stock WHERE codearticle='0070240900';
DELETE FROM tb_inventaire WHERE codearticle='0070240900';
DELETE FROM tb_stock WHERE codearticle='0070240900';
DELETE FROM tb_article WHERE idarticle=2409;
DELETE FROM tb_unite WHERE idunite=3183 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3183) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3183);
COMMIT;

-- IdArticle=2413 , Designation=AIGLE D OR ROSO NOIR P31 , Unite=PAIRE , IdUnite=3187 , CodeArticle=0070241300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2413 AND idunite=3187;
DELETE FROM tb_log_stock WHERE codearticle='0070241300';
DELETE FROM tb_inventaire WHERE codearticle='0070241300';
DELETE FROM tb_stock WHERE codearticle='0070241300';
DELETE FROM tb_article WHERE idarticle=2413;
DELETE FROM tb_unite WHERE idunite=3187 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3187) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3187);
COMMIT;

-- IdArticle=2415 , Designation=AIGLE D OR ROSO NOIR P33 , Unite=PAIRE , IdUnite=3189 , CodeArticle=0070241500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2415 AND idunite=3189;
DELETE FROM tb_log_stock WHERE codearticle='0070241500';
DELETE FROM tb_inventaire WHERE codearticle='0070241500';
DELETE FROM tb_stock WHERE codearticle='0070241500';
DELETE FROM tb_article WHERE idarticle=2415;
DELETE FROM tb_unite WHERE idunite=3189 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3189) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3189);
COMMIT;

-- IdArticle=2416 , Designation=AIGLE D OR ROSO NOIR P34 , Unite=PAIRE , IdUnite=3190 , CodeArticle=0070241600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2416 AND idunite=3190;
DELETE FROM tb_log_stock WHERE codearticle='0070241600';
DELETE FROM tb_inventaire WHERE codearticle='0070241600';
DELETE FROM tb_stock WHERE codearticle='0070241600';
DELETE FROM tb_article WHERE idarticle=2416;
DELETE FROM tb_unite WHERE idunite=3190 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3190) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3190);
COMMIT;

-- IdArticle=2418 , Designation=AIGLE D OR ROSO NOIR P36 , Unite=PAIRE , IdUnite=3192 , CodeArticle=0070241800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2418 AND idunite=3192;
DELETE FROM tb_log_stock WHERE codearticle='0070241800';
DELETE FROM tb_inventaire WHERE codearticle='0070241800';
DELETE FROM tb_stock WHERE codearticle='0070241800';
DELETE FROM tb_article WHERE idarticle=2418;
DELETE FROM tb_unite WHERE idunite=3192 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3192) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3192);
COMMIT;

-- IdArticle=2419 , Designation=AIGLE D OR ROSO NOIR P37 , Unite=PAIRE , IdUnite=3193 , CodeArticle=0070241900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2419 AND idunite=3193;
DELETE FROM tb_log_stock WHERE codearticle='0070241900';
DELETE FROM tb_inventaire WHERE codearticle='0070241900';
DELETE FROM tb_stock WHERE codearticle='0070241900';
DELETE FROM tb_article WHERE idarticle=2419;
DELETE FROM tb_unite WHERE idunite=3193 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3193) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3193);
COMMIT;

-- IdArticle=2420 , Designation=AIGLE D OR ROSO NOIR P38 , Unite=PAIRE , IdUnite=3194 , CodeArticle=0070242000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2420 AND idunite=3194;
DELETE FROM tb_log_stock WHERE codearticle='0070242000';
DELETE FROM tb_inventaire WHERE codearticle='0070242000';
DELETE FROM tb_stock WHERE codearticle='0070242000';
DELETE FROM tb_article WHERE idarticle=2420;
DELETE FROM tb_unite WHERE idunite=3194 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3194) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3194);
COMMIT;

-- IdArticle=2474 , Designation=AIGLE D OR ROTSY VERT VERDANA P37 , Unite=PAIRE , IdUnite=3254 , CodeArticle=0070247400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2474 AND idunite=3254;
DELETE FROM tb_log_stock WHERE codearticle='0070247400';
DELETE FROM tb_inventaire WHERE codearticle='0070247400';
DELETE FROM tb_stock WHERE codearticle='0070247400';
DELETE FROM tb_article WHERE idarticle=2474;
DELETE FROM tb_unite WHERE idunite=3254 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3254) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3254);
COMMIT;

-- IdArticle=2475 , Designation=AIGLE D OR ROTSY VERT VERDANA P38 , Unite=PAIRE , IdUnite=3255 , CodeArticle=0070247500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2475 AND idunite=3255;
DELETE FROM tb_log_stock WHERE codearticle='0070247500';
DELETE FROM tb_inventaire WHERE codearticle='0070247500';
DELETE FROM tb_stock WHERE codearticle='0070247500';
DELETE FROM tb_article WHERE idarticle=2475;
DELETE FROM tb_unite WHERE idunite=3255 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3255) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3255);
COMMIT;

-- IdArticle=2477 , Designation=AIGLE D OR ROTSY VERT VERDANA P40 , Unite=PAIRE , IdUnite=3257 , CodeArticle=0070247700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2477 AND idunite=3257;
DELETE FROM tb_log_stock WHERE codearticle='0070247700';
DELETE FROM tb_inventaire WHERE codearticle='0070247700';
DELETE FROM tb_stock WHERE codearticle='0070247700';
DELETE FROM tb_article WHERE idarticle=2477;
DELETE FROM tb_unite WHERE idunite=3257 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3257) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3257);
COMMIT;

-- IdArticle=3295 , Designation=AIGLE D OR SAFIDY C P39 , Unite=PAIRE , IdUnite=4317 , CodeArticle=0070329500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3295 AND idunite=4317;
DELETE FROM tb_log_stock WHERE codearticle='0070329500';
DELETE FROM tb_inventaire WHERE codearticle='0070329500';
DELETE FROM tb_stock WHERE codearticle='0070329500';
DELETE FROM tb_article WHERE idarticle=3295;
DELETE FROM tb_unite WHERE idunite=4317 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4317) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4317);
COMMIT;

-- IdArticle=3294 , Designation=AIGLE D OR SAFIDY C P40 , Unite=PAIRE , IdUnite=4316 , CodeArticle=0070329400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3294 AND idunite=4316;
DELETE FROM tb_log_stock WHERE codearticle='0070329400';
DELETE FROM tb_inventaire WHERE codearticle='0070329400';
DELETE FROM tb_stock WHERE codearticle='0070329400';
DELETE FROM tb_article WHERE idarticle=3294;
DELETE FROM tb_unite WHERE idunite=4316 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4316) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4316);
COMMIT;

-- IdArticle=3293 , Designation=AIGLE D OR SAFIDY C P41 , Unite=PAIRE , IdUnite=4315 , CodeArticle=0070329300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3293 AND idunite=4315;
DELETE FROM tb_log_stock WHERE codearticle='0070329300';
DELETE FROM tb_inventaire WHERE codearticle='0070329300';
DELETE FROM tb_stock WHERE codearticle='0070329300';
DELETE FROM tb_article WHERE idarticle=3293;
DELETE FROM tb_unite WHERE idunite=4315 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4315) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4315);
COMMIT;

-- IdArticle=3292 , Designation=AIGLE D OR SAFIDY C P42 , Unite=PAIRE , IdUnite=4314 , CodeArticle=0070329200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3292 AND idunite=4314;
DELETE FROM tb_log_stock WHERE codearticle='0070329200';
DELETE FROM tb_inventaire WHERE codearticle='0070329200';
DELETE FROM tb_stock WHERE codearticle='0070329200';
DELETE FROM tb_article WHERE idarticle=3292;
DELETE FROM tb_unite WHERE idunite=4314 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4314) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4314);
COMMIT;

-- IdArticle=3229 , Designation=AIGLE D OR SANGANY OCR P36 , Unite=PAIRE , IdUnite=4246 , CodeArticle=0070322900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3229 AND idunite=4246;
DELETE FROM tb_log_stock WHERE codearticle='0070322900';
DELETE FROM tb_inventaire WHERE codearticle='0070322900';
DELETE FROM tb_stock WHERE codearticle='0070322900';
DELETE FROM tb_article WHERE idarticle=3229;
DELETE FROM tb_unite WHERE idunite=4246 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4246) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4246);
COMMIT;

-- IdArticle=3385 , Designation=AIGLE D OR SANJY P39 , Unite=PAIRE , IdUnite=4421 , CodeArticle=0070338500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3385 AND idunite=4421;
DELETE FROM tb_log_stock WHERE codearticle='0070338500';
DELETE FROM tb_inventaire WHERE codearticle='0070338500';
DELETE FROM tb_stock WHERE codearticle='0070338500';
DELETE FROM tb_article WHERE idarticle=3385;
DELETE FROM tb_unite WHERE idunite=4421 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4421) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4421);
COMMIT;

-- IdArticle=3377 , Designation=AIGLE D OR SANJY P41 , Unite=PAIRE , IdUnite=4413 , CodeArticle=0070337700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3377 AND idunite=4413;
DELETE FROM tb_log_stock WHERE codearticle='0070337700';
DELETE FROM tb_inventaire WHERE codearticle='0070337700';
DELETE FROM tb_stock WHERE codearticle='0070337700';
DELETE FROM tb_article WHERE idarticle=3377;
DELETE FROM tb_unite WHERE idunite=4413 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4413) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4413);
COMMIT;

-- IdArticle=3374 , Designation=AIGLE D OR SANJY P42 , Unite=PAIRE , IdUnite=4410 , CodeArticle=0070337400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3374 AND idunite=4410;
DELETE FROM tb_log_stock WHERE codearticle='0070337400';
DELETE FROM tb_inventaire WHERE codearticle='0070337400';
DELETE FROM tb_stock WHERE codearticle='0070337400';
DELETE FROM tb_article WHERE idarticle=3374;
DELETE FROM tb_unite WHERE idunite=4410 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4410) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4410);
COMMIT;

-- IdArticle=3373 , Designation=AIGLE D OR SANJY P43 , Unite=PAIRE , IdUnite=4409 , CodeArticle=0070337300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3373 AND idunite=4409;
DELETE FROM tb_log_stock WHERE codearticle='0070337300';
DELETE FROM tb_inventaire WHERE codearticle='0070337300';
DELETE FROM tb_stock WHERE codearticle='0070337300';
DELETE FROM tb_article WHERE idarticle=3373;
DELETE FROM tb_unite WHERE idunite=4409 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4409) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4409);
COMMIT;

-- IdArticle=3381 , Designation=AIGLE D OR SANJY P44 , Unite=PAIRE , IdUnite=4417 , CodeArticle=0070338100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3381 AND idunite=4417;
DELETE FROM tb_log_stock WHERE codearticle='0070338100';
DELETE FROM tb_inventaire WHERE codearticle='0070338100';
DELETE FROM tb_stock WHERE codearticle='0070338100';
DELETE FROM tb_article WHERE idarticle=3381;
DELETE FROM tb_unite WHERE idunite=4417 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4417) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4417);
COMMIT;

-- IdArticle=3382 , Designation=AIGLE D OR SANJY P45 , Unite=PAIRE , IdUnite=4418 , CodeArticle=0070338200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3382 AND idunite=4418;
DELETE FROM tb_log_stock WHERE codearticle='0070338200';
DELETE FROM tb_inventaire WHERE codearticle='0070338200';
DELETE FROM tb_stock WHERE codearticle='0070338200';
DELETE FROM tb_article WHERE idarticle=3382;
DELETE FROM tb_unite WHERE idunite=4418 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4418) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4418);
COMMIT;

-- IdArticle=2184 , Designation=AIGLE D OR SARIAKA MARRON P35 , Unite=PAIRE , IdUnite=2911 , CodeArticle=0070218400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2184 AND idunite=2911;
DELETE FROM tb_log_stock WHERE codearticle='0070218400';
DELETE FROM tb_inventaire WHERE codearticle='0070218400';
DELETE FROM tb_stock WHERE codearticle='0070218400';
DELETE FROM tb_article WHERE idarticle=2184;
DELETE FROM tb_unite WHERE idunite=2911 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2911) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2911);
COMMIT;

-- IdArticle=2185 , Designation=AIGLE D OR SARIAKA MARRON P37 , Unite=PAIRE , IdUnite=2912 , CodeArticle=0070218500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2185 AND idunite=2912;
DELETE FROM tb_log_stock WHERE codearticle='0070218500';
DELETE FROM tb_inventaire WHERE codearticle='0070218500';
DELETE FROM tb_stock WHERE codearticle='0070218500';
DELETE FROM tb_article WHERE idarticle=2185;
DELETE FROM tb_unite WHERE idunite=2912 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2912) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2912);
COMMIT;

-- IdArticle=2042 , Designation=AIGLE D OR SARIAKA MARRON P38 , Unite=PAIRE , IdUnite=2738 , CodeArticle=0070204200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2042 AND idunite=2738;
DELETE FROM tb_log_stock WHERE codearticle='0070204200';
DELETE FROM tb_inventaire WHERE codearticle='0070204200';
DELETE FROM tb_stock WHERE codearticle='0070204200';
DELETE FROM tb_article WHERE idarticle=2042;
DELETE FROM tb_unite WHERE idunite=2738 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2738) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2738);
COMMIT;

-- IdArticle=2043 , Designation=AIGLE D OR SARIAKA MARRON P39 , Unite=PAIRE , IdUnite=2739 , CodeArticle=0070204300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2043 AND idunite=2739;
DELETE FROM tb_log_stock WHERE codearticle='0070204300';
DELETE FROM tb_inventaire WHERE codearticle='0070204300';
DELETE FROM tb_stock WHERE codearticle='0070204300';
DELETE FROM tb_article WHERE idarticle=2043;
DELETE FROM tb_unite WHERE idunite=2739 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2739) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2739);
COMMIT;

-- IdArticle=2044 , Designation=AIGLE D OR SARIAKA MARRON P40 , Unite=PAIRE , IdUnite=2740 , CodeArticle=0070204400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2044 AND idunite=2740;
DELETE FROM tb_log_stock WHERE codearticle='0070204400';
DELETE FROM tb_inventaire WHERE codearticle='0070204400';
DELETE FROM tb_stock WHERE codearticle='0070204400';
DELETE FROM tb_article WHERE idarticle=2044;
DELETE FROM tb_unite WHERE idunite=2740 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2740) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2740);
COMMIT;

-- IdArticle=2045 , Designation=AIGLE D OR SARIAKA MARRON P41 , Unite=PAIRE , IdUnite=2741 , CodeArticle=0070204500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2045 AND idunite=2741;
DELETE FROM tb_log_stock WHERE codearticle='0070204500';
DELETE FROM tb_inventaire WHERE codearticle='0070204500';
DELETE FROM tb_stock WHERE codearticle='0070204500';
DELETE FROM tb_article WHERE idarticle=2045;
DELETE FROM tb_unite WHERE idunite=2741 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2741) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2741);
COMMIT;

-- IdArticle=2501 , Designation=AIGLE D OR SIDINA NOIR P28 , Unite=PAIRE , IdUnite=3281 , CodeArticle=0070250100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2501 AND idunite=3281;
DELETE FROM tb_log_stock WHERE codearticle='0070250100';
DELETE FROM tb_inventaire WHERE codearticle='0070250100';
DELETE FROM tb_stock WHERE codearticle='0070250100';
DELETE FROM tb_article WHERE idarticle=2501;
DELETE FROM tb_unite WHERE idunite=3281 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3281) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3281);
COMMIT;

-- IdArticle=2502 , Designation=AIGLE D OR SIDINA NOIR P29 , Unite=PAIRE , IdUnite=3282 , CodeArticle=0070250200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2502 AND idunite=3282;
DELETE FROM tb_log_stock WHERE codearticle='0070250200';
DELETE FROM tb_inventaire WHERE codearticle='0070250200';
DELETE FROM tb_stock WHERE codearticle='0070250200';
DELETE FROM tb_article WHERE idarticle=2502;
DELETE FROM tb_unite WHERE idunite=3282 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3282) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3282);
COMMIT;

-- IdArticle=2503 , Designation=AIGLE D OR SIDINA NOIR P30 , Unite=PAIRE , IdUnite=3283 , CodeArticle=0070250300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2503 AND idunite=3283;
DELETE FROM tb_log_stock WHERE codearticle='0070250300';
DELETE FROM tb_inventaire WHERE codearticle='0070250300';
DELETE FROM tb_stock WHERE codearticle='0070250300';
DELETE FROM tb_article WHERE idarticle=2503;
DELETE FROM tb_unite WHERE idunite=3283 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3283) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3283);
COMMIT;

-- IdArticle=2504 , Designation=AIGLE D OR SIDINA NOIR P31 , Unite=PAIRE , IdUnite=3284 , CodeArticle=0070250400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2504 AND idunite=3284;
DELETE FROM tb_log_stock WHERE codearticle='0070250400';
DELETE FROM tb_inventaire WHERE codearticle='0070250400';
DELETE FROM tb_stock WHERE codearticle='0070250400';
DELETE FROM tb_article WHERE idarticle=2504;
DELETE FROM tb_unite WHERE idunite=3284 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3284) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3284);
COMMIT;

-- IdArticle=2506 , Designation=AIGLE D OR SIDINA NOIR P33 , Unite=PAIRE , IdUnite=3286 , CodeArticle=0070250600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2506 AND idunite=3286;
DELETE FROM tb_log_stock WHERE codearticle='0070250600';
DELETE FROM tb_inventaire WHERE codearticle='0070250600';
DELETE FROM tb_stock WHERE codearticle='0070250600';
DELETE FROM tb_article WHERE idarticle=2506;
DELETE FROM tb_unite WHERE idunite=3286 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3286) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3286);
COMMIT;

-- IdArticle=2507 , Designation=AIGLE D OR SIDINA NOIR P35 , Unite=PAIRE , IdUnite=3287 , CodeArticle=0070250700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2507 AND idunite=3287;
DELETE FROM tb_log_stock WHERE codearticle='0070250700';
DELETE FROM tb_inventaire WHERE codearticle='0070250700';
DELETE FROM tb_stock WHERE codearticle='0070250700';
DELETE FROM tb_article WHERE idarticle=2507;
DELETE FROM tb_unite WHERE idunite=3287 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3287) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3287);
COMMIT;

-- IdArticle=2508 , Designation=AIGLE D OR SIDINA NOIR P38 , Unite=PAIRE , IdUnite=3288 , CodeArticle=0070250800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2508 AND idunite=3288;
DELETE FROM tb_log_stock WHERE codearticle='0070250800';
DELETE FROM tb_inventaire WHERE codearticle='0070250800';
DELETE FROM tb_stock WHERE codearticle='0070250800';
DELETE FROM tb_article WHERE idarticle=2508;
DELETE FROM tb_unite WHERE idunite=3288 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3288) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3288);
COMMIT;

-- IdArticle=2307 , Designation=AIGLE D OR SIDINA NOIR P39 , Unite=PAIRE , IdUnite=3055 , CodeArticle=0070230700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2307 AND idunite=3055;
DELETE FROM tb_log_stock WHERE codearticle='0070230700';
DELETE FROM tb_inventaire WHERE codearticle='0070230700';
DELETE FROM tb_stock WHERE codearticle='0070230700';
DELETE FROM tb_article WHERE idarticle=2307;
DELETE FROM tb_unite WHERE idunite=3055 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3055) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3055);
COMMIT;

-- IdArticle=2308 , Designation=AIGLE D OR SIDINA NOIR P40 , Unite=PAIRE , IdUnite=3056 , CodeArticle=0070230800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2308 AND idunite=3056;
DELETE FROM tb_log_stock WHERE codearticle='0070230800';
DELETE FROM tb_inventaire WHERE codearticle='0070230800';
DELETE FROM tb_stock WHERE codearticle='0070230800';
DELETE FROM tb_article WHERE idarticle=2308;
DELETE FROM tb_unite WHERE idunite=3056 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3056) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3056);
COMMIT;

-- IdArticle=2309 , Designation=AIGLE D OR SIDINA NOIR P41 , Unite=PAIRE , IdUnite=3057 , CodeArticle=0070230900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2309 AND idunite=3057;
DELETE FROM tb_log_stock WHERE codearticle='0070230900';
DELETE FROM tb_inventaire WHERE codearticle='0070230900';
DELETE FROM tb_stock WHERE codearticle='0070230900';
DELETE FROM tb_article WHERE idarticle=2309;
DELETE FROM tb_unite WHERE idunite=3057 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3057) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3057);
COMMIT;

-- IdArticle=2310 , Designation=AIGLE D OR SIDINA NOIR P42 , Unite=PAIRE , IdUnite=3058 , CodeArticle=0070231000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2310 AND idunite=3058;
DELETE FROM tb_log_stock WHERE codearticle='0070231000';
DELETE FROM tb_inventaire WHERE codearticle='0070231000';
DELETE FROM tb_stock WHERE codearticle='0070231000';
DELETE FROM tb_article WHERE idarticle=2310;
DELETE FROM tb_unite WHERE idunite=3058 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3058) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3058);
COMMIT;

-- IdArticle=2311 , Designation=AIGLE D OR SIDINA NOIR P43 , Unite=PAIRE , IdUnite=3059 , CodeArticle=0070231100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2311 AND idunite=3059;
DELETE FROM tb_log_stock WHERE codearticle='0070231100';
DELETE FROM tb_inventaire WHERE codearticle='0070231100';
DELETE FROM tb_stock WHERE codearticle='0070231100';
DELETE FROM tb_article WHERE idarticle=2311;
DELETE FROM tb_unite WHERE idunite=3059 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3059) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3059);
COMMIT;

-- IdArticle=2568 , Designation=AIGLE D OR SITRAKA MAR P39 , Unite=PAIRE , IdUnite=3383 , CodeArticle=0070256800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2568 AND idunite=3383;
DELETE FROM tb_log_stock WHERE codearticle='0070256800';
DELETE FROM tb_inventaire WHERE codearticle='0070256800';
DELETE FROM tb_stock WHERE codearticle='0070256800';
DELETE FROM tb_article WHERE idarticle=2568;
DELETE FROM tb_unite WHERE idunite=3383 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3383) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3383);
COMMIT;

-- IdArticle=2570 , Designation=AIGLE D OR SITRAKA MAR P41 , Unite=PAIRE , IdUnite=3385 , CodeArticle=0070257000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2570 AND idunite=3385;
DELETE FROM tb_log_stock WHERE codearticle='0070257000';
DELETE FROM tb_inventaire WHERE codearticle='0070257000';
DELETE FROM tb_stock WHERE codearticle='0070257000';
DELETE FROM tb_article WHERE idarticle=2570;
DELETE FROM tb_unite WHERE idunite=3385 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3385) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3385);
COMMIT;

-- IdArticle=2772 , Designation=AIGLE D OR SITRAKA MAR P43 , Unite=PAIRE , IdUnite=3672 , CodeArticle=0070277200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2772 AND idunite=3672;
DELETE FROM tb_log_stock WHERE codearticle='0070277200';
DELETE FROM tb_inventaire WHERE codearticle='0070277200';
DELETE FROM tb_stock WHERE codearticle='0070277200';
DELETE FROM tb_article WHERE idarticle=2772;
DELETE FROM tb_unite WHERE idunite=3672 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3672) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3672);
COMMIT;

-- IdArticle=2450 , Designation=AIGLE D OR SOA MARINE P38 , Unite=PAIRE , IdUnite=3230 , CodeArticle=0070245000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2450 AND idunite=3230;
DELETE FROM tb_log_stock WHERE codearticle='0070245000';
DELETE FROM tb_inventaire WHERE codearticle='0070245000';
DELETE FROM tb_stock WHERE codearticle='0070245000';
DELETE FROM tb_article WHERE idarticle=2450;
DELETE FROM tb_unite WHERE idunite=3230 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3230) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3230);
COMMIT;

-- IdArticle=2451 , Designation=AIGLE D OR SOA MARINE P39 , Unite=PAIRE , IdUnite=3231 , CodeArticle=0070245100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2451 AND idunite=3231;
DELETE FROM tb_log_stock WHERE codearticle='0070245100';
DELETE FROM tb_inventaire WHERE codearticle='0070245100';
DELETE FROM tb_stock WHERE codearticle='0070245100';
DELETE FROM tb_article WHERE idarticle=2451;
DELETE FROM tb_unite WHERE idunite=3231 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3231) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3231);
COMMIT;

-- IdArticle=2452 , Designation=AIGLE D OR SOA MARINE P40 , Unite=PAIRE , IdUnite=3232 , CodeArticle=0070245200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2452 AND idunite=3232;
DELETE FROM tb_log_stock WHERE codearticle='0070245200';
DELETE FROM tb_inventaire WHERE codearticle='0070245200';
DELETE FROM tb_stock WHERE codearticle='0070245200';
DELETE FROM tb_article WHERE idarticle=2452;
DELETE FROM tb_unite WHERE idunite=3232 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3232) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3232);
COMMIT;

-- IdArticle=1871 , Designation=AIGLE D OR TEFY_NOIR P39 , Unite=PAIRE , IdUnite=2515 , CodeArticle=0070187100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1871 AND idunite=2515;
DELETE FROM tb_log_stock WHERE codearticle='0070187100';
DELETE FROM tb_inventaire WHERE codearticle='0070187100';
DELETE FROM tb_stock WHERE codearticle='0070187100';
DELETE FROM tb_article WHERE idarticle=1871;
DELETE FROM tb_unite WHERE idunite=2515 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2515) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2515);
COMMIT;

-- IdArticle=2251 , Designation=AIGLE D OR TEFY_NOIR P40 , Unite=PAIRE , IdUnite=2994 , CodeArticle=0070225100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2251 AND idunite=2994;
DELETE FROM tb_log_stock WHERE codearticle='0070225100';
DELETE FROM tb_inventaire WHERE codearticle='0070225100';
DELETE FROM tb_stock WHERE codearticle='0070225100';
DELETE FROM tb_article WHERE idarticle=2251;
DELETE FROM tb_unite WHERE idunite=2994 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2994) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2994);
COMMIT;

-- IdArticle=2252 , Designation=AIGLE D OR TEFY_NOIR P41 , Unite=PAIRE , IdUnite=2995 , CodeArticle=0070225200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2252 AND idunite=2995;
DELETE FROM tb_log_stock WHERE codearticle='0070225200';
DELETE FROM tb_inventaire WHERE codearticle='0070225200';
DELETE FROM tb_stock WHERE codearticle='0070225200';
DELETE FROM tb_article WHERE idarticle=2252;
DELETE FROM tb_unite WHERE idunite=2995 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2995) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2995);
COMMIT;

-- IdArticle=2253 , Designation=AIGLE D OR TEFY_NOIR P42 , Unite=PAIRE , IdUnite=2996 , CodeArticle=0070225300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2253 AND idunite=2996;
DELETE FROM tb_log_stock WHERE codearticle='0070225300';
DELETE FROM tb_inventaire WHERE codearticle='0070225300';
DELETE FROM tb_stock WHERE codearticle='0070225300';
DELETE FROM tb_article WHERE idarticle=2253;
DELETE FROM tb_unite WHERE idunite=2996 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2996) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2996);
COMMIT;

-- IdArticle=2771 , Designation=AIGLE D OR TEFY_NOIR P43 , Unite=PAIRE , IdUnite=3671 , CodeArticle=0070277100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2771 AND idunite=3671;
DELETE FROM tb_log_stock WHERE codearticle='0070277100';
DELETE FROM tb_inventaire WHERE codearticle='0070277100';
DELETE FROM tb_stock WHERE codearticle='0070277100';
DELETE FROM tb_article WHERE idarticle=2771;
DELETE FROM tb_unite WHERE idunite=3671 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3671) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3671);
COMMIT;

-- IdArticle=2033 , Designation=AIGLE D OR TIARY MARINE P40 , Unite=PAIRE , IdUnite=2729 , CodeArticle=0070203300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2033 AND idunite=2729;
DELETE FROM tb_log_stock WHERE codearticle='0070203300';
DELETE FROM tb_inventaire WHERE codearticle='0070203300';
DELETE FROM tb_stock WHERE codearticle='0070203300';
DELETE FROM tb_article WHERE idarticle=2033;
DELETE FROM tb_unite WHERE idunite=2729 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2729) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2729);
COMMIT;

-- IdArticle=2034 , Designation=AIGLE D OR TIARY MARINE P41 , Unite=PAIRE , IdUnite=2730 , CodeArticle=0070203400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2034 AND idunite=2730;
DELETE FROM tb_log_stock WHERE codearticle='0070203400';
DELETE FROM tb_inventaire WHERE codearticle='0070203400';
DELETE FROM tb_stock WHERE codearticle='0070203400';
DELETE FROM tb_article WHERE idarticle=2034;
DELETE FROM tb_unite WHERE idunite=2730 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2730) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2730);
COMMIT;

-- IdArticle=3236 , Designation=AIGLE D OR TIARY MARRON P35 , Unite=PAIRE , IdUnite=4254 , CodeArticle=0070323600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3236 AND idunite=4254;
DELETE FROM tb_log_stock WHERE codearticle='0070323600';
DELETE FROM tb_inventaire WHERE codearticle='0070323600';
DELETE FROM tb_stock WHERE codearticle='0070323600';
DELETE FROM tb_article WHERE idarticle=3236;
DELETE FROM tb_unite WHERE idunite=4254 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4254) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4254);
COMMIT;

-- IdArticle=2924 , Designation=AIGLE D OR TOAVINA-BLG P23 , Unite=PAIRE , IdUnite=3854 , CodeArticle=0070292400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2924 AND idunite=3854;
DELETE FROM tb_log_stock WHERE codearticle='0070292400';
DELETE FROM tb_inventaire WHERE codearticle='0070292400';
DELETE FROM tb_stock WHERE codearticle='0070292400';
DELETE FROM tb_article WHERE idarticle=2924;
DELETE FROM tb_unite WHERE idunite=3854 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3854) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3854);
COMMIT;

-- IdArticle=2936 , Designation=AIGLE D OR TOAVINA-BLG P24 , Unite=PAIRE , IdUnite=3866 , CodeArticle=0070293600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2936 AND idunite=3866;
DELETE FROM tb_log_stock WHERE codearticle='0070293600';
DELETE FROM tb_inventaire WHERE codearticle='0070293600';
DELETE FROM tb_stock WHERE codearticle='0070293600';
DELETE FROM tb_article WHERE idarticle=2936;
DELETE FROM tb_unite WHERE idunite=3866 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3866) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3866);
COMMIT;

-- IdArticle=2935 , Designation=AIGLE D OR TOAVINA-BLG P25 , Unite=PAIRE , IdUnite=3865 , CodeArticle=0070293500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2935 AND idunite=3865;
DELETE FROM tb_log_stock WHERE codearticle='0070293500';
DELETE FROM tb_inventaire WHERE codearticle='0070293500';
DELETE FROM tb_stock WHERE codearticle='0070293500';
DELETE FROM tb_article WHERE idarticle=2935;
DELETE FROM tb_unite WHERE idunite=3865 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3865) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3865);
COMMIT;

-- IdArticle=2934 , Designation=AIGLE D OR TOAVINA-BLG P27 , Unite=PAIRE , IdUnite=3864 , CodeArticle=0070293400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2934 AND idunite=3864;
DELETE FROM tb_log_stock WHERE codearticle='0070293400';
DELETE FROM tb_inventaire WHERE codearticle='0070293400';
DELETE FROM tb_stock WHERE codearticle='0070293400';
DELETE FROM tb_article WHERE idarticle=2934;
DELETE FROM tb_unite WHERE idunite=3864 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3864) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3864);
COMMIT;

-- IdArticle=2982 , Designation=AIGLE D OR TOAVINA-BLG P30 , Unite=PAIRE , IdUnite=3912 , CodeArticle=0070298200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2982 AND idunite=3912;
DELETE FROM tb_log_stock WHERE codearticle='0070298200';
DELETE FROM tb_inventaire WHERE codearticle='0070298200';
DELETE FROM tb_stock WHERE codearticle='0070298200';
DELETE FROM tb_article WHERE idarticle=2982;
DELETE FROM tb_unite WHERE idunite=3912 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3912) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3912);
COMMIT;

-- IdArticle=2987 , Designation=AIGLE D OR TOAVINA-BLG P33 , Unite=PAIRE , IdUnite=3917 , CodeArticle=0070298700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2987 AND idunite=3917;
DELETE FROM tb_log_stock WHERE codearticle='0070298700';
DELETE FROM tb_inventaire WHERE codearticle='0070298700';
DELETE FROM tb_stock WHERE codearticle='0070298700';
DELETE FROM tb_article WHERE idarticle=2987;
DELETE FROM tb_unite WHERE idunite=3917 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3917) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3917);
COMMIT;

-- IdArticle=2917 , Designation=AIGLE D OR TOAVINA-JSA P22 , Unite=PAIRE , IdUnite=3847 , CodeArticle=0070291700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2917 AND idunite=3847;
DELETE FROM tb_log_stock WHERE codearticle='0070291700';
DELETE FROM tb_inventaire WHERE codearticle='0070291700';
DELETE FROM tb_stock WHERE codearticle='0070291700';
DELETE FROM tb_article WHERE idarticle=2917;
DELETE FROM tb_unite WHERE idunite=3847 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3847) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3847);
COMMIT;

-- IdArticle=2976 , Designation=AIGLE D OR TOAVINA-JSA P30 , Unite=PAIRE , IdUnite=3906 , CodeArticle=0070297600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2976 AND idunite=3906;
DELETE FROM tb_log_stock WHERE codearticle='0070297600';
DELETE FROM tb_inventaire WHERE codearticle='0070297600';
DELETE FROM tb_stock WHERE codearticle='0070297600';
DELETE FROM tb_article WHERE idarticle=2976;
DELETE FROM tb_unite WHERE idunite=3906 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3906) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3906);
COMMIT;

-- IdArticle=2978 , Designation=AIGLE D OR TOAVINA-NOIR P28 , Unite=PAIRE , IdUnite=3908 , CodeArticle=0070297800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2978 AND idunite=3908;
DELETE FROM tb_log_stock WHERE codearticle='0070297800';
DELETE FROM tb_inventaire WHERE codearticle='0070297800';
DELETE FROM tb_stock WHERE codearticle='0070297800';
DELETE FROM tb_article WHERE idarticle=2978;
DELETE FROM tb_unite WHERE idunite=3908 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3908) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3908);
COMMIT;

-- IdArticle=2814 , Designation=AIGLE D OR TONG TEDY MAR P35 , Unite=PAIRE , IdUnite=3714 , CodeArticle=0070281400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2814 AND idunite=3714;
DELETE FROM tb_log_stock WHERE codearticle='0070281400';
DELETE FROM tb_inventaire WHERE codearticle='0070281400';
DELETE FROM tb_stock WHERE codearticle='0070281400';
DELETE FROM tb_article WHERE idarticle=2814;
DELETE FROM tb_unite WHERE idunite=3714 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3714) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3714);
COMMIT;

-- IdArticle=2817 , Designation=AIGLE D OR TONG TEDY MAR P36 , Unite=PAIRE , IdUnite=3717 , CodeArticle=0070281700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2817 AND idunite=3717;
DELETE FROM tb_log_stock WHERE codearticle='0070281700';
DELETE FROM tb_inventaire WHERE codearticle='0070281700';
DELETE FROM tb_stock WHERE codearticle='0070281700';
DELETE FROM tb_article WHERE idarticle=2817;
DELETE FROM tb_unite WHERE idunite=3717 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3717) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3717);
COMMIT;

-- IdArticle=2813 , Designation=AIGLE D OR TONG TEDY MAR P37 , Unite=PAIRE , IdUnite=3713 , CodeArticle=0070281300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2813 AND idunite=3713;
DELETE FROM tb_log_stock WHERE codearticle='0070281300';
DELETE FROM tb_inventaire WHERE codearticle='0070281300';
DELETE FROM tb_stock WHERE codearticle='0070281300';
DELETE FROM tb_article WHERE idarticle=2813;
DELETE FROM tb_unite WHERE idunite=3713 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3713) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3713);
COMMIT;

-- IdArticle=2816 , Designation=AIGLE D OR TONG TEDY MAR P41 , Unite=PAIRE , IdUnite=3716 , CodeArticle=0070281600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2816 AND idunite=3716;
DELETE FROM tb_log_stock WHERE codearticle='0070281600';
DELETE FROM tb_inventaire WHERE codearticle='0070281600';
DELETE FROM tb_stock WHERE codearticle='0070281600';
DELETE FROM tb_article WHERE idarticle=2816;
DELETE FROM tb_unite WHERE idunite=3716 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3716) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3716);
COMMIT;

-- IdArticle=2815 , Designation=AIGLE D OR TONG TEDY MAR P42 , Unite=PAIRE , IdUnite=3715 , CodeArticle=0070281500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2815 AND idunite=3715;
DELETE FROM tb_log_stock WHERE codearticle='0070281500';
DELETE FROM tb_inventaire WHERE codearticle='0070281500';
DELETE FROM tb_stock WHERE codearticle='0070281500';
DELETE FROM tb_article WHERE idarticle=2815;
DELETE FROM tb_unite WHERE idunite=3715 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3715) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3715);
COMMIT;

-- IdArticle=2811 , Designation=AIGLE D OR TONG TEDY MAR P43 , Unite=PAIRE , IdUnite=3711 , CodeArticle=0070281100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2811 AND idunite=3711;
DELETE FROM tb_log_stock WHERE codearticle='0070281100';
DELETE FROM tb_inventaire WHERE codearticle='0070281100';
DELETE FROM tb_stock WHERE codearticle='0070281100';
DELETE FROM tb_article WHERE idarticle=2811;
DELETE FROM tb_unite WHERE idunite=3711 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3711) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3711);
COMMIT;

-- IdArticle=2820 , Designation=AIGLE D OR TONG TEDY NOIR P36 , Unite=PAIRE , IdUnite=3720 , CodeArticle=0070282000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2820 AND idunite=3720;
DELETE FROM tb_log_stock WHERE codearticle='0070282000';
DELETE FROM tb_inventaire WHERE codearticle='0070282000';
DELETE FROM tb_stock WHERE codearticle='0070282000';
DELETE FROM tb_article WHERE idarticle=2820;
DELETE FROM tb_unite WHERE idunite=3720 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3720) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3720);
COMMIT;

-- IdArticle=2819 , Designation=AIGLE D OR TONG TEDY NOIR P37 , Unite=PAIRE , IdUnite=3719 , CodeArticle=0070281900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2819 AND idunite=3719;
DELETE FROM tb_log_stock WHERE codearticle='0070281900';
DELETE FROM tb_inventaire WHERE codearticle='0070281900';
DELETE FROM tb_stock WHERE codearticle='0070281900';
DELETE FROM tb_article WHERE idarticle=2819;
DELETE FROM tb_unite WHERE idunite=3719 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3719) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3719);
COMMIT;

-- IdArticle=2821 , Designation=AIGLE D OR TONG TEDY NOIR P38 , Unite=PAIRE , IdUnite=3721 , CodeArticle=0070282100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2821 AND idunite=3721;
DELETE FROM tb_log_stock WHERE codearticle='0070282100';
DELETE FROM tb_inventaire WHERE codearticle='0070282100';
DELETE FROM tb_stock WHERE codearticle='0070282100';
DELETE FROM tb_article WHERE idarticle=2821;
DELETE FROM tb_unite WHERE idunite=3721 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3721) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3721);
COMMIT;

-- IdArticle=2818 , Designation=AIGLE D OR TONG TEDY NOIR P40 , Unite=PAIRE , IdUnite=3718 , CodeArticle=0070281800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2818 AND idunite=3718;
DELETE FROM tb_log_stock WHERE codearticle='0070281800';
DELETE FROM tb_inventaire WHERE codearticle='0070281800';
DELETE FROM tb_stock WHERE codearticle='0070281800';
DELETE FROM tb_article WHERE idarticle=2818;
DELETE FROM tb_unite WHERE idunite=3718 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3718) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3718);
COMMIT;

-- IdArticle=2822 , Designation=AIGLE D OR TONG TEDY NOIR P41 , Unite=PAIRE , IdUnite=3722 , CodeArticle=0070282200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2822 AND idunite=3722;
DELETE FROM tb_log_stock WHERE codearticle='0070282200';
DELETE FROM tb_inventaire WHERE codearticle='0070282200';
DELETE FROM tb_stock WHERE codearticle='0070282200';
DELETE FROM tb_article WHERE idarticle=2822;
DELETE FROM tb_unite WHERE idunite=3722 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3722) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3722);
COMMIT;

-- IdArticle=2823 , Designation=AIGLE D OR TONG TEDY NOIR P43 , Unite=PAIRE , IdUnite=3723 , CodeArticle=0070282300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2823 AND idunite=3723;
DELETE FROM tb_log_stock WHERE codearticle='0070282300';
DELETE FROM tb_inventaire WHERE codearticle='0070282300';
DELETE FROM tb_stock WHERE codearticle='0070282300';
DELETE FROM tb_article WHERE idarticle=2823;
DELETE FROM tb_unite WHERE idunite=3723 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3723) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3723);
COMMIT;

-- IdArticle=2806 , Designation=AIGLE D OR TONG TEDY ROU P35 , Unite=PAIRE , IdUnite=3706 , CodeArticle=0070280600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2806 AND idunite=3706;
DELETE FROM tb_log_stock WHERE codearticle='0070280600';
DELETE FROM tb_inventaire WHERE codearticle='0070280600';
DELETE FROM tb_stock WHERE codearticle='0070280600';
DELETE FROM tb_article WHERE idarticle=2806;
DELETE FROM tb_unite WHERE idunite=3706 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3706) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3706);
COMMIT;

-- IdArticle=2808 , Designation=AIGLE D OR TONG TEDY ROU P37 , Unite=PAIRE , IdUnite=3708 , CodeArticle=0070280800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2808 AND idunite=3708;
DELETE FROM tb_log_stock WHERE codearticle='0070280800';
DELETE FROM tb_inventaire WHERE codearticle='0070280800';
DELETE FROM tb_stock WHERE codearticle='0070280800';
DELETE FROM tb_article WHERE idarticle=2808;
DELETE FROM tb_unite WHERE idunite=3708 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3708) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3708);
COMMIT;

-- IdArticle=3238 , Designation=AIGLE D OR TONG TEDY ROU P38 , Unite=PAIRE , IdUnite=4256 , CodeArticle=0070323800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3238 AND idunite=4256;
DELETE FROM tb_log_stock WHERE codearticle='0070323800';
DELETE FROM tb_inventaire WHERE codearticle='0070323800';
DELETE FROM tb_stock WHERE codearticle='0070323800';
DELETE FROM tb_article WHERE idarticle=3238;
DELETE FROM tb_unite WHERE idunite=4256 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4256) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4256);
COMMIT;

-- IdArticle=2809 , Designation=AIGLE D OR TONG TEDY ROU P40 , Unite=PAIRE , IdUnite=3709 , CodeArticle=0070280900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2809 AND idunite=3709;
DELETE FROM tb_log_stock WHERE codearticle='0070280900';
DELETE FROM tb_inventaire WHERE codearticle='0070280900';
DELETE FROM tb_stock WHERE codearticle='0070280900';
DELETE FROM tb_article WHERE idarticle=2809;
DELETE FROM tb_unite WHERE idunite=3709 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3709) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3709);
COMMIT;

-- IdArticle=2805 , Designation=AIGLE D OR TONG TEDY ROU P41 , Unite=PAIRE , IdUnite=3705 , CodeArticle=0070280500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2805 AND idunite=3705;
DELETE FROM tb_log_stock WHERE codearticle='0070280500';
DELETE FROM tb_inventaire WHERE codearticle='0070280500';
DELETE FROM tb_stock WHERE codearticle='0070280500';
DELETE FROM tb_article WHERE idarticle=2805;
DELETE FROM tb_unite WHERE idunite=3705 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3705) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3705);
COMMIT;

-- IdArticle=2807 , Designation=AIGLE D OR TONG TEDY ROU P42 , Unite=PAIRE , IdUnite=3707 , CodeArticle=0070280700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2807 AND idunite=3707;
DELETE FROM tb_log_stock WHERE codearticle='0070280700';
DELETE FROM tb_inventaire WHERE codearticle='0070280700';
DELETE FROM tb_stock WHERE codearticle='0070280700';
DELETE FROM tb_article WHERE idarticle=2807;
DELETE FROM tb_unite WHERE idunite=3707 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3707) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3707);
COMMIT;

-- IdArticle=2810 , Designation=AIGLE D OR TONG TEDY ROU P43 , Unite=PAIRE , IdUnite=3710 , CodeArticle=0070281000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2810 AND idunite=3710;
DELETE FROM tb_log_stock WHERE codearticle='0070281000';
DELETE FROM tb_inventaire WHERE codearticle='0070281000';
DELETE FROM tb_stock WHERE codearticle='0070281000';
DELETE FROM tb_article WHERE idarticle=2810;
DELETE FROM tb_unite WHERE idunite=3710 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3710) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3710);
COMMIT;

-- IdArticle=2323 , Designation=AIGLE D OR TONGUE THEO - MAR P35 , Unite=PAIRE , IdUnite=3071 , CodeArticle=0070232300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2323 AND idunite=3071;
DELETE FROM tb_log_stock WHERE codearticle='0070232300';
DELETE FROM tb_inventaire WHERE codearticle='0070232300';
DELETE FROM tb_stock WHERE codearticle='0070232300';
DELETE FROM tb_article WHERE idarticle=2323;
DELETE FROM tb_unite WHERE idunite=3071 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3071) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3071);
COMMIT;

-- IdArticle=2322 , Designation=AIGLE D OR TONGUE THEO - MAR P36 , Unite=PAIRE , IdUnite=3070 , CodeArticle=0070232200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2322 AND idunite=3070;
DELETE FROM tb_log_stock WHERE codearticle='0070232200';
DELETE FROM tb_inventaire WHERE codearticle='0070232200';
DELETE FROM tb_stock WHERE codearticle='0070232200';
DELETE FROM tb_article WHERE idarticle=2322;
DELETE FROM tb_unite WHERE idunite=3070 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3070) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3070);
COMMIT;

-- IdArticle=2324 , Designation=AIGLE D OR TONGUE THEO - MAR P37 , Unite=PAIRE , IdUnite=3072 , CodeArticle=0070232400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2324 AND idunite=3072;
DELETE FROM tb_log_stock WHERE codearticle='0070232400';
DELETE FROM tb_inventaire WHERE codearticle='0070232400';
DELETE FROM tb_stock WHERE codearticle='0070232400';
DELETE FROM tb_article WHERE idarticle=2324;
DELETE FROM tb_unite WHERE idunite=3072 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3072) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3072);
COMMIT;

-- IdArticle=2325 , Designation=AIGLE D OR TONGUE THEO - MAR P38 , Unite=PAIRE , IdUnite=3073 , CodeArticle=0070232500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2325 AND idunite=3073;
DELETE FROM tb_log_stock WHERE codearticle='0070232500';
DELETE FROM tb_inventaire WHERE codearticle='0070232500';
DELETE FROM tb_stock WHERE codearticle='0070232500';
DELETE FROM tb_article WHERE idarticle=2325;
DELETE FROM tb_unite WHERE idunite=3073 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3073) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3073);
COMMIT;

-- IdArticle=2326 , Designation=AIGLE D OR TONGUE THEO - MAR P39 , Unite=PAIRE , IdUnite=3074 , CodeArticle=0070232600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2326 AND idunite=3074;
DELETE FROM tb_log_stock WHERE codearticle='0070232600';
DELETE FROM tb_inventaire WHERE codearticle='0070232600';
DELETE FROM tb_stock WHERE codearticle='0070232600';
DELETE FROM tb_article WHERE idarticle=2326;
DELETE FROM tb_unite WHERE idunite=3074 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3074) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3074);
COMMIT;

-- IdArticle=2327 , Designation=AIGLE D OR TONGUE THEO - MAR P40 , Unite=PAIRE , IdUnite=3075 , CodeArticle=0070232700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2327 AND idunite=3075;
DELETE FROM tb_log_stock WHERE codearticle='0070232700';
DELETE FROM tb_inventaire WHERE codearticle='0070232700';
DELETE FROM tb_stock WHERE codearticle='0070232700';
DELETE FROM tb_article WHERE idarticle=2327;
DELETE FROM tb_unite WHERE idunite=3075 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3075) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3075);
COMMIT;

-- IdArticle=2328 , Designation=AIGLE D OR TONGUE THEO - MAR P41 , Unite=PAIRE , IdUnite=3076 , CodeArticle=0070232800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2328 AND idunite=3076;
DELETE FROM tb_log_stock WHERE codearticle='0070232800';
DELETE FROM tb_inventaire WHERE codearticle='0070232800';
DELETE FROM tb_stock WHERE codearticle='0070232800';
DELETE FROM tb_article WHERE idarticle=2328;
DELETE FROM tb_unite WHERE idunite=3076 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3076) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3076);
COMMIT;

-- IdArticle=2329 , Designation=AIGLE D OR TONGUE THEO - MAR P42 , Unite=PAIRE , IdUnite=3077 , CodeArticle=0070232900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2329 AND idunite=3077;
DELETE FROM tb_log_stock WHERE codearticle='0070232900';
DELETE FROM tb_inventaire WHERE codearticle='0070232900';
DELETE FROM tb_stock WHERE codearticle='0070232900';
DELETE FROM tb_article WHERE idarticle=2329;
DELETE FROM tb_unite WHERE idunite=3077 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3077) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3077);
COMMIT;

-- IdArticle=2330 , Designation=AIGLE D OR TONGUE THEO - MAR P43 , Unite=PAIRE , IdUnite=3078 , CodeArticle=0070233000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2330 AND idunite=3078;
DELETE FROM tb_log_stock WHERE codearticle='0070233000';
DELETE FROM tb_inventaire WHERE codearticle='0070233000';
DELETE FROM tb_stock WHERE codearticle='0070233000';
DELETE FROM tb_article WHERE idarticle=2330;
DELETE FROM tb_unite WHERE idunite=3078 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3078) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3078);
COMMIT;

-- IdArticle=4646 , Designation=AIGLE D OR TSANGA NOIR , Unite=PAIRE , IdUnite=6554 , CodeArticle=0070464600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4646 AND idunite=6554;
DELETE FROM tb_log_stock WHERE codearticle='0070464600';
DELETE FROM tb_inventaire WHERE codearticle='0070464600';
DELETE FROM tb_stock WHERE codearticle='0070464600';
DELETE FROM tb_article WHERE idarticle=4646;
DELETE FROM tb_unite WHERE idunite=6554 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6554) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6554);
COMMIT;

-- IdArticle=2482 , Designation=AIGLE D OR TSIAHY MARRON P35 , Unite=PAIRE , IdUnite=3262 , CodeArticle=0070248200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2482 AND idunite=3262;
DELETE FROM tb_log_stock WHERE codearticle='0070248200';
DELETE FROM tb_inventaire WHERE codearticle='0070248200';
DELETE FROM tb_stock WHERE codearticle='0070248200';
DELETE FROM tb_article WHERE idarticle=2482;
DELETE FROM tb_unite WHERE idunite=3262 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3262) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3262);
COMMIT;

-- IdArticle=2481 , Designation=AIGLE D OR TSIAHY MARRON P36 , Unite=PAIRE , IdUnite=3261 , CodeArticle=0070248100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2481 AND idunite=3261;
DELETE FROM tb_log_stock WHERE codearticle='0070248100';
DELETE FROM tb_inventaire WHERE codearticle='0070248100';
DELETE FROM tb_stock WHERE codearticle='0070248100';
DELETE FROM tb_article WHERE idarticle=2481;
DELETE FROM tb_unite WHERE idunite=3261 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3261) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3261);
COMMIT;

-- IdArticle=2479 , Designation=AIGLE D OR TSIAHY MARRON P37 , Unite=PAIRE , IdUnite=3259 , CodeArticle=0070247900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2479 AND idunite=3259;
DELETE FROM tb_log_stock WHERE codearticle='0070247900';
DELETE FROM tb_inventaire WHERE codearticle='0070247900';
DELETE FROM tb_stock WHERE codearticle='0070247900';
DELETE FROM tb_article WHERE idarticle=2479;
DELETE FROM tb_unite WHERE idunite=3259 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3259) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3259);
COMMIT;

-- IdArticle=2480 , Designation=AIGLE D OR TSIAHY MARRON P38 , Unite=PAIRE , IdUnite=3260 , CodeArticle=0070248000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2480 AND idunite=3260;
DELETE FROM tb_log_stock WHERE codearticle='0070248000';
DELETE FROM tb_inventaire WHERE codearticle='0070248000';
DELETE FROM tb_stock WHERE codearticle='0070248000';
DELETE FROM tb_article WHERE idarticle=2480;
DELETE FROM tb_unite WHERE idunite=3260 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3260) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3260);
COMMIT;

-- IdArticle=2786 , Designation=AIGLE D OR TSIFERANA MAR P37 , Unite=PAIRE , IdUnite=3686 , CodeArticle=0070278600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2786 AND idunite=3686;
DELETE FROM tb_log_stock WHERE codearticle='0070278600';
DELETE FROM tb_inventaire WHERE codearticle='0070278600';
DELETE FROM tb_stock WHERE codearticle='0070278600';
DELETE FROM tb_article WHERE idarticle=2786;
DELETE FROM tb_unite WHERE idunite=3686 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3686) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3686);
COMMIT;

-- IdArticle=2785 , Designation=AIGLE D OR TSIFERANA MAR P38 , Unite=PAIRE , IdUnite=3685 , CodeArticle=0070278500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2785 AND idunite=3685;
DELETE FROM tb_log_stock WHERE codearticle='0070278500';
DELETE FROM tb_inventaire WHERE codearticle='0070278500';
DELETE FROM tb_stock WHERE codearticle='0070278500';
DELETE FROM tb_article WHERE idarticle=2785;
DELETE FROM tb_unite WHERE idunite=3685 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3685) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3685);
COMMIT;

-- IdArticle=2783 , Designation=AIGLE D OR TSIFERANA MAR P41 , Unite=PAIRE , IdUnite=3683 , CodeArticle=0070278300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2783 AND idunite=3683;
DELETE FROM tb_log_stock WHERE codearticle='0070278300';
DELETE FROM tb_inventaire WHERE codearticle='0070278300';
DELETE FROM tb_stock WHERE codearticle='0070278300';
DELETE FROM tb_article WHERE idarticle=2783;
DELETE FROM tb_unite WHERE idunite=3683 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3683) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3683);
COMMIT;

-- IdArticle=2797 , Designation=AIGLE D OR TSIHARIA MAR P39 , Unite=PAIRE , IdUnite=3697 , CodeArticle=0070279700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2797 AND idunite=3697;
DELETE FROM tb_log_stock WHERE codearticle='0070279700';
DELETE FROM tb_inventaire WHERE codearticle='0070279700';
DELETE FROM tb_stock WHERE codearticle='0070279700';
DELETE FROM tb_article WHERE idarticle=2797;
DELETE FROM tb_unite WHERE idunite=3697 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3697) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3697);
COMMIT;

-- IdArticle=2799 , Designation=AIGLE D OR TSIHARIA MAR P40 , Unite=PAIRE , IdUnite=3699 , CodeArticle=0070279900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2799 AND idunite=3699;
DELETE FROM tb_log_stock WHERE codearticle='0070279900';
DELETE FROM tb_inventaire WHERE codearticle='0070279900';
DELETE FROM tb_stock WHERE codearticle='0070279900';
DELETE FROM tb_article WHERE idarticle=2799;
DELETE FROM tb_unite WHERE idunite=3699 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3699) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3699);
COMMIT;

-- IdArticle=2800 , Designation=AIGLE D OR TSIHARIA MAR P41 , Unite=PAIRE , IdUnite=3700 , CodeArticle=0070280000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2800 AND idunite=3700;
DELETE FROM tb_log_stock WHERE codearticle='0070280000';
DELETE FROM tb_inventaire WHERE codearticle='0070280000';
DELETE FROM tb_stock WHERE codearticle='0070280000';
DELETE FROM tb_article WHERE idarticle=2800;
DELETE FROM tb_unite WHERE idunite=3700 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3700) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3700);
COMMIT;

-- IdArticle=2798 , Designation=AIGLE D OR TSIHARIA MAR P42 , Unite=PAIRE , IdUnite=3698 , CodeArticle=0070279800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2798 AND idunite=3698;
DELETE FROM tb_log_stock WHERE codearticle='0070279800';
DELETE FROM tb_inventaire WHERE codearticle='0070279800';
DELETE FROM tb_stock WHERE codearticle='0070279800';
DELETE FROM tb_article WHERE idarticle=2798;
DELETE FROM tb_unite WHERE idunite=3698 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3698) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3698);
COMMIT;

-- IdArticle=2794 , Designation=AIGLE D OR TSIHARIA NOIR P39 , Unite=PAIRE , IdUnite=3694 , CodeArticle=0070279400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2794 AND idunite=3694;
DELETE FROM tb_log_stock WHERE codearticle='0070279400';
DELETE FROM tb_inventaire WHERE codearticle='0070279400';
DELETE FROM tb_stock WHERE codearticle='0070279400';
DELETE FROM tb_article WHERE idarticle=2794;
DELETE FROM tb_unite WHERE idunite=3694 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3694) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3694);
COMMIT;

-- IdArticle=2791 , Designation=AIGLE D OR TSIHARIA NOIR P40 , Unite=PAIRE , IdUnite=3691 , CodeArticle=0070279100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2791 AND idunite=3691;
DELETE FROM tb_log_stock WHERE codearticle='0070279100';
DELETE FROM tb_inventaire WHERE codearticle='0070279100';
DELETE FROM tb_stock WHERE codearticle='0070279100';
DELETE FROM tb_article WHERE idarticle=2791;
DELETE FROM tb_unite WHERE idunite=3691 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3691) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3691);
COMMIT;

-- IdArticle=2793 , Designation=AIGLE D OR TSIHARIA NOIR P41 , Unite=PAIRE , IdUnite=3693 , CodeArticle=0070279300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2793 AND idunite=3693;
DELETE FROM tb_log_stock WHERE codearticle='0070279300';
DELETE FROM tb_inventaire WHERE codearticle='0070279300';
DELETE FROM tb_stock WHERE codearticle='0070279300';
DELETE FROM tb_article WHERE idarticle=2793;
DELETE FROM tb_unite WHERE idunite=3693 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3693) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3693);
COMMIT;

-- IdArticle=2795 , Designation=AIGLE D OR TSIHARIA NOIR P42 , Unite=PAIRE , IdUnite=3695 , CodeArticle=0070279500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2795 AND idunite=3695;
DELETE FROM tb_log_stock WHERE codearticle='0070279500';
DELETE FROM tb_inventaire WHERE codearticle='0070279500';
DELETE FROM tb_stock WHERE codearticle='0070279500';
DELETE FROM tb_article WHERE idarticle=2795;
DELETE FROM tb_unite WHERE idunite=3695 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3695) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3695);
COMMIT;

-- IdArticle=2796 , Designation=AIGLE D OR TSIHARIA NOIR P43 , Unite=PAIRE , IdUnite=3696 , CodeArticle=0070279600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2796 AND idunite=3696;
DELETE FROM tb_log_stock WHERE codearticle='0070279600';
DELETE FROM tb_inventaire WHERE codearticle='0070279600';
DELETE FROM tb_stock WHERE codearticle='0070279600';
DELETE FROM tb_article WHERE idarticle=2796;
DELETE FROM tb_unite WHERE idunite=3696 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3696) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3696);
COMMIT;

-- IdArticle=2792 , Designation=AIGLE D OR TSIHARIA NOIR P44 , Unite=PAIRE , IdUnite=3692 , CodeArticle=0070279200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2792 AND idunite=3692;
DELETE FROM tb_log_stock WHERE codearticle='0070279200';
DELETE FROM tb_inventaire WHERE codearticle='0070279200';
DELETE FROM tb_stock WHERE codearticle='0070279200';
DELETE FROM tb_article WHERE idarticle=2792;
DELETE FROM tb_unite WHERE idunite=3692 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3692) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3692);
COMMIT;

-- IdArticle=2489 , Designation=AIGLE D OR TSIHOARANA MARRON P39 , Unite=PAIRE , IdUnite=3269 , CodeArticle=0070248900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2489 AND idunite=3269;
DELETE FROM tb_log_stock WHERE codearticle='0070248900';
DELETE FROM tb_inventaire WHERE codearticle='0070248900';
DELETE FROM tb_stock WHERE codearticle='0070248900';
DELETE FROM tb_article WHERE idarticle=2489;
DELETE FROM tb_unite WHERE idunite=3269 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3269) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3269);
COMMIT;

-- IdArticle=2490 , Designation=AIGLE D OR TSIHOARANA MARRON P40 , Unite=PAIRE , IdUnite=3270 , CodeArticle=0070249000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2490 AND idunite=3270;
DELETE FROM tb_log_stock WHERE codearticle='0070249000';
DELETE FROM tb_inventaire WHERE codearticle='0070249000';
DELETE FROM tb_stock WHERE codearticle='0070249000';
DELETE FROM tb_article WHERE idarticle=2490;
DELETE FROM tb_unite WHERE idunite=3270 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3270) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3270);
COMMIT;

-- IdArticle=2491 , Designation=AIGLE D OR TSIHOARANA MARRON P41 , Unite=PAIRE , IdUnite=3271 , CodeArticle=0070249100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2491 AND idunite=3271;
DELETE FROM tb_log_stock WHERE codearticle='0070249100';
DELETE FROM tb_inventaire WHERE codearticle='0070249100';
DELETE FROM tb_stock WHERE codearticle='0070249100';
DELETE FROM tb_article WHERE idarticle=2491;
DELETE FROM tb_unite WHERE idunite=3271 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3271) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3271);
COMMIT;

-- IdArticle=2492 , Designation=AIGLE D OR TSIHOARANA MARRON P42 , Unite=PAIRE , IdUnite=3272 , CodeArticle=0070249200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2492 AND idunite=3272;
DELETE FROM tb_log_stock WHERE codearticle='0070249200';
DELETE FROM tb_inventaire WHERE codearticle='0070249200';
DELETE FROM tb_stock WHERE codearticle='0070249200';
DELETE FROM tb_article WHERE idarticle=2492;
DELETE FROM tb_unite WHERE idunite=3272 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3272) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3272);
COMMIT;

-- IdArticle=2493 , Designation=AIGLE D OR TSIHOARANA MARRON P43 , Unite=PAIRE , IdUnite=3273 , CodeArticle=0070249300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2493 AND idunite=3273;
DELETE FROM tb_log_stock WHERE codearticle='0070249300';
DELETE FROM tb_inventaire WHERE codearticle='0070249300';
DELETE FROM tb_stock WHERE codearticle='0070249300';
DELETE FROM tb_article WHERE idarticle=2493;
DELETE FROM tb_unite WHERE idunite=3273 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3273) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3273);
COMMIT;

-- IdArticle=2008 , Designation=AIGLE D OR TSIHOARANA NOIR P40 , Unite=PAIRE , IdUnite=2704 , CodeArticle=0070200800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2008 AND idunite=2704;
DELETE FROM tb_log_stock WHERE codearticle='0070200800';
DELETE FROM tb_inventaire WHERE codearticle='0070200800';
DELETE FROM tb_stock WHERE codearticle='0070200800';
DELETE FROM tb_article WHERE idarticle=2008;
DELETE FROM tb_unite WHERE idunite=2704 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2704) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2704);
COMMIT;

-- IdArticle=2009 , Designation=AIGLE D OR TSIHOARANA NOIR P41 , Unite=PAIRE , IdUnite=2705 , CodeArticle=0070200900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2009 AND idunite=2705;
DELETE FROM tb_log_stock WHERE codearticle='0070200900';
DELETE FROM tb_inventaire WHERE codearticle='0070200900';
DELETE FROM tb_stock WHERE codearticle='0070200900';
DELETE FROM tb_article WHERE idarticle=2009;
DELETE FROM tb_unite WHERE idunite=2705 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2705) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2705);
COMMIT;

-- IdArticle=2010 , Designation=AIGLE D OR TSIHOARANA NOIR P42 , Unite=PAIRE , IdUnite=2706 , CodeArticle=0070201000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2010 AND idunite=2706;
DELETE FROM tb_log_stock WHERE codearticle='0070201000';
DELETE FROM tb_inventaire WHERE codearticle='0070201000';
DELETE FROM tb_stock WHERE codearticle='0070201000';
DELETE FROM tb_article WHERE idarticle=2010;
DELETE FROM tb_unite WHERE idunite=2706 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2706) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2706);
COMMIT;

-- IdArticle=2011 , Designation=AIGLE D OR TSIHOARANA NOIR P43 , Unite=PAIRE , IdUnite=2707 , CodeArticle=0070201100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2011 AND idunite=2707;
DELETE FROM tb_log_stock WHERE codearticle='0070201100';
DELETE FROM tb_inventaire WHERE codearticle='0070201100';
DELETE FROM tb_stock WHERE codearticle='0070201100';
DELETE FROM tb_article WHERE idarticle=2011;
DELETE FROM tb_unite WHERE idunite=2707 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2707) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2707);
COMMIT;

-- IdArticle=2580 , Designation=AIGLE D OR TSILAVINA P39 , Unite=PAIRE , IdUnite=3395 , CodeArticle=0070258000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2580 AND idunite=3395;
DELETE FROM tb_log_stock WHERE codearticle='0070258000';
DELETE FROM tb_inventaire WHERE codearticle='0070258000';
DELETE FROM tb_stock WHERE codearticle='0070258000';
DELETE FROM tb_article WHERE idarticle=2580;
DELETE FROM tb_unite WHERE idunite=3395 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3395) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3395);
COMMIT;

-- IdArticle=2581 , Designation=AIGLE D OR TSILAVINA P40 , Unite=PAIRE , IdUnite=3396 , CodeArticle=0070258100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2581 AND idunite=3396;
DELETE FROM tb_log_stock WHERE codearticle='0070258100';
DELETE FROM tb_inventaire WHERE codearticle='0070258100';
DELETE FROM tb_stock WHERE codearticle='0070258100';
DELETE FROM tb_article WHERE idarticle=2581;
DELETE FROM tb_unite WHERE idunite=3396 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3396) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3396);
COMMIT;

-- IdArticle=2582 , Designation=AIGLE D OR TSILAVINA P41 , Unite=PAIRE , IdUnite=3397 , CodeArticle=0070258200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2582 AND idunite=3397;
DELETE FROM tb_log_stock WHERE codearticle='0070258200';
DELETE FROM tb_inventaire WHERE codearticle='0070258200';
DELETE FROM tb_stock WHERE codearticle='0070258200';
DELETE FROM tb_article WHERE idarticle=2582;
DELETE FROM tb_unite WHERE idunite=3397 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3397) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3397);
COMMIT;

-- IdArticle=2583 , Designation=AIGLE D OR TSILAVINA P42 , Unite=PAIRE , IdUnite=3398 , CodeArticle=0070258300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2583 AND idunite=3398;
DELETE FROM tb_log_stock WHERE codearticle='0070258300';
DELETE FROM tb_inventaire WHERE codearticle='0070258300';
DELETE FROM tb_stock WHERE codearticle='0070258300';
DELETE FROM tb_article WHERE idarticle=2583;
DELETE FROM tb_unite WHERE idunite=3398 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3398) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3398);
COMMIT;

-- IdArticle=2584 , Designation=AIGLE D OR TSILAVINA P43 , Unite=PAIRE , IdUnite=3399 , CodeArticle=0070258400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2584 AND idunite=3399;
DELETE FROM tb_log_stock WHERE codearticle='0070258400';
DELETE FROM tb_inventaire WHERE codearticle='0070258400';
DELETE FROM tb_stock WHERE codearticle='0070258400';
DELETE FROM tb_article WHERE idarticle=2584;
DELETE FROM tb_unite WHERE idunite=3399 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3399) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3399);
COMMIT;

-- IdArticle=2585 , Designation=AIGLE D OR TSILAVINA P44 , Unite=PAIRE , IdUnite=3400 , CodeArticle=0070258500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2585 AND idunite=3400;
DELETE FROM tb_log_stock WHERE codearticle='0070258500';
DELETE FROM tb_inventaire WHERE codearticle='0070258500';
DELETE FROM tb_stock WHERE codearticle='0070258500';
DELETE FROM tb_article WHERE idarticle=2585;
DELETE FROM tb_unite WHERE idunite=3400 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3400) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3400);
COMMIT;

-- IdArticle=2586 , Designation=AIGLE D OR TSILAVINA P45 , Unite=PAIRE , IdUnite=3401 , CodeArticle=0070258600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2586 AND idunite=3401;
DELETE FROM tb_log_stock WHERE codearticle='0070258600';
DELETE FROM tb_inventaire WHERE codearticle='0070258600';
DELETE FROM tb_stock WHERE codearticle='0070258600';
DELETE FROM tb_article WHERE idarticle=2586;
DELETE FROM tb_unite WHERE idunite=3401 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3401) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3401);
COMMIT;

-- IdArticle=2883 , Designation=AIGLE D OR TSILAVINIAINA NOIR P39 , Unite=PAIRE , IdUnite=3813 , CodeArticle=0070288300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2883 AND idunite=3813;
DELETE FROM tb_log_stock WHERE codearticle='0070288300';
DELETE FROM tb_inventaire WHERE codearticle='0070288300';
DELETE FROM tb_stock WHERE codearticle='0070288300';
DELETE FROM tb_article WHERE idarticle=2883;
DELETE FROM tb_unite WHERE idunite=3813 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3813) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3813);
COMMIT;

-- IdArticle=2885 , Designation=AIGLE D OR TSILAVINIAINA NOIR P40 , Unite=PAIRE , IdUnite=3815 , CodeArticle=0070288500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2885 AND idunite=3815;
DELETE FROM tb_log_stock WHERE codearticle='0070288500';
DELETE FROM tb_inventaire WHERE codearticle='0070288500';
DELETE FROM tb_stock WHERE codearticle='0070288500';
DELETE FROM tb_article WHERE idarticle=2885;
DELETE FROM tb_unite WHERE idunite=3815 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3815) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3815);
COMMIT;

-- IdArticle=2884 , Designation=AIGLE D OR TSILAVINIAINA NOIR P42 , Unite=PAIRE , IdUnite=3814 , CodeArticle=0070288400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2884 AND idunite=3814;
DELETE FROM tb_log_stock WHERE codearticle='0070288400';
DELETE FROM tb_inventaire WHERE codearticle='0070288400';
DELETE FROM tb_stock WHERE codearticle='0070288400';
DELETE FROM tb_article WHERE idarticle=2884;
DELETE FROM tb_unite WHERE idunite=3814 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3814) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3814);
COMMIT;

-- IdArticle=2888 , Designation=AIGLE D OR TSILAVINIAINA NOIR P43 , Unite=PAIRE , IdUnite=3818 , CodeArticle=0070288800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2888 AND idunite=3818;
DELETE FROM tb_log_stock WHERE codearticle='0070288800';
DELETE FROM tb_inventaire WHERE codearticle='0070288800';
DELETE FROM tb_stock WHERE codearticle='0070288800';
DELETE FROM tb_article WHERE idarticle=2888;
DELETE FROM tb_unite WHERE idunite=3818 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3818) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3818);
COMMIT;

-- IdArticle=2887 , Designation=AIGLE D OR TSILAVINIAINA NOIR P44 , Unite=PAIRE , IdUnite=3817 , CodeArticle=0070288700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2887 AND idunite=3817;
DELETE FROM tb_log_stock WHERE codearticle='0070288700';
DELETE FROM tb_inventaire WHERE codearticle='0070288700';
DELETE FROM tb_stock WHERE codearticle='0070288700';
DELETE FROM tb_article WHERE idarticle=2887;
DELETE FROM tb_unite WHERE idunite=3817 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3817) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3817);
COMMIT;

-- IdArticle=2886 , Designation=AIGLE D OR TSILAVINIAINA NOIR P45 , Unite=PAIRE , IdUnite=3816 , CodeArticle=0070288600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2886 AND idunite=3816;
DELETE FROM tb_log_stock WHERE codearticle='0070288600';
DELETE FROM tb_inventaire WHERE codearticle='0070288600';
DELETE FROM tb_stock WHERE codearticle='0070288600';
DELETE FROM tb_article WHERE idarticle=2886;
DELETE FROM tb_unite WHERE idunite=3816 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3816) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3816);
COMMIT;

-- IdArticle=2776 , Designation=AIGLE D OR TSIRAVA MAR P39 , Unite=PAIRE , IdUnite=3676 , CodeArticle=0070277600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2776 AND idunite=3676;
DELETE FROM tb_log_stock WHERE codearticle='0070277600';
DELETE FROM tb_inventaire WHERE codearticle='0070277600';
DELETE FROM tb_stock WHERE codearticle='0070277600';
DELETE FROM tb_article WHERE idarticle=2776;
DELETE FROM tb_unite WHERE idunite=3676 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3676) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3676);
COMMIT;

-- IdArticle=2780 , Designation=AIGLE D OR TSIRAVA MAR P40 , Unite=PAIRE , IdUnite=3680 , CodeArticle=0070278000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2780 AND idunite=3680;
DELETE FROM tb_log_stock WHERE codearticle='0070278000';
DELETE FROM tb_inventaire WHERE codearticle='0070278000';
DELETE FROM tb_stock WHERE codearticle='0070278000';
DELETE FROM tb_article WHERE idarticle=2780;
DELETE FROM tb_unite WHERE idunite=3680 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3680) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3680);
COMMIT;

-- IdArticle=2778 , Designation=AIGLE D OR TSIRAVA MAR P41 , Unite=PAIRE , IdUnite=3678 , CodeArticle=0070277800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2778 AND idunite=3678;
DELETE FROM tb_log_stock WHERE codearticle='0070277800';
DELETE FROM tb_inventaire WHERE codearticle='0070277800';
DELETE FROM tb_stock WHERE codearticle='0070277800';
DELETE FROM tb_article WHERE idarticle=2778;
DELETE FROM tb_unite WHERE idunite=3678 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3678) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3678);
COMMIT;

-- IdArticle=2779 , Designation=AIGLE D OR TSIRAVA MAR P42 , Unite=PAIRE , IdUnite=3679 , CodeArticle=0070277900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2779 AND idunite=3679;
DELETE FROM tb_log_stock WHERE codearticle='0070277900';
DELETE FROM tb_inventaire WHERE codearticle='0070277900';
DELETE FROM tb_stock WHERE codearticle='0070277900';
DELETE FROM tb_article WHERE idarticle=2779;
DELETE FROM tb_unite WHERE idunite=3679 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3679) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3679);
COMMIT;

-- IdArticle=2777 , Designation=AIGLE D OR TSIRAVA MAR P43 , Unite=PAIRE , IdUnite=3677 , CodeArticle=0070277700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2777 AND idunite=3677;
DELETE FROM tb_log_stock WHERE codearticle='0070277700';
DELETE FROM tb_inventaire WHERE codearticle='0070277700';
DELETE FROM tb_stock WHERE codearticle='0070277700';
DELETE FROM tb_article WHERE idarticle=2777;
DELETE FROM tb_unite WHERE idunite=3677 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3677) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3677);
COMMIT;

-- IdArticle=2027 , Designation=AIGLE D OR TSITOHA MARRON P41 , Unite=PAIRE , IdUnite=2723 , CodeArticle=0070202700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2027 AND idunite=2723;
DELETE FROM tb_log_stock WHERE codearticle='0070202700';
DELETE FROM tb_inventaire WHERE codearticle='0070202700';
DELETE FROM tb_stock WHERE codearticle='0070202700';
DELETE FROM tb_article WHERE idarticle=2027;
DELETE FROM tb_unite WHERE idunite=2723 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2723) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2723);
COMMIT;

-- IdArticle=2028 , Designation=AIGLE D OR TSITOHA MARRON P42 , Unite=PAIRE , IdUnite=2724 , CodeArticle=0070202800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2028 AND idunite=2724;
DELETE FROM tb_log_stock WHERE codearticle='0070202800';
DELETE FROM tb_inventaire WHERE codearticle='0070202800';
DELETE FROM tb_stock WHERE codearticle='0070202800';
DELETE FROM tb_article WHERE idarticle=2028;
DELETE FROM tb_unite WHERE idunite=2724 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2724) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2724);
COMMIT;

-- IdArticle=2029 , Designation=AIGLE D OR TSITOHA MARRON P43 , Unite=PAIRE , IdUnite=2725 , CodeArticle=0070202900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2029 AND idunite=2725;
DELETE FROM tb_log_stock WHERE codearticle='0070202900';
DELETE FROM tb_inventaire WHERE codearticle='0070202900';
DELETE FROM tb_stock WHERE codearticle='0070202900';
DELETE FROM tb_article WHERE idarticle=2029;
DELETE FROM tb_unite WHERE idunite=2725 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2725) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2725);
COMMIT;

-- IdArticle=3269 , Designation=AIGLE D OR TSOA COU P35 , Unite=PAIRE , IdUnite=4291 , CodeArticle=0070326900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3269 AND idunite=4291;
DELETE FROM tb_log_stock WHERE codearticle='0070326900';
DELETE FROM tb_inventaire WHERE codearticle='0070326900';
DELETE FROM tb_stock WHERE codearticle='0070326900';
DELETE FROM tb_article WHERE idarticle=3269;
DELETE FROM tb_unite WHERE idunite=4291 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4291) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4291);
COMMIT;

-- IdArticle=3268 , Designation=AIGLE D OR TSOA COU P36 , Unite=PAIRE , IdUnite=4290 , CodeArticle=0070326800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3268 AND idunite=4290;
DELETE FROM tb_log_stock WHERE codearticle='0070326800';
DELETE FROM tb_inventaire WHERE codearticle='0070326800';
DELETE FROM tb_stock WHERE codearticle='0070326800';
DELETE FROM tb_article WHERE idarticle=3268;
DELETE FROM tb_unite WHERE idunite=4290 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4290) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4290);
COMMIT;

-- IdArticle=3267 , Designation=AIGLE D OR TSOA COU P37 , Unite=PAIRE , IdUnite=4289 , CodeArticle=0070326700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3267 AND idunite=4289;
DELETE FROM tb_log_stock WHERE codearticle='0070326700';
DELETE FROM tb_inventaire WHERE codearticle='0070326700';
DELETE FROM tb_stock WHERE codearticle='0070326700';
DELETE FROM tb_article WHERE idarticle=3267;
DELETE FROM tb_unite WHERE idunite=4289 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4289) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4289);
COMMIT;

-- IdArticle=3266 , Designation=AIGLE D OR TSOA COU P38 , Unite=PAIRE , IdUnite=4288 , CodeArticle=0070326600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3266 AND idunite=4288;
DELETE FROM tb_log_stock WHERE codearticle='0070326600';
DELETE FROM tb_inventaire WHERE codearticle='0070326600';
DELETE FROM tb_stock WHERE codearticle='0070326600';
DELETE FROM tb_article WHERE idarticle=3266;
DELETE FROM tb_unite WHERE idunite=4288 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4288) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4288);
COMMIT;

-- IdArticle=3265 , Designation=AIGLE D OR TSOA COU P39 , Unite=PAIRE , IdUnite=4287 , CodeArticle=0070326500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3265 AND idunite=4287;
DELETE FROM tb_log_stock WHERE codearticle='0070326500';
DELETE FROM tb_inventaire WHERE codearticle='0070326500';
DELETE FROM tb_stock WHERE codearticle='0070326500';
DELETE FROM tb_article WHERE idarticle=3265;
DELETE FROM tb_unite WHERE idunite=4287 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4287) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4287);
COMMIT;

-- IdArticle=3365 , Designation=AIGLE D OR TSOA COU P40 , Unite=PAIRE , IdUnite=4401 , CodeArticle=0070336500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3365 AND idunite=4401;
DELETE FROM tb_log_stock WHERE codearticle='0070336500';
DELETE FROM tb_inventaire WHERE codearticle='0070336500';
DELETE FROM tb_stock WHERE codearticle='0070336500';
DELETE FROM tb_article WHERE idarticle=3365;
DELETE FROM tb_unite WHERE idunite=4401 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4401) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4401);
COMMIT;

-- IdArticle=3264 , Designation=AIGLE D OR TSOA COU P41 , Unite=PAIRE , IdUnite=4286 , CodeArticle=0070326400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3264 AND idunite=4286;
DELETE FROM tb_log_stock WHERE codearticle='0070326400';
DELETE FROM tb_inventaire WHERE codearticle='0070326400';
DELETE FROM tb_stock WHERE codearticle='0070326400';
DELETE FROM tb_article WHERE idarticle=3264;
DELETE FROM tb_unite WHERE idunite=4286 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4286) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4286);
COMMIT;

-- IdArticle=2775 , Designation=AIGLE D OR VOHITRA MAR P36 , Unite=PAIRE , IdUnite=3675 , CodeArticle=0070277500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2775 AND idunite=3675;
DELETE FROM tb_log_stock WHERE codearticle='0070277500';
DELETE FROM tb_inventaire WHERE codearticle='0070277500';
DELETE FROM tb_stock WHERE codearticle='0070277500';
DELETE FROM tb_article WHERE idarticle=2775;
DELETE FROM tb_unite WHERE idunite=3675 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3675) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3675);
COMMIT;

-- IdArticle=2773 , Designation=AIGLE D OR VOHITRA MAR P37 , Unite=PAIRE , IdUnite=3673 , CodeArticle=0070277300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2773 AND idunite=3673;
DELETE FROM tb_log_stock WHERE codearticle='0070277300';
DELETE FROM tb_inventaire WHERE codearticle='0070277300';
DELETE FROM tb_stock WHERE codearticle='0070277300';
DELETE FROM tb_article WHERE idarticle=2773;
DELETE FROM tb_unite WHERE idunite=3673 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3673) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3673);
COMMIT;

-- IdArticle=2774 , Designation=AIGLE D OR VOHITRA MAR P38 , Unite=PAIRE , IdUnite=3674 , CodeArticle=0070277400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2774 AND idunite=3674;
DELETE FROM tb_log_stock WHERE codearticle='0070277400';
DELETE FROM tb_inventaire WHERE codearticle='0070277400';
DELETE FROM tb_stock WHERE codearticle='0070277400';
DELETE FROM tb_article WHERE idarticle=2774;
DELETE FROM tb_unite WHERE idunite=3674 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3674) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3674);
COMMIT;

-- IdArticle=2317 , Designation=AIGLE D OR VOHITRA MAR P39 , Unite=PAIRE , IdUnite=3065 , CodeArticle=0070231700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2317 AND idunite=3065;
DELETE FROM tb_log_stock WHERE codearticle='0070231700';
DELETE FROM tb_inventaire WHERE codearticle='0070231700';
DELETE FROM tb_stock WHERE codearticle='0070231700';
DELETE FROM tb_article WHERE idarticle=2317;
DELETE FROM tb_unite WHERE idunite=3065 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3065) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3065);
COMMIT;

-- IdArticle=2318 , Designation=AIGLE D OR VOHITRA MAR P40 , Unite=PAIRE , IdUnite=3066 , CodeArticle=0070231800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2318 AND idunite=3066;
DELETE FROM tb_log_stock WHERE codearticle='0070231800';
DELETE FROM tb_inventaire WHERE codearticle='0070231800';
DELETE FROM tb_stock WHERE codearticle='0070231800';
DELETE FROM tb_article WHERE idarticle=2318;
DELETE FROM tb_unite WHERE idunite=3066 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3066) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3066);
COMMIT;

-- IdArticle=2319 , Designation=AIGLE D OR VOHITRA MAR P41 , Unite=PAIRE , IdUnite=3067 , CodeArticle=0070231900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2319 AND idunite=3067;
DELETE FROM tb_log_stock WHERE codearticle='0070231900';
DELETE FROM tb_inventaire WHERE codearticle='0070231900';
DELETE FROM tb_stock WHERE codearticle='0070231900';
DELETE FROM tb_article WHERE idarticle=2319;
DELETE FROM tb_unite WHERE idunite=3067 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3067) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3067);
COMMIT;

-- IdArticle=2320 , Designation=AIGLE D OR VOHITRA MAR P42 , Unite=PAIRE , IdUnite=3068 , CodeArticle=0070232000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2320 AND idunite=3068;
DELETE FROM tb_log_stock WHERE codearticle='0070232000';
DELETE FROM tb_inventaire WHERE codearticle='0070232000';
DELETE FROM tb_stock WHERE codearticle='0070232000';
DELETE FROM tb_article WHERE idarticle=2320;
DELETE FROM tb_unite WHERE idunite=3068 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3068) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3068);
COMMIT;

-- IdArticle=2321 , Designation=AIGLE D OR VOHITRA MAR P43 , Unite=PAIRE , IdUnite=3069 , CodeArticle=0070232100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2321 AND idunite=3069;
DELETE FROM tb_log_stock WHERE codearticle='0070232100';
DELETE FROM tb_inventaire WHERE codearticle='0070232100';
DELETE FROM tb_stock WHERE codearticle='0070232100';
DELETE FROM tb_article WHERE idarticle=2321;
DELETE FROM tb_unite WHERE idunite=3069 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3069) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3069);
COMMIT;

-- IdArticle=1932 , Designation=AIGLE D OR ZARA-MARRON P38 , Unite=PAIRE , IdUnite=2590 , CodeArticle=0070193200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1932 AND idunite=2590;
DELETE FROM tb_log_stock WHERE codearticle='0070193200';
DELETE FROM tb_inventaire WHERE codearticle='0070193200';
DELETE FROM tb_stock WHERE codearticle='0070193200';
DELETE FROM tb_article WHERE idarticle=1932;
DELETE FROM tb_unite WHERE idunite=2590 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2590) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2590);
COMMIT;

-- IdArticle=2440 , Designation=AIGLE D OR ZOTO MAR P28 , Unite=PAIRE , IdUnite=3220 , CodeArticle=0070244000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2440 AND idunite=3220;
DELETE FROM tb_log_stock WHERE codearticle='0070244000';
DELETE FROM tb_inventaire WHERE codearticle='0070244000';
DELETE FROM tb_stock WHERE codearticle='0070244000';
DELETE FROM tb_article WHERE idarticle=2440;
DELETE FROM tb_unite WHERE idunite=3220 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3220) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3220);
COMMIT;

-- IdArticle=2441 , Designation=AIGLE D OR ZOTO MAR P29 , Unite=PAIRE , IdUnite=3221 , CodeArticle=0070244100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2441 AND idunite=3221;
DELETE FROM tb_log_stock WHERE codearticle='0070244100';
DELETE FROM tb_inventaire WHERE codearticle='0070244100';
DELETE FROM tb_stock WHERE codearticle='0070244100';
DELETE FROM tb_article WHERE idarticle=2441;
DELETE FROM tb_unite WHERE idunite=3221 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3221) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3221);
COMMIT;

-- IdArticle=2442 , Designation=AIGLE D OR ZOTO MAR P30 , Unite=PAIRE , IdUnite=3222 , CodeArticle=0070244200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2442 AND idunite=3222;
DELETE FROM tb_log_stock WHERE codearticle='0070244200';
DELETE FROM tb_inventaire WHERE codearticle='0070244200';
DELETE FROM tb_stock WHERE codearticle='0070244200';
DELETE FROM tb_article WHERE idarticle=2442;
DELETE FROM tb_unite WHERE idunite=3222 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3222) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3222);
COMMIT;

-- IdArticle=2443 , Designation=AIGLE D OR ZOTO MAR P31 , Unite=PAIRE , IdUnite=3223 , CodeArticle=0070244300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2443 AND idunite=3223;
DELETE FROM tb_log_stock WHERE codearticle='0070244300';
DELETE FROM tb_inventaire WHERE codearticle='0070244300';
DELETE FROM tb_stock WHERE codearticle='0070244300';
DELETE FROM tb_article WHERE idarticle=2443;
DELETE FROM tb_unite WHERE idunite=3223 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3223) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3223);
COMMIT;

-- IdArticle=2444 , Designation=AIGLE D OR ZOTO MAR P32 , Unite=PAIRE , IdUnite=3224 , CodeArticle=0070244400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2444 AND idunite=3224;
DELETE FROM tb_log_stock WHERE codearticle='0070244400';
DELETE FROM tb_inventaire WHERE codearticle='0070244400';
DELETE FROM tb_stock WHERE codearticle='0070244400';
DELETE FROM tb_article WHERE idarticle=2444;
DELETE FROM tb_unite WHERE idunite=3224 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3224) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3224);
COMMIT;

-- IdArticle=2445 , Designation=AIGLE D OR ZOTO MAR P33 , Unite=PAIRE , IdUnite=3225 , CodeArticle=0070244500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2445 AND idunite=3225;
DELETE FROM tb_log_stock WHERE codearticle='0070244500';
DELETE FROM tb_inventaire WHERE codearticle='0070244500';
DELETE FROM tb_stock WHERE codearticle='0070244500';
DELETE FROM tb_article WHERE idarticle=2445;
DELETE FROM tb_unite WHERE idunite=3225 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3225) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3225);
COMMIT;

-- IdArticle=2446 , Designation=AIGLE D OR ZOTO MAR P34 , Unite=PAIRE , IdUnite=3226 , CodeArticle=0070244600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2446 AND idunite=3226;
DELETE FROM tb_log_stock WHERE codearticle='0070244600';
DELETE FROM tb_inventaire WHERE codearticle='0070244600';
DELETE FROM tb_stock WHERE codearticle='0070244600';
DELETE FROM tb_article WHERE idarticle=2446;
DELETE FROM tb_unite WHERE idunite=3226 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3226) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3226);
COMMIT;

-- IdArticle=2436 , Designation=AIGLE D OR ZOTO NOIR P30 , Unite=PAIRE , IdUnite=3216 , CodeArticle=0070243600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2436 AND idunite=3216;
DELETE FROM tb_log_stock WHERE codearticle='0070243600';
DELETE FROM tb_inventaire WHERE codearticle='0070243600';
DELETE FROM tb_stock WHERE codearticle='0070243600';
DELETE FROM tb_article WHERE idarticle=2436;
DELETE FROM tb_unite WHERE idunite=3216 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3216) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3216);
COMMIT;

-- IdArticle=2437 , Designation=AIGLE D OR ZOTO NOIR P31 , Unite=PAIRE , IdUnite=3217 , CodeArticle=0070243700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2437 AND idunite=3217;
DELETE FROM tb_log_stock WHERE codearticle='0070243700';
DELETE FROM tb_inventaire WHERE codearticle='0070243700';
DELETE FROM tb_stock WHERE codearticle='0070243700';
DELETE FROM tb_article WHERE idarticle=2437;
DELETE FROM tb_unite WHERE idunite=3217 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3217) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3217);
COMMIT;

-- IdArticle=2960 , Designation=AIGLE D OR ZOTO NOIR P32 , Unite=PAIRE , IdUnite=3890 , CodeArticle=0070296000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2960 AND idunite=3890;
DELETE FROM tb_log_stock WHERE codearticle='0070296000';
DELETE FROM tb_inventaire WHERE codearticle='0070296000';
DELETE FROM tb_stock WHERE codearticle='0070296000';
DELETE FROM tb_article WHERE idarticle=2960;
DELETE FROM tb_unite WHERE idunite=3890 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3890) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3890);
COMMIT;

-- IdArticle=2439 , Designation=AIGLE D OR ZOTO NOIR P34 , Unite=PAIRE , IdUnite=3219 , CodeArticle=0070243900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2439 AND idunite=3219;
DELETE FROM tb_log_stock WHERE codearticle='0070243900';
DELETE FROM tb_inventaire WHERE codearticle='0070243900';
DELETE FROM tb_stock WHERE codearticle='0070243900';
DELETE FROM tb_article WHERE idarticle=2439;
DELETE FROM tb_unite WHERE idunite=3219 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3219) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3219);
COMMIT;

-- IdArticle=2179 , Designation=AIGLE D OR_ALOALO P37 , Unite=PAIRE , IdUnite=2906 , CodeArticle=0070217900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2179 AND idunite=2906;
DELETE FROM tb_log_stock WHERE codearticle='0070217900';
DELETE FROM tb_inventaire WHERE codearticle='0070217900';
DELETE FROM tb_stock WHERE codearticle='0070217900';
DELETE FROM tb_article WHERE idarticle=2179;
DELETE FROM tb_unite WHERE idunite=2906 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2906) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2906);
COMMIT;

-- IdArticle=2180 , Designation=AIGLE D OR_ALOALO P39 , Unite=PAIRE , IdUnite=2907 , CodeArticle=0070218000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2180 AND idunite=2907;
DELETE FROM tb_log_stock WHERE codearticle='0070218000';
DELETE FROM tb_inventaire WHERE codearticle='0070218000';
DELETE FROM tb_stock WHERE codearticle='0070218000';
DELETE FROM tb_article WHERE idarticle=2180;
DELETE FROM tb_unite WHERE idunite=2907 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2907) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2907);
COMMIT;

-- IdArticle=2181 , Designation=AIGLE D OR_ALOALO P41 , Unite=PAIRE , IdUnite=2908 , CodeArticle=0070218100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2181 AND idunite=2908;
DELETE FROM tb_log_stock WHERE codearticle='0070218100';
DELETE FROM tb_inventaire WHERE codearticle='0070218100';
DELETE FROM tb_stock WHERE codearticle='0070218100';
DELETE FROM tb_article WHERE idarticle=2181;
DELETE FROM tb_unite WHERE idunite=2908 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2908) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2908);
COMMIT;

-- IdArticle=1881 , Designation=AIGLE D OR_ANKOAY-NOIR P39 , Unite=PAIRE , IdUnite=2525 , CodeArticle=0070188100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1881 AND idunite=2525;
DELETE FROM tb_log_stock WHERE codearticle='0070188100';
DELETE FROM tb_inventaire WHERE codearticle='0070188100';
DELETE FROM tb_stock WHERE codearticle='0070188100';
DELETE FROM tb_article WHERE idarticle=1881;
DELETE FROM tb_unite WHERE idunite=2525 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2525) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2525);
COMMIT;

-- IdArticle=2145 , Designation=AIGLE D OR_ANKOAY-NOIR P40 , Unite=PAIRE , IdUnite=2860 , CodeArticle=0070214500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2145 AND idunite=2860;
DELETE FROM tb_log_stock WHERE codearticle='0070214500';
DELETE FROM tb_inventaire WHERE codearticle='0070214500';
DELETE FROM tb_stock WHERE codearticle='0070214500';
DELETE FROM tb_article WHERE idarticle=2145;
DELETE FROM tb_unite WHERE idunite=2860 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2860) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2860);
COMMIT;

-- IdArticle=2248 , Designation=AIGLE D OR_ANKOAY-NOIR P41 , Unite=PAIRE , IdUnite=2991 , CodeArticle=0070224800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2248 AND idunite=2991;
DELETE FROM tb_log_stock WHERE codearticle='0070224800';
DELETE FROM tb_inventaire WHERE codearticle='0070224800';
DELETE FROM tb_stock WHERE codearticle='0070224800';
DELETE FROM tb_article WHERE idarticle=2248;
DELETE FROM tb_unite WHERE idunite=2991 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2991) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2991);
COMMIT;

-- IdArticle=2146 , Designation=AIGLE D OR_ANKOAY-NOIR P42 , Unite=PAIRE , IdUnite=2861 , CodeArticle=0070214600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2146 AND idunite=2861;
DELETE FROM tb_log_stock WHERE codearticle='0070214600';
DELETE FROM tb_inventaire WHERE codearticle='0070214600';
DELETE FROM tb_stock WHERE codearticle='0070214600';
DELETE FROM tb_article WHERE idarticle=2146;
DELETE FROM tb_unite WHERE idunite=2861 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2861) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2861);
COMMIT;

-- IdArticle=2147 , Designation=AIGLE D OR_ANKOAY-NOIR P43 , Unite=PAIRE , IdUnite=2862 , CodeArticle=0070214700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2147 AND idunite=2862;
DELETE FROM tb_log_stock WHERE codearticle='0070214700';
DELETE FROM tb_inventaire WHERE codearticle='0070214700';
DELETE FROM tb_stock WHERE codearticle='0070214700';
DELETE FROM tb_article WHERE idarticle=2147;
DELETE FROM tb_unite WHERE idunite=2862 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2862) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2862);
COMMIT;

-- IdArticle=2202 , Designation=AIGLE D OR_ANKOAY-NOIR P44 , Unite=PAIRE , IdUnite=2935 , CodeArticle=0070220200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2202 AND idunite=2935;
DELETE FROM tb_log_stock WHERE codearticle='0070220200';
DELETE FROM tb_inventaire WHERE codearticle='0070220200';
DELETE FROM tb_stock WHERE codearticle='0070220200';
DELETE FROM tb_article WHERE idarticle=2202;
DELETE FROM tb_unite WHERE idunite=2935 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2935) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2935);
COMMIT;

-- IdArticle=2136 , Designation=AIGLE D OR_DIHY-MARRON P36 , Unite=PAIRE , IdUnite=2851 , CodeArticle=0070213600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2136 AND idunite=2851;
DELETE FROM tb_log_stock WHERE codearticle='0070213600';
DELETE FROM tb_inventaire WHERE codearticle='0070213600';
DELETE FROM tb_stock WHERE codearticle='0070213600';
DELETE FROM tb_article WHERE idarticle=2136;
DELETE FROM tb_unite WHERE idunite=2851 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2851) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2851);
COMMIT;

-- IdArticle=2137 , Designation=AIGLE D OR_DIHY-MARRON P40 , Unite=PAIRE , IdUnite=2852 , CodeArticle=0070213700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2137 AND idunite=2852;
DELETE FROM tb_log_stock WHERE codearticle='0070213700';
DELETE FROM tb_inventaire WHERE codearticle='0070213700';
DELETE FROM tb_stock WHERE codearticle='0070213700';
DELETE FROM tb_article WHERE idarticle=2137;
DELETE FROM tb_unite WHERE idunite=2852 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2852) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2852);
COMMIT;

-- IdArticle=2154 , Designation=AIGLE D OR_FEHINY-NOIR P41 , Unite=PAIRE , IdUnite=2869 , CodeArticle=0070215400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2154 AND idunite=2869;
DELETE FROM tb_log_stock WHERE codearticle='0070215400';
DELETE FROM tb_inventaire WHERE codearticle='0070215400';
DELETE FROM tb_stock WHERE codearticle='0070215400';
DELETE FROM tb_article WHERE idarticle=2154;
DELETE FROM tb_unite WHERE idunite=2869 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2869) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2869);
COMMIT;

-- IdArticle=2155 , Designation=AIGLE D OR_FEHINY-NOIR P42 , Unite=PAIRE , IdUnite=2870 , CodeArticle=0070215500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2155 AND idunite=2870;
DELETE FROM tb_log_stock WHERE codearticle='0070215500';
DELETE FROM tb_inventaire WHERE codearticle='0070215500';
DELETE FROM tb_stock WHERE codearticle='0070215500';
DELETE FROM tb_article WHERE idarticle=2155;
DELETE FROM tb_unite WHERE idunite=2870 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2870) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2870);
COMMIT;

-- IdArticle=2156 , Designation=AIGLE D OR_FEHINY-NOIR P43 , Unite=PAIRE , IdUnite=2871 , CodeArticle=0070215600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2156 AND idunite=2871;
DELETE FROM tb_log_stock WHERE codearticle='0070215600';
DELETE FROM tb_inventaire WHERE codearticle='0070215600';
DELETE FROM tb_stock WHERE codearticle='0070215600';
DELETE FROM tb_article WHERE idarticle=2156;
DELETE FROM tb_unite WHERE idunite=2871 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2871) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2871);
COMMIT;

-- IdArticle=2757 , Designation=AIGLE D OR_ILOAINA-MAR P36 , Unite=PAIRE , IdUnite=3657 , CodeArticle=0070275700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2757 AND idunite=3657;
DELETE FROM tb_log_stock WHERE codearticle='0070275700';
DELETE FROM tb_inventaire WHERE codearticle='0070275700';
DELETE FROM tb_stock WHERE codearticle='0070275700';
DELETE FROM tb_article WHERE idarticle=2757;
DELETE FROM tb_unite WHERE idunite=3657 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3657) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3657);
COMMIT;

-- IdArticle=2758 , Designation=AIGLE D OR_ILOAINA-MAR P37 , Unite=PAIRE , IdUnite=3658 , CodeArticle=0070275800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2758 AND idunite=3658;
DELETE FROM tb_log_stock WHERE codearticle='0070275800';
DELETE FROM tb_inventaire WHERE codearticle='0070275800';
DELETE FROM tb_stock WHERE codearticle='0070275800';
DELETE FROM tb_article WHERE idarticle=2758;
DELETE FROM tb_unite WHERE idunite=3658 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3658) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3658);
COMMIT;

-- IdArticle=2759 , Designation=AIGLE D OR_ILOAINA-MAR P38 , Unite=PAIRE , IdUnite=3659 , CodeArticle=0070275900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2759 AND idunite=3659;
DELETE FROM tb_log_stock WHERE codearticle='0070275900';
DELETE FROM tb_inventaire WHERE codearticle='0070275900';
DELETE FROM tb_stock WHERE codearticle='0070275900';
DELETE FROM tb_article WHERE idarticle=2759;
DELETE FROM tb_unite WHERE idunite=3659 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3659) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3659);
COMMIT;

-- IdArticle=2755 , Designation=AIGLE D OR_ILOAINA-MAR P40 , Unite=PAIRE , IdUnite=3655 , CodeArticle=0070275500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2755 AND idunite=3655;
DELETE FROM tb_log_stock WHERE codearticle='0070275500';
DELETE FROM tb_inventaire WHERE codearticle='0070275500';
DELETE FROM tb_stock WHERE codearticle='0070275500';
DELETE FROM tb_article WHERE idarticle=2755;
DELETE FROM tb_unite WHERE idunite=3655 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3655) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3655);
COMMIT;

-- IdArticle=2754 , Designation=AIGLE D OR_ILOAINA-MAR P41 , Unite=PAIRE , IdUnite=3654 , CodeArticle=0070275400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2754 AND idunite=3654;
DELETE FROM tb_log_stock WHERE codearticle='0070275400';
DELETE FROM tb_inventaire WHERE codearticle='0070275400';
DELETE FROM tb_stock WHERE codearticle='0070275400';
DELETE FROM tb_article WHERE idarticle=2754;
DELETE FROM tb_unite WHERE idunite=3654 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3654) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3654);
COMMIT;

-- IdArticle=2753 , Designation=AIGLE D OR_ILOAINA-MAR P42 , Unite=PAIRE , IdUnite=3653 , CodeArticle=0070275300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2753 AND idunite=3653;
DELETE FROM tb_log_stock WHERE codearticle='0070275300';
DELETE FROM tb_inventaire WHERE codearticle='0070275300';
DELETE FROM tb_stock WHERE codearticle='0070275300';
DELETE FROM tb_article WHERE idarticle=2753;
DELETE FROM tb_unite WHERE idunite=3653 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3653) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3653);
COMMIT;

-- IdArticle=2752 , Designation=AIGLE D OR_ILOAINA-NOIR P39 , Unite=PAIRE , IdUnite=3652 , CodeArticle=0070275200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2752 AND idunite=3652;
DELETE FROM tb_log_stock WHERE codearticle='0070275200';
DELETE FROM tb_inventaire WHERE codearticle='0070275200';
DELETE FROM tb_stock WHERE codearticle='0070275200';
DELETE FROM tb_article WHERE idarticle=2752;
DELETE FROM tb_unite WHERE idunite=3652 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3652) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3652);
COMMIT;

-- IdArticle=2748 , Designation=AIGLE D OR_ILOAINA-NOIR P40 , Unite=PAIRE , IdUnite=3648 , CodeArticle=0070274800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2748 AND idunite=3648;
DELETE FROM tb_log_stock WHERE codearticle='0070274800';
DELETE FROM tb_inventaire WHERE codearticle='0070274800';
DELETE FROM tb_stock WHERE codearticle='0070274800';
DELETE FROM tb_article WHERE idarticle=2748;
DELETE FROM tb_unite WHERE idunite=3648 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3648) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3648);
COMMIT;

-- IdArticle=2751 , Designation=AIGLE D OR_ILOAINA-NOIR P41 , Unite=PAIRE , IdUnite=3651 , CodeArticle=0070275100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2751 AND idunite=3651;
DELETE FROM tb_log_stock WHERE codearticle='0070275100';
DELETE FROM tb_inventaire WHERE codearticle='0070275100';
DELETE FROM tb_stock WHERE codearticle='0070275100';
DELETE FROM tb_article WHERE idarticle=2751;
DELETE FROM tb_unite WHERE idunite=3651 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3651) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3651);
COMMIT;

-- IdArticle=2750 , Designation=AIGLE D OR_ILOAINA-NOIR P42 , Unite=PAIRE , IdUnite=3650 , CodeArticle=0070275000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2750 AND idunite=3650;
DELETE FROM tb_log_stock WHERE codearticle='0070275000';
DELETE FROM tb_inventaire WHERE codearticle='0070275000';
DELETE FROM tb_stock WHERE codearticle='0070275000';
DELETE FROM tb_article WHERE idarticle=2750;
DELETE FROM tb_unite WHERE idunite=3650 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3650) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3650);
COMMIT;

-- IdArticle=2749 , Designation=AIGLE D OR_ILOAINA-NOIR P43 , Unite=PAIRE , IdUnite=3649 , CodeArticle=0070274900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2749 AND idunite=3649;
DELETE FROM tb_log_stock WHERE codearticle='0070274900';
DELETE FROM tb_inventaire WHERE codearticle='0070274900';
DELETE FROM tb_stock WHERE codearticle='0070274900';
DELETE FROM tb_article WHERE idarticle=2749;
DELETE FROM tb_unite WHERE idunite=3649 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3649) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3649);
COMMIT;

-- IdArticle=2760 , Designation=AIGLE D OR_ILOAINA-NOIR P44 , Unite=PAIRE , IdUnite=3660 , CodeArticle=0070276000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2760 AND idunite=3660;
DELETE FROM tb_log_stock WHERE codearticle='0070276000';
DELETE FROM tb_inventaire WHERE codearticle='0070276000';
DELETE FROM tb_stock WHERE codearticle='0070276000';
DELETE FROM tb_article WHERE idarticle=2760;
DELETE FROM tb_unite WHERE idunite=3660 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3660) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3660);
COMMIT;

-- IdArticle=2746 , Designation=AIGLE D OR_ITOKIANA-MAR P36 , Unite=PAIRE , IdUnite=3646 , CodeArticle=0070274600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2746 AND idunite=3646;
DELETE FROM tb_log_stock WHERE codearticle='0070274600';
DELETE FROM tb_inventaire WHERE codearticle='0070274600';
DELETE FROM tb_stock WHERE codearticle='0070274600';
DELETE FROM tb_article WHERE idarticle=2746;
DELETE FROM tb_unite WHERE idunite=3646 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3646) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3646);
COMMIT;

-- IdArticle=2741 , Designation=AIGLE D OR_ITOKIANA-MAR P38 , Unite=PAIRE , IdUnite=3641 , CodeArticle=0070274100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2741 AND idunite=3641;
DELETE FROM tb_log_stock WHERE codearticle='0070274100';
DELETE FROM tb_inventaire WHERE codearticle='0070274100';
DELETE FROM tb_stock WHERE codearticle='0070274100';
DELETE FROM tb_article WHERE idarticle=2741;
DELETE FROM tb_unite WHERE idunite=3641 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3641) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3641);
COMMIT;

-- IdArticle=2742 , Designation=AIGLE D OR_ITOKIANA-MAR P39 , Unite=PAIRE , IdUnite=3642 , CodeArticle=0070274200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2742 AND idunite=3642;
DELETE FROM tb_log_stock WHERE codearticle='0070274200';
DELETE FROM tb_inventaire WHERE codearticle='0070274200';
DELETE FROM tb_stock WHERE codearticle='0070274200';
DELETE FROM tb_article WHERE idarticle=2742;
DELETE FROM tb_unite WHERE idunite=3642 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3642) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3642);
COMMIT;

-- IdArticle=2743 , Designation=AIGLE D OR_ITOKIANA-MAR P40 , Unite=PAIRE , IdUnite=3643 , CodeArticle=0070274300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2743 AND idunite=3643;
DELETE FROM tb_log_stock WHERE codearticle='0070274300';
DELETE FROM tb_inventaire WHERE codearticle='0070274300';
DELETE FROM tb_stock WHERE codearticle='0070274300';
DELETE FROM tb_article WHERE idarticle=2743;
DELETE FROM tb_unite WHERE idunite=3643 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3643) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3643);
COMMIT;

-- IdArticle=2744 , Designation=AIGLE D OR_ITOKIANA-MAR P41 , Unite=PAIRE , IdUnite=3644 , CodeArticle=0070274400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2744 AND idunite=3644;
DELETE FROM tb_log_stock WHERE codearticle='0070274400';
DELETE FROM tb_inventaire WHERE codearticle='0070274400';
DELETE FROM tb_stock WHERE codearticle='0070274400';
DELETE FROM tb_article WHERE idarticle=2744;
DELETE FROM tb_unite WHERE idunite=3644 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3644) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3644);
COMMIT;

-- IdArticle=2142 , Designation=AIGLE D OR_JORO-NOIR P40 , Unite=PAIRE , IdUnite=2857 , CodeArticle=0070214200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2142 AND idunite=2857;
DELETE FROM tb_log_stock WHERE codearticle='0070214200';
DELETE FROM tb_inventaire WHERE codearticle='0070214200';
DELETE FROM tb_stock WHERE codearticle='0070214200';
DELETE FROM tb_article WHERE idarticle=2142;
DELETE FROM tb_unite WHERE idunite=2857 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2857) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2857);
COMMIT;

-- IdArticle=2144 , Designation=AIGLE D OR_JORO-NOIR P42 , Unite=PAIRE , IdUnite=2859 , CodeArticle=0070214400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2144 AND idunite=2859;
DELETE FROM tb_log_stock WHERE codearticle='0070214400';
DELETE FROM tb_inventaire WHERE codearticle='0070214400';
DELETE FROM tb_stock WHERE codearticle='0070214400';
DELETE FROM tb_article WHERE idarticle=2144;
DELETE FROM tb_unite WHERE idunite=2859 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2859) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2859);
COMMIT;

-- IdArticle=2205 , Designation=AIGLE D OR_MAEVA [MARRON] P36 , Unite=PAIRE , IdUnite=2938 , CodeArticle=0070220500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2205 AND idunite=2938;
DELETE FROM tb_log_stock WHERE codearticle='0070220500';
DELETE FROM tb_inventaire WHERE codearticle='0070220500';
DELETE FROM tb_stock WHERE codearticle='0070220500';
DELETE FROM tb_article WHERE idarticle=2205;
DELETE FROM tb_unite WHERE idunite=2938 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2938) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2938);
COMMIT;

-- IdArticle=2129 , Designation=AIGLE D OR_MAEVA [MARRON] P37 , Unite=PAIRE , IdUnite=2841 , CodeArticle=0070212900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2129 AND idunite=2841;
DELETE FROM tb_log_stock WHERE codearticle='0070212900';
DELETE FROM tb_inventaire WHERE codearticle='0070212900';
DELETE FROM tb_stock WHERE codearticle='0070212900';
DELETE FROM tb_article WHERE idarticle=2129;
DELETE FROM tb_unite WHERE idunite=2841 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2841) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2841);
COMMIT;

-- IdArticle=2130 , Designation=AIGLE D OR_MAEVA [MARRON] P38 , Unite=PAIRE , IdUnite=2842 , CodeArticle=0070213000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2130 AND idunite=2842;
DELETE FROM tb_log_stock WHERE codearticle='0070213000';
DELETE FROM tb_inventaire WHERE codearticle='0070213000';
DELETE FROM tb_stock WHERE codearticle='0070213000';
DELETE FROM tb_article WHERE idarticle=2130;
DELETE FROM tb_unite WHERE idunite=2842 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2842) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2842);
COMMIT;

-- IdArticle=2131 , Designation=AIGLE D OR_MAEVA [MARRON] P39 , Unite=PAIRE , IdUnite=2843 , CodeArticle=0070213100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2131 AND idunite=2843;
DELETE FROM tb_log_stock WHERE codearticle='0070213100';
DELETE FROM tb_inventaire WHERE codearticle='0070213100';
DELETE FROM tb_stock WHERE codearticle='0070213100';
DELETE FROM tb_article WHERE idarticle=2131;
DELETE FROM tb_unite WHERE idunite=2843 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2843) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2843);
COMMIT;

-- IdArticle=2132 , Designation=AIGLE D OR_MAEVA [MARRON] P40 , Unite=PAIRE , IdUnite=2844 , CodeArticle=0070213200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2132 AND idunite=2844;
DELETE FROM tb_log_stock WHERE codearticle='0070213200';
DELETE FROM tb_inventaire WHERE codearticle='0070213200';
DELETE FROM tb_stock WHERE codearticle='0070213200';
DELETE FROM tb_article WHERE idarticle=2132;
DELETE FROM tb_unite WHERE idunite=2844 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2844) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2844);
COMMIT;

-- IdArticle=2089 , Designation=AIGLE D OR_MAEVA-PAR P36 , Unite=PAIRE , IdUnite=2801 , CodeArticle=0070208900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2089 AND idunite=2801;
DELETE FROM tb_log_stock WHERE codearticle='0070208900';
DELETE FROM tb_inventaire WHERE codearticle='0070208900';
DELETE FROM tb_stock WHERE codearticle='0070208900';
DELETE FROM tb_article WHERE idarticle=2089;
DELETE FROM tb_unite WHERE idunite=2801 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2801) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2801);
COMMIT;

-- IdArticle=2217 , Designation=AIGLE D OR_MAEVA-PAR P37 , Unite=PAIRE , IdUnite=2951 , CodeArticle=0070221700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2217 AND idunite=2951;
DELETE FROM tb_log_stock WHERE codearticle='0070221700';
DELETE FROM tb_inventaire WHERE codearticle='0070221700';
DELETE FROM tb_stock WHERE codearticle='0070221700';
DELETE FROM tb_article WHERE idarticle=2217;
DELETE FROM tb_unite WHERE idunite=2951 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2951) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2951);
COMMIT;

-- IdArticle=2218 , Designation=AIGLE D OR_MAEVA-PAR P38 , Unite=PAIRE , IdUnite=2952 , CodeArticle=0070221800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2218 AND idunite=2952;
DELETE FROM tb_log_stock WHERE codearticle='0070221800';
DELETE FROM tb_inventaire WHERE codearticle='0070221800';
DELETE FROM tb_stock WHERE codearticle='0070221800';
DELETE FROM tb_article WHERE idarticle=2218;
DELETE FROM tb_unite WHERE idunite=2952 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2952) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2952);
COMMIT;

-- IdArticle=2219 , Designation=AIGLE D OR_MAEVA-PAR P39 , Unite=PAIRE , IdUnite=2953 , CodeArticle=0070221900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2219 AND idunite=2953;
DELETE FROM tb_log_stock WHERE codearticle='0070221900';
DELETE FROM tb_inventaire WHERE codearticle='0070221900';
DELETE FROM tb_stock WHERE codearticle='0070221900';
DELETE FROM tb_article WHERE idarticle=2219;
DELETE FROM tb_unite WHERE idunite=2953 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2953) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2953);
COMMIT;

-- IdArticle=2091 , Designation=AIGLE D OR_MAEVA-PAR P41 , Unite=PAIRE , IdUnite=2803 , CodeArticle=0070209100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2091 AND idunite=2803;
DELETE FROM tb_log_stock WHERE codearticle='0070209100';
DELETE FROM tb_inventaire WHERE codearticle='0070209100';
DELETE FROM tb_stock WHERE codearticle='0070209100';
DELETE FROM tb_article WHERE idarticle=2091;
DELETE FROM tb_unite WHERE idunite=2803 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2803) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2803);
COMMIT;

-- IdArticle=2097 , Designation=AIGLE D OR_MAHALIANA [OCR] P36 , Unite=PAIRE , IdUnite=2809 , CodeArticle=0070209700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2097 AND idunite=2809;
DELETE FROM tb_log_stock WHERE codearticle='0070209700';
DELETE FROM tb_inventaire WHERE codearticle='0070209700';
DELETE FROM tb_stock WHERE codearticle='0070209700';
DELETE FROM tb_article WHERE idarticle=2097;
DELETE FROM tb_unite WHERE idunite=2809 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2809) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2809);
COMMIT;

-- IdArticle=2098 , Designation=AIGLE D OR_MAHALIANA [OCR] P39 , Unite=PAIRE , IdUnite=2810 , CodeArticle=0070209800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2098 AND idunite=2810;
DELETE FROM tb_log_stock WHERE codearticle='0070209800';
DELETE FROM tb_inventaire WHERE codearticle='0070209800';
DELETE FROM tb_stock WHERE codearticle='0070209800';
DELETE FROM tb_article WHERE idarticle=2098;
DELETE FROM tb_unite WHERE idunite=2810 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2810) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2810);
COMMIT;

-- IdArticle=2099 , Designation=AIGLE D OR_MAHALIANA [OCR] P40 , Unite=PAIRE , IdUnite=2811 , CodeArticle=0070209900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2099 AND idunite=2811;
DELETE FROM tb_log_stock WHERE codearticle='0070209900';
DELETE FROM tb_inventaire WHERE codearticle='0070209900';
DELETE FROM tb_stock WHERE codearticle='0070209900';
DELETE FROM tb_article WHERE idarticle=2099;
DELETE FROM tb_unite WHERE idunite=2811 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2811) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2811);
COMMIT;

-- IdArticle=2100 , Designation=AIGLE D OR_MAHALIANA [OCR] P41 , Unite=PAIRE , IdUnite=2812 , CodeArticle=0070210000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2100 AND idunite=2812;
DELETE FROM tb_log_stock WHERE codearticle='0070210000';
DELETE FROM tb_inventaire WHERE codearticle='0070210000';
DELETE FROM tb_stock WHERE codearticle='0070210000';
DELETE FROM tb_article WHERE idarticle=2100;
DELETE FROM tb_unite WHERE idunite=2812 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2812) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2812);
COMMIT;

-- IdArticle=2176 , Designation=AIGLE D OR_MAHANDRY-NOIR P39 , Unite=PAIRE , IdUnite=2903 , CodeArticle=0070217600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2176 AND idunite=2903;
DELETE FROM tb_log_stock WHERE codearticle='0070217600';
DELETE FROM tb_inventaire WHERE codearticle='0070217600';
DELETE FROM tb_stock WHERE codearticle='0070217600';
DELETE FROM tb_article WHERE idarticle=2176;
DELETE FROM tb_unite WHERE idunite=2903 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2903) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2903);
COMMIT;

-- IdArticle=2207 , Designation=AIGLE D OR_MAHANDRY-NOIR P40 , Unite=PAIRE , IdUnite=2940 , CodeArticle=0070220700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2207 AND idunite=2940;
DELETE FROM tb_log_stock WHERE codearticle='0070220700';
DELETE FROM tb_inventaire WHERE codearticle='0070220700';
DELETE FROM tb_stock WHERE codearticle='0070220700';
DELETE FROM tb_article WHERE idarticle=2207;
DELETE FROM tb_unite WHERE idunite=2940 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2940) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2940);
COMMIT;

-- IdArticle=2208 , Designation=AIGLE D OR_MAHANDRY-NOIR P41 , Unite=PAIRE , IdUnite=2941 , CodeArticle=0070220800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2208 AND idunite=2941;
DELETE FROM tb_log_stock WHERE codearticle='0070220800';
DELETE FROM tb_inventaire WHERE codearticle='0070220800';
DELETE FROM tb_stock WHERE codearticle='0070220800';
DELETE FROM tb_article WHERE idarticle=2208;
DELETE FROM tb_unite WHERE idunite=2941 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2941) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2941);
COMMIT;

-- IdArticle=2177 , Designation=AIGLE D OR_MAHANDRY-NOIR P42 , Unite=PAIRE , IdUnite=2904 , CodeArticle=0070217700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2177 AND idunite=2904;
DELETE FROM tb_log_stock WHERE codearticle='0070217700';
DELETE FROM tb_inventaire WHERE codearticle='0070217700';
DELETE FROM tb_stock WHERE codearticle='0070217700';
DELETE FROM tb_article WHERE idarticle=2177;
DELETE FROM tb_unite WHERE idunite=2904 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2904) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2904);
COMMIT;

-- IdArticle=2178 , Designation=AIGLE D OR_MAHANDRY-NOIR P43 , Unite=PAIRE , IdUnite=2905 , CodeArticle=0070217800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2178 AND idunite=2905;
DELETE FROM tb_log_stock WHERE codearticle='0070217800';
DELETE FROM tb_inventaire WHERE codearticle='0070217800';
DELETE FROM tb_stock WHERE codearticle='0070217800';
DELETE FROM tb_article WHERE idarticle=2178;
DELETE FROM tb_unite WHERE idunite=2905 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2905) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2905);
COMMIT;

-- IdArticle=2559 , Designation=AIGLE D OR_MAHANDRY-NOIR P44 , Unite=PAIRE , IdUnite=3374 , CodeArticle=0070255900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2559 AND idunite=3374;
DELETE FROM tb_log_stock WHERE codearticle='0070255900';
DELETE FROM tb_inventaire WHERE codearticle='0070255900';
DELETE FROM tb_stock WHERE codearticle='0070255900';
DELETE FROM tb_article WHERE idarticle=2559;
DELETE FROM tb_unite WHERE idunite=3374 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3374) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3374);
COMMIT;

-- IdArticle=2893 , Designation=AIGLE D OR_MAHANDRY-NOIR P45 , Unite=PAIRE , IdUnite=3823 , CodeArticle=0070289300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2893 AND idunite=3823;
DELETE FROM tb_log_stock WHERE codearticle='0070289300';
DELETE FROM tb_inventaire WHERE codearticle='0070289300';
DELETE FROM tb_stock WHERE codearticle='0070289300';
DELETE FROM tb_article WHERE idarticle=2893;
DELETE FROM tb_unite WHERE idunite=3823 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3823) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3823);
COMMIT;

-- IdArticle=2157 , Designation=AIGLE D OR_MASOANDRO-FOM P35 , Unite=PAIRE , IdUnite=2872 , CodeArticle=0070215700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2157 AND idunite=2872;
DELETE FROM tb_log_stock WHERE codearticle='0070215700';
DELETE FROM tb_inventaire WHERE codearticle='0070215700';
DELETE FROM tb_stock WHERE codearticle='0070215700';
DELETE FROM tb_article WHERE idarticle=2157;
DELETE FROM tb_unite WHERE idunite=2872 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2872) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2872);
COMMIT;

-- IdArticle=2158 , Designation=AIGLE D OR_MASOANDRO-FOM P37 , Unite=PAIRE , IdUnite=2873 , CodeArticle=0070215800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2158 AND idunite=2873;
DELETE FROM tb_log_stock WHERE codearticle='0070215800';
DELETE FROM tb_inventaire WHERE codearticle='0070215800';
DELETE FROM tb_stock WHERE codearticle='0070215800';
DELETE FROM tb_article WHERE idarticle=2158;
DELETE FROM tb_unite WHERE idunite=2873 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2873) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2873);
COMMIT;

-- IdArticle=2159 , Designation=AIGLE D OR_MASOANDRO-FOM P38 , Unite=PAIRE , IdUnite=2874 , CodeArticle=0070215900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2159 AND idunite=2874;
DELETE FROM tb_log_stock WHERE codearticle='0070215900';
DELETE FROM tb_inventaire WHERE codearticle='0070215900';
DELETE FROM tb_stock WHERE codearticle='0070215900';
DELETE FROM tb_article WHERE idarticle=2159;
DELETE FROM tb_unite WHERE idunite=2874 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2874) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2874);
COMMIT;

-- IdArticle=2160 , Designation=AIGLE D OR_MASOANDRO-FOM P39 , Unite=PAIRE , IdUnite=2875 , CodeArticle=0070216000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2160 AND idunite=2875;
DELETE FROM tb_log_stock WHERE codearticle='0070216000';
DELETE FROM tb_inventaire WHERE codearticle='0070216000';
DELETE FROM tb_stock WHERE codearticle='0070216000';
DELETE FROM tb_article WHERE idarticle=2160;
DELETE FROM tb_unite WHERE idunite=2875 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2875) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2875);
COMMIT;

-- IdArticle=2161 , Designation=AIGLE D OR_MASOANDRO-FOM P41 , Unite=PAIRE , IdUnite=2876 , CodeArticle=0070216100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2161 AND idunite=2876;
DELETE FROM tb_log_stock WHERE codearticle='0070216100';
DELETE FROM tb_inventaire WHERE codearticle='0070216100';
DELETE FROM tb_stock WHERE codearticle='0070216100';
DELETE FROM tb_article WHERE idarticle=2161;
DELETE FROM tb_unite WHERE idunite=2876 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2876) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2876);
COMMIT;

-- IdArticle=2224 , Designation=AIGLE D OR_MILY-CAR P35 , Unite=PAIRE , IdUnite=2958 , CodeArticle=0070222400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2224 AND idunite=2958;
DELETE FROM tb_log_stock WHERE codearticle='0070222400';
DELETE FROM tb_inventaire WHERE codearticle='0070222400';
DELETE FROM tb_stock WHERE codearticle='0070222400';
DELETE FROM tb_article WHERE idarticle=2224;
DELETE FROM tb_unite WHERE idunite=2958 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2958) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2958);
COMMIT;

-- IdArticle=2225 , Designation=AIGLE D OR_MILY-CAR P38 , Unite=PAIRE , IdUnite=2959 , CodeArticle=0070222500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2225 AND idunite=2959;
DELETE FROM tb_log_stock WHERE codearticle='0070222500';
DELETE FROM tb_inventaire WHERE codearticle='0070222500';
DELETE FROM tb_stock WHERE codearticle='0070222500';
DELETE FROM tb_article WHERE idarticle=2225;
DELETE FROM tb_unite WHERE idunite=2959 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2959) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2959);
COMMIT;

-- IdArticle=2226 , Designation=AIGLE D OR_MILY-CAR P39 , Unite=PAIRE , IdUnite=2960 , CodeArticle=0070222600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2226 AND idunite=2960;
DELETE FROM tb_log_stock WHERE codearticle='0070222600';
DELETE FROM tb_inventaire WHERE codearticle='0070222600';
DELETE FROM tb_stock WHERE codearticle='0070222600';
DELETE FROM tb_article WHERE idarticle=2226;
DELETE FROM tb_unite WHERE idunite=2960 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2960) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2960);
COMMIT;

-- IdArticle=2227 , Designation=AIGLE D OR_MILY-CAR P42 , Unite=PAIRE , IdUnite=2961 , CodeArticle=0070222700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2227 AND idunite=2961;
DELETE FROM tb_log_stock WHERE codearticle='0070222700';
DELETE FROM tb_inventaire WHERE codearticle='0070222700';
DELETE FROM tb_stock WHERE codearticle='0070222700';
DELETE FROM tb_article WHERE idarticle=2227;
DELETE FROM tb_unite WHERE idunite=2961 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2961) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2961);
COMMIT;

-- IdArticle=2107 , Designation=AIGLE D OR_MISAINA [FOM] P41 , Unite=PAIRE , IdUnite=2819 , CodeArticle=0070210700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2107 AND idunite=2819;
DELETE FROM tb_log_stock WHERE codearticle='0070210700';
DELETE FROM tb_inventaire WHERE codearticle='0070210700';
DELETE FROM tb_stock WHERE codearticle='0070210700';
DELETE FROM tb_article WHERE idarticle=2107;
DELETE FROM tb_unite WHERE idunite=2819 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2819) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2819);
COMMIT;

-- IdArticle=2902 , Designation=AIGLE D OR_RANTO P39 , Unite=PAIRE , IdUnite=3832 , CodeArticle=0070290200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2902 AND idunite=3832;
DELETE FROM tb_log_stock WHERE codearticle='0070290200';
DELETE FROM tb_inventaire WHERE codearticle='0070290200';
DELETE FROM tb_stock WHERE codearticle='0070290200';
DELETE FROM tb_article WHERE idarticle=2902;
DELETE FROM tb_unite WHERE idunite=3832 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3832) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3832);
COMMIT;

-- IdArticle=2903 , Designation=AIGLE D OR_RANTO P40 , Unite=PAIRE , IdUnite=3833 , CodeArticle=0070290300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2903 AND idunite=3833;
DELETE FROM tb_log_stock WHERE codearticle='0070290300';
DELETE FROM tb_inventaire WHERE codearticle='0070290300';
DELETE FROM tb_stock WHERE codearticle='0070290300';
DELETE FROM tb_article WHERE idarticle=2903;
DELETE FROM tb_unite WHERE idunite=3833 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3833) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3833);
COMMIT;

-- IdArticle=2904 , Designation=AIGLE D OR_RANTO P41 , Unite=PAIRE , IdUnite=3834 , CodeArticle=0070290400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2904 AND idunite=3834;
DELETE FROM tb_log_stock WHERE codearticle='0070290400';
DELETE FROM tb_inventaire WHERE codearticle='0070290400';
DELETE FROM tb_stock WHERE codearticle='0070290400';
DELETE FROM tb_article WHERE idarticle=2904;
DELETE FROM tb_unite WHERE idunite=3834 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3834) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3834);
COMMIT;

-- IdArticle=2905 , Designation=AIGLE D OR_RANTO P42 , Unite=PAIRE , IdUnite=3835 , CodeArticle=0070290500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2905 AND idunite=3835;
DELETE FROM tb_log_stock WHERE codearticle='0070290500';
DELETE FROM tb_inventaire WHERE codearticle='0070290500';
DELETE FROM tb_stock WHERE codearticle='0070290500';
DELETE FROM tb_article WHERE idarticle=2905;
DELETE FROM tb_unite WHERE idunite=3835 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3835) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3835);
COMMIT;

-- IdArticle=2906 , Designation=AIGLE D OR_RANTO P43 , Unite=PAIRE , IdUnite=3836 , CodeArticle=0070290600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2906 AND idunite=3836;
DELETE FROM tb_log_stock WHERE codearticle='0070290600';
DELETE FROM tb_inventaire WHERE codearticle='0070290600';
DELETE FROM tb_stock WHERE codearticle='0070290600';
DELETE FROM tb_article WHERE idarticle=2906;
DELETE FROM tb_unite WHERE idunite=3836 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3836) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3836);
COMMIT;

-- IdArticle=2109 , Designation=AIGLE D OR_RIALY [VRV] P37 , Unite=PAIRE , IdUnite=2821 , CodeArticle=0070210900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2109 AND idunite=2821;
DELETE FROM tb_log_stock WHERE codearticle='0070210900';
DELETE FROM tb_inventaire WHERE codearticle='0070210900';
DELETE FROM tb_stock WHERE codearticle='0070210900';
DELETE FROM tb_article WHERE idarticle=2109;
DELETE FROM tb_unite WHERE idunite=2821 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2821) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2821);
COMMIT;

-- IdArticle=2110 , Designation=AIGLE D OR_RIALY [VRV] P38 , Unite=PAIRE , IdUnite=2822 , CodeArticle=0070211000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2110 AND idunite=2822;
DELETE FROM tb_log_stock WHERE codearticle='0070211000';
DELETE FROM tb_inventaire WHERE codearticle='0070211000';
DELETE FROM tb_stock WHERE codearticle='0070211000';
DELETE FROM tb_article WHERE idarticle=2110;
DELETE FROM tb_unite WHERE idunite=2822 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2822) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2822);
COMMIT;

-- IdArticle=2111 , Designation=AIGLE D OR_RIALY [VRV] P39 , Unite=PAIRE , IdUnite=2823 , CodeArticle=0070211100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2111 AND idunite=2823;
DELETE FROM tb_log_stock WHERE codearticle='0070211100';
DELETE FROM tb_inventaire WHERE codearticle='0070211100';
DELETE FROM tb_stock WHERE codearticle='0070211100';
DELETE FROM tb_article WHERE idarticle=2111;
DELETE FROM tb_unite WHERE idunite=2823 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2823) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2823);
COMMIT;

-- IdArticle=2112 , Designation=AIGLE D OR_RIALY [VRV] P40 , Unite=PAIRE , IdUnite=2824 , CodeArticle=0070211200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2112 AND idunite=2824;
DELETE FROM tb_log_stock WHERE codearticle='0070211200';
DELETE FROM tb_inventaire WHERE codearticle='0070211200';
DELETE FROM tb_stock WHERE codearticle='0070211200';
DELETE FROM tb_article WHERE idarticle=2112;
DELETE FROM tb_unite WHERE idunite=2824 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2824) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2824);
COMMIT;

-- IdArticle=2092 , Designation=AIGLE D OR_SAHOBY [ROB] P35 , Unite=PAIRE , IdUnite=2804 , CodeArticle=0070209200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2092 AND idunite=2804;
DELETE FROM tb_log_stock WHERE codearticle='0070209200';
DELETE FROM tb_inventaire WHERE codearticle='0070209200';
DELETE FROM tb_stock WHERE codearticle='0070209200';
DELETE FROM tb_article WHERE idarticle=2092;
DELETE FROM tb_unite WHERE idunite=2804 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2804) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2804);
COMMIT;

-- IdArticle=2095 , Designation=AIGLE D OR_SAHOBY [ROB] P41 , Unite=PAIRE , IdUnite=2807 , CodeArticle=0070209500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2095 AND idunite=2807;
DELETE FROM tb_log_stock WHERE codearticle='0070209500';
DELETE FROM tb_inventaire WHERE codearticle='0070209500';
DELETE FROM tb_stock WHERE codearticle='0070209500';
DELETE FROM tb_article WHERE idarticle=2095;
DELETE FROM tb_unite WHERE idunite=2807 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2807) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2807);
COMMIT;

-- IdArticle=2564 , Designation=AIGLE D OR_SITRAKA-NOIR P40 , Unite=PAIRE , IdUnite=3379 , CodeArticle=0070256400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2564 AND idunite=3379;
DELETE FROM tb_log_stock WHERE codearticle='0070256400';
DELETE FROM tb_inventaire WHERE codearticle='0070256400';
DELETE FROM tb_stock WHERE codearticle='0070256400';
DELETE FROM tb_article WHERE idarticle=2564;
DELETE FROM tb_unite WHERE idunite=3379 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3379) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3379);
COMMIT;

-- IdArticle=2139 , Designation=AIGLE D OR_SITRAKA-NOIR P41 , Unite=PAIRE , IdUnite=2854 , CodeArticle=0070213900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2139 AND idunite=2854;
DELETE FROM tb_log_stock WHERE codearticle='0070213900';
DELETE FROM tb_inventaire WHERE codearticle='0070213900';
DELETE FROM tb_stock WHERE codearticle='0070213900';
DELETE FROM tb_article WHERE idarticle=2139;
DELETE FROM tb_unite WHERE idunite=2854 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2854) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2854);
COMMIT;

-- IdArticle=2140 , Designation=AIGLE D OR_SITRAKA-NOIR P42 , Unite=PAIRE , IdUnite=2855 , CodeArticle=0070214000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2140 AND idunite=2855;
DELETE FROM tb_log_stock WHERE codearticle='0070214000';
DELETE FROM tb_inventaire WHERE codearticle='0070214000';
DELETE FROM tb_stock WHERE codearticle='0070214000';
DELETE FROM tb_article WHERE idarticle=2140;
DELETE FROM tb_unite WHERE idunite=2855 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2855) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2855);
COMMIT;

-- IdArticle=2114 , Designation=AIGLE D OR_SOMONJARA [ROB] P35 , Unite=PAIRE , IdUnite=2826 , CodeArticle=0070211400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2114 AND idunite=2826;
DELETE FROM tb_log_stock WHERE codearticle='0070211400';
DELETE FROM tb_inventaire WHERE codearticle='0070211400';
DELETE FROM tb_stock WHERE codearticle='0070211400';
DELETE FROM tb_article WHERE idarticle=2114;
DELETE FROM tb_unite WHERE idunite=2826 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2826) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2826);
COMMIT;

-- IdArticle=2115 , Designation=AIGLE D OR_SOMONJARA [ROB] P36 , Unite=PAIRE , IdUnite=2827 , CodeArticle=0070211500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2115 AND idunite=2827;
DELETE FROM tb_log_stock WHERE codearticle='0070211500';
DELETE FROM tb_inventaire WHERE codearticle='0070211500';
DELETE FROM tb_stock WHERE codearticle='0070211500';
DELETE FROM tb_article WHERE idarticle=2115;
DELETE FROM tb_unite WHERE idunite=2827 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2827) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2827);
COMMIT;

-- IdArticle=2117 , Designation=AIGLE D OR_SOMONJARA [ROB] P38 , Unite=PAIRE , IdUnite=2829 , CodeArticle=0070211700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2117 AND idunite=2829;
DELETE FROM tb_log_stock WHERE codearticle='0070211700';
DELETE FROM tb_inventaire WHERE codearticle='0070211700';
DELETE FROM tb_stock WHERE codearticle='0070211700';
DELETE FROM tb_article WHERE idarticle=2117;
DELETE FROM tb_unite WHERE idunite=2829 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2829) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2829);
COMMIT;

-- IdArticle=2118 , Designation=AIGLE D OR_SOMONJARA [ROB] P39 , Unite=PAIRE , IdUnite=2830 , CodeArticle=0070211800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2118 AND idunite=2830;
DELETE FROM tb_log_stock WHERE codearticle='0070211800';
DELETE FROM tb_inventaire WHERE codearticle='0070211800';
DELETE FROM tb_stock WHERE codearticle='0070211800';
DELETE FROM tb_article WHERE idarticle=2118;
DELETE FROM tb_unite WHERE idunite=2830 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2830) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2830);
COMMIT;

-- IdArticle=2120 , Designation=AIGLE D OR_SOMONJARA [ROB] P40 , Unite=PAIRE , IdUnite=2832 , CodeArticle=0070212000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2120 AND idunite=2832;
DELETE FROM tb_log_stock WHERE codearticle='0070212000';
DELETE FROM tb_inventaire WHERE codearticle='0070212000';
DELETE FROM tb_stock WHERE codearticle='0070212000';
DELETE FROM tb_article WHERE idarticle=2120;
DELETE FROM tb_unite WHERE idunite=2832 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2832) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2832);
COMMIT;

-- IdArticle=2119 , Designation=AIGLE D OR_SOMONJARA [ROB] P41 , Unite=PAIRE , IdUnite=2831 , CodeArticle=0070211900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2119 AND idunite=2831;
DELETE FROM tb_log_stock WHERE codearticle='0070211900';
DELETE FROM tb_inventaire WHERE codearticle='0070211900';
DELETE FROM tb_stock WHERE codearticle='0070211900';
DELETE FROM tb_article WHERE idarticle=2119;
DELETE FROM tb_unite WHERE idunite=2831 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2831) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2831);
COMMIT;

-- IdArticle=1875 , Designation=AIGLE D OR_TEHITRA-MAR P36 , Unite=PAIRE , IdUnite=2519 , CodeArticle=0070187500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1875 AND idunite=2519;
DELETE FROM tb_log_stock WHERE codearticle='0070187500';
DELETE FROM tb_inventaire WHERE codearticle='0070187500';
DELETE FROM tb_stock WHERE codearticle='0070187500';
DELETE FROM tb_article WHERE idarticle=1875;
DELETE FROM tb_unite WHERE idunite=2519 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2519) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2519);
COMMIT;

-- IdArticle=2738 , Designation=AIGLE D OR_TEHITRA-MAR P37 , Unite=PAIRE , IdUnite=3638 , CodeArticle=0070273800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2738 AND idunite=3638;
DELETE FROM tb_log_stock WHERE codearticle='0070273800';
DELETE FROM tb_inventaire WHERE codearticle='0070273800';
DELETE FROM tb_stock WHERE codearticle='0070273800';
DELETE FROM tb_article WHERE idarticle=2738;
DELETE FROM tb_unite WHERE idunite=3638 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3638) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3638);
COMMIT;

-- IdArticle=2739 , Designation=AIGLE D OR_TEHITRA-MAR P38 , Unite=PAIRE , IdUnite=3639 , CodeArticle=0070273900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2739 AND idunite=3639;
DELETE FROM tb_log_stock WHERE codearticle='0070273900';
DELETE FROM tb_inventaire WHERE codearticle='0070273900';
DELETE FROM tb_stock WHERE codearticle='0070273900';
DELETE FROM tb_article WHERE idarticle=2739;
DELETE FROM tb_unite WHERE idunite=3639 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3639) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3639);
COMMIT;

-- IdArticle=2221 , Designation=AIGLE D OR_TEHITRA-MAR P39 , Unite=PAIRE , IdUnite=2955 , CodeArticle=0070222100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2221 AND idunite=2955;
DELETE FROM tb_log_stock WHERE codearticle='0070222100';
DELETE FROM tb_inventaire WHERE codearticle='0070222100';
DELETE FROM tb_stock WHERE codearticle='0070222100';
DELETE FROM tb_article WHERE idarticle=2221;
DELETE FROM tb_unite WHERE idunite=2955 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2955) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2955);
COMMIT;

-- IdArticle=2740 , Designation=AIGLE D OR_TEHITRA-MAR P41 , Unite=PAIRE , IdUnite=3640 , CodeArticle=0070274000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2740 AND idunite=3640;
DELETE FROM tb_log_stock WHERE codearticle='0070274000';
DELETE FROM tb_inventaire WHERE codearticle='0070274000';
DELETE FROM tb_stock WHERE codearticle='0070274000';
DELETE FROM tb_article WHERE idarticle=2740;
DELETE FROM tb_unite WHERE idunite=3640 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3640) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3640);
COMMIT;

-- IdArticle=2125 , Designation=AIGLE D OR_TOKY [MARRON] P39 , Unite=PAIRE , IdUnite=2837 , CodeArticle=0070212500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2125 AND idunite=2837;
DELETE FROM tb_log_stock WHERE codearticle='0070212500';
DELETE FROM tb_inventaire WHERE codearticle='0070212500';
DELETE FROM tb_stock WHERE codearticle='0070212500';
DELETE FROM tb_article WHERE idarticle=2125;
DELETE FROM tb_unite WHERE idunite=2837 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2837) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2837);
COMMIT;

-- IdArticle=3224 , Designation=AIGLE D OR_TOKY [MARRON] P40 , Unite=PAIRE , IdUnite=4241 , CodeArticle=0070322400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3224 AND idunite=4241;
DELETE FROM tb_log_stock WHERE codearticle='0070322400';
DELETE FROM tb_inventaire WHERE codearticle='0070322400';
DELETE FROM tb_stock WHERE codearticle='0070322400';
DELETE FROM tb_article WHERE idarticle=3224;
DELETE FROM tb_unite WHERE idunite=4241 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4241) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4241);
COMMIT;

-- IdArticle=2127 , Designation=AIGLE D OR_TOKY [MARRON] P41 , Unite=PAIRE , IdUnite=2839 , CodeArticle=0070212700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2127 AND idunite=2839;
DELETE FROM tb_log_stock WHERE codearticle='0070212700';
DELETE FROM tb_inventaire WHERE codearticle='0070212700';
DELETE FROM tb_stock WHERE codearticle='0070212700';
DELETE FROM tb_article WHERE idarticle=2127;
DELETE FROM tb_unite WHERE idunite=2839 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2839) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2839);
COMMIT;

-- IdArticle=2126 , Designation=AIGLE D OR_TOKY [MARRON] P42 , Unite=PAIRE , IdUnite=2838 , CodeArticle=0070212600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2126 AND idunite=2838;
DELETE FROM tb_log_stock WHERE codearticle='0070212600';
DELETE FROM tb_inventaire WHERE codearticle='0070212600';
DELETE FROM tb_stock WHERE codearticle='0070212600';
DELETE FROM tb_article WHERE idarticle=2126;
DELETE FROM tb_unite WHERE idunite=2838 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2838) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2838);
COMMIT;

-- IdArticle=2121 , Designation=AIGLE D OR_TOKY [NOIR] P40 , Unite=PAIRE , IdUnite=2833 , CodeArticle=0070212100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2121 AND idunite=2833;
DELETE FROM tb_log_stock WHERE codearticle='0070212100';
DELETE FROM tb_inventaire WHERE codearticle='0070212100';
DELETE FROM tb_stock WHERE codearticle='0070212100';
DELETE FROM tb_article WHERE idarticle=2121;
DELETE FROM tb_unite WHERE idunite=2833 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2833) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2833);
COMMIT;

-- IdArticle=2122 , Designation=AIGLE D OR_TOKY [NOIR] P41 , Unite=PAIRE , IdUnite=2834 , CodeArticle=0070212200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2122 AND idunite=2834;
DELETE FROM tb_log_stock WHERE codearticle='0070212200';
DELETE FROM tb_inventaire WHERE codearticle='0070212200';
DELETE FROM tb_stock WHERE codearticle='0070212200';
DELETE FROM tb_article WHERE idarticle=2122;
DELETE FROM tb_unite WHERE idunite=2834 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2834) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2834);
COMMIT;

-- IdArticle=2123 , Designation=AIGLE D OR_TOKY [NOIR] P42 , Unite=PAIRE , IdUnite=2835 , CodeArticle=0070212300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2123 AND idunite=2835;
DELETE FROM tb_log_stock WHERE codearticle='0070212300';
DELETE FROM tb_inventaire WHERE codearticle='0070212300';
DELETE FROM tb_stock WHERE codearticle='0070212300';
DELETE FROM tb_article WHERE idarticle=2123;
DELETE FROM tb_unite WHERE idunite=2835 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2835) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2835);
COMMIT;

-- IdArticle=2124 , Designation=AIGLE D OR_TOKY [NOIR] P43 , Unite=PAIRE , IdUnite=2836 , CodeArticle=0070212400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2124 AND idunite=2836;
DELETE FROM tb_log_stock WHERE codearticle='0070212400';
DELETE FROM tb_inventaire WHERE codearticle='0070212400';
DELETE FROM tb_stock WHERE codearticle='0070212400';
DELETE FROM tb_article WHERE idarticle=2124;
DELETE FROM tb_unite WHERE idunite=2836 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2836) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2836);
COMMIT;

-- IdArticle=3364 , Designation=AIGLE DOR FANOVA C P42 , Unite=PAIRE , IdUnite=4400 , CodeArticle=0070336400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3364 AND idunite=4400;
DELETE FROM tb_log_stock WHERE codearticle='0070336400';
DELETE FROM tb_inventaire WHERE codearticle='0070336400';
DELETE FROM tb_stock WHERE codearticle='0070336400';
DELETE FROM tb_article WHERE idarticle=3364;
DELETE FROM tb_unite WHERE idunite=4400 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4400) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4400);
COMMIT;

-- IdArticle=3259 , Designation=AIGLE DOR FANOVA C P43 , Unite=PAIRE , IdUnite=4281 , CodeArticle=0070325900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3259 AND idunite=4281;
DELETE FROM tb_log_stock WHERE codearticle='0070325900';
DELETE FROM tb_inventaire WHERE codearticle='0070325900';
DELETE FROM tb_stock WHERE codearticle='0070325900';
DELETE FROM tb_article WHERE idarticle=3259;
DELETE FROM tb_unite WHERE idunite=4281 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4281) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4281);
COMMIT;

-- IdArticle=2781 , Designation=AILGE D OR TSIFERANA MAR P39 , Unite=PAIRE , IdUnite=3681 , CodeArticle=0070278100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2781 AND idunite=3681;
DELETE FROM tb_log_stock WHERE codearticle='0070278100';
DELETE FROM tb_inventaire WHERE codearticle='0070278100';
DELETE FROM tb_stock WHERE codearticle='0070278100';
DELETE FROM tb_article WHERE idarticle=2781;
DELETE FROM tb_unite WHERE idunite=3681 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3681) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3681);
COMMIT;

-- IdArticle=2355 , Designation=AIRPLANE - CHOCO , Unite=PACQUET , IdUnite=3110 , CodeArticle=0080235500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2355 AND idunite=3110;
DELETE FROM tb_log_stock WHERE codearticle='0080235500';
DELETE FROM tb_inventaire WHERE codearticle='0080235500';
DELETE FROM tb_stock WHERE codearticle='0080235500';
DELETE FROM tb_article WHERE idarticle=2355;
DELETE FROM tb_unite WHERE idunite=3110 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3110) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3110);
COMMIT;

-- IdArticle=2719 , Designation=ANGOLA BLEU GM , Unite=PAQUET , IdUnite=3602 , CodeArticle=0120271900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2719 AND idunite=3602;
DELETE FROM tb_log_stock WHERE codearticle='0120271900';
DELETE FROM tb_inventaire WHERE codearticle='0120271900';
DELETE FROM tb_stock WHERE codearticle='0120271900';
DELETE FROM tb_article WHERE idarticle=2719;
DELETE FROM tb_unite WHERE idunite=3602 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3602) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3602);
COMMIT;

-- IdArticle=2720 , Designation=ANGOLA ROUGE GM , Unite=PAQUET , IdUnite=3604 , CodeArticle=0120272000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2720 AND idunite=3604;
DELETE FROM tb_log_stock WHERE codearticle='0120272000';
DELETE FROM tb_inventaire WHERE codearticle='0120272000';
DELETE FROM tb_stock WHERE codearticle='0120272000';
DELETE FROM tb_article WHERE idarticle=2720;
DELETE FROM tb_unite WHERE idunite=3604 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3604) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3604);
COMMIT;

-- IdArticle=2721 , Designation=ANGOLA VERT GM , Unite=PAQUET , IdUnite=3606 , CodeArticle=0120272100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2721 AND idunite=3606;
DELETE FROM tb_log_stock WHERE codearticle='0120272100';
DELETE FROM tb_inventaire WHERE codearticle='0120272100';
DELETE FROM tb_stock WHERE codearticle='0120272100';
DELETE FROM tb_article WHERE idarticle=2721;
DELETE FROM tb_unite WHERE idunite=3606 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3606) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3606);
COMMIT;

-- IdArticle=1899 , Designation=ASPIRATEUR VC - 79C , Unite=PIECE , IdUnite=2552 , CodeArticle=0100189900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1899 AND idunite=2552;
DELETE FROM tb_log_stock WHERE codearticle='0100189900';
DELETE FROM tb_inventaire WHERE codearticle='0100189900';
DELETE FROM tb_stock WHERE codearticle='0100189900';
DELETE FROM tb_article WHERE idarticle=1899;
DELETE FROM tb_unite WHERE idunite=2552 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2552) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2552);
COMMIT;

-- IdArticle=4296 , Designation=BAGUETTE BASIQUE ELECTRIQUE SARAH V , Unite=PAQUET , IdUnite=5950 , CodeArticle=0130429600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4296 AND idunite=5950;
DELETE FROM tb_log_stock WHERE codearticle='0130429600';
DELETE FROM tb_inventaire WHERE codearticle='0130429600';
DELETE FROM tb_stock WHERE codearticle='0130429600';
DELETE FROM tb_article WHERE idarticle=4296;
DELETE FROM tb_unite WHERE idunite=5950 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5950) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5950);
COMMIT;

-- IdArticle=4181 , Designation=BAGUETTE BASIQUE Noir SARAH V , Unite=PACQUET , IdUnite=5734 , CodeArticle=0130418100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4181 AND idunite=5734;
DELETE FROM tb_log_stock WHERE codearticle='0130418100';
DELETE FROM tb_inventaire WHERE codearticle='0130418100';
DELETE FROM tb_stock WHERE codearticle='0130418100';
DELETE FROM tb_article WHERE idarticle=4181;
DELETE FROM tb_unite WHERE idunite=5734 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5734) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5734);
COMMIT;

-- IdArticle=4171 , Designation=BAGUETTE BASIQUE VERT SARAH V , Unite=PACQUET , IdUnite=5724 , CodeArticle=0130417100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4171 AND idunite=5724;
DELETE FROM tb_log_stock WHERE codearticle='0130417100';
DELETE FROM tb_inventaire WHERE codearticle='0130417100';
DELETE FROM tb_stock WHERE codearticle='0130417100';
DELETE FROM tb_article WHERE idarticle=4171;
DELETE FROM tb_unite WHERE idunite=5724 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5724) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5724);
COMMIT;

-- IdArticle=4357 , Designation=BAGUETTE SAFINOX SARAH V , Unite=PACQUET , IdUnite=6049 , CodeArticle=0130435700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4357 AND idunite=6049;
DELETE FROM tb_log_stock WHERE codearticle='0130435700';
DELETE FROM tb_inventaire WHERE codearticle='0130435700';
DELETE FROM tb_stock WHERE codearticle='0130435700';
DELETE FROM tb_article WHERE idarticle=4357;
DELETE FROM tb_unite WHERE idunite=6049 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6049) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6049);
COMMIT;

-- IdArticle=4182 , Designation=BAGUETTE SAF-PRO BLEU SARAH , Unite=PACQUET , IdUnite=5735 , CodeArticle=0130418200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4182 AND idunite=5735;
DELETE FROM tb_log_stock WHERE codearticle='0130418200';
DELETE FROM tb_inventaire WHERE codearticle='0130418200';
DELETE FROM tb_stock WHERE codearticle='0130418200';
DELETE FROM tb_article WHERE idarticle=4182;
DELETE FROM tb_unite WHERE idunite=5735 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5735) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5735);
COMMIT;

-- IdArticle=2271 , Designation=BAJAJ RE , Unite=PIECE , IdUnite=3015 , CodeArticle=0160227100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2271 AND idunite=3015;
DELETE FROM tb_log_stock WHERE codearticle='0160227100';
DELETE FROM tb_inventaire WHERE codearticle='0160227100';
DELETE FROM tb_stock WHERE codearticle='0160227100';
DELETE FROM tb_article WHERE idarticle=2271;
DELETE FROM tb_unite WHERE idunite=3015 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3015) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3015);
COMMIT;

-- IdArticle=4069 , Designation=BALAIRA VARY VAO , Unite=SAC , IdUnite=5539 , CodeArticle=0170406900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4069 AND idunite=5539;
DELETE FROM tb_log_stock WHERE codearticle='0170406900';
DELETE FROM tb_inventaire WHERE codearticle='0170406900';
DELETE FROM tb_stock WHERE codearticle='0170406900';
DELETE FROM tb_article WHERE idarticle=4069;
DELETE FROM tb_unite WHERE idunite=5539 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5539) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5539);
COMMIT;

-- IdArticle=1628 , Designation=BALAIRE TSARAMASO MENA , Unite=SAC , IdUnite=2152 , CodeArticle=0170162800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1628 AND idunite=2152;
DELETE FROM tb_log_stock WHERE codearticle='0170162800';
DELETE FROM tb_inventaire WHERE codearticle='0170162800';
DELETE FROM tb_stock WHERE codearticle='0170162800';
DELETE FROM tb_article WHERE idarticle=1628;
DELETE FROM tb_unite WHERE idunite=2152 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2152) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2152);
COMMIT;

-- IdArticle=3059 , Designation=BALANCE ELECTRONIQUE 60 KG EN PCS , Unite=PIECE , IdUnite=4005 , CodeArticle=0100305900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3059 AND idunite=4005;
DELETE FROM tb_log_stock WHERE codearticle='0100305900';
DELETE FROM tb_inventaire WHERE codearticle='0100305900';
DELETE FROM tb_stock WHERE codearticle='0100305900';
DELETE FROM tb_article WHERE idarticle=3059;
DELETE FROM tb_unite WHERE idunite=4005 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4005) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4005);
COMMIT;

-- IdArticle=3439 , Designation=BALLE BABY 2 OLGA A42 , Unite=BALLE , IdUnite=4505 , CodeArticle=0190343900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3439 AND idunite=4505;
DELETE FROM tb_log_stock WHERE codearticle='0190343900';
DELETE FROM tb_inventaire WHERE codearticle='0190343900';
DELETE FROM tb_stock WHERE codearticle='0190343900';
DELETE FROM tb_article WHERE idarticle=3439;
DELETE FROM tb_unite WHERE idunite=4505 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4505) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4505);
COMMIT;

-- IdArticle=2882 , Designation=BALLE BABY MASOANDRO , Unite=BALLE , IdUnite=3812 , CodeArticle=0030288200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2882 AND idunite=3812;
DELETE FROM tb_log_stock WHERE codearticle='0030288200';
DELETE FROM tb_inventaire WHERE codearticle='0030288200';
DELETE FROM tb_stock WHERE codearticle='0030288200';
DELETE FROM tb_article WHERE idarticle=2882;
DELETE FROM tb_unite WHERE idunite=3812 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3812) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3812);
COMMIT;

-- IdArticle=2060 , Designation=BALLE BABY P ROUGE , Unite=BALLE , IdUnite=2763 , CodeArticle=0190206000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2060 AND idunite=2763;
DELETE FROM tb_log_stock WHERE codearticle='0190206000';
DELETE FROM tb_inventaire WHERE codearticle='0190206000';
DELETE FROM tb_stock WHERE codearticle='0190206000';
DELETE FROM tb_article WHERE idarticle=2060;
DELETE FROM tb_unite WHERE idunite=2763 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2763) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2763);
COMMIT;

-- IdArticle=2714 , Designation=BALLE BABY SONO , Unite=BALLE , IdUnite=3597 , CodeArticle=0190271400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2714 AND idunite=3597;
DELETE FROM tb_log_stock WHERE codearticle='0190271400';
DELETE FROM tb_inventaire WHERE codearticle='0190271400';
DELETE FROM tb_stock WHERE codearticle='0190271400';
DELETE FROM tb_article WHERE idarticle=2714;
DELETE FROM tb_unite WHERE idunite=3597 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3597) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3597);
COMMIT;

-- IdArticle=3895 , Designation=BALLE CRYSTAL CLOTHING , Unite=BALLE , IdUnite=5218 , CodeArticle=0030389500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3895 AND idunite=5218;
DELETE FROM tb_log_stock WHERE codearticle='0030389500';
DELETE FROM tb_inventaire WHERE codearticle='0030389500';
DELETE FROM tb_stock WHERE codearticle='0030389500';
DELETE FROM tb_article WHERE idarticle=3895;
DELETE FROM tb_unite WHERE idunite=5218 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5218) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5218);
COMMIT;

-- IdArticle=2712 , Designation=BALLE DRAP A49 , Unite=BALLE , IdUnite=3595 , CodeArticle=0190271200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2712 AND idunite=3595;
DELETE FROM tb_log_stock WHERE codearticle='0190271200';
DELETE FROM tb_inventaire WHERE codearticle='0190271200';
DELETE FROM tb_stock WHERE codearticle='0190271200';
DELETE FROM tb_article WHERE idarticle=2712;
DELETE FROM tb_unite WHERE idunite=3595 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3595) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3595);
COMMIT;

-- IdArticle=3939 , Designation=BALLE FRIPER , Unite=BALLE , IdUnite=5305 , CodeArticle=0030393900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3939 AND idunite=5305;
DELETE FROM tb_log_stock WHERE codearticle='0030393900';
DELETE FROM tb_inventaire WHERE codearticle='0030393900';
DELETE FROM tb_stock WHERE codearticle='0030393900';
DELETE FROM tb_article WHERE idarticle=3939;
DELETE FROM tb_unite WHERE idunite=5305 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5305) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5305);
COMMIT;

-- IdArticle=3443 , Designation=BALLE MAILLOT ENSEMBLE , Unite=BALLE , IdUnite=4509 , CodeArticle=0190344300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3443 AND idunite=4509;
DELETE FROM tb_log_stock WHERE codearticle='0190344300';
DELETE FROM tb_inventaire WHERE codearticle='0190344300';
DELETE FROM tb_stock WHERE codearticle='0190344300';
DELETE FROM tb_article WHERE idarticle=3443;
DELETE FROM tb_unite WHERE idunite=4509 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4509) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4509);
COMMIT;

-- IdArticle=4355 , Designation=BALLE MS74 , Unite=BALLE , IdUnite=6047 , CodeArticle=0190435500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4355 AND idunite=6047;
DELETE FROM tb_log_stock WHERE codearticle='0190435500';
DELETE FROM tb_inventaire WHERE codearticle='0190435500';
DELETE FROM tb_stock WHERE codearticle='0190435500';
DELETE FROM tb_article WHERE idarticle=4355;
DELETE FROM tb_unite WHERE idunite=6047 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6047) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6047);
COMMIT;

-- IdArticle=2716 , Designation=BALLE PANT GARGO A27 , Unite=BALLE , IdUnite=3599 , CodeArticle=0190271600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2716 AND idunite=3599;
DELETE FROM tb_log_stock WHERE codearticle='0190271600';
DELETE FROM tb_inventaire WHERE codearticle='0190271600';
DELETE FROM tb_stock WHERE codearticle='0190271600';
DELETE FROM tb_article WHERE idarticle=2716;
DELETE FROM tb_unite WHERE idunite=3599 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3599) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3599);
COMMIT;

-- IdArticle=3445 , Designation=BALLE PANTA COURT 45KG , Unite=BALLE , IdUnite=4511 , CodeArticle=0190344500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3445 AND idunite=4511;
DELETE FROM tb_log_stock WHERE codearticle='0190344500';
DELETE FROM tb_inventaire WHERE codearticle='0190344500';
DELETE FROM tb_stock WHERE codearticle='0190344500';
DELETE FROM tb_article WHERE idarticle=3445;
DELETE FROM tb_unite WHERE idunite=4511 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4511) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4511);
COMMIT;

-- IdArticle=2713 , Designation=BALLE RIDEAU A50 , Unite=BALLE , IdUnite=3596 , CodeArticle=0190271300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2713 AND idunite=3596;
DELETE FROM tb_log_stock WHERE codearticle='0190271300';
DELETE FROM tb_inventaire WHERE codearticle='0190271300';
DELETE FROM tb_stock WHERE codearticle='0190271300';
DELETE FROM tb_article WHERE idarticle=2713;
DELETE FROM tb_unite WHERE idunite=3596 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3596) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3596);
COMMIT;

-- IdArticle=3446 , Designation=BALLE RIDEAU P. ROSE / VERTE , Unite=BALLE , IdUnite=4512 , CodeArticle=0190344600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3446 AND idunite=4512;
DELETE FROM tb_log_stock WHERE codearticle='0190344600';
DELETE FROM tb_inventaire WHERE codearticle='0190344600';
DELETE FROM tb_stock WHERE codearticle='0190344600';
DELETE FROM tb_article WHERE idarticle=3446;
DELETE FROM tb_unite WHERE idunite=4512 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4512) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4512);
COMMIT;

-- IdArticle=1897 , Designation=BALLE ROBE SOI C A I , Unite=BALLE , IdUnite=2549 , CodeArticle=0190189700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1897 AND idunite=2549;
DELETE FROM tb_log_stock WHERE codearticle='0190189700';
DELETE FROM tb_inventaire WHERE codearticle='0190189700';
DELETE FROM tb_stock WHERE codearticle='0190189700';
DELETE FROM tb_article WHERE idarticle=1897;
DELETE FROM tb_unite WHERE idunite=2549 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2549) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2549);
COMMIT;

-- IdArticle=3450 , Designation=BALLE SHORT PLAGE A31 , Unite=BALLE , IdUnite=4516 , CodeArticle=0190345000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3450 AND idunite=4516;
DELETE FROM tb_log_stock WHERE codearticle='0190345000';
DELETE FROM tb_inventaire WHERE codearticle='0190345000';
DELETE FROM tb_stock WHERE codearticle='0190345000';
DELETE FROM tb_article WHERE idarticle=3450;
DELETE FROM tb_unite WHERE idunite=4516 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4516) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4516);
COMMIT;

-- IdArticle=3453 , Designation=BALLE SOUTIEN COALA , Unite=BALLE , IdUnite=4519 , CodeArticle=0190345300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3453 AND idunite=4519;
DELETE FROM tb_log_stock WHERE codearticle='0190345300';
DELETE FROM tb_inventaire WHERE codearticle='0190345300';
DELETE FROM tb_stock WHERE codearticle='0190345300';
DELETE FROM tb_article WHERE idarticle=3453;
DELETE FROM tb_unite WHERE idunite=4519 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4519) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4519);
COMMIT;

-- IdArticle=3455 , Designation=BALLE T SHIRT P. VERT , Unite=BALLE , IdUnite=4521 , CodeArticle=0190345500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3455 AND idunite=4521;
DELETE FROM tb_log_stock WHERE codearticle='0190345500';
DELETE FROM tb_inventaire WHERE codearticle='0190345500';
DELETE FROM tb_stock WHERE codearticle='0190345500';
DELETE FROM tb_article WHERE idarticle=3455;
DELETE FROM tb_unite WHERE idunite=4521 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4521) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4521);
COMMIT;

-- IdArticle=2717 , Designation=BALLE T SHIRT POLO 45KG , Unite=BALLE , IdUnite=3600 , CodeArticle=0190271700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2717 AND idunite=3600;
DELETE FROM tb_log_stock WHERE codearticle='0190271700';
DELETE FROM tb_inventaire WHERE codearticle='0190271700';
DELETE FROM tb_stock WHERE codearticle='0190271700';
DELETE FROM tb_article WHERE idarticle=2717;
DELETE FROM tb_unite WHERE idunite=3600 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3600) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3600);
COMMIT;

-- IdArticle=2715 , Designation=BALLE VESTE JEAN , Unite=BALLE , IdUnite=3598 , CodeArticle=0190271500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2715 AND idunite=3598;
DELETE FROM tb_log_stock WHERE codearticle='0190271500';
DELETE FROM tb_inventaire WHERE codearticle='0190271500';
DELETE FROM tb_stock WHERE codearticle='0190271500';
DELETE FROM tb_article WHERE idarticle=2715;
DELETE FROM tb_unite WHERE idunite=3598 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3598) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3598);
COMMIT;

-- IdArticle=2684 , Designation=BAOBA CITRON 50CL , Unite=BOUTEILLE , IdUnite=3553 , CodeArticle=0200268400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2684 AND idunite=3553;
DELETE FROM tb_log_stock WHERE codearticle='0200268400';
DELETE FROM tb_inventaire WHERE codearticle='0200268400';
DELETE FROM tb_stock WHERE codearticle='0200268400';
DELETE FROM tb_article WHERE idarticle=2684;
DELETE FROM tb_unite WHERE idunite=3553 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3553) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3553);
COMMIT;

-- IdArticle=2681 , Designation=BAOBA FRAISE 50CL , Unite=BOUTEILLE , IdUnite=3547 , CodeArticle=0200268100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2681 AND idunite=3547;
DELETE FROM tb_log_stock WHERE codearticle='0200268100';
DELETE FROM tb_inventaire WHERE codearticle='0200268100';
DELETE FROM tb_stock WHERE codearticle='0200268100';
DELETE FROM tb_article WHERE idarticle=2681;
DELETE FROM tb_unite WHERE idunite=3547 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3547) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3547);
COMMIT;

-- IdArticle=2683 , Designation=BAOBA GRENADINE 50CL , Unite=BOUTEILLE , IdUnite=3551 , CodeArticle=0200268300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2683 AND idunite=3551;
DELETE FROM tb_log_stock WHERE codearticle='0200268300';
DELETE FROM tb_inventaire WHERE codearticle='0200268300';
DELETE FROM tb_stock WHERE codearticle='0200268300';
DELETE FROM tb_article WHERE idarticle=2683;
DELETE FROM tb_unite WHERE idunite=3551 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3551) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3551);
COMMIT;

-- IdArticle=2682 , Designation=BAOBA MENTHE 50CL , Unite=BOUTEILLE , IdUnite=3549 , CodeArticle=0200268200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2682 AND idunite=3549;
DELETE FROM tb_log_stock WHERE codearticle='0200268200';
DELETE FROM tb_inventaire WHERE codearticle='0200268200';
DELETE FROM tb_stock WHERE codearticle='0200268200';
DELETE FROM tb_article WHERE idarticle=2682;
DELETE FROM tb_unite WHERE idunite=3549 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3549) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3549);
COMMIT;

-- IdArticle=2685 , Designation=BAOBA ORANGE MANDARINE 50CL , Unite=BOUTEILLE , IdUnite=3555 , CodeArticle=0200268500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2685 AND idunite=3555;
DELETE FROM tb_log_stock WHERE codearticle='0200268500';
DELETE FROM tb_inventaire WHERE codearticle='0200268500';
DELETE FROM tb_stock WHERE codearticle='0200268500';
DELETE FROM tb_article WHERE idarticle=2685;
DELETE FROM tb_unite WHERE idunite=3555 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3555) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3555);
COMMIT;

-- IdArticle=3061 , Designation=BAREA ATM , Unite=SAC , IdUnite=4007 , CodeArticle=0170306100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3061 AND idunite=4007;
DELETE FROM tb_log_stock WHERE codearticle='0170306100';
DELETE FROM tb_inventaire WHERE codearticle='0170306100';
DELETE FROM tb_stock WHERE codearticle='0170306100';
DELETE FROM tb_article WHERE idarticle=3061;
DELETE FROM tb_unite WHERE idunite=4007 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4007) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4007);
COMMIT;

-- IdArticle=3463 , Designation=BATTERIE SOLAIRE 120A , Unite=PIECE , IdUnite=4531 , CodeArticle=0220346300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3463 AND idunite=4531;
DELETE FROM tb_log_stock WHERE codearticle='0220346300';
DELETE FROM tb_inventaire WHERE codearticle='0220346300';
DELETE FROM tb_stock WHERE codearticle='0220346300';
DELETE FROM tb_article WHERE idarticle=3463;
DELETE FROM tb_unite WHERE idunite=4531 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4531) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4531);
COMMIT;

-- IdArticle=53 , Designation=BAUME KATRAFAY , Unite=PIECE , IdUnite=62 , CodeArticle=0100005300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=53 AND idunite=62;
DELETE FROM tb_log_stock WHERE codearticle='0100005300';
DELETE FROM tb_inventaire WHERE codearticle='0100005300';
DELETE FROM tb_stock WHERE codearticle='0100005300';
DELETE FROM tb_article WHERE idarticle=53;
DELETE FROM tb_unite WHERE idunite=62 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=62) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=62);
COMMIT;

-- IdArticle=1950 , Designation=BEURRE TEREMA 200G , Unite=PIECE , IdUnite=2614 , CodeArticle=0040195000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1950 AND idunite=2614;
DELETE FROM tb_log_stock WHERE codearticle='0040195000';
DELETE FROM tb_inventaire WHERE codearticle='0040195000';
DELETE FROM tb_stock WHERE codearticle='0040195000';
DELETE FROM tb_article WHERE idarticle=1950;
DELETE FROM tb_unite WHERE idunite=2614 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2614) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2614);
COMMIT;

-- IdArticle=2876 , Designation=BISCUIT 4X4 GLUCOSE BE , Unite=PCS , IdUnite=3801 , CodeArticle=0050287600
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2876 AND idunite=3801;
DELETE FROM tb_log_stock WHERE codearticle='0050287600';
DELETE FROM tb_inventaire WHERE codearticle='0050287600';
DELETE FROM tb_stock WHERE codearticle='0050287600';
DELETE FROM tb_article WHERE idarticle=2876;
DELETE FROM tb_unite WHERE idunite=3801 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3801) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3801);
COMMIT;

-- IdArticle=1866 , Designation=BISCUIT 4X4 GO , Unite=SACHET , IdUnite=2508 , CodeArticle=0050186600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1866 AND idunite=2508;
DELETE FROM tb_log_stock WHERE codearticle='0050186600';
DELETE FROM tb_inventaire WHERE codearticle='0050186600';
DELETE FROM tb_stock WHERE codearticle='0050186600';
DELETE FROM tb_article WHERE idarticle=1866;
DELETE FROM tb_unite WHERE idunite=2508 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2508) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2508);
COMMIT;

-- IdArticle=4141 , Designation=BISCUIT CRUNCH Coated Wafer , Unite=BOITE , IdUnite=5661 , CodeArticle=0050414100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4141 AND idunite=5661;
DELETE FROM tb_log_stock WHERE codearticle='0050414100';
DELETE FROM tb_inventaire WHERE codearticle='0050414100';
DELETE FROM tb_stock WHERE codearticle='0050414100';
DELETE FROM tb_article WHERE idarticle=4141;
DELETE FROM tb_unite WHERE idunite=5661 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5661) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5661);
COMMIT;

-- IdArticle=2875 , Designation=BISCUIT FAMILY VANILLE , Unite=PIECES , IdUnite=3798 , CodeArticle=0050287500
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2875 AND idunite=3798;
DELETE FROM tb_log_stock WHERE codearticle='0050287500';
DELETE FROM tb_inventaire WHERE codearticle='0050287500';
DELETE FROM tb_stock WHERE codearticle='0050287500';
DELETE FROM tb_article WHERE idarticle=2875;
DELETE FROM tb_unite WHERE idunite=3798 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3798) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3798);
COMMIT;

-- IdArticle=2710 , Designation=BISCUIT FARILAC , Unite=SACHET , IdUnite=3592 , CodeArticle=0050271000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2710 AND idunite=3592;
DELETE FROM tb_log_stock WHERE codearticle='0050271000';
DELETE FROM tb_inventaire WHERE codearticle='0050271000';
DELETE FROM tb_stock WHERE codearticle='0050271000';
DELETE FROM tb_article WHERE idarticle=2710;
DELETE FROM tb_unite WHERE idunite=3592 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3592) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3592);
COMMIT;

-- IdArticle=3102 , Designation=BISCUIT MAHABIBO , Unite=PAQUET , IdUnite=4071 , CodeArticle=0050310200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3102 AND idunite=4071;
DELETE FROM tb_log_stock WHERE codearticle='0050310200';
DELETE FROM tb_inventaire WHERE codearticle='0050310200';
DELETE FROM tb_stock WHERE codearticle='0050310200';
DELETE FROM tb_article WHERE idarticle=3102;
DELETE FROM tb_unite WHERE idunite=4071 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4071) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4071);
COMMIT;

-- IdArticle=3748 , Designation=BISCUIT MAHABIBO PIECE , Unite=PIECE , IdUnite=4968 , CodeArticle=0050374800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3748 AND idunite=4968;
DELETE FROM tb_log_stock WHERE codearticle='0050374800';
DELETE FROM tb_inventaire WHERE codearticle='0050374800';
DELETE FROM tb_stock WHERE codearticle='0050374800';
DELETE FROM tb_article WHERE idarticle=3748;
DELETE FROM tb_unite WHERE idunite=4968 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4968) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4968);
COMMIT;

-- IdArticle=1973 , Designation=BISCUIT MILK FRESH , Unite=SACHET , IdUnite=2666 , CodeArticle=0050197300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1973 AND idunite=2666;
DELETE FROM tb_log_stock WHERE codearticle='0050197300';
DELETE FROM tb_inventaire WHERE codearticle='0050197300';
DELETE FROM tb_stock WHERE codearticle='0050197300';
DELETE FROM tb_article WHERE idarticle=1973;
DELETE FROM tb_unite WHERE idunite=2666 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2666) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2666);
COMMIT;

-- IdArticle=3910 , Designation=BISCUIT SMILY CREAMZ , Unite=SACHET , IdUnite=5246 , CodeArticle=0050391000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3910 AND idunite=5246;
DELETE FROM tb_log_stock WHERE codearticle='0050391000';
DELETE FROM tb_inventaire WHERE codearticle='0050391000';
DELETE FROM tb_stock WHERE codearticle='0050391000';
DELETE FROM tb_article WHERE idarticle=3910;
DELETE FROM tb_unite WHERE idunite=5246 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5246) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5246);
COMMIT;

-- IdArticle=2837 , Designation=BISCUIT SUPER CHOCO , Unite=SACHET , IdUnite=3746 , CodeArticle=0050283700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2837 AND idunite=3746;
DELETE FROM tb_log_stock WHERE codearticle='0050283700';
DELETE FROM tb_inventaire WHERE codearticle='0050283700';
DELETE FROM tb_stock WHERE codearticle='0050283700';
DELETE FROM tb_article WHERE idarticle=2837;
DELETE FROM tb_unite WHERE idunite=3746 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3746) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3746);
COMMIT;

-- IdArticle=2244 , Designation=BISCUIT SUPER COCO , Unite=SACHET , IdUnite=2986 , CodeArticle=0050224400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2244 AND idunite=2986;
DELETE FROM tb_log_stock WHERE codearticle='0050224400';
DELETE FROM tb_inventaire WHERE codearticle='0050224400';
DELETE FROM tb_stock WHERE codearticle='0050224400';
DELETE FROM tb_article WHERE idarticle=2244;
DELETE FROM tb_unite WHERE idunite=2986 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2986) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2986);
COMMIT;

-- IdArticle=2198 , Designation=BOCAL 2 LITRE , Unite=PIECE , IdUnite=2930 , CodeArticle=0030219800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2198 AND idunite=2930;
DELETE FROM tb_log_stock WHERE codearticle='0030219800';
DELETE FROM tb_inventaire WHERE codearticle='0030219800';
DELETE FROM tb_stock WHERE codearticle='0030219800';
DELETE FROM tb_article WHERE idarticle=2198;
DELETE FROM tb_unite WHERE idunite=2930 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2930) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2930);
COMMIT;

-- IdArticle=782 , Designation=BOCAL 2 LITRE " KAFEZA " , Unite=PIECE , IdUnite=990 , CodeArticle=0030078200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=782 AND idunite=990;
DELETE FROM tb_log_stock WHERE codearticle='0030078200';
DELETE FROM tb_inventaire WHERE codearticle='0030078200';
DELETE FROM tb_stock WHERE codearticle='0030078200';
DELETE FROM tb_article WHERE idarticle=782;
DELETE FROM tb_unite WHERE idunite=990 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=990) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=990);
COMMIT;

-- IdArticle=2198 , Designation=BOCAL 2 LITRE " KAFEZA " , Unite=PIECE , IdUnite=2930 , CodeArticle=0030219800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2198 AND idunite=2930;
DELETE FROM tb_log_stock WHERE codearticle='0030219800';
DELETE FROM tb_inventaire WHERE codearticle='0030219800';
DELETE FROM tb_stock WHERE codearticle='0030219800';
DELETE FROM tb_article WHERE idarticle=2198;
DELETE FROM tb_unite WHERE idunite=2930 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2930) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2930);
COMMIT;

-- IdArticle=1900 , Designation=BOCAL 3 LITRE , Unite=PIECE , IdUnite=2553 , CodeArticle=0030190000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1900 AND idunite=2553;
DELETE FROM tb_log_stock WHERE codearticle='0030190000';
DELETE FROM tb_inventaire WHERE codearticle='0030190000';
DELETE FROM tb_stock WHERE codearticle='0030190000';
DELETE FROM tb_article WHERE idarticle=1900;
DELETE FROM tb_unite WHERE idunite=2553 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2553) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2553);
COMMIT;

-- IdArticle=3245 , Designation=BOCAL VIDE CREAM WAFER , Unite=PIECE , IdUnite=4266 , CodeArticle=0030324500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3245 AND idunite=4266;
DELETE FROM tb_log_stock WHERE codearticle='0030324500';
DELETE FROM tb_inventaire WHERE codearticle='0030324500';
DELETE FROM tb_stock WHERE codearticle='0030324500';
DELETE FROM tb_article WHERE idarticle=3245;
DELETE FROM tb_unite WHERE idunite=4266 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4266) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4266);
COMMIT;

-- IdArticle=1903 , Designation=BOISSON AMERICAN COLA PM , Unite=PACQUET , IdUnite=2560 , CodeArticle=0230190300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1903 AND idunite=2560;
DELETE FROM tb_log_stock WHERE codearticle='0230190300';
DELETE FROM tb_inventaire WHERE codearticle='0230190300';
DELETE FROM tb_stock WHERE codearticle='0230190300';
DELETE FROM tb_article WHERE idarticle=1903;
DELETE FROM tb_unite WHERE idunite=2560 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2560) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2560);
COMMIT;

-- IdArticle=2191 , Designation=BOISSON BIG CITRON VERT GM , Unite=PACQUET , IdUnite=2920 , CodeArticle=0040219100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2191 AND idunite=2920;
DELETE FROM tb_log_stock WHERE codearticle='0040219100';
DELETE FROM tb_inventaire WHERE codearticle='0040219100';
DELETE FROM tb_stock WHERE codearticle='0040219100';
DELETE FROM tb_article WHERE idarticle=2191;
DELETE FROM tb_unite WHERE idunite=2920 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2920) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2920);
COMMIT;

-- IdArticle=2186 , Designation=BOISSON BIG PM CITRON VERT , Unite=PACQUET , IdUnite=2913 , CodeArticle=0040218600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2186 AND idunite=2913;
DELETE FROM tb_log_stock WHERE codearticle='0040218600';
DELETE FROM tb_inventaire WHERE codearticle='0040218600';
DELETE FROM tb_stock WHERE codearticle='0040218600';
DELETE FROM tb_article WHERE idarticle=2186;
DELETE FROM tb_unite WHERE idunite=2913 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2913) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2913);
COMMIT;

-- IdArticle=1904 , Designation=BOISSON BUBBLE UP LEMON PM , Unite=PACQUET , IdUnite=2561 , CodeArticle=0230190400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1904 AND idunite=2561;
DELETE FROM tb_log_stock WHERE codearticle='0230190400';
DELETE FROM tb_inventaire WHERE codearticle='0230190400';
DELETE FROM tb_stock WHERE codearticle='0230190400';
DELETE FROM tb_article WHERE idarticle=1904;
DELETE FROM tb_unite WHERE idunite=2561 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2561) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2561);
COMMIT;

-- IdArticle=2625 , Designation=BOISSON DJINO COLA 125CL , Unite=PACQUET , IdUnite=3456 , CodeArticle=0230262500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2625 AND idunite=3456;
DELETE FROM tb_log_stock WHERE codearticle='0230262500';
DELETE FROM tb_inventaire WHERE codearticle='0230262500';
DELETE FROM tb_stock WHERE codearticle='0230262500';
DELETE FROM tb_article WHERE idarticle=2625;
DELETE FROM tb_unite WHERE idunite=3456 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3456) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3456);
COMMIT;

-- IdArticle=2192 , Designation=BOISSON DJINO COLA 150CL , Unite=PACQUET , IdUnite=2921 , CodeArticle=0230219200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2192 AND idunite=2921;
DELETE FROM tb_log_stock WHERE codearticle='0230219200';
DELETE FROM tb_inventaire WHERE codearticle='0230219200';
DELETE FROM tb_stock WHERE codearticle='0230219200';
DELETE FROM tb_article WHERE idarticle=2192;
DELETE FROM tb_unite WHERE idunite=2921 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2921) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2921);
COMMIT;

-- IdArticle=1887 , Designation=BOISSON DJINO COLA 35CL , Unite=PACQUET , IdUnite=2534 , CodeArticle=0230188700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1887 AND idunite=2534;
DELETE FROM tb_log_stock WHERE codearticle='0230188700';
DELETE FROM tb_inventaire WHERE codearticle='0230188700';
DELETE FROM tb_stock WHERE codearticle='0230188700';
DELETE FROM tb_article WHERE idarticle=1887;
DELETE FROM tb_unite WHERE idunite=2534 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2534) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2534);
COMMIT;

-- IdArticle=3038 , Designation=BOISSON DJINO PM , Unite=BOUTEIL , IdUnite=3979 , CodeArticle=0230303800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3038 AND idunite=3979;
DELETE FROM tb_log_stock WHERE codearticle='0230303800';
DELETE FROM tb_inventaire WHERE codearticle='0230303800';
DELETE FROM tb_stock WHERE codearticle='0230303800';
DELETE FROM tb_article WHERE idarticle=3038;
DELETE FROM tb_unite WHERE idunite=3979 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3979) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3979);
COMMIT;

-- IdArticle=2626 , Designation=BOISSON DJINO TROPICAL 125CL , Unite=PACQUET , IdUnite=3457 , CodeArticle=0230262600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2626 AND idunite=3457;
DELETE FROM tb_log_stock WHERE codearticle='0230262600';
DELETE FROM tb_inventaire WHERE codearticle='0230262600';
DELETE FROM tb_stock WHERE codearticle='0230262600';
DELETE FROM tb_article WHERE idarticle=2626;
DELETE FROM tb_unite WHERE idunite=3457 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3457) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3457);
COMMIT;

-- IdArticle=2188 , Designation=BOISSON DJINO TROPICAL 150CL , Unite=PACQUET , IdUnite=2915 , CodeArticle=0040218800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2188 AND idunite=2915;
DELETE FROM tb_log_stock WHERE codearticle='0040218800';
DELETE FROM tb_inventaire WHERE codearticle='0040218800';
DELETE FROM tb_stock WHERE codearticle='0040218800';
DELETE FROM tb_article WHERE idarticle=2188;
DELETE FROM tb_unite WHERE idunite=2915 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2915) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2915);
COMMIT;

-- IdArticle=1889 , Designation=BOISSON DJINO TROPICAL ORANGE 35CL , Unite=PACQUET , IdUnite=2536 , CodeArticle=0230188900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1889 AND idunite=2536;
DELETE FROM tb_log_stock WHERE codearticle='0230188900';
DELETE FROM tb_inventaire WHERE codearticle='0230188900';
DELETE FROM tb_stock WHERE codearticle='0230188900';
DELETE FROM tb_article WHERE idarticle=1889;
DELETE FROM tb_unite WHERE idunite=2536 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2536) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2536);
COMMIT;

-- IdArticle=1905 , Designation=BOISSON PLANET ORANGE PM , Unite=PACQUET , IdUnite=2562 , CodeArticle=0230190500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1905 AND idunite=2562;
DELETE FROM tb_log_stock WHERE codearticle='0230190500';
DELETE FROM tb_inventaire WHERE codearticle='0230190500';
DELETE FROM tb_stock WHERE codearticle='0230190500';
DELETE FROM tb_article WHERE idarticle=1905;
DELETE FROM tb_unite WHERE idunite=2562 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2562) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2562);
COMMIT;

-- IdArticle=181 , Designation=BOLO EN PIECE , Unite=PIECE , IdUnite=206 , CodeArticle=0100018100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=181 AND idunite=206;
DELETE FROM tb_log_stock WHERE codearticle='0100018100';
DELETE FROM tb_inventaire WHERE codearticle='0100018100';
DELETE FROM tb_stock WHERE codearticle='0100018100';
DELETE FROM tb_article WHERE idarticle=181;
DELETE FROM tb_unite WHERE idunite=206 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=206) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=206);
COMMIT;

-- IdArticle=2699 , Designation=BONBON AMENDAS , Unite=SACHET , IdUnite=3576 , CodeArticle=0140269900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2699 AND idunite=3576;
DELETE FROM tb_log_stock WHERE codearticle='0140269900';
DELETE FROM tb_inventaire WHERE codearticle='0140269900';
DELETE FROM tb_stock WHERE codearticle='0140269900';
DELETE FROM tb_article WHERE idarticle=2699;
DELETE FROM tb_unite WHERE idunite=3576 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3576) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3576);
COMMIT;

-- IdArticle=187 , Designation=BONBON ANGLAIS PM EN PQT , Unite=PAQUET , IdUnite=217 , CodeArticle=0030018700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=187 AND idunite=217;
DELETE FROM tb_log_stock WHERE codearticle='0030018700';
DELETE FROM tb_inventaire WHERE codearticle='0030018700';
DELETE FROM tb_stock WHERE codearticle='0030018700';
DELETE FROM tb_article WHERE idarticle=187;
DELETE FROM tb_unite WHERE idunite=217 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=217) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=217);
COMMIT;

-- IdArticle=3824 , Designation=BONBON ASSORTED JU-C , Unite=BOCAL , IdUnite=5094 , CodeArticle=0140382400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3824 AND idunite=5094;
DELETE FROM tb_log_stock WHERE codearticle='0140382400';
DELETE FROM tb_inventaire WHERE codearticle='0140382400';
DELETE FROM tb_stock WHERE codearticle='0140382400';
DELETE FROM tb_article WHERE idarticle=3824;
DELETE FROM tb_unite WHERE idunite=5094 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5094) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5094);
COMMIT;

-- IdArticle=2241 , Designation=BONBON CHOCO BEAN , Unite=BOITE , IdUnite=2981 , CodeArticle=0140224100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2241 AND idunite=2981;
DELETE FROM tb_log_stock WHERE codearticle='0140224100';
DELETE FROM tb_inventaire WHERE codearticle='0140224100';
DELETE FROM tb_stock WHERE codearticle='0140224100';
DELETE FROM tb_article WHERE idarticle=2241;
DELETE FROM tb_unite WHERE idunite=2981 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2981) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2981);
COMMIT;

-- IdArticle=4204 , Designation=BONBON COLA , Unite=SACHET , IdUnite=5778 , CodeArticle=0140420400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4204 AND idunite=5778;
DELETE FROM tb_log_stock WHERE codearticle='0140420400';
DELETE FROM tb_inventaire WHERE codearticle='0140420400';
DELETE FROM tb_stock WHERE codearticle='0140420400';
DELETE FROM tb_article WHERE idarticle=4204;
DELETE FROM tb_unite WHERE idunite=5778 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5778) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5778);
COMMIT;

-- IdArticle=1859 , Designation=BONBON ERLAN , Unite=SACHET , IdUnite=2495 , CodeArticle=0140185900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1859 AND idunite=2495;
DELETE FROM tb_log_stock WHERE codearticle='0140185900';
DELETE FROM tb_inventaire WHERE codearticle='0140185900';
DELETE FROM tb_stock WHERE codearticle='0140185900';
DELETE FROM tb_article WHERE idarticle=1859;
DELETE FROM tb_unite WHERE idunite=2495 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2495) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2495);
COMMIT;

-- IdArticle=1861 , Designation=BONBON FINGER SPRING , Unite=SACHET , IdUnite=2499 , CodeArticle=0140186100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1861 AND idunite=2499;
DELETE FROM tb_log_stock WHERE codearticle='0140186100';
DELETE FROM tb_inventaire WHERE codearticle='0140186100';
DELETE FROM tb_stock WHERE codearticle='0140186100';
DELETE FROM tb_article WHERE idarticle=1861;
DELETE FROM tb_unite WHERE idunite=2499 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2499) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2499);
COMMIT;

-- IdArticle=2632 , Designation=BONBON FLAMINGO , Unite=SACHET , IdUnite=3467 , CodeArticle=0140263200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2632 AND idunite=3467;
DELETE FROM tb_log_stock WHERE codearticle='0140263200';
DELETE FROM tb_inventaire WHERE codearticle='0140263200';
DELETE FROM tb_stock WHERE codearticle='0140263200';
DELETE FROM tb_article WHERE idarticle=2632;
DELETE FROM tb_unite WHERE idunite=3467 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3467) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3467);
COMMIT;

-- IdArticle=4000 , Designation=BONBON FRUIT FLASH TOFFE BOCAL , Unite=BOCAL , IdUnite=5404 , CodeArticle=0040400000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4000 AND idunite=5404;
DELETE FROM tb_log_stock WHERE codearticle='0040400000';
DELETE FROM tb_inventaire WHERE codearticle='0040400000';
DELETE FROM tb_stock WHERE codearticle='0040400000';
DELETE FROM tb_article WHERE idarticle=4000;
DELETE FROM tb_unite WHERE idunite=5404 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5404) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5404);
COMMIT;

-- IdArticle=3997 , Designation=BONBON FRUIT SLICE ORANGE , Unite=SACHET , IdUnite=5398 , CodeArticle=0140399700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3997 AND idunite=5398;
DELETE FROM tb_log_stock WHERE codearticle='0140399700';
DELETE FROM tb_inventaire WHERE codearticle='0140399700';
DELETE FROM tb_stock WHERE codearticle='0140399700';
DELETE FROM tb_article WHERE idarticle=3997;
DELETE FROM tb_unite WHERE idunite=5398 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5398) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5398);
COMMIT;

-- IdArticle=3949 , Designation=BONBON FRUTO FILLS , Unite=SACHET , IdUnite=5321 , CodeArticle=0040394900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3949 AND idunite=5321;
DELETE FROM tb_log_stock WHERE codearticle='0040394900';
DELETE FROM tb_inventaire WHERE codearticle='0040394900';
DELETE FROM tb_stock WHERE codearticle='0040394900';
DELETE FROM tb_article WHERE idarticle=3949;
DELETE FROM tb_unite WHERE idunite=5321 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5321) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5321);
COMMIT;

-- IdArticle=1867 , Designation=BONBON FUNNY BIRDS , Unite=BOITE , IdUnite=2510 , CodeArticle=0140186700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1867 AND idunite=2510;
DELETE FROM tb_log_stock WHERE codearticle='0140186700';
DELETE FROM tb_inventaire WHERE codearticle='0140186700';
DELETE FROM tb_stock WHERE codearticle='0140186700';
DELETE FROM tb_article WHERE idarticle=1867;
DELETE FROM tb_unite WHERE idunite=2510 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2510) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2510);
COMMIT;

-- IdArticle=4390 , Designation=BONBON MILK , Unite=SACHET , IdUnite=6104 , CodeArticle=0140439000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4390 AND idunite=6104;
DELETE FROM tb_log_stock WHERE codearticle='0140439000';
DELETE FROM tb_inventaire WHERE codearticle='0140439000';
DELETE FROM tb_stock WHERE codearticle='0140439000';
DELETE FROM tb_article WHERE idarticle=4390;
DELETE FROM tb_unite WHERE idunite=6104 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6104) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6104);
COMMIT;

-- IdArticle=1946 , Designation=BONBON OPERA , Unite=SACHET , IdUnite=2606 , CodeArticle=0140194600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1946 AND idunite=2606;
DELETE FROM tb_log_stock WHERE codearticle='0140194600';
DELETE FROM tb_inventaire WHERE codearticle='0140194600';
DELETE FROM tb_stock WHERE codearticle='0140194600';
DELETE FROM tb_article WHERE idarticle=1946;
DELETE FROM tb_unite WHERE idunite=2606 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2606) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2606);
COMMIT;

-- IdArticle=4001 , Designation=BONBON PARTY BOMB TOFFE BOCAL , Unite=BOCAL , IdUnite=5406 , CodeArticle=0040400100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4001 AND idunite=5406;
DELETE FROM tb_log_stock WHERE codearticle='0040400100';
DELETE FROM tb_inventaire WHERE codearticle='0040400100';
DELETE FROM tb_stock WHERE codearticle='0040400100';
DELETE FROM tb_article WHERE idarticle=4001;
DELETE FROM tb_unite WHERE idunite=5406 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5406) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5406);
COMMIT;

-- IdArticle=3114 , Designation=BONBON RING LOLLIPOP , Unite=BOCAL , IdUnite=4094 , CodeArticle=0140311400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3114 AND idunite=4094;
DELETE FROM tb_log_stock WHERE codearticle='0140311400';
DELETE FROM tb_inventaire WHERE codearticle='0140311400';
DELETE FROM tb_stock WHERE codearticle='0140311400';
DELETE FROM tb_article WHERE idarticle=3114;
DELETE FROM tb_unite WHERE idunite=4094 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4094) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4094);
COMMIT;

-- IdArticle=3773 , Designation=BONBON RING LOLLIPOP SHT , Unite=SACHET , IdUnite=5015 , CodeArticle=0140377300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3773 AND idunite=5015;
DELETE FROM tb_log_stock WHERE codearticle='0140377300';
DELETE FROM tb_inventaire WHERE codearticle='0140377300';
DELETE FROM tb_stock WHERE codearticle='0140377300';
DELETE FROM tb_article WHERE idarticle=3773;
DELETE FROM tb_unite WHERE idunite=5015 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5015) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5015);
COMMIT;

-- IdArticle=2702 , Designation=BONBON SIMON CANDY GIG FRUIT , Unite=SACHET , IdUnite=3582 , CodeArticle=0140270200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2702 AND idunite=3582;
DELETE FROM tb_log_stock WHERE codearticle='0140270200';
DELETE FROM tb_inventaire WHERE codearticle='0140270200';
DELETE FROM tb_stock WHERE codearticle='0140270200';
DELETE FROM tb_article WHERE idarticle=2702;
DELETE FROM tb_unite WHERE idunite=3582 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3582) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3582);
COMMIT;

-- IdArticle=2703 , Designation=BONBON SIMON CANDY GIG MILK ASS , Unite=SACHET , IdUnite=3584 , CodeArticle=0140270300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2703 AND idunite=3584;
DELETE FROM tb_log_stock WHERE codearticle='0140270300';
DELETE FROM tb_inventaire WHERE codearticle='0140270300';
DELETE FROM tb_stock WHERE codearticle='0140270300';
DELETE FROM tb_article WHERE idarticle=2703;
DELETE FROM tb_unite WHERE idunite=3584 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3584) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3584);
COMMIT;

-- IdArticle=2701 , Designation=BONBON SIMON DUE , Unite=SACHET , IdUnite=3580 , CodeArticle=0140270100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2701 AND idunite=3580;
DELETE FROM tb_log_stock WHERE codearticle='0140270100';
DELETE FROM tb_inventaire WHERE codearticle='0140270100';
DELETE FROM tb_stock WHERE codearticle='0140270100';
DELETE FROM tb_article WHERE idarticle=2701;
DELETE FROM tb_unite WHERE idunite=3580 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3580) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3580);
COMMIT;

-- IdArticle=3625 , Designation=BONBON SPEED RACING , Unite=BOITE , IdUnite=4772 , CodeArticle=0140362500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3625 AND idunite=4772;
DELETE FROM tb_log_stock WHERE codearticle='0140362500';
DELETE FROM tb_inventaire WHERE codearticle='0140362500';
DELETE FROM tb_stock WHERE codearticle='0140362500';
DELETE FROM tb_article WHERE idarticle=3625;
DELETE FROM tb_unite WHERE idunite=4772 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4772) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4772);
COMMIT;

-- IdArticle=3099 , Designation=BONBON SUCETTE FRUIT LOLLIPOP , Unite=SACHET , IdUnite=4065 , CodeArticle=0140309900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3099 AND idunite=4065;
DELETE FROM tb_log_stock WHERE codearticle='0140309900';
DELETE FROM tb_inventaire WHERE codearticle='0140309900';
DELETE FROM tb_stock WHERE codearticle='0140309900';
DELETE FROM tb_article WHERE idarticle=3099;
DELETE FROM tb_unite WHERE idunite=4065 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4065) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4065);
COMMIT;

-- IdArticle=3098 , Designation=BONBON SUCETTE MILK LOLLIPOP , Unite=SACHET , IdUnite=4063 , CodeArticle=0140309800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3098 AND idunite=4063;
DELETE FROM tb_log_stock WHERE codearticle='0140309800';
DELETE FROM tb_inventaire WHERE codearticle='0140309800';
DELETE FROM tb_stock WHERE codearticle='0140309800';
DELETE FROM tb_article WHERE idarticle=3098;
DELETE FROM tb_unite WHERE idunite=4063 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4063) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4063);
COMMIT;

-- IdArticle=3024 , Designation=BONBON SUCETTE PM CHOCO CARAMEL , Unite=SACHET , IdUnite=3956 , CodeArticle=0140302400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3024 AND idunite=3956;
DELETE FROM tb_log_stock WHERE codearticle='0140302400';
DELETE FROM tb_inventaire WHERE codearticle='0140302400';
DELETE FROM tb_stock WHERE codearticle='0140302400';
DELETE FROM tb_article WHERE idarticle=3024;
DELETE FROM tb_unite WHERE idunite=3956 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3956) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3956);
COMMIT;

-- IdArticle=3832 , Designation=BONBON SUCETTE PM CHOCO VANILLA , Unite=SACHET , IdUnite=5110 , CodeArticle=0140383200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3832 AND idunite=5110;
DELETE FROM tb_log_stock WHERE codearticle='0140383200';
DELETE FROM tb_inventaire WHERE codearticle='0140383200';
DELETE FROM tb_stock WHERE codearticle='0140383200';
DELETE FROM tb_article WHERE idarticle=3832;
DELETE FROM tb_unite WHERE idunite=5110 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5110) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5110);
COMMIT;

-- IdArticle=3831 , Designation=BONBON SUCETTE PM COLA , Unite=SACHET , IdUnite=5108 , CodeArticle=0140383100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3831 AND idunite=5108;
DELETE FROM tb_log_stock WHERE codearticle='0140383100';
DELETE FROM tb_inventaire WHERE codearticle='0140383100';
DELETE FROM tb_stock WHERE codearticle='0140383100';
DELETE FROM tb_article WHERE idarticle=3831;
DELETE FROM tb_unite WHERE idunite=5108 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5108) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5108);
COMMIT;

-- IdArticle=3728 , Designation=BONBON SUPA , Unite=SACHET , IdUnite=4936 , CodeArticle=0140372800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3728 AND idunite=4936;
DELETE FROM tb_log_stock WHERE codearticle='0140372800';
DELETE FROM tb_inventaire WHERE codearticle='0140372800';
DELETE FROM tb_stock WHERE codearticle='0140372800';
DELETE FROM tb_article WHERE idarticle=3728;
DELETE FROM tb_unite WHERE idunite=4936 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4936) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4936);
COMMIT;

-- IdArticle=3728 , Designation=BONBON SUPA FILLED , Unite=SACHET , IdUnite=4936 , CodeArticle=0140372800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3728 AND idunite=4936;
DELETE FROM tb_log_stock WHERE codearticle='0140372800';
DELETE FROM tb_inventaire WHERE codearticle='0140372800';
DELETE FROM tb_stock WHERE codearticle='0140372800';
DELETE FROM tb_article WHERE idarticle=3728;
DELETE FROM tb_unite WHERE idunite=4936 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4936) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4936);
COMMIT;

-- IdArticle=3900 , Designation=BONBON SWEET CUP CHOCO BOCAL , Unite=BOCAL , IdUnite=5224 , CodeArticle=0040390000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3900 AND idunite=5224;
DELETE FROM tb_log_stock WHERE codearticle='0040390000';
DELETE FROM tb_inventaire WHERE codearticle='0040390000';
DELETE FROM tb_stock WHERE codearticle='0040390000';
DELETE FROM tb_article WHERE idarticle=3900;
DELETE FROM tb_unite WHERE idunite=5224 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5224) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5224);
COMMIT;

-- IdArticle=4055 , Designation=BONBON SWITCH POP , Unite=SACHET , IdUnite=5514 , CodeArticle=0140405500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4055 AND idunite=5514;
DELETE FROM tb_log_stock WHERE codearticle='0140405500';
DELETE FROM tb_inventaire WHERE codearticle='0140405500';
DELETE FROM tb_stock WHERE codearticle='0140405500';
DELETE FROM tb_article WHERE idarticle=4055;
DELETE FROM tb_unite WHERE idunite=5514 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5514) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5514);
COMMIT;

-- IdArticle=3914 , Designation=BONBON TIK TOK GUM VITO , Unite=SACHET , IdUnite=5254 , CodeArticle=0140391400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3914 AND idunite=5254;
DELETE FROM tb_log_stock WHERE codearticle='0140391400';
DELETE FROM tb_inventaire WHERE codearticle='0140391400';
DELETE FROM tb_stock WHERE codearticle='0140391400';
DELETE FROM tb_article WHERE idarticle=3914;
DELETE FROM tb_unite WHERE idunite=5254 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5254) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5254);
COMMIT;

-- IdArticle=283 , Designation=BONBON YOLO POP , Unite=SACHET , IdUnite=341 , CodeArticle=0040028300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=283 AND idunite=341;
DELETE FROM tb_log_stock WHERE codearticle='0040028300';
DELETE FROM tb_inventaire WHERE codearticle='0040028300';
DELETE FROM tb_stock WHERE codearticle='0040028300';
DELETE FROM tb_article WHERE idarticle=283;
DELETE FROM tb_unite WHERE idunite=341 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=341) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=341);
COMMIT;

-- IdArticle=2878 , Designation=BONBON YOLO POP , Unite=SACHET , IdUnite=3805 , CodeArticle=0140287800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2878 AND idunite=3805;
DELETE FROM tb_log_stock WHERE codearticle='0140287800';
DELETE FROM tb_inventaire WHERE codearticle='0140287800';
DELETE FROM tb_stock WHERE codearticle='0140287800';
DELETE FROM tb_article WHERE idarticle=2878;
DELETE FROM tb_unite WHERE idunite=3805 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3805) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3805);
COMMIT;

-- IdArticle=286 , Designation=BONITA CHOCOLATE , Unite=PIECE , IdUnite=346 , CodeArticle=0100028600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=286 AND idunite=346;
DELETE FROM tb_log_stock WHERE codearticle='0100028600';
DELETE FROM tb_inventaire WHERE codearticle='0100028600';
DELETE FROM tb_stock WHERE codearticle='0100028600';
DELETE FROM tb_article WHERE idarticle=286;
DELETE FROM tb_unite WHERE idunite=346 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=346) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=346);
COMMIT;

-- IdArticle=1970 , Designation=BONITA CHOCOLATE , Unite=PIECE , IdUnite=2658 , CodeArticle=0140197000
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1970 AND idunite=2658;
DELETE FROM tb_log_stock WHERE codearticle='0140197000';
DELETE FROM tb_inventaire WHERE codearticle='0140197000';
DELETE FROM tb_stock WHERE codearticle='0140197000';
DELETE FROM tb_article WHERE idarticle=1970;
DELETE FROM tb_unite WHERE idunite=2658 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2658) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2658);
COMMIT;

-- IdArticle=285 , Designation=BONITA COCO , Unite=PIECE , IdUnite=345 , CodeArticle=0100028500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=285 AND idunite=345;
DELETE FROM tb_log_stock WHERE codearticle='0100028500';
DELETE FROM tb_inventaire WHERE codearticle='0100028500';
DELETE FROM tb_stock WHERE codearticle='0100028500';
DELETE FROM tb_article WHERE idarticle=285;
DELETE FROM tb_unite WHERE idunite=345 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=345) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=345);
COMMIT;

-- IdArticle=1969 , Designation=BONITA COCO , Unite=PIECE , IdUnite=2655 , CodeArticle=0140196900
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1969 AND idunite=2655;
DELETE FROM tb_log_stock WHERE codearticle='0140196900';
DELETE FROM tb_inventaire WHERE codearticle='0140196900';
DELETE FROM tb_stock WHERE codearticle='0140196900';
DELETE FROM tb_article WHERE idarticle=1969;
DELETE FROM tb_unite WHERE idunite=2655 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2655) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2655);
COMMIT;

-- IdArticle=289 , Designation=BOUGIE BALIAKA GM , Unite=PAQUET , IdUnite=350 , CodeArticle=0030028900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=289 AND idunite=350;
DELETE FROM tb_log_stock WHERE codearticle='0030028900';
DELETE FROM tb_inventaire WHERE codearticle='0030028900';
DELETE FROM tb_stock WHERE codearticle='0030028900';
DELETE FROM tb_article WHERE idarticle=289;
DELETE FROM tb_unite WHERE idunite=350 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=350) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=350);
COMMIT;

-- IdArticle=3759 , Designation=BRACELET JUMP CANDY 9G , Unite=BOITE , IdUnite=4987 , CodeArticle=0140375900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3759 AND idunite=4987;
DELETE FROM tb_log_stock WHERE codearticle='0140375900';
DELETE FROM tb_inventaire WHERE codearticle='0140375900';
DELETE FROM tb_stock WHERE codearticle='0140375900';
DELETE FROM tb_article WHERE idarticle=3759;
DELETE FROM tb_unite WHERE idunite=4987 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4987) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4987);
COMMIT;

-- IdArticle=4763 , Designation=BRIQUET 007 , Unite=BOITE , IdUnite=6764 , CodeArticle=0030476300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4763 AND idunite=6764;
DELETE FROM tb_log_stock WHERE codearticle='0030476300';
DELETE FROM tb_inventaire WHERE codearticle='0030476300';
DELETE FROM tb_stock WHERE codearticle='0030476300';
DELETE FROM tb_article WHERE idarticle=4763;
DELETE FROM tb_unite WHERE idunite=6764 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6764) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6764);
COMMIT;

-- IdArticle=51 , Designation=BRIQUET BAREA , Unite=BOITE , IdUnite=60 , CodeArticle=0030005100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=51 AND idunite=60;
DELETE FROM tb_log_stock WHERE codearticle='0030005100';
DELETE FROM tb_inventaire WHERE codearticle='0030005100';
DELETE FROM tb_stock WHERE codearticle='0030005100';
DELETE FROM tb_article WHERE idarticle=51;
DELETE FROM tb_unite WHERE idunite=60 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=60) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=60);
COMMIT;

-- IdArticle=4763 , Designation=BRIQUET BAREA , Unite=BOITE , IdUnite=6764 , CodeArticle=0030476300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4763 AND idunite=6764;
DELETE FROM tb_log_stock WHERE codearticle='0030476300';
DELETE FROM tb_inventaire WHERE codearticle='0030476300';
DELETE FROM tb_stock WHERE codearticle='0030476300';
DELETE FROM tb_article WHERE idarticle=4763;
DELETE FROM tb_unite WHERE idunite=6764 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6764) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6764);
COMMIT;

-- IdArticle=2726 , Designation=BRIQUET STAR , Unite=BOITE , IdUnite=3617 , CodeArticle=0030272600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2726 AND idunite=3617;
DELETE FROM tb_log_stock WHERE codearticle='0030272600';
DELETE FROM tb_inventaire WHERE codearticle='0030272600';
DELETE FROM tb_stock WHERE codearticle='0030272600';
DELETE FROM tb_article WHERE idarticle=2726;
DELETE FROM tb_unite WHERE idunite=3617 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3617) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3617);
COMMIT;

-- IdArticle=4763 , Designation=BRIQUET STAR , Unite=BOITE , IdUnite=6764 , CodeArticle=0030476300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4763 AND idunite=6764;
DELETE FROM tb_log_stock WHERE codearticle='0030476300';
DELETE FROM tb_inventaire WHERE codearticle='0030476300';
DELETE FROM tb_stock WHERE codearticle='0030476300';
DELETE FROM tb_article WHERE idarticle=4763;
DELETE FROM tb_unite WHERE idunite=6764 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6764) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6764);
COMMIT;

-- IdArticle=4763 , Designation=BRIQUET TOKYO ET XIANDAI , Unite=BOITE , IdUnite=6764 , CodeArticle=0030476300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4763 AND idunite=6764;
DELETE FROM tb_log_stock WHERE codearticle='0030476300';
DELETE FROM tb_inventaire WHERE codearticle='0030476300';
DELETE FROM tb_stock WHERE codearticle='0030476300';
DELETE FROM tb_article WHERE idarticle=4763;
DELETE FROM tb_unite WHERE idunite=6764 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6764) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6764);
COMMIT;

-- IdArticle=2646 , Designation=BROSSE A DENT TRIKA , Unite=PIECE , IdUnite=3489 , CodeArticle=0030264600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2646 AND idunite=3489;
DELETE FROM tb_log_stock WHERE codearticle='0030264600';
DELETE FROM tb_inventaire WHERE codearticle='0030264600';
DELETE FROM tb_stock WHERE codearticle='0030264600';
DELETE FROM tb_article WHERE idarticle=2646;
DELETE FROM tb_unite WHERE idunite=3489 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3489) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3489);
COMMIT;

-- IdArticle=4174 , Designation=BROSSE METALIQUE SARAH V , Unite=PIECE , IdUnite=5727 , CodeArticle=0130417400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4174 AND idunite=5727;
DELETE FROM tb_log_stock WHERE codearticle='0130417400';
DELETE FROM tb_inventaire WHERE codearticle='0130417400';
DELETE FROM tb_stock WHERE codearticle='0130417400';
DELETE FROM tb_article WHERE idarticle=4174;
DELETE FROM tb_unite WHERE idunite=5727 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5727) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5727);
COMMIT;

-- IdArticle=4176 , Designation=BROSSE RASTA-pm SARAH V , Unite=PIECE , IdUnite=5729 , CodeArticle=0130417600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4176 AND idunite=5729;
DELETE FROM tb_log_stock WHERE codearticle='0130417600';
DELETE FROM tb_inventaire WHERE codearticle='0130417600';
DELETE FROM tb_stock WHERE codearticle='0130417600';
DELETE FROM tb_article WHERE idarticle=4176;
DELETE FROM tb_unite WHERE idunite=5729 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5729) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5729);
COMMIT;

-- IdArticle=3856 , Designation=BUBBLE STICK , Unite=BOITE , IdUnite=5152 , CodeArticle=0140385600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3856 AND idunite=5152;
DELETE FROM tb_log_stock WHERE codearticle='0140385600';
DELETE FROM tb_inventaire WHERE codearticle='0140385600';
DELETE FROM tb_stock WHERE codearticle='0140385600';
DELETE FROM tb_article WHERE idarticle=3856;
DELETE FROM tb_unite WHERE idunite=5152 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5152) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5152);
COMMIT;

-- IdArticle=325 , Designation=BUBBLE STICK , Unite=CARTON , IdUnite=394 , CodeArticle=0030032500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=325 AND idunite=394;
DELETE FROM tb_log_stock WHERE codearticle='0030032500';
DELETE FROM tb_inventaire WHERE codearticle='0030032500';
DELETE FROM tb_stock WHERE codearticle='0030032500';
DELETE FROM tb_article WHERE idarticle=325;
DELETE FROM tb_unite WHERE idunite=394 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=394) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=394);
COMMIT;

-- IdArticle=3896 , Designation=BUBBLE STICK PIECE , Unite=PIECE , IdUnite=5219 , CodeArticle=0140389600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3896 AND idunite=5219;
DELETE FROM tb_log_stock WHERE codearticle='0140389600';
DELETE FROM tb_inventaire WHERE codearticle='0140389600';
DELETE FROM tb_stock WHERE codearticle='0140389600';
DELETE FROM tb_article WHERE idarticle=3896;
DELETE FROM tb_unite WHERE idunite=5219 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5219) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5219);
COMMIT;

-- IdArticle=2195 , Designation=BUBLE_CIRCLE , Unite=SACHET , IdUnite=2924 , CodeArticle=0140219500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2195 AND idunite=2924;
DELETE FROM tb_log_stock WHERE codearticle='0140219500';
DELETE FROM tb_inventaire WHERE codearticle='0140219500';
DELETE FROM tb_stock WHERE codearticle='0140219500';
DELETE FROM tb_article WHERE idarticle=2195;
DELETE FROM tb_unite WHERE idunite=2924 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2924) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2924);
COMMIT;

-- IdArticle=3169 , Designation=CAFARTOX , Unite=PIECE , IdUnite=4164 , CodeArticle=0030316900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3169 AND idunite=4164;
DELETE FROM tb_log_stock WHERE codearticle='0030316900';
DELETE FROM tb_inventaire WHERE codearticle='0030316900';
DELETE FROM tb_stock WHERE codearticle='0030316900';
DELETE FROM tb_article WHERE idarticle=3169;
DELETE FROM tb_unite WHERE idunite=4164 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4164) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4164);
COMMIT;

-- IdArticle=2238 , Designation=CAGEOT [ CONSIGNATION ] , Unite=PIECE , IdUnite=2978 , CodeArticle=0030223800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2238 AND idunite=2978;
DELETE FROM tb_log_stock WHERE codearticle='0030223800';
DELETE FROM tb_inventaire WHERE codearticle='0030223800';
DELETE FROM tb_stock WHERE codearticle='0030223800';
DELETE FROM tb_article WHERE idarticle=2238;
DELETE FROM tb_unite WHERE idunite=2978 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2978) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2978);
COMMIT;

-- IdArticle=2597 , Designation=CAHIER 100P GRAND FORMAT (PIÈCE) , Unite=PIECE , IdUnite=3413 , CodeArticle=0240259700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2597 AND idunite=3413;
DELETE FROM tb_log_stock WHERE codearticle='0240259700';
DELETE FROM tb_inventaire WHERE codearticle='0240259700';
DELETE FROM tb_stock WHERE codearticle='0240259700';
DELETE FROM tb_article WHERE idarticle=2597;
DELETE FROM tb_unite WHERE idunite=3413 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3413) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3413);
COMMIT;

-- IdArticle=2596 , Designation=CAHIER 200P GRAND FORMAT (PIÈCE) , Unite=PIECE , IdUnite=3412 , CodeArticle=0240259600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2596 AND idunite=3412;
DELETE FROM tb_log_stock WHERE codearticle='0240259600';
DELETE FROM tb_inventaire WHERE codearticle='0240259600';
DELETE FROM tb_stock WHERE codearticle='0240259600';
DELETE FROM tb_article WHERE idarticle=2596;
DELETE FROM tb_unite WHERE idunite=3412 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3412) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3412);
COMMIT;

-- IdArticle=3677 , Designation=CAHIER BOSSEUR 200P , Unite=PIECE , IdUnite=4853 , CodeArticle=0240367700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3677 AND idunite=4853;
DELETE FROM tb_log_stock WHERE codearticle='0240367700';
DELETE FROM tb_inventaire WHERE codearticle='0240367700';
DELETE FROM tb_stock WHERE codearticle='0240367700';
DELETE FROM tb_article WHERE idarticle=3677;
DELETE FROM tb_unite WHERE idunite=4853 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4853) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4853);
COMMIT;

-- IdArticle=2612 , Designation=CAHIER DE DESSIN LAUREAT REF 102 , Unite=PACQUET , IdUnite=3437 , CodeArticle=0240261200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2612 AND idunite=3437;
DELETE FROM tb_log_stock WHERE codearticle='0240261200';
DELETE FROM tb_inventaire WHERE codearticle='0240261200';
DELETE FROM tb_stock WHERE codearticle='0240261200';
DELETE FROM tb_article WHERE idarticle=2612;
DELETE FROM tb_unite WHERE idunite=3437 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3437) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3437);
COMMIT;

-- IdArticle=2611 , Designation=CAHIER DE DESSIN LAUREAT UNI REF 100 , Unite=PACQUET , IdUnite=3435 , CodeArticle=0240261100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2611 AND idunite=3435;
DELETE FROM tb_log_stock WHERE codearticle='0240261100';
DELETE FROM tb_inventaire WHERE codearticle='0240261100';
DELETE FROM tb_stock WHERE codearticle='0240261100';
DELETE FROM tb_article WHERE idarticle=2611;
DELETE FROM tb_unite WHERE idunite=3435 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3435) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3435);
COMMIT;

-- IdArticle=3244 , Designation=CAHIER DIGITAL 50P , Unite=PAQUET , IdUnite=4264 , CodeArticle=0240324400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3244 AND idunite=4264;
DELETE FROM tb_log_stock WHERE codearticle='0240324400';
DELETE FROM tb_inventaire WHERE codearticle='0240324400';
DELETE FROM tb_stock WHERE codearticle='0240324400';
DELETE FROM tb_article WHERE idarticle=3244;
DELETE FROM tb_unite WHERE idunite=4264 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4264) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4264);
COMMIT;

-- IdArticle=2613 , Designation=CAHIER ECRITURE CALLIGRAPHE REF 5403 , Unite=PACQUET , IdUnite=3439 , CodeArticle=0240261300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2613 AND idunite=3439;
DELETE FROM tb_log_stock WHERE codearticle='0240261300';
DELETE FROM tb_inventaire WHERE codearticle='0240261300';
DELETE FROM tb_stock WHERE codearticle='0240261300';
DELETE FROM tb_article WHERE idarticle=2613;
DELETE FROM tb_unite WHERE idunite=3439 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3439) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3439);
COMMIT;

-- IdArticle=3043 , Designation=CAHIER NITRO 100P , Unite=PAQUET , IdUnite=3984 , CodeArticle=0240304300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3043 AND idunite=3984;
DELETE FROM tb_log_stock WHERE codearticle='0240304300';
DELETE FROM tb_inventaire WHERE codearticle='0240304300';
DELETE FROM tb_stock WHERE codearticle='0240304300';
DELETE FROM tb_article WHERE idarticle=3043;
DELETE FROM tb_unite WHERE idunite=3984 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3984) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3984);
COMMIT;

-- IdArticle=358 , Designation=CAHIER NITROLINE 100P PF , Unite=PAQUET , IdUnite=440 , CodeArticle=0100035800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=358 AND idunite=440;
DELETE FROM tb_log_stock WHERE codearticle='0100035800';
DELETE FROM tb_inventaire WHERE codearticle='0100035800';
DELETE FROM tb_stock WHERE codearticle='0100035800';
DELETE FROM tb_article WHERE idarticle=358;
DELETE FROM tb_unite WHERE idunite=440 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=440) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=440);
COMMIT;

-- IdArticle=3083 , Designation=CAHIER NITROLINE 100P PF , Unite=PAQUET , IdUnite=4040 , CodeArticle=0240308300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3083 AND idunite=4040;
DELETE FROM tb_log_stock WHERE codearticle='0240308300';
DELETE FROM tb_inventaire WHERE codearticle='0240308300';
DELETE FROM tb_stock WHERE codearticle='0240308300';
DELETE FROM tb_article WHERE idarticle=3083;
DELETE FROM tb_unite WHERE idunite=4040 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4040) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4040);
COMMIT;

-- IdArticle=3084 , Designation=CAHIER NITROLINE 200P PF , Unite=PAQUET , IdUnite=4042 , CodeArticle=0240308400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3084 AND idunite=4042;
DELETE FROM tb_log_stock WHERE codearticle='0240308400';
DELETE FROM tb_inventaire WHERE codearticle='0240308400';
DELETE FROM tb_stock WHERE codearticle='0240308400';
DELETE FROM tb_article WHERE idarticle=3084;
DELETE FROM tb_unite WHERE idunite=4042 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4042) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4042);
COMMIT;

-- IdArticle=3082 , Designation=CAHIER NITROLINE 50P PF , Unite=PAQUET , IdUnite=4038 , CodeArticle=0240308200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3082 AND idunite=4038;
DELETE FROM tb_log_stock WHERE codearticle='0240308200';
DELETE FROM tb_inventaire WHERE codearticle='0240308200';
DELETE FROM tb_stock WHERE codearticle='0240308200';
DELETE FROM tb_article WHERE idarticle=3082;
DELETE FROM tb_unite WHERE idunite=4038 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4038) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4038);
COMMIT;

-- IdArticle=4363 , Designation=CANDY BONBON BONJOURNE COLA BOCAL , Unite=BOCAL , IdUnite=6059 , CodeArticle=0140436300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4363 AND idunite=6059;
DELETE FROM tb_log_stock WHERE codearticle='0140436300';
DELETE FROM tb_inventaire WHERE codearticle='0140436300';
DELETE FROM tb_stock WHERE codearticle='0140436300';
DELETE FROM tb_article WHERE idarticle=4363;
DELETE FROM tb_unite WHERE idunite=6059 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6059) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6059);
COMMIT;

-- IdArticle=4364 , Designation=CANDY BONBON BONJOURNE FANTA BOCAL , Unite=BOCAL , IdUnite=6061 , CodeArticle=0140436400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4364 AND idunite=6061;
DELETE FROM tb_log_stock WHERE codearticle='0140436400';
DELETE FROM tb_inventaire WHERE codearticle='0140436400';
DELETE FROM tb_stock WHERE codearticle='0140436400';
DELETE FROM tb_article WHERE idarticle=4364;
DELETE FROM tb_unite WHERE idunite=6061 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6061) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6061);
COMMIT;

-- IdArticle=4362 , Designation=CANDY BONBON BONJOURNE SPRINT BOCAL , Unite=BOCAL , IdUnite=6057 , CodeArticle=0140436200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4362 AND idunite=6057;
DELETE FROM tb_log_stock WHERE codearticle='0140436200';
DELETE FROM tb_inventaire WHERE codearticle='0140436200';
DELETE FROM tb_stock WHERE codearticle='0140436200';
DELETE FROM tb_article WHERE idarticle=4362;
DELETE FROM tb_unite WHERE idunite=6057 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6057) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6057);
COMMIT;

-- IdArticle=3879 , Designation=CANDY KING FANTA ORANGE , Unite=SACHET , IdUnite=5193 , CodeArticle=0140387900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3879 AND idunite=5193;
DELETE FROM tb_log_stock WHERE codearticle='0140387900';
DELETE FROM tb_inventaire WHERE codearticle='0140387900';
DELETE FROM tb_stock WHERE codearticle='0140387900';
DELETE FROM tb_article WHERE idarticle=3879;
DELETE FROM tb_unite WHERE idunite=5193 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5193) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5193);
COMMIT;

-- IdArticle=3877 , Designation=CANDY KING MIX FRUITS , Unite=SACHET , IdUnite=5189 , CodeArticle=0140387700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3877 AND idunite=5189;
DELETE FROM tb_log_stock WHERE codearticle='0140387700';
DELETE FROM tb_inventaire WHERE codearticle='0140387700';
DELETE FROM tb_stock WHERE codearticle='0140387700';
DELETE FROM tb_article WHERE idarticle=3877;
DELETE FROM tb_unite WHERE idunite=5189 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5189) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5189);
COMMIT;

-- IdArticle=188 , Designation=CARAMEL , Unite=PIECE , IdUnite=219 , CodeArticle=0030018800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=188 AND idunite=219;
DELETE FROM tb_log_stock WHERE codearticle='0030018800';
DELETE FROM tb_inventaire WHERE codearticle='0030018800';
DELETE FROM tb_stock WHERE codearticle='0030018800';
DELETE FROM tb_article WHERE idarticle=188;
DELETE FROM tb_unite WHERE idunite=219 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=219) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=219);
COMMIT;

-- IdArticle=1196 , Designation=CARAMEL , Unite=PIECE , IdUnite=1527 , CodeArticle=0030119600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1196 AND idunite=1527;
DELETE FROM tb_log_stock WHERE codearticle='0030119600';
DELETE FROM tb_inventaire WHERE codearticle='0030119600';
DELETE FROM tb_stock WHERE codearticle='0030119600';
DELETE FROM tb_article WHERE idarticle=1196;
DELETE FROM tb_unite WHERE idunite=1527 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=1527) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=1527);
COMMIT;

-- IdArticle=3172 , Designation=CARAMEL , Unite=PIECE , IdUnite=4168 , CodeArticle=0140317200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3172 AND idunite=4168;
DELETE FROM tb_log_stock WHERE codearticle='0140317200';
DELETE FROM tb_inventaire WHERE codearticle='0140317200';
DELETE FROM tb_stock WHERE codearticle='0140317200';
DELETE FROM tb_article WHERE idarticle=3172;
DELETE FROM tb_unite WHERE idunite=4168 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4168) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4168);
COMMIT;

-- IdArticle=3035 , Designation=CARREAU VAKIVAKY , Unite=KILOS , IdUnite=3976 , CodeArticle=0130303500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3035 AND idunite=3976;
DELETE FROM tb_log_stock WHERE codearticle='0130303500';
DELETE FROM tb_inventaire WHERE codearticle='0130303500';
DELETE FROM tb_stock WHERE codearticle='0130303500';
DELETE FROM tb_article WHERE idarticle=3035;
DELETE FROM tb_unite WHERE idunite=3976 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3976) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3976);
COMMIT;

-- IdArticle=3184 , Designation=CARS POP , Unite=SACHET , IdUnite=4184 , CodeArticle=0140318400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3184 AND idunite=4184;
DELETE FROM tb_log_stock WHERE codearticle='0140318400';
DELETE FROM tb_inventaire WHERE codearticle='0140318400';
DELETE FROM tb_stock WHERE codearticle='0140318400';
DELETE FROM tb_article WHERE idarticle=3184;
DELETE FROM tb_unite WHERE idunite=4184 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4184) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4184);
COMMIT;

-- IdArticle=2347 , Designation=CHAMBRE A AIR_GM 750 / 825 R16 , Unite=PIECE , IdUnite=3095 , CodeArticle=0030234700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2347 AND idunite=3095;
DELETE FROM tb_log_stock WHERE codearticle='0030234700';
DELETE FROM tb_inventaire WHERE codearticle='0030234700';
DELETE FROM tb_stock WHERE codearticle='0030234700';
DELETE FROM tb_article WHERE idarticle=2347;
DELETE FROM tb_unite WHERE idunite=3095 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3095) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3095);
COMMIT;

-- IdArticle=2515 , Designation=CHAPELLURE , Unite=SACHET , IdUnite=3304 , CodeArticle=0040251500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2515 AND idunite=3304;
DELETE FROM tb_log_stock WHERE codearticle='0040251500';
DELETE FROM tb_inventaire WHERE codearticle='0040251500';
DELETE FROM tb_stock WHERE codearticle='0040251500';
DELETE FROM tb_article WHERE idarticle=2515;
DELETE FROM tb_unite WHERE idunite=3304 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3304) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3304);
COMMIT;

-- IdArticle=422 , Designation=CHEESE BALLS PCE , Unite=PIECE , IdUnite=526 , CodeArticle=0100042200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=422 AND idunite=526;
DELETE FROM tb_log_stock WHERE codearticle='0100042200';
DELETE FROM tb_inventaire WHERE codearticle='0100042200';
DELETE FROM tb_stock WHERE codearticle='0100042200';
DELETE FROM tb_article WHERE idarticle=422;
DELETE FROM tb_unite WHERE idunite=526 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=526) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=526);
COMMIT;

-- IdArticle=3464 , Designation=CHEESE BALLS PCE , Unite=PIECE , IdUnite=4532 , CodeArticle=0040346400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3464 AND idunite=4532;
DELETE FROM tb_log_stock WHERE codearticle='0040346400';
DELETE FROM tb_inventaire WHERE codearticle='0040346400';
DELETE FROM tb_stock WHERE codearticle='0040346400';
DELETE FROM tb_article WHERE idarticle=3464;
DELETE FROM tb_unite WHERE idunite=4532 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4532) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4532);
COMMIT;

-- IdArticle=3822 , Designation=CHILLI POP , Unite=SACHET , IdUnite=5088 , CodeArticle=0040382200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3822 AND idunite=5088;
DELETE FROM tb_log_stock WHERE codearticle='0040382200';
DELETE FROM tb_inventaire WHERE codearticle='0040382200';
DELETE FROM tb_stock WHERE codearticle='0040382200';
DELETE FROM tb_article WHERE idarticle=3822;
DELETE FROM tb_unite WHERE idunite=5088 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5088) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5088);
COMMIT;

-- IdArticle=2275 , Designation=CHOCOLAT MONTRE , Unite=SACHET , IdUnite=3020 , CodeArticle=0140227500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2275 AND idunite=3020;
DELETE FROM tb_log_stock WHERE codearticle='0140227500';
DELETE FROM tb_inventaire WHERE codearticle='0140227500';
DELETE FROM tb_stock WHERE codearticle='0140227500';
DELETE FROM tb_article WHERE idarticle=2275;
DELETE FROM tb_unite WHERE idunite=3020 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3020) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3020);
COMMIT;

-- IdArticle=3108 , Designation=CHOCOLATE BISCUIT , Unite=BOITE , IdUnite=4083 , CodeArticle=0050310800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3108 AND idunite=4083;
DELETE FROM tb_log_stock WHERE codearticle='0050310800';
DELETE FROM tb_inventaire WHERE codearticle='0050310800';
DELETE FROM tb_stock WHERE codearticle='0050310800';
DELETE FROM tb_article WHERE idarticle=3108;
DELETE FROM tb_unite WHERE idunite=4083 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4083) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4083);
COMMIT;

-- IdArticle=4225 , Designation=CHROMATE DE ZINC SARAH V , Unite=BOITE , IdUnite=5821 , CodeArticle=0130422500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4225 AND idunite=5821;
DELETE FROM tb_log_stock WHERE codearticle='0130422500';
DELETE FROM tb_inventaire WHERE codearticle='0130422500';
DELETE FROM tb_stock WHERE codearticle='0130422500';
DELETE FROM tb_article WHERE idarticle=4225;
DELETE FROM tb_unite WHERE idunite=5821 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5821) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5821);
COMMIT;

-- IdArticle=1971 , Designation=CIKIDAY 20G , Unite=PIECE , IdUnite=2661 , CodeArticle=0140197100
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1971 AND idunite=2661;
DELETE FROM tb_log_stock WHERE codearticle='0140197100';
DELETE FROM tb_inventaire WHERE codearticle='0140197100';
DELETE FROM tb_stock WHERE codearticle='0140197100';
DELETE FROM tb_article WHERE idarticle=1971;
DELETE FROM tb_unite WHERE idunite=2661 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2661) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2661);
COMMIT;

-- IdArticle=1847 , Designation=CIMENT AMBITSIKA , Unite=SAC , IdUnite=2472 , CodeArticle=0030184700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1847 AND idunite=2472;
DELETE FROM tb_log_stock WHERE codearticle='0030184700';
DELETE FROM tb_inventaire WHERE codearticle='0030184700';
DELETE FROM tb_stock WHERE codearticle='0030184700';
DELETE FROM tb_article WHERE idarticle=1847;
DELETE FROM tb_unite WHERE idunite=2472 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2472) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2472);
COMMIT;

-- IdArticle=3502 , Designation=CIMENT POWER , Unite=SAC , IdUnite=4597 , CodeArticle=0130350200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3502 AND idunite=4597;
DELETE FROM tb_log_stock WHERE codearticle='0130350200';
DELETE FROM tb_inventaire WHERE codearticle='0130350200';
DELETE FROM tb_stock WHERE codearticle='0130350200';
DELETE FROM tb_article WHERE idarticle=3502;
DELETE FROM tb_unite WHERE idunite=4597 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4597) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4597);
COMMIT;

-- IdArticle=3502 , Designation=CIMENT POWER VAOVAO , Unite=SAC , IdUnite=4597 , CodeArticle=0130350200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3502 AND idunite=4597;
DELETE FROM tb_log_stock WHERE codearticle='0130350200';
DELETE FROM tb_inventaire WHERE codearticle='0130350200';
DELETE FROM tb_stock WHERE codearticle='0130350200';
DELETE FROM tb_article WHERE idarticle=3502;
DELETE FROM tb_unite WHERE idunite=4597 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4597) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4597);
COMMIT;

-- IdArticle=2381 , Designation=COLGATE TOTAL PRO 75ML (100G) , Unite=PIECE , IdUnite=3153 , CodeArticle=0120238100
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2381 AND idunite=3153;
DELETE FROM tb_log_stock WHERE codearticle='0120238100';
DELETE FROM tb_inventaire WHERE codearticle='0120238100';
DELETE FROM tb_stock WHERE codearticle='0120238100';
DELETE FROM tb_article WHERE idarticle=2381;
DELETE FROM tb_unite WHERE idunite=3153 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3153) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3153);
COMMIT;

-- IdArticle=3173 , Designation=CONTRE TOUT PIECE , Unite=PIECE , IdUnite=4169 , CodeArticle=0140317300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3173 AND idunite=4169;
DELETE FROM tb_log_stock WHERE codearticle='0140317300';
DELETE FROM tb_inventaire WHERE codearticle='0140317300';
DELETE FROM tb_stock WHERE codearticle='0140317300';
DELETE FROM tb_article WHERE idarticle=3173;
DELETE FROM tb_unite WHERE idunite=4169 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4169) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4169);
COMMIT;

-- IdArticle=2639 , Designation=COOKIES  BE , Unite=SACHET , IdUnite=3479 , CodeArticle=0050263900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2639 AND idunite=3479;
DELETE FROM tb_log_stock WHERE codearticle='0050263900';
DELETE FROM tb_inventaire WHERE codearticle='0050263900';
DELETE FROM tb_stock WHERE codearticle='0050263900';
DELETE FROM tb_article WHERE idarticle=2639;
DELETE FROM tb_unite WHERE idunite=3479 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3479) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3479);
COMMIT;

-- IdArticle=3121 , Designation=CORN PUFF , Unite=SACHET , IdUnite=4105 , CodeArticle=0040312100
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3121 AND idunite=4105;
DELETE FROM tb_log_stock WHERE codearticle='0040312100';
DELETE FROM tb_inventaire WHERE codearticle='0040312100';
DELETE FROM tb_stock WHERE codearticle='0040312100';
DELETE FROM tb_article WHERE idarticle=3121;
DELETE FROM tb_unite WHERE idunite=4105 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4105) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4105);
COMMIT;

-- IdArticle=4231 , Designation=CORNIERE DE 100 SARAH V , Unite=BARRE , IdUnite=5829 , CodeArticle=0130423100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4231 AND idunite=5829;
DELETE FROM tb_log_stock WHERE codearticle='0130423100';
DELETE FROM tb_inventaire WHERE codearticle='0130423100';
DELETE FROM tb_stock WHERE codearticle='0130423100';
DELETE FROM tb_article WHERE idarticle=4231;
DELETE FROM tb_unite WHERE idunite=5829 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5829) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5829);
COMMIT;

-- IdArticle=2867 , Designation=COUCHE PAMPERS , Unite=PIECE , IdUnite=3787 , CodeArticle=0150286700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2867 AND idunite=3787;
DELETE FROM tb_log_stock WHERE codearticle='0150286700';
DELETE FROM tb_inventaire WHERE codearticle='0150286700';
DELETE FROM tb_stock WHERE codearticle='0150286700';
DELETE FROM tb_article WHERE idarticle=2867;
DELETE FROM tb_unite WHERE idunite=3787 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3787) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3787);
COMMIT;

-- IdArticle=4042 , Designation=CRAYON DE BOIS , Unite=PIECE , IdUnite=5491 , CodeArticle=0030404200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4042 AND idunite=5491;
DELETE FROM tb_log_stock WHERE codearticle='0030404200';
DELETE FROM tb_inventaire WHERE codearticle='0030404200';
DELETE FROM tb_stock WHERE codearticle='0030404200';
DELETE FROM tb_article WHERE idarticle=4042;
DELETE FROM tb_unite WHERE idunite=5491 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5491) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5491);
COMMIT;

-- IdArticle=3922 , Designation=CREAM WAFER OYE BISCUITS , Unite=BOITE , IdUnite=5271 , CodeArticle=0040392200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3922 AND idunite=5271;
DELETE FROM tb_log_stock WHERE codearticle='0040392200';
DELETE FROM tb_inventaire WHERE codearticle='0040392200';
DELETE FROM tb_stock WHERE codearticle='0040392200';
DELETE FROM tb_article WHERE idarticle=3922;
DELETE FROM tb_unite WHERE idunite=5271 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5271) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5271);
COMMIT;

-- IdArticle=2679 , Designation=DARBEL CITRON 100CL , Unite=BOUTEILLE , IdUnite=3543 , CodeArticle=0200267900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2679 AND idunite=3543;
DELETE FROM tb_log_stock WHERE codearticle='0200267900';
DELETE FROM tb_inventaire WHERE codearticle='0200267900';
DELETE FROM tb_stock WHERE codearticle='0200267900';
DELETE FROM tb_article WHERE idarticle=2679;
DELETE FROM tb_unite WHERE idunite=3543 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3543) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3543);
COMMIT;

-- IdArticle=2676 , Designation=DARBEL FRAISE100CL , Unite=BOUTEILLE , IdUnite=3537 , CodeArticle=0200267600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2676 AND idunite=3537;
DELETE FROM tb_log_stock WHERE codearticle='0200267600';
DELETE FROM tb_inventaire WHERE codearticle='0200267600';
DELETE FROM tb_stock WHERE codearticle='0200267600';
DELETE FROM tb_article WHERE idarticle=2676;
DELETE FROM tb_unite WHERE idunite=3537 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3537) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3537);
COMMIT;

-- IdArticle=2678 , Designation=DARBEL GRENADINE 100CL , Unite=BOUTEILLE , IdUnite=3541 , CodeArticle=0200267800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2678 AND idunite=3541;
DELETE FROM tb_log_stock WHERE codearticle='0200267800';
DELETE FROM tb_inventaire WHERE codearticle='0200267800';
DELETE FROM tb_stock WHERE codearticle='0200267800';
DELETE FROM tb_article WHERE idarticle=2678;
DELETE FROM tb_unite WHERE idunite=3541 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3541) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3541);
COMMIT;

-- IdArticle=521 , Designation=DARBEL GRENADINE 100CL , Unite=CARTON , IdUnite=672 , CodeArticle=0040052100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=521 AND idunite=672;
DELETE FROM tb_log_stock WHERE codearticle='0040052100';
DELETE FROM tb_inventaire WHERE codearticle='0040052100';
DELETE FROM tb_stock WHERE codearticle='0040052100';
DELETE FROM tb_article WHERE idarticle=521;
DELETE FROM tb_unite WHERE idunite=672 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=672) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=672);
COMMIT;

-- IdArticle=2677 , Designation=DARBEL MENTHE 100CL , Unite=BOUTEILLE , IdUnite=3539 , CodeArticle=0200267700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2677 AND idunite=3539;
DELETE FROM tb_log_stock WHERE codearticle='0200267700';
DELETE FROM tb_inventaire WHERE codearticle='0200267700';
DELETE FROM tb_stock WHERE codearticle='0200267700';
DELETE FROM tb_article WHERE idarticle=2677;
DELETE FROM tb_unite WHERE idunite=3539 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3539) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3539);
COMMIT;

-- IdArticle=3474 , Designation=DARBEL MENTHE 75CL*12 , Unite=BOUTEILLE , IdUnite=4556 , CodeArticle=0200347400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3474 AND idunite=4556;
DELETE FROM tb_log_stock WHERE codearticle='0200347400';
DELETE FROM tb_inventaire WHERE codearticle='0200347400';
DELETE FROM tb_stock WHERE codearticle='0200347400';
DELETE FROM tb_article WHERE idarticle=3474;
DELETE FROM tb_unite WHERE idunite=4556 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4556) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4556);
COMMIT;

-- IdArticle=2680 , Designation=DARBEL ORANGE 100CL , Unite=BOUTEILLE , IdUnite=3545 , CodeArticle=0200268000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2680 AND idunite=3545;
DELETE FROM tb_log_stock WHERE codearticle='0200268000';
DELETE FROM tb_inventaire WHERE codearticle='0200268000';
DELETE FROM tb_stock WHERE codearticle='0200268000';
DELETE FROM tb_article WHERE idarticle=2680;
DELETE FROM tb_unite WHERE idunite=3545 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3545) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3545);
COMMIT;

-- IdArticle=2653 , Designation=DELICE LAIT 1KG , Unite=SACHET , IdUnite=3499 , CodeArticle=0040265300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2653 AND idunite=3499;
DELETE FROM tb_log_stock WHERE codearticle='0040265300';
DELETE FROM tb_inventaire WHERE codearticle='0040265300';
DELETE FROM tb_stock WHERE codearticle='0040265300';
DELETE FROM tb_article WHERE idarticle=2653;
DELETE FROM tb_unite WHERE idunite=3499 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3499) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3499);
COMMIT;

-- IdArticle=3027 , Designation=DELICE LAIT 20G , Unite=SACHET , IdUnite=3963 , CodeArticle=0040302700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3027 AND idunite=3963;
DELETE FROM tb_log_stock WHERE codearticle='0040302700';
DELETE FROM tb_inventaire WHERE codearticle='0040302700';
DELETE FROM tb_stock WHERE codearticle='0040302700';
DELETE FROM tb_article WHERE idarticle=3027;
DELETE FROM tb_unite WHERE idunite=3963 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3963) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3963);
COMMIT;

-- IdArticle=3028 , Designation=DELICE LAIT 250G , Unite=SACHE T , IdUnite=3965 , CodeArticle=0040302800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3028 AND idunite=3965;
DELETE FROM tb_log_stock WHERE codearticle='0040302800';
DELETE FROM tb_inventaire WHERE codearticle='0040302800';
DELETE FROM tb_stock WHERE codearticle='0040302800';
DELETE FROM tb_article WHERE idarticle=3028;
DELETE FROM tb_unite WHERE idunite=3965 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3965) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3965);
COMMIT;

-- IdArticle=2652 , Designation=DELICE LAIT 500G , Unite=SACHET , IdUnite=3497 , CodeArticle=0040265200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2652 AND idunite=3497;
DELETE FROM tb_log_stock WHERE codearticle='0040265200';
DELETE FROM tb_inventaire WHERE codearticle='0040265200';
DELETE FROM tb_stock WHERE codearticle='0040265200';
DELETE FROM tb_article WHERE idarticle=2652;
DELETE FROM tb_unite WHERE idunite=3497 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3497) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3497);
COMMIT;

-- IdArticle=3846 , Designation=DINOSAUR BUBLE GUM , Unite=BOCAL , IdUnite=5131 , CodeArticle=0140384600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3846 AND idunite=5131;
DELETE FROM tb_log_stock WHERE codearticle='0140384600';
DELETE FROM tb_inventaire WHERE codearticle='0140384600';
DELETE FROM tb_stock WHERE codearticle='0140384600';
DELETE FROM tb_article WHERE idarticle=3846;
DELETE FROM tb_unite WHERE idunite=5131 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5131) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5131);
COMMIT;

-- IdArticle=4228 , Designation=DISQUE MEL SARAH V pqt de 10pcs , Unite=PACQUET , IdUnite=5826 , CodeArticle=0130422800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4228 AND idunite=5826;
DELETE FROM tb_log_stock WHERE codearticle='0130422800';
DELETE FROM tb_inventaire WHERE codearticle='0130422800';
DELETE FROM tb_stock WHERE codearticle='0130422800';
DELETE FROM tb_article WHERE idarticle=4228;
DELETE FROM tb_unite WHERE idunite=5826 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5826) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5826);
COMMIT;

-- IdArticle=4169 , Designation=DISQUE MEL SARAH V PQT DE 15PCS , Unite=PACQUET , IdUnite=5722 , CodeArticle=0130416900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4169 AND idunite=5722;
DELETE FROM tb_log_stock WHERE codearticle='0130416900';
DELETE FROM tb_inventaire WHERE codearticle='0130416900';
DELETE FROM tb_stock WHERE codearticle='0130416900';
DELETE FROM tb_article WHERE idarticle=4169;
DELETE FROM tb_unite WHERE idunite=5722 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5722) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5722);
COMMIT;

-- IdArticle=2348 , Designation=DR CONFORT COUCHE ADULTE 6 X L10 , Unite=PIECE , IdUnite=3096 , CodeArticle=0150234800
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2348 AND idunite=3096;
DELETE FROM tb_log_stock WHERE codearticle='0150234800';
DELETE FROM tb_inventaire WHERE codearticle='0150234800';
DELETE FROM tb_stock WHERE codearticle='0150234800';
DELETE FROM tb_article WHERE idarticle=2348;
DELETE FROM tb_unite WHERE idunite=3096 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3096) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3096);
COMMIT;

-- IdArticle=4178 , Designation=DULIENTE NITRO 416 SARAH V , Unite=BOUTEIL , IdUnite=5731 , CodeArticle=0130417800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4178 AND idunite=5731;
DELETE FROM tb_log_stock WHERE codearticle='0130417800';
DELETE FROM tb_inventaire WHERE codearticle='0130417800';
DELETE FROM tb_stock WHERE codearticle='0130417800';
DELETE FROM tb_article WHERE idarticle=4178;
DELETE FROM tb_unite WHERE idunite=5731 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5731) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5731);
COMMIT;

-- IdArticle=4224 , Designation=DURCISSEUR Chromate de zinc PM SARAH V , Unite=BOITE , IdUnite=5820 , CodeArticle=0130422400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4224 AND idunite=5820;
DELETE FROM tb_log_stock WHERE codearticle='0130422400';
DELETE FROM tb_inventaire WHERE codearticle='0130422400';
DELETE FROM tb_stock WHERE codearticle='0130422400';
DELETE FROM tb_article WHERE idarticle=4224;
DELETE FROM tb_unite WHERE idunite=5820 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5820) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5820);
COMMIT;

-- IdArticle=4623 , Designation=DURCISSEUR PEINTURE EPOXY PREMIERE SARAH V , Unite=BOITE , IdUnite=6518 , CodeArticle=0130462300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4623 AND idunite=6518;
DELETE FROM tb_log_stock WHERE codearticle='0130462300';
DELETE FROM tb_inventaire WHERE codearticle='0130462300';
DELETE FROM tb_stock WHERE codearticle='0130462300';
DELETE FROM tb_article WHERE idarticle=4623;
DELETE FROM tb_unite WHERE idunite=6518 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6518) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6518);
COMMIT;

-- IdArticle=4624 , Designation=DURCISSEUR PEINTURE EPOXY PREMIERE SARAH V , Unite=BOITE , IdUnite=6519 , CodeArticle=0130462400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4624 AND idunite=6519;
DELETE FROM tb_log_stock WHERE codearticle='0130462400';
DELETE FROM tb_inventaire WHERE codearticle='0130462400';
DELETE FROM tb_stock WHERE codearticle='0130462400';
DELETE FROM tb_article WHERE idarticle=4624;
DELETE FROM tb_unite WHERE idunite=6519 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=6519) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=6519);
COMMIT;

-- IdArticle=2055 , Designation=ECRAN PLAT 32" , Unite=PIECE , IdUnite=2751 , CodeArticle=0320205500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2055 AND idunite=2751;
DELETE FROM tb_log_stock WHERE codearticle='0320205500';
DELETE FROM tb_inventaire WHERE codearticle='0320205500';
DELETE FROM tb_stock WHERE codearticle='0320205500';
DELETE FROM tb_article WHERE idarticle=2055;
DELETE FROM tb_unite WHERE idunite=2751 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2751) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2751);
COMMIT;

-- IdArticle=2054 , Designation=ECRAN PLAT 46" , Unite=PIECE , IdUnite=2750 , CodeArticle=0320205400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2054 AND idunite=2750;
DELETE FROM tb_log_stock WHERE codearticle='0320205400';
DELETE FROM tb_inventaire WHERE codearticle='0320205400';
DELETE FROM tb_stock WHERE codearticle='0320205400';
DELETE FROM tb_article WHERE idarticle=2054;
DELETE FROM tb_unite WHERE idunite=2750 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2750) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2750);
COMMIT;

-- IdArticle=2053 , Designation=ECRAN PLAT 55" , Unite=PIECE , IdUnite=2749 , CodeArticle=0320205300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2053 AND idunite=2749;
DELETE FROM tb_log_stock WHERE codearticle='0320205300';
DELETE FROM tb_inventaire WHERE codearticle='0320205300';
DELETE FROM tb_stock WHERE codearticle='0320205300';
DELETE FROM tb_article WHERE idarticle=2053;
DELETE FROM tb_unite WHERE idunite=2749 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2749) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2749);
COMMIT;

-- IdArticle=1857 , Designation=ESSUIE TOUT PASTEL , Unite=PACQUET , IdUnite=2491 , CodeArticle=0030185700
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1857 AND idunite=2491;
DELETE FROM tb_log_stock WHERE codearticle='0030185700';
DELETE FROM tb_inventaire WHERE codearticle='0030185700';
DELETE FROM tb_stock WHERE codearticle='0030185700';
DELETE FROM tb_article WHERE idarticle=1857;
DELETE FROM tb_unite WHERE idunite=2491 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2491) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2491);
COMMIT;

-- IdArticle=3149 , Designation=EXTRA PROPRE , Unite=PIECE , IdUnite=4141 , CodeArticle=0030314900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3149 AND idunite=4141;
DELETE FROM tb_log_stock WHERE codearticle='0030314900';
DELETE FROM tb_inventaire WHERE codearticle='0030314900';
DELETE FROM tb_stock WHERE codearticle='0030314900';
DELETE FROM tb_article WHERE idarticle=3149;
DELETE FROM tb_unite WHERE idunite=4141 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4141) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4141);
COMMIT;

-- IdArticle=3993 , Designation=EXTRA PROPRE , Unite=PIECE , IdUnite=5390 , CodeArticle=0350399300
-- Pre-check counts: tb_prix=2, tb_log_stock=7, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3993 AND idunite=5390;
DELETE FROM tb_log_stock WHERE codearticle='0350399300';
DELETE FROM tb_inventaire WHERE codearticle='0350399300';
DELETE FROM tb_stock WHERE codearticle='0350399300';
DELETE FROM tb_article WHERE idarticle=3993;
DELETE FROM tb_unite WHERE idunite=5390 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5390) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5390);
COMMIT;

-- IdArticle=2733 , Designation=FAMAFA 1003 TSOTRA , Unite=PIECE , IdUnite=3631 , CodeArticle=0030273300
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2733 AND idunite=3631;
DELETE FROM tb_log_stock WHERE codearticle='0030273300';
DELETE FROM tb_inventaire WHERE codearticle='0030273300';
DELETE FROM tb_stock WHERE codearticle='0030273300';
DELETE FROM tb_article WHERE idarticle=2733;
DELETE FROM tb_unite WHERE idunite=3631 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3631) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3631);
COMMIT;

-- IdArticle=2734 , Designation=FAMAFA 907 MANCHE BLANC , Unite=PIECE , IdUnite=3633 , CodeArticle=0030273400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2734 AND idunite=3633;
DELETE FROM tb_log_stock WHERE codearticle='0030273400';
DELETE FROM tb_inventaire WHERE codearticle='0030273400';
DELETE FROM tb_stock WHERE codearticle='0030273400';
DELETE FROM tb_article WHERE idarticle=2734;
DELETE FROM tb_unite WHERE idunite=3633 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3633) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3633);
COMMIT;

-- IdArticle=2359 , Designation=FAMAFA B11 , Unite=PIECE , IdUnite=3118 , CodeArticle=0030235900
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2359 AND idunite=3118;
DELETE FROM tb_log_stock WHERE codearticle='0030235900';
DELETE FROM tb_inventaire WHERE codearticle='0030235900';
DELETE FROM tb_stock WHERE codearticle='0030235900';
DELETE FROM tb_article WHERE idarticle=2359;
DELETE FROM tb_unite WHERE idunite=3118 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3118) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3118);
COMMIT;

-- IdArticle=3780 , Designation=FAMAFA RASTA 300G , Unite=PIECE , IdUnite=5027 , CodeArticle=0030378000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3780 AND idunite=5027;
DELETE FROM tb_log_stock WHERE codearticle='0030378000';
DELETE FROM tb_inventaire WHERE codearticle='0030378000';
DELETE FROM tb_stock WHERE codearticle='0030378000';
DELETE FROM tb_article WHERE idarticle=3780;
DELETE FROM tb_unite WHERE idunite=5027 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5027) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5027);
COMMIT;

-- IdArticle=2340 , Designation=FANORONA MAR P39 , Unite=PAIRE , IdUnite=3088 , CodeArticle=0070234000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2340 AND idunite=3088;
DELETE FROM tb_log_stock WHERE codearticle='0070234000';
DELETE FROM tb_inventaire WHERE codearticle='0070234000';
DELETE FROM tb_stock WHERE codearticle='0070234000';
DELETE FROM tb_article WHERE idarticle=2340;
DELETE FROM tb_unite WHERE idunite=3088 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3088) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3088);
COMMIT;

-- IdArticle=2341 , Designation=FANORONA MAR P40 , Unite=PAIRE , IdUnite=3089 , CodeArticle=0070234100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2341 AND idunite=3089;
DELETE FROM tb_log_stock WHERE codearticle='0070234100';
DELETE FROM tb_inventaire WHERE codearticle='0070234100';
DELETE FROM tb_stock WHERE codearticle='0070234100';
DELETE FROM tb_article WHERE idarticle=2341;
DELETE FROM tb_unite WHERE idunite=3089 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3089) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3089);
COMMIT;

-- IdArticle=2342 , Designation=FANORONA MAR P41 , Unite=PAIRE , IdUnite=3090 , CodeArticle=0070234200
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2342 AND idunite=3090;
DELETE FROM tb_log_stock WHERE codearticle='0070234200';
DELETE FROM tb_inventaire WHERE codearticle='0070234200';
DELETE FROM tb_stock WHERE codearticle='0070234200';
DELETE FROM tb_article WHERE idarticle=2342;
DELETE FROM tb_unite WHERE idunite=3090 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3090) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3090);
COMMIT;

-- IdArticle=2343 , Designation=FANORONA MAR P42 , Unite=PAIRE , IdUnite=3091 , CodeArticle=0070234300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2343 AND idunite=3091;
DELETE FROM tb_log_stock WHERE codearticle='0070234300';
DELETE FROM tb_inventaire WHERE codearticle='0070234300';
DELETE FROM tb_stock WHERE codearticle='0070234300';
DELETE FROM tb_article WHERE idarticle=2343;
DELETE FROM tb_unite WHERE idunite=3091 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3091) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3091);
COMMIT;

-- IdArticle=2344 , Designation=FANORONA MAR P43 , Unite=PAIRE , IdUnite=3092 , CodeArticle=0070234400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2344 AND idunite=3092;
DELETE FROM tb_log_stock WHERE codearticle='0070234400';
DELETE FROM tb_inventaire WHERE codearticle='0070234400';
DELETE FROM tb_stock WHERE codearticle='0070234400';
DELETE FROM tb_article WHERE idarticle=2344;
DELETE FROM tb_unite WHERE idunite=3092 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3092) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3092);
COMMIT;

-- IdArticle=3665 , Designation=FARINE MAGNEVA 50KG , Unite=SAC , IdUnite=4836 , CodeArticle=0360366500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3665 AND idunite=4836;
DELETE FROM tb_log_stock WHERE codearticle='0360366500';
DELETE FROM tb_inventaire WHERE codearticle='0360366500';
DELETE FROM tb_stock WHERE codearticle='0360366500';
DELETE FROM tb_article WHERE idarticle=3665;
DELETE FROM tb_unite WHERE idunite=4836 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4836) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4836);
COMMIT;

-- IdArticle=3867 , Designation=FARINE MAHERY 50KG , Unite=SAC , IdUnite=5174 , CodeArticle=0360386700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3867 AND idunite=5174;
DELETE FROM tb_log_stock WHERE codearticle='0360386700';
DELETE FROM tb_inventaire WHERE codearticle='0360386700';
DELETE FROM tb_stock WHERE codearticle='0360386700';
DELETE FROM tb_article WHERE idarticle=3867;
DELETE FROM tb_unite WHERE idunite=5174 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5174) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5174);
COMMIT;

-- IdArticle=3736 , Designation=FILTRE A HUILE , Unite=PIECE , IdUnite=4950 , CodeArticle=0030373600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3736 AND idunite=4950;
DELETE FROM tb_log_stock WHERE codearticle='0030373600';
DELETE FROM tb_inventaire WHERE codearticle='0030373600';
DELETE FROM tb_stock WHERE codearticle='0030373600';
DELETE FROM tb_article WHERE idarticle=3736;
DELETE FROM tb_unite WHERE idunite=4950 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4950) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4950);
COMMIT;

-- IdArticle=3737 , Designation=FILTRE GASOIL , Unite=PIECE , IdUnite=4951 , CodeArticle=0030373700
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3737 AND idunite=4951;
DELETE FROM tb_log_stock WHERE codearticle='0030373700';
DELETE FROM tb_inventaire WHERE codearticle='0030373700';
DELETE FROM tb_stock WHERE codearticle='0030373700';
DELETE FROM tb_article WHERE idarticle=3737;
DELETE FROM tb_unite WHERE idunite=4951 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4951) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4951);
COMMIT;

-- IdArticle=3760 , Designation=FINGER PACIFIER 5G , Unite=PAQUET , IdUnite=4989 , CodeArticle=0140376000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3760 AND idunite=4989;
DELETE FROM tb_log_stock WHERE codearticle='0140376000';
DELETE FROM tb_inventaire WHERE codearticle='0140376000';
DELETE FROM tb_stock WHERE codearticle='0140376000';
DELETE FROM tb_article WHERE idarticle=3760;
DELETE FROM tb_unite WHERE idunite=4989 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4989) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4989);
COMMIT;

-- IdArticle=2345 , Designation=FLASK GM TRAPPE 1100/1200 R20 , Unite=PIECE , IdUnite=3093 , CodeArticle=0030234500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2345 AND idunite=3093;
DELETE FROM tb_log_stock WHERE codearticle='0030234500';
DELETE FROM tb_inventaire WHERE codearticle='0030234500';
DELETE FROM tb_stock WHERE codearticle='0030234500';
DELETE FROM tb_article WHERE idarticle=2345;
DELETE FROM tb_unite WHERE idunite=3093 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3093) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3093);
COMMIT;

-- IdArticle=2346 , Designation=FLASK PM TRAPPE (750/700 - 650-16) , Unite=PIECE , IdUnite=3094 , CodeArticle=0030234600
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2346 AND idunite=3094;
DELETE FROM tb_log_stock WHERE codearticle='0030234600';
DELETE FROM tb_inventaire WHERE codearticle='0030234600';
DELETE FROM tb_stock WHERE codearticle='0030234600';
DELETE FROM tb_article WHERE idarticle=2346;
DELETE FROM tb_unite WHERE idunite=3094 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3094) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3094);
COMMIT;

-- IdArticle=4115 , Designation=FORTUNE COCONUT 1L , Unite=BOUTEILLE , IdUnite=5620 , CodeArticle=0040411500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4115 AND idunite=5620;
DELETE FROM tb_log_stock WHERE codearticle='0040411500';
DELETE FROM tb_inventaire WHERE codearticle='0040411500';
DELETE FROM tb_stock WHERE codearticle='0040411500';
DELETE FROM tb_article WHERE idarticle=4115;
DELETE FROM tb_unite WHERE idunite=5620 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5620) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5620);
COMMIT;

-- IdArticle=4114 , Designation=FORTUNE VANILLA 1L , Unite=BOUTEILLE , IdUnite=5618 , CodeArticle=0040411400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4114 AND idunite=5618;
DELETE FROM tb_log_stock WHERE codearticle='0040411400';
DELETE FROM tb_inventaire WHERE codearticle='0040411400';
DELETE FROM tb_stock WHERE codearticle='0040411400';
DELETE FROM tb_article WHERE idarticle=4114;
DELETE FROM tb_unite WHERE idunite=5618 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5618) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5618);
COMMIT;

-- IdArticle=2610 , Designation=FROMAGE LAND'OR 08 , Unite=BOITE , IdUnite=3433 , CodeArticle=0040261000
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2610 AND idunite=3433;
DELETE FROM tb_log_stock WHERE codearticle='0040261000';
DELETE FROM tb_inventaire WHERE codearticle='0040261000';
DELETE FROM tb_stock WHERE codearticle='0040261000';
DELETE FROM tb_article WHERE idarticle=2610;
DELETE FROM tb_unite WHERE idunite=3433 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3433) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3433);
COMMIT;

-- IdArticle=2349 , Designation=GASOIL  200L , Unite=LITRE , IdUnite=3099 , CodeArticle=0340234900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2349 AND idunite=3099;
DELETE FROM tb_log_stock WHERE codearticle='0340234900';
DELETE FROM tb_inventaire WHERE codearticle='0340234900';
DELETE FROM tb_stock WHERE codearticle='0340234900';
DELETE FROM tb_article WHERE idarticle=2349;
DELETE FROM tb_unite WHERE idunite=3099 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3099) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3099);
COMMIT;

-- IdArticle=3532 , Designation=GLOBAL CRACKER TUB RANCH 227G , Unite=BOITE , IdUnite=4650 , CodeArticle=0050353200
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3532 AND idunite=4650;
DELETE FROM tb_log_stock WHERE codearticle='0050353200';
DELETE FROM tb_inventaire WHERE codearticle='0050353200';
DELETE FROM tb_stock WHERE codearticle='0050353200';
DELETE FROM tb_article WHERE idarticle=3532;
DELETE FROM tb_unite WHERE idunite=4650 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4650) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4650);
COMMIT;

-- IdArticle=3534 , Designation=GLOBAL CRACKER TUB SALTED 227G , Unite=BOITE , IdUnite=4653 , CodeArticle=0050353400
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3534 AND idunite=4653;
DELETE FROM tb_log_stock WHERE codearticle='0050353400';
DELETE FROM tb_inventaire WHERE codearticle='0050353400';
DELETE FROM tb_stock WHERE codearticle='0050353400';
DELETE FROM tb_article WHERE idarticle=3534;
DELETE FROM tb_unite WHERE idunite=4653 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4653) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4653);
COMMIT;

-- IdArticle=1944 , Designation=GLUCOSE GALAXY , Unite=SACHET , IdUnite=2602 , CodeArticle=0050194400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1944 AND idunite=2602;
DELETE FROM tb_log_stock WHERE codearticle='0050194400';
DELETE FROM tb_inventaire WHERE codearticle='0050194400';
DELETE FROM tb_stock WHERE codearticle='0050194400';
DELETE FROM tb_article WHERE idarticle=1944;
DELETE FROM tb_unite WHERE idunite=2602 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2602) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2602);
COMMIT;

-- IdArticle=663 , Designation=GLUCOSE PM , Unite=PIECE , IdUnite=839 , CodeArticle=0030066300
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=663 AND idunite=839;
DELETE FROM tb_log_stock WHERE codearticle='0030066300';
DELETE FROM tb_inventaire WHERE codearticle='0030066300';
DELETE FROM tb_stock WHERE codearticle='0030066300';
DELETE FROM tb_article WHERE idarticle=663;
DELETE FROM tb_unite WHERE idunite=839 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=839) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=839);
COMMIT;

-- IdArticle=664 , Designation=GLUCOSE PM , Unite=PIECE , IdUnite=842 , CodeArticle=0030066400
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=664 AND idunite=842;
DELETE FROM tb_log_stock WHERE codearticle='0030066400';
DELETE FROM tb_inventaire WHERE codearticle='0030066400';
DELETE FROM tb_stock WHERE codearticle='0030066400';
DELETE FROM tb_article WHERE idarticle=664;
DELETE FROM tb_unite WHERE idunite=842 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=842) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=842);
COMMIT;

-- IdArticle=665 , Designation=GLUCOSE PM , Unite=PIECE , IdUnite=844 , CodeArticle=0030066500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=665 AND idunite=844;
DELETE FROM tb_log_stock WHERE codearticle='0030066500';
DELETE FROM tb_inventaire WHERE codearticle='0030066500';
DELETE FROM tb_stock WHERE codearticle='0030066500';
DELETE FROM tb_article WHERE idarticle=665;
DELETE FROM tb_unite WHERE idunite=844 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=844) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=844);
COMMIT;

-- IdArticle=3543 , Designation=GLUCOSE PM , Unite=PIECE , IdUnite=4668 , CodeArticle=0050354300
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3543 AND idunite=4668;
DELETE FROM tb_log_stock WHERE codearticle='0050354300';
DELETE FROM tb_inventaire WHERE codearticle='0050354300';
DELETE FROM tb_stock WHERE codearticle='0050354300';
DELETE FROM tb_article WHERE idarticle=3543;
DELETE FROM tb_unite WHERE idunite=4668 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4668) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4668);
COMMIT;

-- IdArticle=3835 , Designation=GLUCOSE PM , Unite=PIECE , IdUnite=5115 , CodeArticle=0050383500
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3835 AND idunite=5115;
DELETE FROM tb_log_stock WHERE codearticle='0050383500';
DELETE FROM tb_inventaire WHERE codearticle='0050383500';
DELETE FROM tb_stock WHERE codearticle='0050383500';
DELETE FROM tb_article WHERE idarticle=3835;
DELETE FROM tb_unite WHERE idunite=5115 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5115) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5115);
COMMIT;

-- IdArticle=3825 , Designation=GLUCOSE PM [ ASSORTED ] , Unite=SACHET , IdUnite=5096 , CodeArticle=0050382500
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3825 AND idunite=5096;
DELETE FROM tb_log_stock WHERE codearticle='0050382500';
DELETE FROM tb_inventaire WHERE codearticle='0050382500';
DELETE FROM tb_stock WHERE codearticle='0050382500';
DELETE FROM tb_article WHERE idarticle=3825;
DELETE FROM tb_unite WHERE idunite=5096 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5096) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5096);
COMMIT;

-- IdArticle=4006 , Designation=GOFRETTE SWISS WAFER , Unite=PIECE , IdUnite=5416 , CodeArticle=0040400600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=4006 AND idunite=5416;
DELETE FROM tb_log_stock WHERE codearticle='0040400600';
DELETE FROM tb_inventaire WHERE codearticle='0040400600';
DELETE FROM tb_stock WHERE codearticle='0040400600';
DELETE FROM tb_article WHERE idarticle=4006;
DELETE FROM tb_unite WHERE idunite=5416 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=5416) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=5416);
COMMIT;

-- IdArticle=2636 , Designation=GOLDEN COIN CHOCOLAT CAR , Unite=BOITE , IdUnite=3475 , CodeArticle=0080263600
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=2636 AND idunite=3475;
DELETE FROM tb_log_stock WHERE codearticle='0080263600';
DELETE FROM tb_inventaire WHERE codearticle='0080263600';
DELETE FROM tb_stock WHERE codearticle='0080263600';
DELETE FROM tb_article WHERE idarticle=2636;
DELETE FROM tb_unite WHERE idunite=3475 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3475) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3475);
COMMIT;

-- IdArticle=670 , Designation=GOLDEN COIN CHOCOLAT CAR , Unite=CARTON , IdUnite=851 , CodeArticle=0130067000
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=670 AND idunite=851;
DELETE FROM tb_log_stock WHERE codearticle='0130067000';
DELETE FROM tb_inventaire WHERE codearticle='0130067000';
DELETE FROM tb_stock WHERE codearticle='0130067000';
DELETE FROM tb_article WHERE idarticle=670;
DELETE FROM tb_unite WHERE idunite=851 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=851) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=851);
COMMIT;

-- IdArticle=3428 , Designation=GOMAS MASCAR , Unite=PACQUET , IdUnite=4488 , CodeArticle=0140342800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3428 AND idunite=4488;
DELETE FROM tb_log_stock WHERE codearticle='0140342800';
DELETE FROM tb_inventaire WHERE codearticle='0140342800';
DELETE FROM tb_stock WHERE codearticle='0140342800';
DELETE FROM tb_article WHERE idarticle=3428;
DELETE FROM tb_unite WHERE idunite=4488 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=4488) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=4488);
COMMIT;

-- IdArticle=3048 , Designation=GOUTY BISCUIT COMPLET , Unite=SACHET , IdUnite=3993 , CodeArticle=0050304800
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3048 AND idunite=3993;
DELETE FROM tb_log_stock WHERE codearticle='0050304800';
DELETE FROM tb_inventaire WHERE codearticle='0050304800';
DELETE FROM tb_stock WHERE codearticle='0050304800';
DELETE FROM tb_article WHERE idarticle=3048;
DELETE FROM tb_unite WHERE idunite=3993 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3993) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3993);
COMMIT;

-- IdArticle=678 , Designation=GOUTY BISCUIT COMPLET EN PIECE , Unite=PIECE , IdUnite=859 , CodeArticle=0130067800
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=678 AND idunite=859;
DELETE FROM tb_log_stock WHERE codearticle='0130067800';
DELETE FROM tb_inventaire WHERE codearticle='0130067800';
DELETE FROM tb_stock WHERE codearticle='0130067800';
DELETE FROM tb_article WHERE idarticle=678;
DELETE FROM tb_unite WHERE idunite=859 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=859) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=859);
COMMIT;

-- IdArticle=3051 , Designation=GOUTY BISCUIT COMPLET EN PIECE , Unite=PIECE , IdUnite=3997 , CodeArticle=0040305100
-- Pre-check counts: tb_prix=1, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3051 AND idunite=3997;
DELETE FROM tb_log_stock WHERE codearticle='0040305100';
DELETE FROM tb_inventaire WHERE codearticle='0040305100';
DELETE FROM tb_stock WHERE codearticle='0040305100';
DELETE FROM tb_article WHERE idarticle=3051;
DELETE FROM tb_unite WHERE idunite=3997 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3997) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3997);
COMMIT;

-- IdArticle=1849 , Designation=GOUTY COOKIES , Unite=SACHET , IdUnite=2475 , CodeArticle=0050184900
-- Pre-check counts: tb_prix=2, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=1849 AND idunite=2475;
DELETE FROM tb_log_stock WHERE codearticle='0050184900';
DELETE FROM tb_inventaire WHERE codearticle='0050184900';
DELETE FROM tb_stock WHERE codearticle='0050184900';
DELETE FROM tb_article WHERE idarticle=1849;
DELETE FROM tb_unite WHERE idunite=2475 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=2475) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=2475);
COMMIT;

-- IdArticle=3026 , Designation=GOUTY PETITS SABLES , Unite=PIECE , IdUnite=3960 , CodeArticle=0050302600
-- Pre-check counts: tb_prix=3, tb_log_stock=3, tb_inventaire=3, tb_stock=3, tb_article=1
BEGIN;
DELETE FROM tb_prix WHERE idarticle=3026 AND idunite=3960;
DELETE FROM tb_log_stock WHERE codearticle='0050302600';
DELETE FROM tb_inventaire WHERE codearticle='0050302600';
DELETE FROM tb_stock WHERE codearticle='0050302600';
DELETE FROM tb_article WHERE idarticle=3026;
DELETE FROM tb_unite WHERE idunite=3960 AND NOT EXISTS (SELECT 1 FROM tb_prix WHERE idunite=3960) AND NOT EXISTS (SELECT 1 FROM tb_article WHERE idunite=3960);
COMMIT;
