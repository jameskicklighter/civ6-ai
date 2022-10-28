-- GameData1
-- Author: Item Diversity
-- DateCreated: 7/8/2022 5:51:56 PM
--------------------------------------------------------------

---=========================================================--
--------------------------------------------------------------
-- AiListTypes
INSERT INTO AiListTypes (ListType) VALUES
('SimpleAI_MajorDistricts'),
('SimpleAI_MajorBuildings'),
('SimpleAI_MajorCivics'),
('SimpleAI_MinorBuildings'),

('SimpleAI_FavorUnique_Acropolis'),
('SimpleAI_FavorUnique_Bath'),
('SimpleAI_FavorUnique_Cothon'),
('SimpleAI_FavorUnique_Hansa'),
('SimpleAI_FavorUnique_Hippodrome'),
('SimpleAI_FavorUnique_Ikanda'),
('SimpleAI_FavorUnique_Lavra'),
('SimpleAI_FavorUnique_Mbanza'),
('SimpleAI_FavorUnique_Observatory'),
('SimpleAI_FavorUnique_Oppidum'),
('SimpleAI_FavorUnique_RoyalNavyDockyard'),
('SimpleAI_FavorUnique_Seowon'),
('SimpleAI_FavorUnique_Suguba'),
('SimpleAI_FavorUnique_Thanh'),

('SimpleAI_ScienceDistricts'),
('SimpleAI_ScienceYields'),
--('SimpleAI_SciencePseudoYields'),

('SimpleAI_CultureDistricts'),
('SimpleAI_CultureYields'),
--('SimpleAI_CulturePseudoYields'),

('SimpleAI_ReligiousDistricts'),
('SimpleAI_ReligiousYields'),
('SimpleAI_ReligiousPseudoYields'),
('SimpleAI_ReligiousTechs'),

('SimpleAI_FavorUnique_Ordu'),
('SimpleAI_FavorUnique_BasilikoiPaides');
--------------------------------------------------------------
---=========================================================--


---=========================================================--
--------------------------------------------------------------
-- LeaderTraits

-- Scientific
DELETE FROM LeaderTraits WHERE TraitType = 'TRAIT_LEADER_SCIENCE_MAJOR_CIV' AND LeaderType IN 
('LEADER_AMANITORE', 'LEADER_GILGAMESH', 'LEADER_JOHN_CURTIN', 'LEADER_PACHACUTI');
INSERT INTO LeaderTraits (LeaderType, TraitType) VALUES
('LEADER_SALADIN', 'TRAIT_LEADER_SCIENCE_MAJOR_CIV');

-- Cultural
DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI' AND TraitType = 'TRAIT_LEADER_CULTURAL_MAJOR_CIV';

INSERT INTO LeaderTraits (LeaderType, TraitType) VALUES
('LEADER_HOJO', 'TRAIT_LEADER_CULTURAL_MAJOR_CIV');

-- Religious
DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_SALADIN' AND TraitType = 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'; -- Don't focus on it early.

