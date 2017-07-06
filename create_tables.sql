CREATE TABLE Genera (
GenusID INTEGER  PRIMARY KEY NOT NULL,
Cond_L REAL DEFAULT NULL NULL,
Cond_U REAL DEFAULT NULL NULL,
pH_L REAL DEFAULT NULL NULL,
pH_U REAL DEFAULT NULL NULL,
Width_L REAL  NULL,
Width_U REAL  NULL,
Slope_L REAL  NULL,
Slope_U REAL  NULL,
Area_L REAL  NULL,
Area_U REAL  NULL,
Depth_L REAL  NULL,
Depth_U REAL  NULL,
DO_L REAL  NULL,
DO_U REAL  NULL,
TSS_L REAL  NULL,
TSS_U REAL  NULL,
Genus varchar(50)  UNIQUE NOT NULL
);


CREATE TABLE FishProperties (

SpeciesID INTEGER  NOT NULL,

GenusID INTEGER  NOT NULL,

Genus varchar(100)  NOT NULL,

Species varchar(100)  NOT NULL,

CommonName varchar(100)  NOT NULL,

Group varchar(50)  NOT NULL,

Native varchar(1)  NOT NULL,

PFG_Page varchar(4)  NOT NULL,

Sportfishing varchar(1)  NOT NULL,

NonGame varchar(1)  NOT NULL,

Subsis_Fish varchar(1)  NOT NULL,

Pollut_Tol varchar(100)  NULL,

Max_Size REAL  NOT NULL,

Rarity INTEGER  NOT NULL,

Caves varchar(10)  NULL,

Springs varchar(10)  NULL,

Headwaters varchar(10)  NULL,

Creeks varchar(10)  NULL,

Small_Riv varchar(10)  NULL,

Med_Riv varchar(10)  NULL,

Lge_Riv varchar(10)  NULL,

Lk_Imp_Pnd varchar(10)  NULL,

Swp_Msh_By varchar(10)  NULL,

Coast_Ocea varchar(10)  NULL,

Riffles varchar(10)  NULL,

Run_FloPool varchar(10)  NULL,

Pool_Bckwtr varchar(10)  NULL,

Benthic varchar(10)  NULL,

Surface varchar(10)  NULL,

NrShre_Litt varchar(10)  NULL,

OpnWtr_Pelag varchar(10)  NULL,

Mud_Slt_Det varchar(10)  NULL,

Sand varchar(10)  NULL,

Gravel varchar(10)  NULL,

Rck_Rub_Bol varchar(10)  NULL,

Vegatation varchar(10)  NULL,

WdyD_Brush varchar(10)  NULL,

ClearWater varchar(10)  NULL,

TurbidWater varchar(10)  NULL,

WarmWater varchar(10)  NULL,

CoolWater varchar(10)  NULL,

ColdWater varchar(10)  NULL,

Lowlands_LGr varchar(10)  NULL,

Uplands_HGr varchar(10)  NULL,

Locat_Notes varchar(100)  NULL,

Habit_Notes varchar(100)  NULL,

PRIMARY KEY (SpeciesID,GenusID)
);


CREATE TABLE FishHUCs (

SpeciesID INTEGER  NULL,

HUC varchar(8)  NULL,

Provenance varchar(9)  NULL,

Origin varchar(10)  NULL
);