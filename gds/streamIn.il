;***************************************************************
; Copyright (C) 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990 *
; Cadence Design Systems Inc. All Rights Reserved.             *
;***************************************************************
;
;***************************************************************
;
; filename : streamIn.il
;
;***************************************************************
streamInKeys = list(nil
'runDir                  "."       ;- Run Directory
'inFile                  "Chip.gds";- Name of input Stream file - Input File
'primaryCell             ""        ;- Top Cell Name
'libName                 "strmLib" ;- Library Name
'techfileName            ""        ;- ASCII Technology File Name
'scale                   0.001000  ;- Scale UU/DBU
'units                   "micron"  ;- "micron" "milimeter" / "mil" - Units
'errFile                 "STREAMIN.LOG";- Error Message File 
'refLib                  nil       ;- t/nil - Retain Reference Library (No Merge)
'hierDepth               32        ;(0-32) - Hierarchy Depth Limit 
'maxVertices             1024      ;(1-1024) - Maximum Vertices in Path/Polygon 
'checkPolygon            nil       ;t/nil - Report Bad Polygons 
'snapToGrid              nil       ;t/nil - Snap XY to Grid Resolution
'arrayToSimMosaic        t         ;t/nil - Convert Array to Simple Mosaic
'caseSensitivity         "preserve"   ;"preserve"/"lower"/"upper"-Case Sensitivity
'textCaseSensitivity         "preserve"   ;"preserve"/"lower"/"upper"-Case Sensitivity
'zeroPathToLine          "lines"   ;"lines"/"ignore"-Convert Zero Width Paths to
'convertNode             "ignore"     ;"dots"/"ignore" - Convert Nodes to 
'keepPcell               nil       ;t/nil - Keep PCells
; 681431 : soumen : 04/18/2005
'replaceBusBitChar                 nil       ;t/nil - Map Text Bus Bit Chars
'skipUndefinedLPP        nil       ;t/nil - Skip Undefined Layer-Purpose Pair 
'ignoreBox               nil       ;t/nil - Ignore BOX Record
'reportPrecision         nil       ;t/nil - Precision Report
'keepStreamCells         nil       ;t/nil - Keep Stream Cells
'attachTechfileOfLib     ""        ;- Attach Techfile of Library
'runQuiet                nil       ;t/nil - Filter out Warning/Information Messages
'saveAtTheEnd            nil       ;t/nil - Save Cell Views At The End
'noWriteExistCell        nil       ;t/nil - Do Not Overwrite Existing Cell 
'NOUnmappingLayerWarning nil       ;t/nil - Filter Out Unmapping Warning
'genListHier             nil       ;- Generate Hierarchy Listing
'cellMapTable            ""        ;- Cell Name Map Table 
'layerTable              "/uusoc/facility/cad_common/local/class/6710/F07/cadence/map_files/streamin.map";- Layer Map Table
'textFontTable           ""        ;- Text Font Map Table
'restorePin              0         ;(0-127) - Restore Pin Attribute
'propMapTable            ""        ;- User-Defined Property Mapping File
'propSeparator           ","       ;- User-Defined Property Separator
'userSkillFile           ""        ;- User-Defined SKILL File
'rodDir                  ""        ;- Rod Directory
'refLibOrder             ""        ;- Reference Library Order
'comprehensiveLog        nil       ;t/nil - All messages will go in log file.
'appendDB 	         nil       ;t/nil - All messages will go in log file.
)