INSERT INTO LeaderTraits (LeaderType, TraitType) VALUES
('LEADER_BASIL', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'),
('LEADER_GITARJA', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'),
('LEADER_MENELIK', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV');

DELETE FROM LeaderTraits WHERE TraitType = 'TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV'; -- Why is only Teddy here?

INSERT INTO LeaderTraits (LeaderType, TraitType) VALUES
('LEADER_MVEMBA', 'TRAIT_LEADER_NONRELIGIOUS_MAJOR_CIV');

-- Militaristic
INSERT INTO LeaderTraits (LeaderType, TraitType) VALUES
('LEADER_BASIL', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'),
('LEADER_GILGAMESH', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'),
('LEADER_TOMYRIS', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV'),
('LEADER_TRAJAN', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV');

--------------------------------------------------------------
---=========================================================--


---=========================================================--
--------------------------------------------------------------
-- AiLists
INSERT INTO AiLists (ListType, LeaderType, System) VALUES
('SimpleAI_MajorDistricts', 'TRAIT_LEADER_MAJOR_CIV', 'Districts'),
('SimpleAI_MajorDistricts', 'TRAIT_LEADER_MAJOR_CIV', 'Buildings'),
('SimpleAI_MajorDistricts', 'TRAIT_LEADER_MAJOR_CIV', 'Civics'),
('SimpleAI_MajorDistricts', 'MINOR_CIV_DEFAULT_TRAIT', 'Buildings'),

('SimpleAI_FavorUnique_Acropolis', 'TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS', 'Districts'),
('SimpleAI_FavorUnique_Bath', 'TRAIT_CIVILIZATION_DISTRICT_BATH', 'Districts'),
('SimpleAI_FavorUnique_Cothon', 'TRAIT_CIVILIZATION_DISTRICT_COTHON', 'Districts'),
('SimpleAI_FavorUnique_Hansa', 'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'Districts'),
('SimpleAI_FavorUnique_Hippodrome', 'TRAIT_CIVILIZATION_DISTRICT_HIPPODROME', 'Districts'),
('SimpleAI_FavorUnique_Ikanda', 'TRAIT_CIVILIZATION_DISTRICT_IKANDA', 'Districts'),
('SimpleAI_FavorUnique_Lavra', 'TRAIT_CIVILIZATION_DISTRICT_LAVRA', 'Districts'),
('SimpleAI_FavorUnique_Mbanza', 'TRAIT_CIVILIZATION_MBANZA', 'Districts'),
('SimpleAI_FavorUnique_Observatory', 'TRAIT_CIVILIZATION_DISTRICT_OBSERVATORY', 'Districts'),
('SimpleAI_FavorUnique_Oppidum', 'TRAIT_CIVILIZATION_DISTRICT_OPPIDUM', 'Districts'),
('SimpleAI_FavorUnique_RoyalNavyDockyard', 'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Districts'),
('SimpleAI_FavorUnique_Seowon', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'Districts'),
('SimpleAI_FavorUnique_Suguba', 'TRAIT_CIVILIZATION_DISTRICT_SUGUBA', 'Districts'),
('SimpleAI_FavorUnique_Thanh', 'TRAIT_CIVILIZATION_DISTRICT_THANH', 'Districts'), 

('SimpleAI_ScienceDistricts', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Districts'),
('SimpleAI_ScienceYields', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Yields'),
('SimpleAI_CultureDistricts', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Districts'),
('SimpleAI_CultureYields', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Yields'),
('SimpleAI_ReligiousDistricts', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Districts'),
('SimpleAI_ReligiousYields', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Yields'),
('SimpleAI_ReligiousPseudoYields', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'PseudoYields'),
('SimpleAI_ReligiousTechs', 'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV', 'Technologies'),

('SimpleAI_FavorUnique_Ordu', 'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Buildings'),
('SimpleAI_FavorUnique_BasilikoiPaides', 'TRAIT_CIVILIZATION_BUILDING_BASILIKOI_PAIDES', 'Buildings');
--------------------------------------------------------------
---=========================================================--


---=========================================================--
--------------------------------------------------------------
-- AiFavoredItems


-- Districts --
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_CAMPUS';
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_THEATER';
DELETE FROM AiFavoredItems WHERE ListType = 'ScottishEnlightnmentBiases' AND Item IN ('DISTRICT_CAMPUS', 'DISTRICT_INDUSTRIAL_ZONE');
--
INSERT INTO AiFavoredItems (ListType, Item, Favored) VALUES
('SimpleAI_MajorDistricts', 'DISTRICT_INDUSTRIAL_ZONE', 1),
('SimpleAI_MajorDistricts', 'DISTRICT_AQUEDUCT', 1),
('SimpleAI_MajorDistricts', 'DISTRICT_DAM', 1),
('SimpleAI_FavorUnique_Acropolis', 'DISTRICT_BATH', 1),
('SimpleAI_FavorUnique_Cothon', 'DISTRICT_COTHON', 1),
('SimpleAI_FavorUnique_Hansa', 'DISTRICT_HANSA', 1),
('SimpleAI_FavorUnique_Hippodrome', 'DISTRICT_HIPPODROME', 1),
('SimpleAI_FavorUnique_Ikanda', 'DISTRICT_IKANDA', 1),
('SimpleAI_FavorUnique_Lavra', 'DISTRICT_LAVRA', 1),
('SimpleAI_FavorUnique_Mbanza', 'DISTRICT_MBANZA', 1),
('SimpleAI_FavorUnique_Observatory', 'DISTRICT_OBSERVATORY', 1),
('SimpleAI_FavorUnique_Oppidum', 'DISTRICT_OPPIDUM', 1),
('SimpleAI_FavorUnique_RoyalNavyDockyard', 'DISTRICT_ROYAL_NAVY_DOCKYARD', 1),
('SimpleAI_FavorUnique_Seowon', 'DISTRICT_SEOWON', 1),
('SimpleAI_FavorUnique_Suguba', 'DISTRICT_SUGUBA', 1),
('SimpleAI_FavorUnique_Thanh', 'DISTRICT_THANH', 1),
--
('SimpleAI_ScienceDistricts', 'DISTRICT_CAMPUS', 1),
('SimpleAI_CultureDistricts', 'DISTRICT_THEATER', 1),
('SimpleAI_ReligiousDistricts', 'DISTRICT_HOLY_SITE', 1);
--
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'MinorCivDistricts' AND Item = 'DISTRICT_AQUEDUCT';


-- Buildings --
INSERT INTO AiFavoredItems (ListType, Item, Favored) VALUES
('SimpleAI_MajorBuildings', 'BUILDING_WALLS', 1),
('SimpleAI_FavorUnique_Ordu', 'BUILDING_ORDU', 1),
('SimpleAI_FavorUnique_BasilikoiPaides', 'BUILDING_BASILIKOI_PAIDES', 1),
--
('SimpleAI_MinorBuildings', 'BUILDING_WALLS', 1),
('SimpleAI_MinorBuildings', 'BUILDING_CASTLE', 1),
('SimpleAI_MinorBuildings', 'BUILDING_STAR_FORT', 1);


-- Yields & Pseudoyields --
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('DefaultYieldBias', 'YIELD_FOOD', 25), -- Favor early Food.
('DefaultYieldBias', 'YIELD_PRODUCTION', 50), -- Favor early Production.
('ClassicalYields', 'YIELD_SCIENCE', 15), -- Remove absurd Science bias.
('ClassicalYields', 'YIELD_FOOD', 25), -- Up Food bias.
('ClassicalYields', 'YIELD_PRODUCTION', 25), -- Up Production bias.
('CultureVictoryYields', 'YIELD_CULTURE', 50), -- Crank out the Culture.
('CultureVictoryYields', 'YIELD_FAITH', 50); -- We also generally need Faith for a Cultural victory.
--
-- Bias.
DELETE FROM AiFavoredItems WHERE ListType IN ('GilgameshSciencePreference', 'KoreaScienceBiase') AND Item = 'YIELD_SCIENCE';
DELETE FROM AiFavoredItems WHERE ListType = 'GreeceYields' AND Item = 'YIELD_CULTURE';
DELETE FROM AiFavoredItems WHERE ListType IN ('BasilFavoredYields', 'EthiopiaYields', 'TamarYields') AND Item = 'YIELD_FAITH';
--
INSERT INTO AiFavoredItems (ListType, Item, Value) VALUES
('SimpleAI_ScienceYields', 'YIELD_SCIENCE', 20),
('SimpleAI_CultureYields', 'YIELD_CULTURE', 20),
('SimpleAI_ReligiousYields', 'YIELD_FAITH', 55),
('SimpleAI_ReligiousPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 50);


-- Techs & Civics --
INSERT INTO AiFavoredItems (ListType, Item, Favored) VALUES
('SimpleAI_ReligiousTechs', 'TECH_ASTROLOGY', 1);
--
-- Try to force AI to research these to get a tier 2 government.
INSERT INTO AiFavoredItems (ListType, Item, Favored) VALUES
('SimpleAI_MajorCivics', 'CIVIC_MERCENARIES', 1),
('SimpleAI_MajorCivics', 'CIVIC_EXPLORATION', 1),
('SimpleAI_MajorCivics', 'CIVIC_DIVINE_RIGHT', 1),
('SimpleAI_MajorCivics', 'CIVIC_REFORMED_CHURCH', 1);


-- Other --
UPDATE AiFavoredItems SET Favored = 1 WHERE ListType = 'TomyrisDiplomacy' AND Item = 'DIPLOACTION_DECLARE_SURPRISE_WAR';

--------------------------------------------------------------
---=========================================================--