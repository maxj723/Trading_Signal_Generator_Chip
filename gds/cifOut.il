;*****************************************************************
;  Copyright (C) 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990  *
;  Cadence Design Systems Inc.  All Rights Reserved.             *
;*****************************************************************
;
;******************************************************************************
;
; file name : tiCIFOStup.il
;
;******************************************************************************
cifOutKeys = list(nil 
  'runDir		"."		;input and output directory
  'libName		""		;the OPUS source library
  'outFile		"" 
;
; library search path, for all libraries
;
  'refLibSearchPath	"."
;
; output cif specify
;
  'scale		0.01
  'units		"micron"	;("micron","millimeter","mil")
;
; select opus library data
;
  'primaryCell		""
  'hierDepth		20       
;
; mapping opus data to cif
;
  'caseSensitivity	"preserve"		;("lower","upper","preserve")
  'cellMapTable		""
  'layerTable		"/uusoc/facility/cad_common/NCSU/CDK-F07/pipo/cifOutLayermap"
  'convertPin		"geometry"	;("geometry","drop","text")
  'pinTextMapTable	""
;
; check opus input data
;
  'checkPolygon		nil		;(t/nil)
  'snapToGrid		nil		;(t/nil)
  'errFile		"CIFOUT.LOG"	;log file name
  'dataDump		""
  'reportPrecision	nil
;
; unmatch cif data type handle
;
  'dotToPolygon         nil
  'lineToZeroWire	"wire"		;("wire","ignore")
  'magnifyToPolygon	"ignore"	;("ignore","polygon")
;
; 'maxPolygonPoint is obsolete, use 'maxVertices instead
; 'maxPolygonPoint	1024
  'maxVertices		1024		;apply to path and polygon
;
; user skill file specified here
;
  'userSkillFile	""
  'comprehensiveLog     nil
)
