USE [OHDSI]
GO

DECLARE @person_id INT
SET @person_id = 1

CREATE TABLE #Codesets (
  codeset_name nvarchar(255) NOT NULL,
  domain nvarchar(4) NOT NULL,
  codeset_id int NOT NULL,
  concept_id bigint NOT NULL
)
;

INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Myocardial Infarction Diagnoses' as codeset_name, 'diag' as domain, 0 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44819697,44819699,44819700,44820859,44819698,44819699,44819700,44819701,44835927,44825429,44828973,44835928,44825430,44820861,44819702,44824237,44823111,44820858,44820857,44820858,44820859,44820860,44820861,44823111,44824237,44834719,44835926,44832374,44825428,44825429,44825430,44826635,44826636,44827782,44828972,44828973,44832375,44834720,44834721,44830079,44831236,44831237,44832372,44824237,44823111,44820858,44819699,44819700,44820859,44826635,44833561,44820860,44831236,44827782,44819697,44834719,44835926,44832374,44832375,44834720,44834721,44826636,44834724,44832376,44835928,44825430,44820861,44820857,44819698,44832373,44834718,44825428,44830079,44834723,44819701,44834722,44819702,44827410,44835927,44825429,44828973,44828972,44837099,44831237,44826635,44833561,44820860,44832373,44832374,44832375,44832376,44833561,44831236,44827782,44819697,44834718,44834719,44834720,44834721,44834722,44828972,44837099,44831237,44826636,44834724,44832376,44834723,44834724,44835926,44835927,44835928,44837099,45533436,45557536,45562340,45572079,45572080,45576865,45605779,1569126,1326588,1326590,35207685,1326591,1326589,45572079,45572080,45562340,45576865,45605779,45557536,45533436,1569127,1569128,1569129,35207684,45572079,45562340,45576865,1569127,45605779,45533436,1569128,45572080,45557536,1569129,35207684,35207685,434376,45766113,438447,438447,438438,438447,441579,312327,4108217,4170094,4108218,4108677,45766114,438438,438438,444406,312327,4108678,4108219,4108680,4215259,441579,312327,46270164,4108669,45766018,4136688,40287590,4158564,4045580,4149712,4161460,4209308,4303359,4011131,4126050,4044258,45764401,4030021,4007156,4153358,434376,319039,444406,45766241,434376,4267568,4119456,4207921,4178129,43020460,4119943,4064610,46270160,45766150,45766076,45766075,319039,438170,45773170,436706,46270158,4121466,40376803,4107494,4151046,4230507,4301919,35626121,40323254,40304402,4016327,4337452,4101589,4346639,4144570,4053915,4094880,4248272,4034866,4309469,4083961,4025085,4160416,4244727,4119465,40553181,46075162,40335455,40486239,4017660,4203936,45767750,4083062,40547160,40308338,4152002,4219805,45758534,4220604,36682712,4176225,4036706,40609652,4227869,4263789,4312299,4023464,46272846,4173937,4160583,4149303,4243372,4275436,4051874,4064350,4124684,46274044,312327,441579,438170,4119945,4209541,4121464,45766116,45771322,436706,436706,312327,438170,45766151,444406,312327,319039)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Troponin Labs' as codeset_name, 'labs' as domain, 1 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (3021337,3033745) and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Echocardiogram' as codeset_name, 'proc' as domain, 2 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (40756895,2313941,2313833,2313832,2313963,2313972,2313827,2313826,2313825,2314097,2101754,2101753,2101752)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Coronary Angiogram' as codeset_name, 'proc' as domain, 3 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (2101786,40756852,40756911,40757138,40756979,40756950,40756857,40756944,40756899,40756840,2313914,2313913,2313797,4142645)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Stroke Diagnoses' as codeset_name, 'diag' as domain, 4 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44830090,45533462,45533463,45538394,45538395,45538396,45543187,45543188,45543189,45548026,45548027,45548028,45552801,45552802,45557551,45557552,45557553,45562362,45562363,45562364,45562365,45567187,45567188,45567189,45572097,45572098,45576884,45576885,45576886,45576887,45576888,45581781,45581782,45586593,45591474,45596212,45596213,45601041,45601042,45601043,45605806,45605807,45552801,37200497,37200496,1569196,45562363,45533462,45533463,1569194,45581781,45601042,45538394,45601041,45562362,1569195,37200496,45533462,45601042,45562362,1569195,37200497,1569196,45562363,45581781,45538394,45581782,37200499,37200498,1569199,45572097,45557551,45605806,1569197,45596212,45538395,45576884,45567187,45562364,1569198,37200498,45557551,45538395,45562364,1569198,37200499,1569199,45572097,45596212,45576884,45538396,37200501,37200500,1569202,45562365,45576885,45548027,1569200,45601043,45572098,45543187,45552802,45548026,1569201,37200500,45576885,45572098,45548026,1569201,37200501,1569202,45562365,45601043,45543187,1569205,37200503,37200505,37200502,37200504,1569207,1569203,45576886,45543189,45567188,45596213,1569204,45576888,1569206,45557553,45586593,45557552,45576887,45543188,45605807,45591474,45548028,45567189,37200502,45567188,1569204,45557552,45548028,1569205,37200503,45576886,45557553,45543188,37200504,45596213,1569206,45576887,45567189,37200505,1569207,45543189,45586593,45605807,45533464,45538397,45552806,45557554,45557555,45581784,45586595,45586596,45586597,45591476,45596215,45601046,45601047,45605809,1569215,37200511,37200513,37200510,37200512,1569217,1569213,45533464,45596215,45586595,45557555,1569214,45601047,1569216,45538397,45581784,45605809,45586596,45557554,45591476,45552806,45601046,45586597,37200510,45586595,1569214,45605809,45601046,1569215,37200511,45533464,45538397,45557554,37200512,45557555,1569216,45586596,45586597,37200513,1569217,45596215,45581784,45591476,35207819,1595598,35207820,1595597,35207821,4108356)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Stroke Medications' as codeset_name, 'meds' as domain, 5 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (40244487,40244488,40244096,40243195,40244088,40244089,40243747,40243205,40243206,40244153,40244154,40235281,1636808,36217419,1126562,1156195,40243283,36238152,40243300,40243301,36238214,40243304,40243302,40243303,40243263,40243264,40009482,43525648,1112807,1719001,1719000,1719004,1719005,1719006,40243477,40243478,40011848,40243327,19103873,36226253,19046641,937834,937833,40091642,40091643,937835,937836,937837,937838,40244285,40244286,40244287,40244151,40244152,40244155,36238216,40244156,40244157,40014857,40243490,40243491,1778166,40244159,40244162,40244160,40244161,40244163,40244166,40244164,40244165,40244167,40244168,40243672,40243673,40243530,36238157,40243537,40243538,36238156,40243697,40243700,40243698,40243699,40164204,40243137,40243138,40243139,40243140,40243141,40243142,40243143,40243144,40243145,40243146,40243147,40243148,40243149,40243150,40243151,40243152,40243153,40243154,40243155,40243156,40243157,40243704,40243703,40243706,40243705,40243708,40243707,40243709,40243159,40243162,40243163,40171362,40243728,40243183,40243777,40243776,40244297,40244298,40244325,40176843,40244330,40244326,36238174,40243722,40243723,40243754,40243755,40243756,40243757,40243758,40243762,40243763,40243759,40243760,40243761,40243764,40243765,40243724,40243727,40243725,40243726,36238215,40243766,40243767,40243805,40243806,40243807,40243801,40243802,40243803,40243804,40243808,40243809,40244349,40244363,36238234,40243748,40243750,40243826,40243827,40243828,40243829,40243830,40243831,40243832,40243833,40243838,40243839,40243834,40243835,40243836,40243837,40243840,40243841,40243842,40243843,40243844,40243845,40243846,40243847,40243848,40243849,40243850,40243851,40243852,40243857,40243855,40243856,40243853,40243854,40243858,40243875,40243876,40243877,40243879,40243880,40243878,40243881,40243859,40243860,40243863,40243864,40243865,40243866,40243867,40243868,40243869,40243870,40243871,40243872,40243873,40243874,40243882,40243883,40243884,40243885,40243886,40243893,40243894,40243895,40243887,40243888,40243889,40243890,40243891,40243892,40243896,40243897,40243898,40243899,40243900,40243903,40243901,40243902,40243904,40243905,40243906,40243907,40243910,40243908,40243909,40243911,36235447,40243913,40243914,40243818,40243819,40243820,40243821,40243822,40243823,40243824,19061012,40243937,40243936,40244309,40244310,40244313,40244311,40244312,36238235,40244314,40244315,40243955,40243959,40243958,40243744,40244390,36238236,36249518,1383986,42706959,1553743,40244393,40243979,993771,19110695,40243997,40243998,19125782,40244000,40244003,40244006,40244004,40244005,40244008,40244007,40243996,36238155,40243745,40244001,40244002,40244019,40244020,40244021,40244024,40244022,40244023,40244025,40244028,40244026,40244027,40244029,40244032,40244030,40244031,19078985,914696,914697,1115066,40064366,1115068,1115067,1115069,1118120,1502829,916246,40244010,40244011,40244012,40244013,40244423,36238239,36238240,40244017,36238129,36246132,923691,40244009,36238153,36238154,40244039,40244040,40244438,40243548,40243549,40243552,40243550,40243551,40243553,40243554,40243555,40243556,40243541,40243540,40243542,40152342,1136838,964158,40243612,36238212,36238213,40244440,40244439,40244442,40244441,40244451,40244207,36238237,36238238,40243588,40243597,40243598,40243599,40243600,40243601,40243602,40243603,40243589,40243590,40243591,40243592,40243593,40243594,40243595,40243596,40076625,40243581,40243582,40243583,40243578,40243579,40243580,40243585,40243586,40243587,40244043,40244044,40244045,1314273,40244245,40243647,40244219,40243621,40243620,40243638,40244241,40244051,40244221,40244220,40244235,19013331,40244248,40244250,40239931,19055243,19103872,1718999,1719002,1719003,40243670,43560031,1322184,19086830,19011987,19083990,1353044,19019126,1319182,19019194,19061703,719368,1120621,19022032,1140503)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Carotid Duplex' as codeset_name, 'proc' as domain, 6 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (2313975)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'CT Scan of Head' as codeset_name, 'proc' as domain, 7 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (2211327)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'MRI Brain' as codeset_name, 'proc' as domain, 8 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (2211354,2211355)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Deep Vein Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 9 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44819730,44823131,44831265,44819730,44832403,44831265,44823131,45533508,45533509,45533510,45538453,45538454,45538455,45543229,45548080,45552851,45552852,45557597,45562405,45562406,45567234,45567235,45572138,45572139,45576922,45576923,45581820,45581821,45586635,45586636,45596250,45596251,45596252,45596253,45601089,45605848,45605849,45605850,45605851,1569352,1569353,45533508,1569354,45605849,45586635,45538454,45552851,45552852,45596253,1569357,45567235,45533510,45538455,1569355,45596251,45581820,45548080,45562405,45596252,1569356,45581821,1569359,45605851,45572139,45538453,45572138,35207892,45576922,1569358,45576923,45557597,45543229,45601089,45586636,45567234,45605850,45605848,45596250,45533509,45562406,1569353,45533508,45586635,45581820,45605848,1569354,45605849,45538454,45548080,45596250,45552851,1569355,45596251,45562405,45533509,45552852,45596252,1569356,45581821,45562406,45596253,1569357,45567235,45533510,45538455,45572138,1569358,45576923,45601089,45605850,1569359,45605851,45572139,45557597,45586636,45538453,35207892,45576922,45543229,45567234,40480555,4133004,443537,4181315,4124857,4046884,43531681,36685092,46270078,37119225,36686425,36686281,36687220,42535201,765147,40478951,46271900,46270071,44782767,44782746,45773536,44782748,44782747,44782743,43020614,4175649,4322565,43022036,44782745)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'D-Dimer Fibrin Labs' as codeset_name, 'labs' as domain, 10 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (3051714,3052716,3048530)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Pulmonary Embolism Diagnoses' as codeset_name, 'diag' as domain, 11 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44823112,44819706,44819704,44825436,44819705,44819705,44819706,44823112,44825436,45552786,45572084,45605789,45572084,1569149,45552786,45605789,43530605,40479606,440417,4236271,4108681,4121618,4120091,4119607,4119608,4119610,4120094,4102370,4240612,254662,4239826,4253796,4300990,4309039,43530605,4001998,45768888,37016922,45766471,45768439,40480461)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'CT Scan of Chest' as codeset_name, 'proc' as domain, 12 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (2211378)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Ventilation-Perfusion Scan' as codeset_name, 'proc' as domain, 13 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (42742555)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Mesenteric-Splanchnic Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 14 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44837174,44834747,35207887,37200636,37200633,37200625,37200628,37200617,37200620,37200640,37200637,37200629,37200632,37200621,37200624,35208275,37200635,37200627,37200619,37200639,37200631,37200623,37200634,37200626,37200618,37200638,37200630,37200622,35207888,35207866,201894,4278217,312339,4174013,4174012,4111853,4111852,4112165,4108380,314965,4223098,4197396,4194610,4175570,4174016,4179906)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Ultrasonography' as codeset_name, 'proc' as domain, 15 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (2211795)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'CT Scan of Abdomen' as codeset_name, 'proc' as domain, 16 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (45888398)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'MRI' as codeset_name, 'proc' as domain, 17 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (760624,4013636,44787907)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Superficial Vein Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 18 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44833588,44832401,44834757,45567241,35207893,45605857,45543236,45533518,45533506,45586632,45591518,45601085,45533506,1569340,45601085,45591518,45586632,45576926,45601092,45572144,1569370,45601093,4323778,313219,4327350,4250507,4056354,4085071,4149208,4056355,45769498,4217472,4217471,4134114,4316223,4318407,4317290,4049750,4052462,4098706,4158798,4135502,45766512,4046124,40303079,4277833,4190337,4136414,4050167,40556527,4174848,4031982,45766983,4262001,4205652,4230403,4185701,4267862,4289731,4216561,4217146,4028057,44782421,44782766)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Other Arterial Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 19 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44824263,44828995,44830100,45538445,45538446,45557590,45576917,45596248,1569327,35207861,35207864,35207863,35207862,35207865,1569328,35207866,45557590,45538446,35207867,45538445,45596248,45576917,1569328,45557590,45538446,45538445,35207861,45596248,45576917,35207862,35207863,35207864,35207865,35207866,35207867,35207822,35207891,432656,434961,4236905,4112162,4337367,4178609,441044,44797353,36685962,762906,37394500,765046,4141106,4193057,4193056,4195973,4195972,4208809,443407,4117933,4182191,4179910,4179909,4175569,4174015,4117679,4119614,4111848,4108376,4110333,4108377,314965,4191250,193512,4049318)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Placenta Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 20 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44821059,44822141,44831423,44836116,44821059,44822141,44831423,45572858,45769261,40352971,4133436,315881,4072834)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Central Nervous System (CNS) Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 21 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44826647,35207834,314667)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Endocardial Thrombosis Diagnoses' as codeset_name, 'diag' as domain, 22 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (44830634,44824265,35207731,35207797,45766182,45766079,45766186,45766180,45766078,45766181,45766086,45766185,45766081,45766084,45766080,45766103,43020630,43021473,43020946,43020947,43020948,4125007,43020949,43020950,4120277,4125006,4120279,43021941,4278217)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'Anticoagulant' as codeset_name, 'meds' as domain, 23 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (46274204,40228152,40228153,40228164,40228154,40227994,40228159,40228165,40228158,40228160,40228161,40228163,40228162,19004008,40239053,1110707,40241331,40241332,40241336,40241333,40241222,40241335,40241337,40241334,40239573,40239603,40239598,1134509,40240143,40240144,42899461,711589,40239843,1310149,19011033,40242494,19011712,40242687,40242693,40242697,36216680,36215425,36215426,36215231,36227606,36227607,36223198,36223748,36223749,36224019,36224268,36224590,1165637,36220571,36221228,36221229,36234406,36237051,36237052,36237823,36231022,36232669,36231614,36240420,36240421,36241103,40244443,40244444,40244446,40244445,40244447,40244448,40244450,40244449,43011463,43011809,43011476,43011816,43011490,43011826,43011506,43011838,43011841,43011508,43011842,43011512,43011846,43011515,43011516,43011850,43011542,43011870,43011543,43011894,43011896,43011551,43011594,43011962,43013024,43013025,36246293,36246294,43013033,43013026,43012676,43013028,36246295,36246296,43013027,43013029,43013030,43013032,43013031,19053768,1322207,36216994,36217065,36217066,36217067,36217068,36217069,36217070,36217071,19014557,42901141,19014558,40079958,46274936,45775372,45777059,45777060,45892847,45892848,36249022,36248613,45892849,45892850,45892852,45892853,45892854,45892855,45892856,45892857,45892858,45892859,45892860,45892861,45892862,46275059,46275129,46275130,46275131,46275132,46275352,46275354,46275355,46275360,46275376,46275378,46275400,46275495,46275497,46275505,46275507,35606207,35606208,35606209,35606210,36249117,40220924,40220926,40220928,40220929,40220365,40220366,40220367,40220368,1718369,1718370,1718371,1718457,1718494,1592988,1592989,1592990,1592991,1592992,1592993,1592994,1592995,1592996,1592997,1592998,1592999,1593000,1593001,1593002,1593003,792336,793646,793486,793487,793489,40227499,19023703,19042260,35200878,19052452,19087746,42705393,19055137,36238360,19055716,19055719,42707852,19092139,19003908,19006372,19006371,19073526,19074279,42901093,19080464,1315865,19082766,19016011,1322209,40042753,40030305,43013908,40093133,40030304,40042752,40093132,40098507,19100772,19102223,19102224,19046532,40093134,40238620,40001742,46233948,36217543,36217544,36217545,36217546,36217547,36217548,36217549,36217550,1154452,19112230,40092294,40007383,36245153,19012067,44784685,40168573,40161116,40161117,40161118,40161119,19055967,19098456,40022050,1139109,40161331,43532303,44818165,36213756,40110752,19135025,40034630,45774817,45774816,45774818,45774819,36218784,1367571,40174773,40222639,46233946,46233949,46233950,46233947,45774814,40161760,19006595,19114696,1308397,40161330,36242189,911123,40068213,19015029,19015030,19015051,19015052,19015053,19022474,19015054,40091368,19054999,19112229,40098512,40098537,903056,19112228,40090456,942431,45774815,42709303,42707206,42874118,19114650,19084670,36224787,19100065,1301025,19118081,40044616,43012773,40174253,1301065,19118082,40044615,43012967,40005652,19022683,36235365,1308473,40141000,40141704,35604669,40141705,36248444,40141787,35604679,40144605,40147905,19132987,1367697,19135718,40160947,40160970,40160950,40160971,40160973,40160974,40160989,40160990,40160991,40160992,40160951,40160993,40160954,40160994,40160995,40160996,40160997,40160998,40160948,40160949,40163509,40163510,40163514,40163511,40163515,40163512,40163517,40163518,40163521,40163519,40163522,40163520,40163523,40163524,40163527,40163525,40163528,40163526,1718254,40163533,1718255,40163534,40163537,1718256,40163535,1718257,40163538,40163539,40163540,40163543,1718259,40163541,40163544,1718260,40163542,40163545,40163546,40163550,1718261,40163547,1718262,40163551,1718263,40163548,40163553,1718264,40163554,1718265,40163557,40163555,40163558,1718266,40163556,40163559,1718267,40163560,1718268,40163563,1718269,40163561,40163564,1718270,40163562,1718271,40163565,40163566,1718272,40163569,40163567,1718273,40163570,40163568,40163990,40165979,40163991,40165980,40163946,40165981,40163947,40163944,40163945,40163975,40163976,40180716,40180717,40180708,40180715,40176339,40177140,40176342,40177141,40176347,40177142,40176350,40177143,40177152,40177153,40177173,40177174,40177228,40177229,40177231,40177232,40176335,40176906,40176338,40176907,40176336,40176343,40176344,40176348,40176349,19020561,43532667,792871,792872,963844,963845,963842,963843,40237672,963841,19080262,1139421,19022453,36243711,19076473,19064777,19093986,19136055,36236295,19069184,1780686,1560127,19135753,40065717,42902764,19110070,36231577,19020520,19020519,40172806,19020562,1123535,923541,19020563,924311,924332,924333,36225282,19042689,42904001,19080882,44506448,35605229,19096976,19044335)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_name, domain, codeset_id, concept_id)
SELECT 'BPH Specimens' as codeset_name, 'labs' as domain, 24 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from cdm.CONCEPT where concept_id in (46235133)and invalid_reason is null

) I
) C;


