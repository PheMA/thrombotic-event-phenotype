CREATE TABLE #Codesets (
  codeset_id int NOT NULL,
  concept_id bigint NOT NULL
)
;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 0 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44819697,44819698,44819699,44819700,44820859,44819699,44819700,44819701,44835927,44825429,44828973,44835928,44825430,44820861,44819702,44820857,44824237,44823111,44820858,44820858,44820859,44820860,44820861,44823111,44824237,44825428,44834719,44835926,44832374,44825429,44825430,44826635,44826636,44827782,44828972,44828973,44830079,44832375,44834720,44834721,44831236,44831237,44832372,44820857,44824237,44823111,44820858,44819698,44819699,44819700,44820859,44832373,44826635,44833561,44820860,44834718,44831236,44827782,44819697,44825428,44834719,44835926,44832374,44830079,44832375,44834720,44834721,44834723,44826636,44834724,44832376,44835928,44825430,44820861,44819701,44834722,44819702,44827410,44835927,44825429,44828973,44828972,44837099,44831237,44832373,44826635,44833561,44820860,44832374,44832375,44832376,44833561,44834718,44831236,44827782,44819697,44834719,44834720,44834721,44834722,44828972,44837099,44831237,44834723,44826636,44834724,44832376,44834724,44835926,44835927,44835928,44837099,45533436,45557536,45562340,45572079,45572080,45576865,45605779,35207685,1569126,45572079,45572080,45562340,45576865,45605779,45557536,45533436,1569127,1569128,1569129,35207684,45572079,45562340,45576865,1569127,45605779,45533436,1569128,45572080,45557536,1569129,35207684,35207685,434376,45766113,438447,438447,438438,438447,441579,312327,4108217,4170094,4108218,4108677,45766114,438438,438438,444406,312327,4108678,4108219,4108680,4215259,441579,312327,46270164,4108669,45766018,4136688,40287590,4158564,4045580,4149712,4161460,4209308,4303359,4011131,4126050,4044258,45764401,4030021,4007156,4153358,434376,319039,444406,45766241,434376,4267568,4119456,4207921,4178129,43020460,4119943,4064610,46270160,45766150,45766076,45766075,319039,438170,45773170,436706,46270158,4121466,4107494,4151046,4230507,4301919,40323254,40304402,4016327,4337452,4101589,4346639,4144570,4053915,4094880,4248272,4034866,4309469,4083961,4025085,4160416,4244727,4119465,40553181,46075162,40335455,40486239,4017660,4203936,45767750,4083062,40547160,40308338,4152002,4219805,45758534,4220604,4176225,4036706,40609652,4227869,4263789,4312299,4023464,46272846,40376803,4173937,4160583,4149303,4243372,4275436,4051874,4064350,4124684,46274044,312327,441579,438170,4119945,4209541,4121464,45766116,45771322,436706,436706,312327,438170,45766151,444406,312327,319039)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 1 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44830090,45533462,45533463,45538394,45538395,45538396,45543187,45543188,45543189,45548026,45548027,45548028,45552801,45552802,45557551,45557552,45557553,45562362,45562363,45562364,45562365,45567187,45567188,45567189,45572097,45572098,45576884,45576885,45576886,45576887,45576888,45581781,45581782,45586593,45591474,45596212,45596213,45601041,45601042,45601043,45605806,45605807,45552801,1569196,45562363,45533462,45533463,1569194,45581781,45601042,45538394,45601041,45562362,1569195,45533462,45601042,45562362,1569195,1569196,45562363,45581781,45538394,45581782,1569199,45572097,45557551,45605806,1569197,45596212,45538395,45576884,45567187,45562364,1569198,45557551,45538395,45562364,1569198,1569199,45572097,45596212,45576884,45538396,1569202,45562365,45576885,45548027,1569200,45601043,45572098,45543187,45552802,45548026,1569201,45576885,45572098,45548026,1569201,1569202,45562365,45601043,45543187,1569205,1569207,1569203,45576886,45543189,45567188,45596213,1569204,45576888,1569206,45557553,45586593,45557552,45576887,45543188,45605807,45591474,45548028,45567189,45567188,1569204,45557552,45548028,1569205,45576886,45557553,45543188,45596213,1569206,45576887,45567189,1569207,45543189,45586593,45605807,45533464,45538397,45552806,45557554,45557555,45581784,45586595,45586596,45586597,45591476,45596215,45601046,45601047,45605809,1569215,1569217,1569213,45533464,45596215,45586595,45557555,1569214,45601047,1569216,45538397,45581784,45605809,45586596,45557554,45591476,45552806,45601046,45586597,45586595,1569214,45605809,45601046,1569215,45533464,45538397,45557554,45557555,1569216,45586596,45586597,1569217,45596215,45581784,45591476,35207819,35207820,35207821,4108356)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 2 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44819730,44823131,44831265,44819730,44832403,44831265,44823131,45533508,45533509,45533510,45538453,45538454,45538455,45543229,45548080,45552851,45552852,45557597,45562405,45562406,45567234,45567235,45572138,45572139,45576922,45576923,45581820,45581821,45586635,45586636,45596250,45596251,45596252,45596253,45601089,45605848,45605849,45605850,45605851,1569352,1569353,45533508,1569354,45605849,45586635,45538454,45552851,45552852,45596253,1569357,45567235,45533510,45538455,1569355,45596251,45581820,45548080,45562405,45596252,1569356,45581821,1569359,45605851,45572139,45538453,45572138,35207892,45576922,1569358,45576923,45557597,45543229,45601089,45586636,45567234,45605850,45605848,45596250,45533509,45562406,1569353,45533508,45586635,45581820,45605848,1569354,45605849,45538454,45548080,45596250,45552851,1569355,45596251,45562405,45533509,45552852,45596252,1569356,45581821,45562406,45596253,1569357,45567235,45533510,45538455,45572138,1569358,45576923,45601089,45605850,1569359,45605851,45572139,45557597,45586636,45538453,35207892,45576922,45543229,45567234,40480555,4133004,443537,4181315,4124857,4046884,43531681,46270078,40478951,46271900,46270071,44782767,44782746,45773536,44782748,44782747,44782743,43020614,4175649,4322565,43022036,44782745)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 3 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44823112,44819706,44819704,44825436,44819705,44819705,44819706,44823112,44825436,45552786,45572084,45605789,45572084,1569149,45552786,45605789,43530605,40479606,440417,4236271,4108681,4121618,4120091,4119607,4119608,4119610,4120094,4102370,4240612,254662,4239826,4253796,4300990,4309039,43530605,4001998,45768888,37016922,45766471,45768439,40480461)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 4 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44837174,44834747,35207887,35208275,35207888,35207866,201894,4278217,312339,4174013,4174012,4111853,4111852,4112165,4108380,314965,4223098,4197396,4194610,4175570,4174016,4179906)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 5 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44833588,44832401,44834757,45567241,35207893,45605857,45543236,45533518,45533506,45586632,45591518,45601085,45533506,1569340,45601085,45591518,45586632,45576926,45601092,45572144,1569370,45601093,4323778,313219,4327350,4250507,4056354,4085071,4149208,4056355,45769498,4217472,4217471,4134114,4316223,4318407,4317290,4049750,4052462,4098706,4158798,4135502,45766512,4046124,40303079,4277833,4190337,4136414,4050167,40556527,4174848,4031982,45766983,4262001,4205652,4230403,4185701,4267862,4289731,4216561,4217146,4028057,44782421,44782766)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 6 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44824263,44828995,44830100,45538445,45538446,45557590,45576917,45596248,1569327,35207861,35207864,35207863,35207862,35207865,1569328,35207866,45557590,45538446,35207867,45538445,45596248,45576917,1569328,45557590,45538446,45538445,35207861,45596248,45576917,35207862,35207863,35207864,35207865,35207866,35207867,35207822,35207891,432656,434961,4236905,4112162,4337367,4178609,441044,37394500,4141106,44797353,4193057,4193056,4195973,4195972,4208809,443407,4117933,4182191,4179910,4179909,4175569,4174015,4117679,4119614,4111848,4108376,4110333,4108377,314965,4191250,193512,4049318)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 7 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44821059,44822141,44831423,44836116,44821059,44822141,44831423,45572858,45769261,40352971,4133436,315881,4072834)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 8 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44826647,35207834,314667)and invalid_reason is null
) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 9 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @vocabulary_database_schema.CONCEPT where concept_id in (44830634,44824265,35207731,35207797,45766182,45766079,45766186,45766180,45766078,45766181,45766086,45766185,45766081,45766084,45766080,45766103,43020630,43021473,43020946,43020947,43020948,4125007,43020949,43020950,4120277,4125006,4120279,43021941,4278217)and invalid_reason is null
) I
) C;
with primary_events (event_id, person_id, start_date, end_date, op_start_date, op_end_date, visit_occurrence_id) as
(
-- Begin Primary Events
select P.ordinal as event_id, P.person_id, P.start_date, P.end_date, op_start_date, op_end_date, cast(P.visit_occurrence_id as bigint) as visit_occurrence_id
FROM
(
  select E.person_id, E.start_date, E.end_date, row_number() OVER (PARTITION BY E.person_id ORDER BY E.start_date ASC) ordinal, OP.observation_period_start_date as op_start_date, OP.observation_period_end_date as op_end_date, cast(E.visit_occurrence_id as bigint) as visit_occurrence_id
  FROM 
  (
  -- Begin Visit Occurrence Criteria
select C.person_id, C.visit_occurrence_id as event_id, C.visit_start_date as start_date, C.visit_end_date as end_date, C.visit_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id
from 
(
  select vo.* 
  FROM @cdm_database_schema.VISIT_OCCURRENCE vo
) C
-- End Visit Occurrence Criteria
  ) E
	JOIN @cdm_database_schema.observation_period OP on E.person_id = OP.person_id and E.start_date >=  OP.observation_period_start_date and E.start_date <= op.observation_period_end_date
  WHERE DATEADD(day,0,OP.OBSERVATION_PERIOD_START_DATE) <= E.START_DATE AND DATEADD(day,0,E.START_DATE) <= OP.OBSERVATION_PERIOD_END_DATE
) P
WHERE P.ordinal = 1
-- End Primary Events
)
SELECT event_id, person_id, start_date, end_date, op_start_date, op_end_date, visit_occurrence_id
INTO #qualified_events
FROM 
(
  select pe.event_id, pe.person_id, pe.start_date, pe.end_date, pe.op_start_date, pe.op_end_date, row_number() over (partition by pe.person_id order by pe.start_date ASC) as ordinal, cast(pe.visit_occurrence_id as bigint) as visit_occurrence_id
  FROM primary_events pe
  
) QE
;
--- Inclusion Rule Inserts
select 0 as inclusion_rule_id, person_id, event_id
INTO #Inclusion_0
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 9))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 8))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 7))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 6))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 5))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 4))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 3))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 2))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Criteria Group
select 1 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  INNER JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 0))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
UNION ALL
-- Begin Correlated Criteria
SELECT 1 as index_id, p.person_id, p.event_id
FROM #qualified_events P
INNER JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.* 
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  JOIN #Codesets codesets on ((co.condition_concept_id = codesets.concept_id and codesets.codeset_id = 1))
) C
-- End Condition Occurrence Criteria
) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= P.OP_END_DATE
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) > 0
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;
SELECT inclusion_rule_id, person_id, event_id
INTO #inclusion_events
FROM (select inclusion_rule_id, person_id, event_id from #Inclusion_0) I;
TRUNCATE TABLE #Inclusion_0;
DROP TABLE #Inclusion_0;
with cteIncludedEvents(event_id, person_id, start_date, end_date, op_start_date, op_end_date, ordinal) as
(
  SELECT event_id, person_id, start_date, end_date, op_start_date, op_end_date, row_number() over (partition by person_id order by start_date ASC) as ordinal
  from
  (
    select Q.event_id, Q.person_id, Q.start_date, Q.end_date, Q.op_start_date, Q.op_end_date, SUM(coalesce(POWER(cast(2 as bigint), I.inclusion_rule_id), 0)) as inclusion_rule_mask
    from #qualified_events Q
    LEFT JOIN #inclusion_events I on I.person_id = Q.person_id and I.event_id = Q.event_id
    GROUP BY Q.event_id, Q.person_id, Q.start_date, Q.end_date, Q.op_start_date, Q.op_end_date
  ) MG -- matching groups
  -- the matching group with all bits set ( POWER(2,# of inclusion rules) - 1 = inclusion_rule_mask
  WHERE (MG.inclusion_rule_mask = POWER(cast(2 as bigint),1)-1)
)
select event_id, person_id, start_date, end_date, op_start_date, op_end_date
into #included_events
FROM cteIncludedEvents Results
WHERE Results.ordinal = 1
;
-- generate cohort periods into #final_cohort
with cohort_ends (event_id, person_id, end_date) as
(
	-- cohort exit dates
  -- By default, cohort exit at the event's op end date
select event_id, person_id, op_end_date as end_date from #included_events
),
first_ends (person_id, start_date, end_date) as
(
	select F.person_id, F.start_date, F.end_date
	FROM (
	  select I.event_id, I.person_id, I.start_date, E.end_date, row_number() over (partition by I.person_id, I.event_id order by E.end_date) as ordinal 
	  from #included_events I
	  join cohort_ends E on I.event_id = E.event_id and I.person_id = E.person_id and E.end_date >= I.start_date
	) F
	WHERE F.ordinal = 1
)
select person_id, start_date, end_date
INTO #cohort_rows
from first_ends;
with cteEndDates (person_id, end_date) AS -- the magic
(	
	SELECT
		person_id
		, DATEADD(day,-1 * 0, event_date)  as end_date
	FROM
	(
		SELECT
			person_id
			, event_date
			, event_type
			, MAX(start_ordinal) OVER (PARTITION BY person_id ORDER BY event_date, event_type ROWS UNBOUNDED PRECEDING) AS start_ordinal 
			, ROW_NUMBER() OVER (PARTITION BY person_id ORDER BY event_date, event_type) AS overall_ord
		FROM
		(
			SELECT
				person_id
				, start_date AS event_date
				, -1 AS event_type
				, ROW_NUMBER() OVER (PARTITION BY person_id ORDER BY start_date) AS start_ordinal
			FROM #cohort_rows
		
			UNION ALL
		
			SELECT
				person_id
				, DATEADD(day,0,end_date) as end_date
				, 1 AS event_type
				, NULL
			FROM #cohort_rows
		) RAWDATA
	) e
	WHERE (2 * e.start_ordinal) - e.overall_ord = 0
),
cteEnds (person_id, start_date, end_date) AS
(
	SELECT
		 c.person_id
		, c.start_date
		, MIN(e.end_date) AS era_end_date
	FROM #cohort_rows c
	JOIN cteEndDates e ON c.person_id = e.person_id AND e.end_date >= c.start_date
	GROUP BY c.person_id, c.start_date
)
select person_id, min(start_date) as start_date, end_date
into #final_cohort
from cteEnds
group by person_id, end_date
;
DELETE FROM @target_database_schema.@target_cohort_table where cohort_definition_id = @target_cohort_id;
INSERT INTO @target_database_schema.@target_cohort_table (cohort_definition_id, subject_id, cohort_start_date, cohort_end_date)
select @target_cohort_id as cohort_definition_id, person_id, start_date, end_date 
FROM #final_cohort CO
;
TRUNCATE TABLE #cohort_rows;
DROP TABLE #cohort_rows;
TRUNCATE TABLE #final_cohort;
DROP TABLE #final_cohort;
TRUNCATE TABLE #inclusion_events;
DROP TABLE #inclusion_events;
TRUNCATE TABLE #qualified_events;
DROP TABLE #qualified_events;
TRUNCATE TABLE #included_events;
DROP TABLE #included_events;
TRUNCATE TABLE #Codesets;
DROP TABLE #Codesets;