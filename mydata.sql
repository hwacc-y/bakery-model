PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "time_season" (
                    	"t_season"	text,
                    	PRIMARY KEY("t_season")
                    );
INSERT INTO time_season VALUES('S1');
INSERT INTO time_season VALUES('S2');
INSERT INTO time_season VALUES('S3');
INSERT INTO time_season VALUES('S4');
CREATE TABLE IF NOT EXISTS "time_period_labels" (
                	"t_period_labels"	text,
                	"t_period_labels_desc"	text,
                	PRIMARY KEY("t_period_labels")
                    );
INSERT INTO time_period_labels VALUES('e','existing vintages');
INSERT INTO time_period_labels VALUES('f','future vintages');
CREATE TABLE IF NOT EXISTS "time_periods" (
                    	"t_periods"	integer,
                    	"flag"	text,
                    	PRIMARY KEY("t_periods"),
                    	FOREIGN KEY("flag") REFERENCES "time_period_labels"("t_period_labels")
                    );
INSERT INTO time_periods VALUES(2019,'e');
INSERT INTO time_periods VALUES(2020,'f');
INSERT INTO time_periods VALUES(2021,'f');
INSERT INTO time_periods VALUES(2022,'f');
CREATE TABLE IF NOT EXISTS "time_of_day" (
                    	"t_day"	text,
                    	PRIMARY KEY("t_day")
                    );
INSERT INTO time_of_day VALUES('H1');
INSERT INTO time_of_day VALUES('H2');
INSERT INTO time_of_day VALUES('H3');
INSERT INTO time_of_day VALUES('H4');
INSERT INTO time_of_day VALUES('H5');
INSERT INTO time_of_day VALUES('H6');
INSERT INTO time_of_day VALUES('H7');
INSERT INTO time_of_day VALUES('H8');
INSERT INTO time_of_day VALUES('H9');
INSERT INTO time_of_day VALUES('H10');
INSERT INTO time_of_day VALUES('H11');
INSERT INTO time_of_day VALUES('H12');
INSERT INTO time_of_day VALUES('H13');
INSERT INTO time_of_day VALUES('H14');
INSERT INTO time_of_day VALUES('H15');
INSERT INTO time_of_day VALUES('H16');
INSERT INTO time_of_day VALUES('H17');
INSERT INTO time_of_day VALUES('H18');
INSERT INTO time_of_day VALUES('H19');
INSERT INTO time_of_day VALUES('H20');
INSERT INTO time_of_day VALUES('H21');
INSERT INTO time_of_day VALUES('H22');
INSERT INTO time_of_day VALUES('H23');
INSERT INTO time_of_day VALUES('H24');
CREATE TABLE IF NOT EXISTS "SegFrac" (
                    	"season_name"	text,
                    	"time_of_day_name"	text,
                    	"segfrac"	real CHECK("segfrac" >= 0 AND "segfrac" <= 1),
                    	"segfrac_notes"	text,
                    	PRIMARY KEY("season_name","time_of_day_name"),
                    	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
                    	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day")
                    );
INSERT INTO SegFrac VALUES('S1','H1',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H2',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H3',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H4',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H5',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H6',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H7',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H8',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H9',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H10',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H11',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H12',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H13',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H14',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H15',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H16',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H17',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H18',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H19',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H20',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H21',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H22',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H23',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S1','H24',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H1',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H2',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H3',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H4',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H5',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H6',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H7',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H8',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H9',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H10',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H11',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H12',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H13',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H14',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H15',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H16',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H17',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H18',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H19',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H20',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H21',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H22',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H23',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S2','H24',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H1',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H2',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H3',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H4',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H5',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H6',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H7',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H8',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H9',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H10',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H11',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H12',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H13',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H14',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H15',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H16',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H17',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H18',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H19',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H20',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H21',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H22',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H23',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S3','H24',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H1',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H2',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H3',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H4',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H5',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H6',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H7',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H8',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H9',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H10',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H11',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H12',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H13',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H14',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H15',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H16',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H17',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H18',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H19',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H20',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H21',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H22',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H23',0.010416666666666666088,'fraction of year');
INSERT INTO SegFrac VALUES('S4','H24',0.010416666666666666088,'fraction of year');
CREATE TABLE IF NOT EXISTS "regions" (
                    	"regions"	TEXT,
                    	"region_note"	TEXT,
                    	PRIMARY KEY("regions")
                    );
INSERT INTO regions VALUES('MyBakery','');
CREATE TABLE IF NOT EXISTS "commodity_labels" (
                       "comm_labels"	text,
                       "comm_labels_desc"	text,
                       PRIMARY KEY("comm_labels")
                    );