SELECT cs.codeset_name, c.concept_name, co.*, c.*
FROM cdm.condition_occurrence co
INNER JOIN #Codesets cs ON cs.concept_id = co.condition_concept_id AND cs.domain = 'diag'
INNER JOIN cdm.concept c ON c.concept_id = co.condition_concept_id
WHERE person_id = @person_id
ORDER BY cs.codeset_name, condition_start_date

SELECT cs.codeset_name, c.concept_name, ob.*, c.*
FROM cdm.observation ob
INNER JOIN #Codesets cs ON cs.concept_id = ob.observation_concept_id AND cs.domain = 'labs'
INNER JOIN cdm.concept c ON c.concept_id = ob.observation_concept_id
WHERE person_id = @person_id
ORDER BY cs.codeset_name, observation_date


SELECT cs.codeset_name, c.concept_name, me.*, c.*
FROM cdm.measurement me
INNER JOIN #Codesets cs ON cs.concept_id = me.measurement_concept_id AND cs.domain = 'labs'
INNER JOIN cdm.concept c ON c.concept_id = me.measurement_concept_id
WHERE person_id = @person_id
ORDER BY cs.codeset_name, measurement_date

SELECT cs.codeset_name, c.concept_name, pr.*, c.*
FROM cdm.procedure_occurrence pr
INNER JOIN #Codesets cs ON cs.concept_id = pr.procedure_concept_id AND cs.domain = 'proc'
INNER JOIN cdm.concept c ON c.concept_id = pr.procedure_concept_id
WHERE person_id = @person_id
ORDER BY cs.codeset_name, procedure_date

SELECT cs.codeset_name, c.concept_name, dr.*, c.*
FROM cdm.drug_exposure dr
INNER JOIN #Codesets cs ON cs.concept_id = dr.drug_concept_id AND cs.domain = 'meds'
INNER JOIN cdm.concept c ON c.concept_id = dr.drug_concept_id
WHERE person_id = @person_id
ORDER BY cs.codeset_name, drug_exposure_start_date

TRUNCATE TABLE #Codesets;
DROP TABLE #Codesets;