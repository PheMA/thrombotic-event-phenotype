/**
 * PheKB Phenotype
 *
 * Name : Thrombotic Event Confidence Level 1
 * ID   : 1516
 * Url  : https://dev-phekb.pantheonsite.io//node/1516
 */
library "1516.thrombotic-event" version '1.0.0'

using FHIR version '4.0.0'

include FHIRHelpers version '4.0.0' called FHIRHelpers
include PhEMAHelpers version '1.0.0' called PhEMAHelpers

valueset "Myocardial Infarction Diagnoses": '1516.myocardial-infarction-dx'
valueset "Troponin Labs": '1516.troponin-labs'
valueset "Echocardiogram": '1516.ecg-proc'
valueset "Coronary Angiogram": '1516.coronary-angiogram-proc'
valueset "Stroke Diagnoses": '1516.stroke-dx'
valueset "Stroke Medications": '1516.stroke-meds'
valueset "Carotid Duplex": '1516.carotid-duplex'
//valueset "Neurology Encounter": '1516.neurology-encounter'
valueset "CT Scan of Head": '1516.ct-scan-head-proc'
valueset "MRI Brain": '1516.mri-brain-proc'
valueset "Deep Vein Thrombosis Diagnoses": '1516.deep-vein-thrombosis-dx'
valueset "D-Dimer Fibrin Labs": '1516.d-dimer-fibrin-labs'
valueset "Pulmonary Embolism Diagnoses": '1516.pulmonary-embolism-dx'
valueset "CT Scan of Chest": '1516.ct-scan-chest'
valueset "Ventilation-Perfusion Scan": '1516.vq-scan'
valueset "Mesenteric-Splanchnic Thrombosis Diagnoses": '1516.mesenteric-splanchnic-thrombosis-dx'
valueset "Ultrasonography": '1516.ultrasonography-proc'
valueset "CT Scan of Abdomen": '1516.ct-scan-abdomen'
valueset "MRI": '1516.mri-proc'
valueset "Superficial Vein Thrombosis Diagnoses": '1516.superficial-vein-thrombosis-dx'
valueset "Other Arterial Thrombosis Diagnoses": '1516.other-arterial-thrombosis-dx'
valueset "Placenta Thrombosis Diagnoses": '1516.placenta-thrombosis-dx'
valueset "Central Nervous System (CNS) Thrombosis Diagnoses": '1516.central-nervous-system-thrombosis-dx'
valueset "Endocardial Thrombosis Diagnoses": '1516.endocarial-thrombosis-dx'
valueset "Anticoagulant": '2.16.840.1.113883.17.4077.2.1012' // This one came from VSAC

context Patient

/**
    NOTE:   The logic below does not perfectly match the phenotype definition.
            This is due to a limitation with Circe Cohort Definitions, which do
            not have a way to represent "n events all occurring within the same
            week". It is only possible to limit dates relative to a single index
            date. So, we use the diagnosis as the index event, and level the
            level 1 and 2 criteria based on that event.
*/

