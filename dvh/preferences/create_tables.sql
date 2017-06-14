CREATE TABLE IF NOT EXISTS Plans (mrn varchar(12), birth_date date, age smallint, patient_sex char(1), sim_study_date date, physician varchar(50), tx_site varchar(50), rx_dose real, fxs int, tx_energies varchar(30), study_instance_uid varchar(100), patient_orientation varchar(3), plan_time_stamp timestamp, struct_time_stamp timestamp, dose_time_stamp timestamp, tps_manufacturer varchar(50), tps_software_nam varchar(50), tps_software_version varchar(30), tx_modality varchar(30), tx_time time, total_mu real, dose_grid_res varchar(16), heterogeneity_correction varchar(30));
CREATE TABLE IF NOT EXISTS DVHs (mrn varchar(12), study_instance_uid varchar(100), institutional_roi varchar(50), physician_roi varchar(50), roi_name varchar(50), roi_type varchar(20), volume real, min_dose real, mean_dose real, max_dose real, dvh_string text);
CREATE TABLE IF NOT EXISTS Beams (mrn varchar(12), study_instance_uid varchar(100), beam_number int, beam_name varchar(30), fx_grp_number smallint, fx_count int, fx_grp_beam_count smallint, beam_dose real, beam_mu real, radiation_type varchar(30), beam_energy real, beam_type varchar(30), control_point_count int, gantry_start real, gantry_end real, gantry_rot_dir varchar(5), collimator_start real, collimator_end real, collimator_rot_dir varchar(5), couch_start real, couch_end real, couch_rot_dir varchar(5), isocenter varchar(35), ssd real, treatment_machine varchar(30));
CREATE TABLE IF NOT EXISTS Rxs (mrn varchar(12), study_instance_uid varchar(200), plan_name varchar(50), fx_grp_name varchar(30), fx_grp_number smallint, fx_grp_count smallint, fx_dose real, fxs smallint, rx_dose real, rx_percent real, normalization_method varchar(30), normalization_object varchar(30));