INSERT INTO commodity_labels VALUES('p','physical commodity');
INSERT INTO commodity_labels VALUES('d','demand commodity');
INSERT INTO commodity_labels VALUES('e','emissions commodity');
CREATE TABLE IF NOT EXISTS "commodities" (
                    	"comm_name"	text,
                    	"flag"	text,
                    	"comm_desc"	text,
                    	PRIMARY KEY("comm_name"),
                    	FOREIGN KEY("flag") REFERENCES "commodity_labels"("comm_labels")
                    );
INSERT INTO commodities VALUES('NH3_DEM','d','Total cookie demand of all types, one cookie');
INSERT INTO commodities VALUES('H2','p','Refined Hydrogen, litres');
INSERT INTO commodities VALUES('NH3','p','Refined Hydrogen, litres');
INSERT INTO commodities VALUES('ELC','p','Refined Hydrogen, litres');
CREATE TABLE IF NOT EXISTS "EmissionLimit" (
                    	"regions"	text,
                    	"periods"	integer,
                    	"emis_comm"	text,
                    	"emis_limit"	real,
                    	"emis_limit_units"	text,
                    	"emis_limit_notes"	text,
                    	PRIMARY KEY("periods","emis_comm"),
                    	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name")
                    );
CREATE TABLE IF NOT EXISTS "GlobalDiscountRate" (
                    	"rate"	real
                    );
INSERT INTO GlobalDiscountRate VALUES(0.0010000000000000000208);
CREATE TABLE IF NOT EXISTS "PlanningReserveMargin" (
                    	`regions`	text,
                    	`reserve_margin`	REAL,
                    	PRIMARY KEY(regions),
                    	FOREIGN KEY(`regions`) REFERENCES regions
                    );
INSERT INTO PlanningReserveMargin VALUES('MyBakery',0.020000000000000000416);
CREATE TABLE IF NOT EXISTS "Demand" (
                    	"regions"	text,
                    	"periods"	integer,
                    	"demand_comm"	text,
                    	"demand"	real,
                    	"demand_units"	text,
                    	"demand_notes"	text,
                    	PRIMARY KEY("regions","periods","demand_comm"),
                    	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("demand_comm") REFERENCES "commodities"("comm_name")
                    );
INSERT INTO Demand VALUES('MyBakery',2020,'NH3_DEM',4800.0,'one cookie','');
INSERT INTO Demand VALUES('MyBakery',2021,'NH3_DEM',4800.0,'one cookie','');
CREATE TABLE IF NOT EXISTS "DemandSpecificDistribution" (
                	"regions"	text,
                	"season_name"	text,
                	"time_of_day_name"	text,
                	"demand_name"	text,
                	"dds"	real CHECK("dds" >= 0 AND "dds" <= 1),
                	"dds_notes"	text,
                	PRIMARY KEY("regions","season_name","time_of_day_name","demand_name"),
                	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
                	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
                	FOREIGN KEY("demand_name") REFERENCES "commodities"("comm_name")
                    );
CREATE TABLE IF NOT EXISTS "technology_labels" (
    	"tech_labels"	text,
    	"tech_labels_desc"	text,
    	PRIMARY KEY("tech_labels")
    );
INSERT INTO technology_labels VALUES('p','production technology');
INSERT INTO technology_labels VALUES('pb','baseload production technology');
INSERT INTO technology_labels VALUES('ps','storage production technology');
INSERT INTO technology_labels VALUES('r','resource technology');
CREATE TABLE IF NOT EXISTS "sector_labels" (
                    "sector"	text,
                    PRIMARY KEY("sector")
                    );
INSERT INTO sector_labels VALUES('bakery');
INSERT INTO sector_labels VALUES('store');
CREATE TABLE IF NOT EXISTS "technologies" (
                    "tech"	text,
                    "flag"	text,
                    "sector"	text,
                    "tech_desc"	text,
                    "tech_category"	text,
                    PRIMARY KEY("tech"),
                    FOREIGN KEY("flag") REFERENCES "technology_labels"("tech_labels"),
                    FOREIGN KEY("sector") REFERENCES "sector_labels"("sector")
                    );
