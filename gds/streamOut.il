;***************************************************************
; Copyright (C) 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990 *
; Cadence Design Systems Inc. All Rights Reserved.             *
;***************************************************************
;
;**************************************************************
;
; filename : streamOut.il
;
;**************************************************************
streamOutKeys = list(nil
'runDir                "."          ;- Run Directory
'libName               ""           ;- Library Name
'primaryCell           ""           ;- Top Cell Name
'viewName              "layout"     ;- View Name
'outFile               "Chip.gds"   ;- Output File
'scale                 0.001000     ;- Scale UU/DBU
'units                 "micron"     ;"micron"/"milimeter"/"mil" - Units
'hierDepth             32           ;(0-32) - Hierarchy Depth Limit
'convertToGeo          nil	    ;t/nil - Convert PCells to Geometry
'maxVertices           200          ;- Maximum Vertices in Path/Polygon
'refLib                nil          ;- Retain Reference Library (No Merge) 
'libVersion            "5.0"        ;(3-6) - Library Version
'checkPolygon          nil          ;t/nil - Report Bad Polygons
'snapToGrid            nil          ;t/nil - Snap XY to Grid Resolution
'simMosaicToArray      t            ;t/nil - Convert Simple Mosaic to Array 
'caseSensitivity       "preserve"      ;"preserve"/"upper"/"lower" - Case Sensitivity
'textCaseSensitivity       "preserve"      ;"preserve"/"upper"/"lower" - Case Sensitivity
'lineToZeroPath        "path"       ;"path"/"ignore" - Convert Lines to
'convertDot            "ignore"       ;"polygon"/"node"/"ignore"-Convert Dots to
'rectToBox             nil          ;t/nil - Output Rectangle as BOX
'convertPathToPoly     nil          ;t/nil - Convert Paths to Polygons
'keepPcell             nil          ;t/nil - Keep PCells 
; 681431 : soumen : 04/18/2005
'replaceBusBitChar               nil          ;t/nil - Map Text Bus Bit Chars 
'useParentXYforText    nil          ;t/nil - To Use Parent XY for Text
'reportPrecision       nil          ;t/nil - Precision Report
'runQuiet              nil          ;t/nil - Filter Out Warning/Information Messages
'errFile               "STREAMOUT.LOG"   ;- Error Message File
'NOUnmappingLayerWarning nil        ;t/nil - Filter Out Unmapping Warning
'techFileChoice        nil          ;t/nil - Techfile Choice 
'pcellSuffix           "DbId"       ;"DbId"/"Params"/"DbIdPlusTime" - Pcell Suffix
'genListHier           nil          ;- Generate Hierarchy List
'respectGDSIILimits    nil          ;t/nil - Respect GDSII limits 
'dumpPcellInfo         nil          ;t/nil - Dump Pcell Info
'cellMapTable          ""           ;- Cell Name Map Table 
'layerTable            "/uusoc/facility/cad_common/local/class/6710/F07/cadence/map_files/stream4gds.map"   ;- Layer Map Table
'textFontTable         ""           ;- Text Font Map Table
'convertPin            "geometry"   ;- Convert Pin to
'pinInfo               0            ;(0-127)  - Keep pin information as attribute number
'pinTextMapTable       ""           ;- Pin Text Map Table
'propMapTable          ""           ;- User-Defined Property Mapping File
'propSeparator         ","          ;- User-Defined Property Separator
'userSkillFile         ""           ;- User-Defined SKILL File
'rodDir                ""           ;- Rod Directory
'comprehensiveLog      nil	    ;- Comprehensive Log
'genListHier           nil          ;- Generate Hierarchy Listing
)


