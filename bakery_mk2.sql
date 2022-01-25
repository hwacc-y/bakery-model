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
INSERT INTO commodities VALUES('COOKIES_DEM','d','Total cookie demand of all types, one cookie');
INSERT INTO commodities VALUES('DOUGH','p','tollhouse cookie dough, pounds');
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
INSERT INTO GlobalDiscountRate VALUES(0.0);
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
INSERT INTO Demand VALUES('MyBakery',2020,'COOKIES_DEM',6000.0,'one cookie','');
INSERT INTO Demand VALUES('MyBakery',2021,'COOKIES_DEM',6060.3010025050080005,'one cookie','');
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
INSERT INTO technologies VALUES('CONV_OVEN','p','bakery','Convection oven, cookies per hour','fancy kitchen');
CREATE TABLE IF NOT EXISTS "CapacityToActivity" (
                    	"regions"	text,
                    	"tech"	text,
                    	"c2a"	real,
                    	"c2a_notes"	TEXT,
                    	PRIMARY KEY("regions","tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
INSERT INTO CapacityToActivity VALUES('MyBakery','CONV_OVEN',420479.99999999999998,'');
CREATE TABLE IF NOT EXISTS "LifetimeTech" (
                    	"regions"	text,
                    	"tech"	text,
                    	"life"	real,
                    	"life_notes"	text,
                    	PRIMARY KEY("regions","tech"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
INSERT INTO LifetimeTech VALUES('MyBakery','CONV_OVEN',25.0,'NULL');
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
INSERT INTO Efficiency VALUES('MyBakery','DOUGH','CONV_OVEN',2020,'COOKIES_DEM',10.80000000000000071,'NULL');
INSERT INTO Efficiency VALUES('MyBakery','DOUGH','CONV_OVEN',2021,'COOKIES_DEM',10.80000000000000071,'NULL');
CREATE TABLE IF NOT EXISTS "EmissionActivity" (
                    	"regions"	text,
                    	"emis_comm"	text,
                    	"input_comm"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"output_comm"	text,
                    	"emis_act"	real,
                    	"emis_act_units"	text,
                    	"emis_act_notes"	text,
                    	PRIMARY KEY("regions","emis_comm","input_comm","tech","vintage","output_comm"),
                    	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("emis_comm") REFERENCES "commodities"("comm_name")
                    );
CREATE TABLE IF NOT EXISTS "CostInvest" (
                	"regions"	text,
                	"tech"	text,
                	"vintage"	integer,
                	"cost_invest"	real,
                	"cost_invest_units"	text,
                	"cost_invest_notes"	text,
                	PRIMARY KEY("regions","tech","vintage"),
                	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
                );
INSERT INTO CostInvest VALUES('MyBakery','CONV_OVEN',2020,798.0,'','');
INSERT INTO CostInvest VALUES('MyBakery','CONV_OVEN',2021,798.0,'','');
CREATE TABLE IF NOT EXISTS "CostVariable" (
                	"regions"	text NOT NULL,
                	"periods"	integer NOT NULL,
                	"tech"	text NOT NULL,
                	"vintage"	integer NOT NULL,
                	"cost_variable"	real,
                	"cost_variable_units"	text,
                	"cost_variable_notes"	text,
                	PRIMARY KEY("regions","periods","tech","vintage"),
                	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
                );
INSERT INTO CostVariable VALUES('MyBakery',2020,'CONV_OVEN',2020,3.1993000000000000326,'','');
INSERT INTO CostVariable VALUES('MyBakery',2021,'CONV_OVEN',2020,3.1993000000000000326,'','');
INSERT INTO CostVariable VALUES('MyBakery',2021,'CONV_OVEN',2021,3.1993000000000000326,'','');
CREATE TABLE IF NOT EXISTS "CostFixed" (
                	"regions"	text NOT NULL,
                	"periods"	integer NOT NULL,
                	"tech"	text NOT NULL,
                	"vintage"	integer NOT NULL,
                	"cost_fixed"	real,
                	"cost_fixed_units"	text,
                	"cost_fixed_notes"	text,
                	PRIMARY KEY("regions","periods","tech","vintage"),
                	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                	FOREIGN KEY("periods") REFERENCES "time_periods"("t_periods")
                );
INSERT INTO CostFixed VALUES('MyBakery',2020,'CONV_OVEN',2020,2.0,'','');
INSERT INTO CostFixed VALUES('MyBakery',2021,'CONV_OVEN',2020,2.0,'','');
INSERT INTO CostFixed VALUES('MyBakery',2021,'CONV_OVEN',2021,2.0,'','');
CREATE TABLE IF NOT EXISTS "CapacityFactorTech" (
        	"regions"	text,
        	"season_name"	text,
        	"time_of_day_name"	text,
        	"tech"	text,
        	"cf_tech"	real CHECK("cf_tech" >= 0 AND "cf_tech" <= 1),
        	"cf_tech_notes"	text,
        	PRIMARY KEY("regions","season_name","time_of_day_name","tech"),
        	FOREIGN KEY("season_name") REFERENCES "time_season"("t_season"),
        	FOREIGN KEY("time_of_day_name") REFERENCES "time_of_day"("t_day"),
        	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
        );
CREATE TABLE IF NOT EXISTS "MyopicBaseyear" (
                	"year"	real
                	"notes"	text
                    );
CREATE TABLE IF NOT EXISTS "Output_V_Capacity" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"capacity"	real,
                    	PRIMARY KEY("regions","scenario","tech","vintage"),
                    	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods")
                    );
CREATE TABLE IF NOT EXISTS "Output_VFlow_Out" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"t_periods"	integer,
                    	"t_season"	text,
                    	"t_day"	text,
                    	"input_comm"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"output_comm"	text,
                    	"vflow_out"	real,
                    	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm"),
                    	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
                    	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
                    	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name")
                    );
CREATE TABLE IF NOT EXISTS "Output_VFlow_In" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"t_periods"	integer,
                    	"t_season"	text,
                    	"t_day"	text,
                    	"input_comm"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"output_comm"	text,
                    	"vflow_in"	real,
                    	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
                    	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day"),
                    	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
CREATE TABLE IF NOT EXISTS "Output_Objective" (
                    	"scenario"	text,
                    	"objective_name"	text,
                    	"total_system_cost"	real
                    );
CREATE TABLE IF NOT EXISTS "Output_Curtailment" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"t_periods"	integer,
                    	"t_season"	text,
                    	"t_day"	text,
                    	"input_comm"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"output_comm"	text,
                    	"curtailment"	real,
                    	PRIMARY KEY("regions","scenario","t_periods","t_season","t_day","input_comm","tech","vintage","output_comm"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("input_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("output_comm") REFERENCES "commodities"("comm_name"),
                    	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("t_season") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("t_day") REFERENCES "time_of_day"("t_day")
                    );
CREATE TABLE IF NOT EXISTS "Output_Emissions" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"t_periods"	integer,
                    	"emissions_comm"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"emissions"	real,
                    	PRIMARY KEY("regions","scenario","t_periods","emissions_comm","tech","vintage"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("emissions_comm") REFERENCES "EmissionActivity"("emis_comm"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech"),
                    	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
                    	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods")
                    );
CREATE TABLE IF NOT EXISTS "Output_Costs" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"output_name"	text,
                    	"tech"	text,
                    	"vintage"	integer,
                    	"output_cost"	real,
                    	PRIMARY KEY("regions","scenario","output_name","tech","vintage"),
                    	FOREIGN KEY("vintage") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
CREATE TABLE IF NOT EXISTS "Output_Duals" (
                    	"constraint_name"	text,
                    	"scenario"	text,
                    	"dual"	real,
                    	PRIMARY KEY("constraint_name","scenario")
                    );
CREATE TABLE IF NOT EXISTS "Output_CapacityByPeriodAndTech" (
                    	"regions"	text,
                    	"scenario"	text,
                    	"sector"	text,
                    	"t_periods"	integer,
                    	"tech"	text,
                    	"capacity"	real,
                    	PRIMARY KEY("regions","scenario","t_periods","tech"),
                    	FOREIGN KEY("sector") REFERENCES "sector_labels"("sector"),
                    	FOREIGN KEY("t_periods") REFERENCES "time_periods"("t_periods"),
                    	FOREIGN KEY("tech") REFERENCES "technologies"("tech")
                    );
COMMIT;