INSERT INTO technologies VALUES('IMP_ELC','p','store','store bought butter, stick butter','grocery');
INSERT INTO technologies VALUES('IMP_H2','p','store','store bought sugar, pound sugar','grocery');
INSERT INTO technologies VALUES('MIXER_ELC','p','bakery','Electric mixer, lbs of dough per hour','fancy kitchen');
INSERT INTO technologies VALUES('STORE','p','bakery','where cookies get sold, number of storefronts','fancy kitchen');
CREATE TABLE IF NOT EXISTS "CapacityToActivity" (
                    	"regions"	text,
                    	"tech"	text,
                    	"c2a"	real,
                    	"c2a_notes"	TEXT,
                    	PRIMARY KEY("regions","tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
INSERT INTO CapacityToActivity VALUES('MyBakery','IMP_H2',1.0,'');
INSERT INTO CapacityToActivity VALUES('MyBakery','MIXER_ELC',52560.0,'');
INSERT INTO CapacityToActivity VALUES('MyBakery','STORE',1.0,'');
CREATE TABLE IF NOT EXISTS "LifetimeTech" (
                    	"regions"	text,
                    	"tech"	text,
                    	"life"	real,
                    	"life_notes"	text,
                    	PRIMARY KEY("regions","tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
INSERT INTO LifetimeTech VALUES('MyBakery','IMP_H2',1000.0,'NULL');
INSERT INTO LifetimeTech VALUES('MyBakery','MIXER_ELC',25.0,'NULL');
INSERT INTO LifetimeTech VALUES('MyBakery','STORE',1000.0,'NULL');
CREATE TABLE IF NOT EXISTS "LifetimeLoanTech" (
                    	"regions"	text,
                    	"tech"	text,
                    	"loan"	real,
                    	"loan_notes"	text,
                    	PRIMARY KEY("regions","tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
CREATE TABLE IF NOT EXISTS "tech_reserve" (
                    	"tech"	text,
                    	"notes"	text,
                    	PRIMARY KEY("tech")
                    );
CREATE TABLE IF NOT EXISTS "tech_ramping" (
                    	"tech"	text,
                    	"notes"	text,
                    	PRIMARY KEY("tech")
                    );
CREATE TABLE RampUp(
                    	"regions" text,
                    	"tech" text,
                    	"ramp_up" real,
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	PRIMARY KEY ("regions", "tech")
                    );
CREATE TABLE RampDown(
                     	"regions" text,
                     	"tech" text,
                     	"ramp_down" real,
                     	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                     	PRIMARY KEY ("regions", "tech")
                    );
CREATE TABLE IF NOT EXISTS "StorageDuration" (
                    	"regions"	text,
                    	"tech"	text,
                    	"duration"	real,
                    	"duration_notes"	text,
                    	PRIMARY KEY("regions","tech")
                    );
CREATE TABLE IF NOT EXISTS "tech_curtailment" (
                    	"tech"	text,
                    	"notes"	TEXT,
                    	PRIMARY KEY("tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
CREATE TABLE IF NOT EXISTS "tech_exchange" (
                    	"tech"	text,
                    	"notes"	TEXT,
                    	PRIMARY KEY("tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
CREATE TABLE IF NOT EXISTS "MaxCapacity" (
                    	"regions"	text,
                    	"periods"	integer,
                    	"tech"	text,
                    	"maxcap"	real,
                    	"maxcap_units"	text,
                    	"maxcap_notes"	text,
                    	PRIMARY KEY("regions","periods","tech"),
                    	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
CREATE TABLE IF NOT EXISTS "MinCapacity" (
                    	"regions"	text,
                    	"periods"	integer,
                    	"tech"	text,
                    	"maxcap"	real,
                    	"maxcap_units"	text,
                    	"maxcap_notes"	text,
                    	PRIMARY KEY("regions","periods","tech"),
                    	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
INSERT INTO MinCapacity VALUES('MyBakery',2020,'MIXER_ELC',1.0,'lbs of dough per hour','');
CREATE TABLE IF NOT EXISTS "TechInputSplit" (
                    	"regions"	TEXT,
                    	"periods"	integer,
                    	"input_comm"	text,
                    	"tech"	text,
                    	"ti_split"	real,
                    	"ti_split_notes"	text,
                    	PRIMARY KEY("regions","periods","input_comm","tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
                    );
INSERT INTO TechInputSplit VALUES('MyBakery',2020,'ELC','MIXER_ELC',0.11100000000000000144,'');
INSERT INTO TechInputSplit VALUES('MyBakery',2021,'ELC','MIXER_ELC',0.11100000000000000144,'');
INSERT INTO TechInputSplit VALUES('MyBakery',2020,'H2','MIXER_ELC',0.88900000000000001243,'');
INSERT INTO TechInputSplit VALUES('MyBakery',2021,'H2','MIXER_ELC',0.88900000000000001243,'');
CREATE TABLE IF NOT EXISTS "Efficiency" (
                    	"regions"	text,
                    	"input_comm"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"output_comm"	text,
                    	"efficiency"	real CHECK("efficiency" > 0),
                    	"eff_notes"	text,
                    	PRIMARY KEY("regions","input_comm","tech","vintage","output_comm"),
                    	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name")
                    );
COMMIT;
