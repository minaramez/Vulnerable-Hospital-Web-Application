-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2024 at 09:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackme`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_records`
--

CREATE TABLE `patient_records` (
  `record_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `record_date` date NOT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_records`
--

INSERT INTO `patient_records` (`record_id`, `patient_id`, `record_date`, `diagnosis`, `treatment`, `notes`) VALUES
(1, 1, '2017-08-13', 'Influenza', 'Antiviral medications', 'rest, fluids., Monitor for complications, especially in high-risk patients.'),
(5, 3, '2019-12-22', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(6, 4, '2017-08-21', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(7, 5, '2022-01-16', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(8, 6, '2018-02-27', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(9, 7, '2019-10-05', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(10, 8, '2021-04-16', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(11, 9, '2019-07-02', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(12, 10, '2022-04-16', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(13, 11, '2022-10-24', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(14, 12, '2024-11-27', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(15, 13, '2023-03-26', 'Chronic Obstructive Pulmonary Disease (COPD)', 'Bronchodilators, steroids, oxygen therapy.', 'Smoking cessation is critical; monitor for exacerbations.'),
(16, 14, '2017-01-04', 'Hepatitis B', 'Antiviral medications; monitoring for liver function and cancer.', 'Vaccination for prevention; regular liver imaging and blood tests.'),
(17, 15, '2020-01-04', 'Hepatitis C', 'Direct-acting antiviral drugs.', 'Screen for liver fibrosis and cancer; counsel on not sharing needles.'),
(18, 16, '2019-04-21', 'Dengue Fever', 'Supportive care, hydration.', 'Monitor for severe dengue; fluid management is key.'),
(19, 17, '2020-05-14', 'Lyme Disease', 'Antibiotics.', 'Early treatment is crucial; monitor for symptoms of disseminated infection.'),
(20, 18, '2018-07-25', 'Ebola Virus Disease', 'Supportive care, experimental treatments.', 'Strict infection control measures; supportive care to maintain organ function.'),
(21, 19, '2024-07-31', 'Zika Virus Infection', 'Supportive care.', 'Advise pregnant women on risks; mosquito control measures.'),
(22, 20, '2018-10-08', 'Cholera', 'Rehydration, antibiotics.', 'Prevention through clean water and sanitation; vaccine in endemic areas.'),
(23, 21, '2020-06-17', 'Cystic Fibrosis', 'Airway clearance therapies, medications to thin mucus, CFTR modulators.', 'Manage nutritional needs; monitor for CF-related diabetes.'),
(24, 22, '2019-02-26', 'Sickle Cell Anemia', 'Pain management, hydroxyurea, blood transfusions.', 'Prevent infections with vaccines; monitor for stroke.'),
(25, 23, '2018-06-04', 'Hemophilia', 'Clotting factor replacement therapy.', 'Avoid NSAIDs; prophylaxis to prevent bleeding episodes.'),
(26, 24, '2022-06-03', 'Multiple Sclerosis', 'Disease-modifying therapies, symptom management.', 'Monitor for new symptoms; focus on physical therapy and mental health.'),
(27, 25, '2024-11-07', 'Lupus (Systemic Lupus Erythematosus)', 'NSAIDs, antimalarial drugs, immunosuppressants.', 'Monitor organ involvement; sun protection is important.'),
(28, 26, '2020-12-30', 'Crohns Disease', 'Anti-inflammatory drugs, immunosuppressants, biologics.', 'Nutritional support; monitor for complications like fistulas.'),
(29, 27, '2022-05-20', 'Ulcerative Colitis', 'Aminosalicylates, corticosteroids, immunomodulators.', 'Monitor for colorectal cancer risk; may require surgery.'),
(30, 28, '2023-04-01', 'Osteoporosis', 'Calcium and vitamin D, bisphosphonates.', 'Focus on fall prevention; recommend weight-bearing exercise.'),
(31, 29, '2018-04-22', 'Cancer', 'Surgery, chemotherapy, radiation, targeted therapies.', 'Treatment varies by cancer type and stage; support for side effects.'),
(32, 30, '2019-12-01', 'Kidney Disease (Chronic Kidney Disease)', 'Blood pressure control, dietary changes, possibly dialysis.', 'Monitor kidney function; manage comorbid conditions.'),
(33, 31, '2017-09-26', 'Polycystic Ovary Syndrome (PCOS)', 'Lifestyle changes, hormonal treatments.', 'Manage metabolic risk factors; fertility treatment if needed.'),
(34, 32, '2023-03-29', 'Endometriosis', 'Pain relief, hormonal therapies, surgery.', 'Individualize treatment; consider impact on fertility.'),
(35, 33, '2018-01-06', 'Psoriasis', 'Topical treatments, phototherapy, systemic medications.', 'Screen for psoriatic arthritis; lifestyle advice.'),
(36, 34, '2020-10-14', 'Leukemia', 'Chemotherapy, targeted therapy, possibly stem cell transplant.', 'Treatment depends on leukemia type; monitor for infections'),
(37, 35, '2017-02-10', 'Melanoma', 'Surgical removal, targeted therapy, immunotherapy.', 'Regular skin checks; educate on sun protection.'),
(38, 36, '2023-07-04', 'Schizophrenia', 'Antipsychotic medications, psychotherapy.', 'Long-term treatment plan; support for patient and family.'),
(39, 35, '2021-01-29', 'Influenza', 'Antiviral medications, rest, fluids.', 'Monitor for complications, especially in high-risk patients.'),
(40, 34, '2022-07-01', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(41, 33, '2023-01-16', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(42, 32, '2023-12-31', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(43, 31, '2019-06-05', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(44, 30, '2023-05-29', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(45, 29, '2021-05-08', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(46, 28, '2022-05-31', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(47, 27, '2019-07-10', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(48, 26, '2018-10-21', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(49, 25, '2018-12-10', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(50, 24, '2019-07-14', 'Chronic Obstructive Pulmonary Disease (COPD)', 'Bronchodilators, steroids, oxygen therapy.', 'Smoking cessation is critical; monitor for exacerbations.'),
(51, 23, '2024-06-17', 'Hepatitis B', 'Antiviral medications; monitoring for liver function and cancer.', 'Vaccination for prevention; regular liver imaging and blood tests.'),
(52, 22, '2019-08-18', 'Hepatitis C', 'Direct-acting antiviral drugs.', 'Screen for liver fibrosis and cancer; counsel on not sharing needles.'),
(53, 21, '2017-02-02', 'Dengue Fever', 'Supportive care, hydration.', 'Monitor for severe dengue; fluid management is key.'),
(54, 20, '2024-01-28', 'Lyme Disease', 'Antibiotics.', 'Early treatment is crucial; monitor for symptoms of disseminated infection.'),
(55, 19, '2022-10-14', 'Ebola Virus Disease', 'Supportive care, experimental treatments.', 'Strict infection control measures; supportive care to maintain organ function.'),
(56, 18, '2018-10-16', 'Zika Virus Infection', 'Supportive care.', 'Advise pregnant women on risks; mosquito control measures.'),
(57, 17, '2019-04-13', 'Cholera', 'Rehydration, antibiotics.', 'Prevention through clean water and sanitation; vaccine in endemic areas.'),
(58, 16, '2022-06-06', 'Cystic Fibrosis', 'Airway clearance therapies, medications to thin mucus, CFTR modulators.', 'Manage nutritional needs; monitor for CF-related diabetes.'),
(59, 15, '2022-01-29', 'Sickle Cell Anemia', 'Pain management, hydroxyurea, blood transfusions.', 'Prevent infections with vaccines; monitor for stroke.'),
(60, 14, '2017-07-07', 'Hemophilia', 'Clotting factor replacement therapy.', 'Avoid NSAIDs; prophylaxis to prevent bleeding episodes.'),
(61, 13, '2023-07-20', 'Multiple Sclerosis', 'Disease-modifying therapies, symptom management.', 'Monitor for new symptoms; focus on physical therapy and mental health.'),
(62, 12, '2017-12-09', 'Lupus (Systemic Lupus Erythematosus)', 'NSAIDs, antimalarial drugs, immunosuppressants.', 'Monitor organ involvement; sun protection is important.'),
(63, 11, '2018-07-04', 'Crohns Disease', 'Anti-inflammatory drugs, immunosuppressants, biologics.', 'Nutritional support; monitor for complications like fistulas.'),
(64, 10, '2024-05-27', 'Ulcerative Colitis', 'Aminosalicylates, corticosteroids, immunomodulators.', 'Monitor for colorectal cancer risk; may require surgery.'),
(65, 9, '2018-04-13', 'Osteoporosis', 'Calcium and vitamin D, bisphosphonates.', 'Focus on fall prevention; recommend weight-bearing exercise.'),
(66, 8, '2017-06-11', 'Cancer', 'Surgery, chemotherapy, radiation, targeted therapies.', 'Treatment varies by cancer type and stage; support for side effects.'),
(67, 7, '2021-05-25', 'Kidney Disease (Chronic Kidney Disease)', 'Blood pressure control, dietary changes, possibly dialysis.', 'Monitor kidney function; manage comorbid conditions.'),
(68, 6, '2017-02-09', 'Polycystic Ovary Syndrome (PCOS)', 'Lifestyle changes, hormonal treatments.', 'Manage metabolic risk factors; fertility treatment if needed.'),
(69, 5, '2019-10-10', 'Endometriosis', 'Pain relief, hormonal therapies, surgery.', 'Individualize treatment; consider impact on fertility.'),
(70, 4, '2018-12-04', 'Psoriasis', 'Topical treatments, phototherapy, systemic medications.', 'Screen for psoriatic arthritis; lifestyle advice.'),
(71, 3, '2020-10-05', 'Leukemia', 'Chemotherapy, targeted therapy, possibly stem cell transplant.', 'Treatment depends on leukemia type; monitor for infections'),
(73, 35, '2017-12-16', 'Influenza', 'Antiviral medications, rest, fluids.', 'Monitor for complications, especially in high-risk patients.'),
(74, 34, '2021-01-29', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(75, 33, '2021-06-25', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(76, 32, '2019-10-28', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(77, 31, '2018-10-27', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(78, 30, '2023-07-25', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(79, 29, '2017-11-15', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(80, 28, '2021-12-21', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(81, 27, '2024-02-26', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(82, 26, '2023-08-18', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(83, 25, '2024-03-29', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(84, 24, '2018-06-04', 'Chronic Obstructive Pulmonary Disease (COPD)', 'Bronchodilators, steroids, oxygen therapy.', 'Smoking cessation is critical; monitor for exacerbations.'),
(85, 23, '2017-10-19', 'Hepatitis B', 'Antiviral medications; monitoring for liver function and cancer.', 'Vaccination for prevention; regular liver imaging and blood tests.'),
(86, 22, '2024-12-07', 'Hepatitis C', 'Direct-acting antiviral drugs.', 'Screen for liver fibrosis and cancer; counsel on not sharing needles.'),
(87, 21, '2019-02-01', 'Dengue Fever', 'Supportive care, hydration.', 'Monitor for severe dengue; fluid management is key.'),
(88, 20, '2020-05-03', 'Lyme Disease', 'Antibiotics.', 'Early treatment is crucial; monitor for symptoms of disseminated infection.'),
(89, 19, '2019-11-20', 'Ebola Virus Disease', 'Supportive care, experimental treatments.', 'Strict infection control measures; supportive care to maintain organ function.'),
(90, 18, '2022-03-09', 'Zika Virus Infection', 'Supportive care.', 'Advise pregnant women on risks; mosquito control measures.'),
(91, 17, '2023-08-15', 'Cholera', 'Rehydration, antibiotics.', 'Prevention through clean water and sanitation; vaccine in endemic areas.'),
(92, 16, '2020-10-17', 'Cystic Fibrosis', 'Airway clearance therapies, medications to thin mucus, CFTR modulators.', 'Manage nutritional needs; monitor for CF-related diabetes.'),
(93, 15, '2022-10-05', 'Sickle Cell Anemia', 'Pain management, hydroxyurea, blood transfusions.', 'Prevent infections with vaccines; monitor for stroke.'),
(94, 14, '2021-01-07', 'Hemophilia', 'Clotting factor replacement therapy.', 'Avoid NSAIDs; prophylaxis to prevent bleeding episodes.'),
(95, 13, '2018-07-06', 'Multiple Sclerosis', 'Disease-modifying therapies, symptom management.', 'Monitor for new symptoms; focus on physical therapy and mental health.'),
(96, 12, '2023-04-08', 'Lupus (Systemic Lupus Erythematosus)', 'NSAIDs, antimalarial drugs, immunosuppressants.', 'Monitor organ involvement; sun protection is important.'),
(97, 11, '2022-08-06', 'Crohns Disease', 'Anti-inflammatory drugs, immunosuppressants, biologics.', 'Nutritional support; monitor for complications like fistulas.'),
(98, 10, '2020-06-12', 'Ulcerative Colitis', 'Aminosalicylates, corticosteroids, immunomodulators.', 'Monitor for colorectal cancer risk; may require surgery.'),
(99, 9, '2017-08-17', 'Osteoporosis', 'Calcium and vitamin D, bisphosphonates.', 'Focus on fall prevention; recommend weight-bearing exercise.'),
(100, 8, '2017-01-17', 'Cancer', 'Surgery, chemotherapy, radiation, targeted therapies.', 'Treatment varies by cancer type and stage; support for side effects.'),
(101, 7, '2020-11-21', 'Kidney Disease (Chronic Kidney Disease)', 'Blood pressure control, dietary changes, possibly dialysis.', 'Monitor kidney function; manage comorbid conditions.'),
(102, 6, '2023-03-16', 'Polycystic Ovary Syndrome (PCOS)', 'Lifestyle changes, hormonal treatments.', 'Manage metabolic risk factors; fertility treatment if needed.'),
(103, 5, '2022-04-19', 'Endometriosis', 'Pain relief, hormonal therapies, surgery.', 'Individualize treatment; consider impact on fertility.'),
(104, 4, '2021-01-16', 'Psoriasis', 'Topical treatments, phototherapy, systemic medications.', 'Screen for psoriatic arthritis; lifestyle advice.'),
(105, 3, '2019-01-08', 'Leukemia', 'Chemotherapy, targeted therapy, possibly stem cell transplant.', 'Treatment depends on leukemia type; monitor for infections'),
(106, 1, '2019-06-26', 'Schizophrenia', 'Antipsychotic medications, psychotherapy.', 'Long-term treatment plan; support for patient and family.'),
(107, 28, '2020-02-06', 'Influenza', 'Antiviral medications, rest, fluids.', 'Monitor for complications, especially in high-risk patients.'),
(108, 18, '2017-11-05', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(109, 6, '2023-07-10', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(110, 24, '2019-04-22', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(111, 19, '2020-08-20', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(112, 21, '2024-02-23', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(113, 7, '2019-11-16', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(114, 4, '2020-05-25', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(115, 8, '2017-09-21', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(116, 33, '2019-02-08', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(117, 33, '2019-07-18', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(118, 36, '2023-07-06', 'Chronic Obstructive Pulmonary Disease (COPD)', 'Bronchodilators, steroids, oxygen therapy.', 'Smoking cessation is critical; monitor for exacerbations.'),
(119, 28, '2023-08-13', 'Hepatitis B', 'Antiviral medications; monitoring for liver function and cancer.', 'Vaccination for prevention; regular liver imaging and blood tests.'),
(120, 9, '2017-02-18', 'Hepatitis C', 'Direct-acting antiviral drugs.', 'Screen for liver fibrosis and cancer; counsel on not sharing needles.'),
(121, 11, '2021-12-21', 'Dengue Fever', 'Supportive care, hydration.', 'Monitor for severe dengue; fluid management is key.'),
(122, 6, '2021-01-23', 'Lyme Disease', 'Antibiotics.', 'Early treatment is crucial; monitor for symptoms of disseminated infection.'),
(123, 30, '2024-01-06', 'Ebola Virus Disease', 'Supportive care, experimental treatments.', 'Strict infection control measures; supportive care to maintain organ function.'),
(124, 29, '2019-06-27', 'Zika Virus Infection', 'Supportive care.', 'Advise pregnant women on risks; mosquito control measures.'),
(125, 12, '2021-12-09', 'Cholera', 'Rehydration, antibiotics.', 'Prevention through clean water and sanitation; vaccine in endemic areas.'),
(126, 27, '2017-12-24', 'Cystic Fibrosis', 'Airway clearance therapies, medications to thin mucus, CFTR modulators.', 'Manage nutritional needs; monitor for CF-related diabetes.'),
(127, 36, '2022-08-10', 'Sickle Cell Anemia', 'Pain management, hydroxyurea, blood transfusions.', 'Prevent infections with vaccines; monitor for stroke.'),
(128, 20, '2017-06-26', 'Hemophilia', 'Clotting factor replacement therapy.', 'Avoid NSAIDs; prophylaxis to prevent bleeding episodes.'),
(129, 24, '2023-09-26', 'Multiple Sclerosis', 'Disease-modifying therapies, symptom management.', 'Monitor for new symptoms; focus on physical therapy and mental health.'),
(130, 20, '2019-08-08', 'Lupus (Systemic Lupus Erythematosus)', 'NSAIDs, antimalarial drugs, immunosuppressants.', 'Monitor organ involvement; sun protection is important.'),
(131, 24, '2021-03-18', 'Crohns Disease', 'Anti-inflammatory drugs, immunosuppressants, biologics.', 'Nutritional support; monitor for complications like fistulas.'),
(132, 14, '2019-09-01', 'Ulcerative Colitis', 'Aminosalicylates, corticosteroids, immunomodulators.', 'Monitor for colorectal cancer risk; may require surgery.'),
(133, 15, '2020-09-20', 'Osteoporosis', 'Calcium and vitamin D, bisphosphonates.', 'Focus on fall prevention; recommend weight-bearing exercise.'),
(134, 22, '2019-11-26', 'Cancer', 'Surgery, chemotherapy, radiation, targeted therapies.', 'Treatment varies by cancer type and stage; support for side effects.'),
(135, 21, '2018-08-16', 'Kidney Disease (Chronic Kidney Disease)', 'Blood pressure control, dietary changes, possibly dialysis.', 'Monitor kidney function; manage comorbid conditions.'),
(136, 17, '2019-02-02', 'Polycystic Ovary Syndrome (PCOS)', 'Lifestyle changes, hormonal treatments.', 'Manage metabolic risk factors; fertility treatment if needed.'),
(137, 20, '2018-07-11', 'Endometriosis', 'Pain relief, hormonal therapies, surgery.', 'Individualize treatment; consider impact on fertility.'),
(138, 30, '2023-11-08', 'Psoriasis', 'Topical treatments, phototherapy, systemic medications.', 'Screen for psoriatic arthritis; lifestyle advice.'),
(139, 27, '2017-08-11', 'Leukemia', 'Chemotherapy, targeted therapy, possibly stem cell transplant.', 'Treatment depends on leukemia type; monitor for infections'),
(140, 10, '2020-01-04', 'Melanoma', 'Surgical removal, targeted therapy, immunotherapy.', 'Regular skin checks; educate on sun protection.'),
(141, 1, '2019-09-20', 'Schizophrenia', 'Antipsychotic medications, psychotherapy.', 'Long-term treatment plan; support for patient and family.'),
(142, 14, '2021-12-15', 'Influenza', 'Antiviral medications, rest, fluids.', 'Monitor for complications, especially in high-risk patients.'),
(143, 10, '2024-03-14', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(144, 10, '2022-10-16', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(145, 10, '2022-01-19', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(146, 24, '2018-07-27', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(147, 25, '2021-06-21', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(148, 33, '2023-11-07', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(149, 23, '2021-02-28', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(150, 22, '2018-09-29', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(151, 12, '2019-11-16', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(152, 3, '2022-06-04', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(154, 14, '2018-06-03', 'Influenza', 'Antiviral medications, rest, fluids.', 'Monitor for complications, especially in high-risk patients.'),
(155, 10, '2024-09-13', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(156, 10, '2017-12-02', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(157, 10, '2023-12-24', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(158, 24, '2022-08-05', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(159, 25, '2022-04-02', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(160, 33, '2019-02-02', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(161, 23, '2024-03-09', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(162, 22, '2019-03-17', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(163, 12, '2024-05-16', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(164, 3, '2022-07-23', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(165, 12, '2023-03-27', 'Hepatitis B', 'Antiviral medications; monitoring for liver function and cancer.', 'Vaccination for prevention; regular liver imaging and blood tests.'),
(166, 14, '2020-12-29', 'Hepatitis C', 'Direct-acting antiviral drugs.', 'Screen for liver fibrosis and cancer; counsel on not sharing needles.'),
(167, 27, '2017-01-20', 'Dengue Fever', 'Supportive care, hydration.', 'Monitor for severe dengue; fluid management is key.'),
(168, 28, '2023-07-04', 'Lyme Disease', 'Antibiotics.', 'Early treatment is crucial; monitor for symptoms of disseminated infection.'),
(169, 15, '2017-04-11', 'Ebola Virus Disease', 'Supportive care, experimental treatments.', 'Strict infection control measures; supportive care to maintain organ function.'),
(170, 18, '2022-02-18', 'Zika Virus Infection', 'Supportive care.', 'Advise pregnant women on risks; mosquito control measures.'),
(171, 32, '2022-02-16', 'Cholera', 'Rehydration, antibiotics.', 'Prevention through clean water and sanitation; vaccine in endemic areas.'),
(172, 3, '2018-01-02', 'Cystic Fibrosis', 'Airway clearance therapies, medications to thin mucus, CFTR modulators.', 'Manage nutritional needs; monitor for CF-related diabetes.'),
(173, 28, '2022-03-10', 'Sickle Cell Anemia', 'Pain management, hydroxyurea, blood transfusions.', 'Prevent infections with vaccines; monitor for stroke.'),
(174, 9, '2023-01-31', 'Hemophilia', 'Clotting factor replacement therapy.', 'Avoid NSAIDs; prophylaxis to prevent bleeding episodes.'),
(175, 21, '2022-08-10', 'Multiple Sclerosis', 'Disease-modifying therapies, symptom management.', 'Monitor for new symptoms; focus on physical therapy and mental health.'),
(176, 11, '2022-04-22', 'Lupus (Systemic Lupus Erythematosus)', 'NSAIDs, antimalarial drugs, immunosuppressants.', 'Monitor organ involvement; sun protection is important.'),
(177, 18, '2023-12-17', 'Crohns Disease', 'Anti-inflammatory drugs, immunosuppressants, biologics.', 'Nutritional support; monitor for complications like fistulas.'),
(178, 3, '2023-11-13', 'Ulcerative Colitis', 'Aminosalicylates, corticosteroids, immunomodulators.', 'Monitor for colorectal cancer risk; may require surgery.'),
(179, 21, '2022-08-30', 'Osteoporosis', 'Calcium and vitamin D, bisphosphonates.', 'Focus on fall prevention; recommend weight-bearing exercise.'),
(180, 16, '2022-06-30', 'Cancer', 'Surgery, chemotherapy, radiation, targeted therapies.', 'Treatment varies by cancer type and stage; support for side effects.'),
(181, 22, '2024-02-07', 'Kidney Disease (Chronic Kidney Disease)', 'Blood pressure control, dietary changes, possibly dialysis.', 'Monitor kidney function; manage comorbid conditions.'),
(182, 15, '2017-01-19', 'Polycystic Ovary Syndrome (PCOS)', 'Lifestyle changes, hormonal treatments.', 'Manage metabolic risk factors; fertility treatment if needed.'),
(183, 5, '2021-07-19', 'Endometriosis', 'Pain relief, hormonal therapies, surgery.', 'Individualize treatment; consider impact on fertility.'),
(184, 6, '2017-01-27', 'Psoriasis', 'Topical treatments, phototherapy, systemic medications.', 'Screen for psoriatic arthritis; lifestyle advice.'),
(185, 30, '2023-09-17', 'Leukemia', 'Chemotherapy, targeted therapy, possibly stem cell transplant.', 'Treatment depends on leukemia type; monitor for infections'),
(186, 10, '2024-05-13', 'Melanoma', 'Surgical removal, targeted therapy, immunotherapy.', 'Regular skin checks; educate on sun protection.'),
(187, 27, '2020-02-11', 'Schizophrenia', 'Antipsychotic medications, psychotherapy.', 'Long-term treatment plan; support for patient and family.'),
(188, 29, '2019-09-17', 'Influenza', 'Antiviral medications, rest, fluids.', 'Monitor for complications, especially in high-risk patients.'),
(189, 1, '2022-03-21', 'HIV/AIDS', 'Antiretroviral therapy (ART) for life.', 'Regular monitoring of viral load and CD4 counts; address comorbid conditions.'),
(190, 18, '2017-01-19', 'Malaria', 'Antimalarial drugs, supportive care.', 'Treatment choice depends on parasite type and drug resistance.'),
(191, 5, '2024-09-27', 'Diabetes Mellitus', 'Lifestyle changes, blood sugar monitoring, insulin or oral hypoglycemics.', 'Regular check-ups for complications; patient education on foot care and diet.'),
(192, 5, '2021-09-10', 'Hypertension (High Blood Pressure)', 'Lifestyle modifications, antihypertensive medications.', 'Monitor for medication side effects; encourage regular physical activity.'),
(193, 11, '2023-08-13', 'Coronary Artery Disease', 'Lifestyle changes, medications, possibly procedures like angioplasty or bypass surgery.', 'Stress importance of smoking cessation and diet; monitor for symptoms of heart failure.'),
(194, 12, '2024-06-14', 'Stroke', 'Acute management (thrombolysis), rehabilitation.', 'Focus on prevention of future strokes; manage risk factors.'),
(195, 25, '2023-10-26', 'Alzheimers Disease', 'Symptomatic treatments, caregiver support.', 'Address safety concerns, cognitive and behavioral symptoms.'),
(196, 14, '2017-01-14', 'Parkinsons Disease', 'Dopaminergic medications, physical therapy.', 'Adjust treatments based on symptom progression; consider multidisciplinary care.'),
(197, 13, '2023-06-13', 'Rheumatoid Arthritis', 'DMARDs, NSAIDs, lifestyle modifications.', 'Monitor for medication side effects; encourage exercise.'),
(198, 32, '2023-12-07', 'Asthma', 'Inhalers (corticosteroids, bronchodilators), avoiding triggers.', 'Asthma action plan; regular review of inhaler technique.'),
(199, 19, '2024-11-07', 'Chronic Obstructive Pulmonary Disease (COPD)', 'Bronchodilators, steroids, oxygen therapy.', 'Smoking cessation is critical; monitor for exacerbations.'),
(200, 25, '2020-01-18', 'Hepatitis B', 'Antiviral medications; monitoring for liver function and cancer.', 'Vaccination for prevention; regular liver imaging and blood tests.'),
(201, 23, '2023-06-16', 'Hepatitis C', 'Direct-acting antiviral drugs.', 'Screen for liver fibrosis and cancer; counsel on not sharing needles.'),
(202, 9, '2020-11-28', 'Dengue Fever', 'Supportive care, hydration.', 'Monitor for severe dengue; fluid management is key.'),
(203, 18, '2023-07-06', 'Lyme Disease', 'Antibiotics.', 'Early treatment is crucial; monitor for symptoms of disseminated infection.'),
(204, 11, '2018-08-05', 'Ebola Virus Disease', 'Supportive care, experimental treatments.', 'Strict infection control measures; supportive care to maintain organ function.'),
(205, 36, '2020-04-24', 'Zika Virus Infection', 'Supportive care.', 'Advise pregnant women on risks; mosquito control measures.'),
(206, 16, '2022-05-15', 'Cholera', 'Rehydration, antibiotics.', 'Prevention through clean water and sanitation; vaccine in endemic areas.'),
(207, 36, '2024-04-06', 'Cystic Fibrosis', 'Airway clearance therapies, medications to thin mucus, CFTR modulators.', 'Manage nutritional needs; monitor for CF-related diabetes.'),
(208, 31, '2017-05-20', 'Sickle Cell Anemia', 'Pain management, hydroxyurea, blood transfusions.', 'Prevent infections with vaccines; monitor for stroke.'),
(209, 34, '2017-08-20', 'Hemophilia', 'Clotting factor replacement therapy.', 'Avoid NSAIDs; prophylaxis to prevent bleeding episodes.'),
(210, 21, '2024-11-28', 'Multiple Sclerosis', 'Disease-modifying therapies, symptom management.', 'Monitor for new symptoms; focus on physical therapy and mental health.'),
(211, 19, '2022-04-22', 'Lupus (Systemic Lupus Erythematosus)', 'NSAIDs, antimalarial drugs, immunosuppressants.', 'Monitor organ involvement; sun protection is important.'),
(212, 13, '2023-01-03', 'Crohns Disease', 'Anti-inflammatory drugs, immunosuppressants, biologics.', 'Nutritional support; monitor for complications like fistulas.'),
(213, 26, '2019-04-25', 'Ulcerative Colitis', 'Aminosalicylates, corticosteroids, immunomodulators.', 'Monitor for colorectal cancer risk; may require surgery.'),
(214, 11, '2022-07-19', 'Osteoporosis', 'Calcium and vitamin D, bisphosphonates.', 'Focus on fall prevention; recommend weight-bearing exercise.'),
(215, 35, '2018-10-21', 'Cancer', 'Surgery, chemotherapy, radiation, targeted therapies.', 'Treatment varies by cancer type and stage; support for side effects.'),
(216, 21, '2023-09-22', 'Kidney Disease (Chronic Kidney Disease)', 'Blood pressure control, dietary changes, possibly dialysis.', 'Monitor kidney function; manage comorbid conditions.'),
(217, 32, '2018-01-22', 'Polycystic Ovary Syndrome (PCOS)', 'Lifestyle changes, hormonal treatments.', 'Manage metabolic risk factors; fertility treatment if needed.'),
(218, 16, '2018-11-25', 'Endometriosis', 'Pain relief, hormonal therapies, surgery.', 'Individualize treatment; consider impact on fertility.'),
(219, 18, '2024-10-23', 'Psoriasis', 'Topical treatments, phototherapy, systemic medications.', 'Screen for psoriatic arthritis; lifestyle advice.'),
(220, 23, '2019-07-11', 'Leukemia', 'Chemotherapy, targeted therapy, possibly stem cell transplant.', 'Treatment depends on leukemia type; monitor for infections'),
(221, 9, '2017-01-21', 'Melanoma', 'Surgical removal, targeted therapy, immunotherapy.', 'Regular skin checks; educate on sun protection.'),
(222, 7, '2017-12-11', 'Schizophrenia', 'Antipsychotic medications, psychotherapy.', 'Long-term treatment plan; support for patient and family.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `First Name` varchar(255) DEFAULT NULL,
  `Family Name` varchar(255) DEFAULT NULL,
  `Date of birth` date DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Contact Information` varchar(255) DEFAULT NULL,
  `Emergency Contact information` varchar(255) DEFAULT NULL,
  `Marital status` enum('Single','Married','Divorced','Widowed') DEFAULT 'Single',
  `Occupation` varchar(255) DEFAULT NULL,
  `Family Medical History` text DEFAULT NULL,
  `Social History` text DEFAULT NULL,
  `Health Insurance Details` varchar(255) DEFAULT NULL,
  `Government ID` varchar(255) DEFAULT NULL,
  `Payment Information` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `First Name`, `Family Name`, `Date of birth`, `Gender`, `Contact Information`, `Emergency Contact information`, `Marital status`, `Occupation`, `Family Medical History`, `Social History`, `Health Insurance Details`, `Government ID`, `Payment Information`) VALUES
(1, 'admin', 'adminabcd', 'Admin', 'Admin', '1996-02-12', 'Male', '123456789', '987654321', '', 'Tutor', 'Diabetes', 'Smoker', 'Policy #51654841', 'ID#88654324', 'Insurance'),
(3, 'maria', 'mariaDB123@VH', 'Maria', 'Smith', '1997-02-13', 'Female', '17027523840', '12244537907', 'Single', 'Unemployed', 'Diabetes', 'Smoker', 'Policy #51916041', 'ID#10196319', 'Insurance'),
(4, 'hackusifyoucan', 'youcanthackuslol', 'Hackus', 'ifyoucan', '1986-12-12', 'Female', '10660965112', '19578317322', 'Married', 'Doctor', 'Heart Disease', 'Regular Alcohol', 'Policy #91910753', 'ID#33960148', 'Credit Card'),
(5, 'maria', 'mariaDB123@VH', 'Maria', 'Smith', '1986-09-15', 'Male', '18229682428', '16723621695', 'Divorced', 'Doctor', 'Heart Disease', 'Smoker', 'Policy #47963827', 'ID#94686734', 'Cash'),
(6, 'hackusifyoucan', 'youcanthackuslol', 'Hackus', 'ifyoucan', '1994-03-01', 'Male', '14368326513', '18041788280', 'Divorced', 'Unemployed', 'Cancer', 'Regular Alcohol', 'Policy #46365658', 'ID#60545679', 'Cash'),
(7, 'lmitchell', 'g8bkg6r9+D', 'L', 'mitchell', '1955-04-25', 'Female', '17127863916', '16405501180', 'Single', 'Nurse', 'None', 'Regular Alcohol', 'Policy #06977412', 'ID#88510164', 'Insurance'),
(8, 'jessicasmith', '!xs2PMgqh%', 'Jessica', 'smith', '1970-06-03', 'Male', '16272258824', '15838262965', 'Divorced', 'Teacher', 'None', 'Non-smoker', 'Policy #30409663', 'ID#83639160', 'Credit Card'),
(9, 'sgarza', '!@20Vy0j1Q', 'S', 'garza', '1957-10-13', 'Female', '10340195100', '16664368845', 'Married', 'Doctor', 'Cancer', 'Smoker', 'Policy #76890998', 'ID#05854485', 'Cash'),
(10, 'heather18', 'vLqJp2Pa8%', 'Heather', 'Johnson', '1985-01-17', 'Female', '16431755152', '18630700734', 'Widowed', 'Engineer', 'Heart Disease', 'Smoker', 'Policy #50286670', 'ID#22635559', 'Cash'),
(11, 'juliebutler', '+BMS9G_a@B', 'Julie', 'butler', '1980-08-23', 'Female', '17940124606', '15959601329', 'Widowed', 'Doctor', 'Heart Disease', 'Occasional Alcohol', 'Policy #64067347', 'ID#94633000', 'Cash'),
(12, 'hallangela', '&8@Rn+Zo)v', 'Hall', 'angela', '1969-08-01', 'Male', '19040234356', '16440360796', 'Single', 'Doctor', 'Heart Disease', 'Non-smoker', 'Policy #49650173', 'ID#58334714', 'Insurance'),
(13, 'anna08', '468gcpx8#B', 'Anna', 'Jones', '1964-09-19', 'Male', '18679589787', '19170739342', 'Divorced', 'Teacher', 'Heart Disease', 'Smoker', 'Policy #33664788', 'ID#88483014', 'Credit Card'),
(14, 'xgordon', 'pv%YY0Hd2%', 'X', 'gordon', '1951-11-13', 'Female', '13149004155', '14789682088', 'Married', 'Nurse', 'None', 'Regular Alcohol', 'Policy #31732284', 'ID#66893298', 'Insurance'),
(15, 'chad85', '(2zIJzhiHO', 'Chad', 'Miller', '1999-02-05', 'Female', '17160314196', '19772072739', 'Widowed', 'Engineer', 'Heart Disease', 'Occasional Alcohol', 'Policy #09495666', 'ID#86458985', 'Cash'),
(16, 'andrewayala', '*_zE%ragm1', 'Andrewa', 'yala', '1950-11-18', 'Male', '15810992063', '15820267447', 'Divorced', 'Student', 'None', 'Occasional Alcohol', 'Policy #76083884', 'ID#62529572', 'Credit Card'),
(17, 'petersonshawn', '&BH^Ibzk2Q', 'Peterson', 'shawn', '1972-08-27', 'Female', '10837823577', '12490841699', 'Married', 'Engineer', 'Heart Disease', 'Smoker', 'Policy #05978679', 'ID#35690189', 'Cash'),
(18, 'hendersonheather', 'RF67A#is^l', 'Henderson', 'heather', '1970-05-21', 'Male', '17993574804', '14607216638', 'Divorced', 'Unemployed', 'None', 'Occasional Alcohol', 'Policy #16370037', 'ID#55182774', 'Cash'),
(19, 'kwhite', 'EN@D2CSjo#', 'K', 'white', '1950-10-02', 'Male', '11984722201', '10585015714', 'Divorced', 'Doctor', 'None', 'Smoker', 'Policy #33052345', 'ID#55516338', 'Cash'),
(20, 'brandymontgomery', '^8QQhn0_+u', 'Brandy', 'montgomery', '1962-11-15', 'Male', '16911103768', '19744669705', 'Widowed', 'Unemployed', 'Heart Disease', 'Regular Alcohol', 'Policy #66109825', 'ID#84641165', 'Insurance'),
(21, 'arthurjames', '$ay@7AQon^', 'Arthur', 'james', '1951-09-08', 'Male', '19231507977', '15973098676', 'Married', 'Engineer', 'Cancer', 'Non-smoker', 'Policy #57348563', 'ID#56306184', 'Cash'),
(22, 'nicole55', '&6eI)lQdO#', 'Nicole', 'Brown', '1966-10-22', 'Female', '18230485369', '12943632070', 'Widowed', 'Teacher', 'Cancer', 'Smoker', 'Policy #72400083', 'ID#31246952', 'Insurance'),
(23, 'rmiller', '06Q%B@uB(v', 'R', 'miller', '1979-11-10', 'Male', '12199242078', '15372431279', 'Single', 'Doctor', 'Diabetes', 'Smoker', 'Policy #39534037', 'ID#51946365', 'Insurance'),
(24, 'xhamilton', '!0K*6UowQe', 'X', 'hamilton', '1980-06-01', 'Male', '18133304428', '12213155929', 'Single', 'Engineer', 'Heart Disease', 'Non-smoker', 'Policy #55900676', 'ID#49100506', 'Cash'),
(25, 'judithjohnson', '&M@93TNp$p', 'Judith', 'johnson', '1968-12-13', 'Male', '12967511348', '16529982553', 'Married', 'Student', 'Cancer', 'Occasional Alcohol', 'Policy #61643674', 'ID#70450257', 'Cash'),
(26, 'lwright', '0_5&W6di)5', 'L', 'wright', '1991-06-25', 'Male', '19267544990', '11687766041', 'Single', 'Teacher', 'Diabetes', 'Regular Alcohol', 'Policy #38778822', 'ID#92153643', 'Credit Card'),
(27, 'vazquezsusan', 'us&uQXMv!1', 'Vazquez', 'susan', '1981-11-14', 'Male', '11576809185', '17956646425', 'Divorced', 'Doctor', 'Heart Disease', 'Smoker', 'Policy #65905849', 'ID#25382586', 'Cash'),
(28, 'jennifer66', 'x@3$7TiMGq', 'Jennifer', 'Garcia', '1962-03-14', 'Male', '13879791728', '17641351314', 'Single', 'Nurse', 'None', 'Regular Alcohol', 'Policy #85436876', 'ID#07806755', 'Cash'),
(29, 'rossdaniel', '!8&k#kQNdk', 'Ross', 'daniel', '1961-06-12', 'Male', '17775433005', '19714908496', 'Widowed', 'Engineer', 'Cancer', 'Non-smoker', 'Policy #38832200', 'ID#18926079', 'Insurance'),
(30, 'jtaylor', 'c(3dUe5u%B', 'J', 'taylor', '1977-06-23', 'Male', '12322988238', '13662435593', 'Widowed', 'Nurse', 'Diabetes', 'Regular Alcohol', 'Policy #44077738', 'ID#92939811', 'Credit Card'),
(31, 'linda07', '^s7dFFx$p+', 'Linda', 'Rodriguez', '1986-04-18', 'Male', '10122707737', '11585286005', 'Widowed', 'Engineer', 'Diabetes', 'Non-smoker', 'Policy #07462112', 'ID#88754752', 'Credit Card'),
(32, 'nathanwilliamson', '@3WiJslqHn', 'Nathan', 'williamson', '1986-08-19', 'Female', '11959299642', '10773063457', 'Divorced', 'Doctor', 'Diabetes', 'Smoker', 'Policy #40662029', 'ID#52156611', 'Insurance'),
(33, 'isaunders', 'F9EZxb_t(3', 'Isa', 'unders', '1975-04-22', 'Female', '13363071991', '18656352933', 'Widowed', 'Teacher', 'Diabetes', 'Regular Alcohol', 'Policy #04368216', 'ID#14601366', 'Insurance'),
(34, 'gallagherbobby', '9JTxkZ6h&%', 'Gallagher', 'bobby', '1992-04-19', 'Female', '15653132105', '18895194542', 'Divorced', 'Nurse', 'Diabetes', 'Occasional Alcohol', 'Policy #53546551', 'ID#94687224', 'Cash'),
(35, 'mooreangela', 'kJ5sPvdd8_', 'Moore', 'angela', '1954-07-11', 'Male', '16337077370', '16324128717', 'Married', 'Doctor', 'Cancer', 'Smoker', 'Policy #48634395', 'ID#93145884', 'Credit Card'),
(36, 'kimbrandon', '^8TiZdd7(X', 'Kim', 'brandon', '1980-05-28', 'Male', '15109926066', '18537452140', 'Single', 'Engineer', 'Heart Disease', 'Smoker', 'Policy #77862038', 'ID#55849476', 'Credit Card');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_records`
--
ALTER TABLE `patient_records`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_records`
--
ALTER TABLE `patient_records`
  ADD CONSTRAINT `patient_records_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