define "Event Type 1: Myocardial Infarction":
    exists(
        //// Confidence Level 3 Criteria
        [Condition: "Myocardial Infarction Diagnoses"] C
            where 
            //// Confidence Level 2 Criteria [start]
            exists(
                [Observation: "Troponin Labs"] O
                    where 
                        O.value >= 0.5 'ng/mL'
                            and
                        PhEMAHelpers."Effective Date"(O) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 2 Criteria [end]
                and
            //// Confidence Level 1 Criteria [start]    
            (
                exists(
                    [Procedure: "Echocardiogram"] E
                        where PhEMAHelpers."Effective Date"(E) in Interval[
                                    PhEMAHelpers."Effective Date"(C) - 1 week,
                                    PhEMAHelpers."Effective Date"(C) + 1 week
                                ]
                )
                    or
                exists(
                    [Procedure: "Coronary Angiogram"] A
                        where PhEMAHelpers."Effective Date"(A) in Interval[
                                    PhEMAHelpers."Effective Date"(C) - 1 week,
                                    PhEMAHelpers."Effective Date"(C) + 1 week
                                ]
                )
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 2: Stroke":
    exists(
        //// Confidence Level 3 Criteria
        [Condition: "Stroke Diagnoses"] C
            where 
            //// Confidence Level 2 Criteria [start]
            exists(
                [MedicationRequest: "Stroke Medications"] M
                    where 
                        PhEMAHelpers."Effective Date"(M) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
                and
            exists(
                [Procedure: "Carotid Duplex"] D
                    where PhEMAHelpers."Effective Date"(D) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week
                            ]
            )
                and                
            exists(
                    [Procedure: "Echocardiogram"] E
                        where PhEMAHelpers."Effective Date"(E) in Interval[
                                    PhEMAHelpers."Effective Date"(C) - 1 week,
                                    PhEMAHelpers."Effective Date"(C) + 1 week
                                ]
            )
            //// Confidence Level 2 Criteria [end]
                and
            //// Confidence Level 1 Criteria [start]
            //
            // NOTE: We are omitting the "neurology consult order" criterion
            //       because the data are not available               
            // exists(
            //        [Encounter: serviceType in "Neurology Encounter"] N
            //            where N.period.start in Interval[
            //                        PhEMAHelpers."Effective Date"(C) - 1 week,
            //                        PhEMAHelpers."Effective Date"(C) + 1 week
            //                    ]
            //)
            //    and
            (
                exists(
                    [Procedure: "CT Scan of Head"] H
                        where PhEMAHelpers."Effective Date"(H) in Interval[
                                    PhEMAHelpers."Effective Date"(C) - 1 week,
                                    PhEMAHelpers."Effective Date"(C) + 1 week
                                ]
                )
                    or
                exists(
                    [Procedure: "MRI Brain"] B
                        where PhEMAHelpers."Effective Date"(B) in Interval[
                                    PhEMAHelpers."Effective Date"(C) - 1 week,
                                    PhEMAHelpers."Effective Date"(C) + 1 week
                                ]
                )
            )
            //// Confidence Level 1 Criteria [start]
    )

define "Event Type 3: DVT":
    exists(
        //// Confidence Level 3 Criteria
        [Condition: "Deep Vein Thrombosis Diagnoses"] C
            //// Confidence Level 2 Criteria [start]
            where 
                exists(
                    [Observation: "D-Dimer Fibrin Labs"] D
                        where 
                            PhEMAHelpers."Effective Date"(D) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
                    or
                exists(
                    [MedicationRequest: "Anticoagulant"] A
                        where
                            PhEMAHelpers."Effective Date"(A) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
            //// Confidence Level 2 Criteria [end]
            // NOTE: We are omitting Confidence Level 1 because it needs NLP
    )

define "Event Type 4: PE":
    exists(
        //// Confidence Level 3 Criteria
        [Condition: "Pulmonary Embolism Diagnoses"] C
            where 
            //// Confidence Level 2 Criteria [start]
            exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            // NOTE: We are omitting the criterion that requires NLP
            //// Confidence Level 2 Criteria [end]
                and
            //// Confidence Level 1 Criteria [start]
            (
                exists(
                    [Procedure: "CT Scan of Chest"] D
                        where 
                            PhEMAHelpers."Effective Date"(D) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
                    or
                exists(
                    [Procedure: "Ventilation-Perfusion Scan"] V
                        where 
                            PhEMAHelpers."Effective Date"(V) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 5: Mesenteric-Splanchnic Thrombosis":
    exists(
        //// Confidence Level 3 Criteria
        [Condition: "Mesenteric-Splanchnic Thrombosis Diagnoses"] C
            where 
            //// Confidence Level 2 Criteria [start]
            exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 2 Criteria [end]
                and
            //// Confidence Level 1 Criteria [start]
            (
                exists(
                    [Procedure: "Ultrasonography"] S
                        where 
                            PhEMAHelpers."Effective Date"(S) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
                    or
                exists(
                    [Procedure: "CT Scan of Chest"] T
                        where 
                            PhEMAHelpers."Effective Date"(T) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
                    or
                exists(
                    [Procedure: "CT Scan of Abdomen"] A
                        where 
                            PhEMAHelpers."Effective Date"(A) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
                    or
                exists(
                    [Procedure: "MRI"] M
                        where 
                            PhEMAHelpers."Effective Date"(M) in Interval[
                                PhEMAHelpers."Effective Date"(C) - 1 week,
                                PhEMAHelpers."Effective Date"(C) + 1 week    
                            ]
                )
            )
                and
            exists(
                [Observation: "D-Dimer Fibrin Labs"] D
                    where 
                        PhEMAHelpers."Effective Date"(D) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            // NOTE: The description has a duplicative check for anticoagulanrt
            //       that is omitted here
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 6: Superficial Vein Thrombosis":
    exists(
        //// Confidence Level 2 Criteria
        [Condition: "Superficial Vein Thrombosis Diagnoses"] C
            //// Confidence Level 1 Criteria [start]
            where exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 7: Other Arterial Thrombosis":
    exists(
        //// Confidence Level 2 Criteria
        [Condition: "Other Arterial Thrombosis Diagnoses"] C
            //// Confidence Level 1 Criteria [start]
            where exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 8: Placenta Thrombosis":
    exists(
        //// Confidence Level 2 Criteria
        [Condition: "Placenta Thrombosis Diagnoses"] C
            //// Confidence Level 1 Criteria [start]
            where exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 9: Central Nervous System (CNS) Thrombosis":
    exists(
        //// Confidence Level 2 Criteria
        [Condition: "Central Nervous System (CNS) Thrombosis Diagnoses"] C
            //// Confidence Level 1 Criteria [start]
            where exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Event Type 10: Endocardial Thrombosis":
    exists(
        //// Confidence Level 2 Criteria
        [Condition: "Endocardial Thrombosis Diagnoses"] C
            //// Confidence Level 1 Criteria [start]
            where exists(
                [MedicationRequest: "Anticoagulant"] A
                    where
                        PhEMAHelpers."Effective Date"(A) in Interval[
                            PhEMAHelpers."Effective Date"(C) - 1 week,
                            PhEMAHelpers."Effective Date"(C) + 1 week    
                        ]
            )
            //// Confidence Level 1 Criteria [end]
    )

define "Case":
    "Event Type 1: Myocardial Infarction"
        or
    "Event Type 2: Stroke"
        or
    "Event Type 3: DVT"
        or
    "Event Type 4: PE"
        or
    "Event Type 5: Mesenteric-Splanchnic Thrombosis"
        or
    "Event Type 6: Superficial Vein Thrombosis"
        or
    "Event Type 7: Other Arterial Thrombosis"
        or
    "Event Type 8: Placenta Thrombosis"
        or
    "Event Type 9: Central Nervous System (CNS) Thrombosis"
        or
    "Event Type 10: Endocardial Thrombosis"

