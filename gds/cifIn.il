;*****************************************************************
;  Copyright (C) 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990  *
;  Cadence Design Systems Inc.  All Rights Reserved.             *
;*****************************************************************
;
;******************************************************************************
;
; file name : tiCIFIStup.il
;
;******************************************************************************
cifInKeys = list(nil 
  'runDir		"."	;input and output directory
  'inFile		""	;cif file will convert to OPUS
  'libName		""	;the target of OPUS library
;
; generate technology file
;	to generate new techfile - use keyword "ciftechgen" and
;				   set 'techfileGen to t
;	to load techfile 	 - just specify file name.
;
  'techfileGen		nil	;(t/nil)
  'techfileName		""	;given file will be automatically loaded
;
; input cif specify
;
  'scale		0.01
  'units		"micron"	;("micron","millimeter","mil")
;
; select cif data
;
  'primaryCell		""
  'hierDepth		32       
;
; mapping cif data to opus
;
  'caseSensitivity	"preserve"		;("lower","upper","preserve")
  'cellMapTable		""
  'layerTable		"/uusoc/facility/cad_common/local/class/6710/F07/cadence/map_files/cifin.map"
  'textFontTable	""
  'skipUndefinedLPP	nil
;
; check cif input data
;
  'checkPolygon		nil		;(t/nil)
  'snapToGrid		nil		;(t/nil)
  'errFile		"CIFIN.LOG"	;log file name
  'dataDump		""
  'reportPrecision	nil
;
; unmatch opus data type handle
;
  'zeroWireToLine	"lines"		;("lines","ignore")
  'wireToPathStyle	"extend"	;("extend","round","truncate")
  'roundFlashToEllipse	"ellipse"	;("ellipse","polygon")
  'maxVertices		1024		;apply to path and polygon
;
; user skill file specified here
;
  'userSkillFile	""
;
  'saveAtTheEnd		nil
  'comprehensiveLog     nil
)
