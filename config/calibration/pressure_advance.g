; ### Klipper Pressure Advance Calibration Pattern ###
; -------------------------------------------
;
; Source: https://andrewellis93.github.io/pressure_advance/pressure_advance.html
;
; Printer: Voron 2.4
; Filament: eSun ABS+ black
; Created: Wed Nov 09 2022 18:17:07 GMT+0100 (Central European Standard Time)
;
; Settings Printer:
; Filament Diameter = 1.75 mm
; Nozzle Diameter = 0.4 mm
; Start G-code = ; PRINT_START EXTRUDER=250 BED=110
;
; End G-code = ; PRINT_END
;
; Retraction Distance = 0.75 mm
; Layer Height = 0.2 mm
; Extruder Name = extruder
; Fan Speed = 0 %
; Z-axis Offset = 0 mm
;
; Settings Print Bed:
; Bed Shape = Rect
; Bed Size X = 250 mm
; Bed Size Y = 250 mm
; Origin Bed Center = false
;
; Settings Speed:
; Slow Printing Speed = 300 mm/min
; Fast Printing Speed = 7200 mm/min
; Movement Speed = 7200 mm/min
; Retract Speed = 1800 mm/min
; Unretract Speed = 1800 mm/min
; Printing Acceleration = 2000 mm/s^2
;
; Settings Pattern:
; Starting Value Factor = 0
; Ending Value Factor = 0.1
; Factor Stepping = 0.005
; Test Line Spacing = 5 mm
; Test Line Length Slow = 20 mm
; Test Line Length Fast = 40 mm
; Print Pattern = Standard
; Print Frame = true
; Number Lines = true
; Print Size X = 98 mm
; Print Size Y = 125 mm
; Print Rotation = 0 degree
;
; Settings Advance:
; Nozzle / Line Ratio = 1.2
; Use FWRETRACT = false
; Extrusion Multiplier = 0.9
; Prime Nozzle = true
; Prime Extrusion Multiplier = 2.5
; Prime Speed = 1800
; Dwell Time = 0 s
;
; prepare printing
;
ACTIVATE_EXTRUDER EXTRUDER=extruder
PRINT_START EXTRUDER=250 BED=110

G21 ; Millimeter units
G90 ; Absolute XYZ
M83 ; Relative E
SET_VELOCITY_LIMIT ACCEL=2000 ACCEL_TO_DECEL=1000 ; Acceleration
G92 E0 ; Reset extruder distance
M106 S0
G1 X125 Y125 F7200 ; move to start
G1 Z0.2 F300 ; Move to layer height
;
; prime nozzle
;
G1 X76 Y62.5 F7200 ; move to start
G1 X76 Y187.5 E12.47255 F1800 ; print line
G1 X76.72 Y187.5 F7200 ; move to start
G1 X76.72 Y62.5 E12.47255 F1800 ; print line
G1 E-0.75 F1800 ; retract
;
; print anchor frame
G1 E0.75 F1800 ; un-retract
G1 X86 Y59.5 F7200 ; move to start
G1 X86 Y165.5 E4.18838 F300 ; print line
G1 X86.48 Y165.5 F7200 ; move to start
G1 X86.48 Y59.5 E4.18838 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X166 Y59.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X166 Y165.5 E4.18838 F300 ; print line
G1 X165.52 Y165.5 F7200 ; move to start
G1 X165.52 Y59.5 E4.18838 F300 ; print line
G1 E-0.75 F1800 ; retract
;
; start the Test pattern
;
G1 X86 Y62.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; set Pressure Advance
M117 K0 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y62.5 E0.71842 F300 ; print line
G1 X146 Y62.5 E1.43684 F7200 ; print line
G1 X166 Y62.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y67.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.005 EXTRUDER=extruder ; set Pressure Advance
M117 K0.005 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y67.5 E0.71842 F300 ; print line
G1 X146 Y67.5 E1.43684 F7200 ; print line
G1 X166 Y67.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y72.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.01 EXTRUDER=extruder ; set Pressure Advance
M117 K0.01 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y72.5 E0.71842 F300 ; print line
G1 X146 Y72.5 E1.43684 F7200 ; print line
G1 X166 Y72.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y77.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.015 EXTRUDER=extruder ; set Pressure Advance
M117 K0.015 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y77.5 E0.71842 F300 ; print line
G1 X146 Y77.5 E1.43684 F7200 ; print line
G1 X166 Y77.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y82.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.02 EXTRUDER=extruder ; set Pressure Advance
M117 K0.02 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y82.5 E0.71842 F300 ; print line
G1 X146 Y82.5 E1.43684 F7200 ; print line
G1 X166 Y82.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y87.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.025 EXTRUDER=extruder ; set Pressure Advance
M117 K0.025 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y87.5 E0.71842 F300 ; print line
G1 X146 Y87.5 E1.43684 F7200 ; print line
G1 X166 Y87.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y92.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.03 EXTRUDER=extruder ; set Pressure Advance
M117 K0.03 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y92.5 E0.71842 F300 ; print line
G1 X146 Y92.5 E1.43684 F7200 ; print line
G1 X166 Y92.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y97.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.035 EXTRUDER=extruder ; set Pressure Advance
M117 K0.035 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y97.5 E0.71842 F300 ; print line
G1 X146 Y97.5 E1.43684 F7200 ; print line
G1 X166 Y97.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y102.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.04 EXTRUDER=extruder ; set Pressure Advance
M117 K0.04 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y102.5 E0.71842 F300 ; print line
G1 X146 Y102.5 E1.43684 F7200 ; print line
G1 X166 Y102.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y107.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.045 EXTRUDER=extruder ; set Pressure Advance
M117 K0.045 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y107.5 E0.71842 F300 ; print line
G1 X146 Y107.5 E1.43684 F7200 ; print line
G1 X166 Y107.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y112.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.05 EXTRUDER=extruder ; set Pressure Advance
M117 K0.05 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y112.5 E0.71842 F300 ; print line
G1 X146 Y112.5 E1.43684 F7200 ; print line
G1 X166 Y112.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y117.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.055 EXTRUDER=extruder ; set Pressure Advance
M117 K0.055 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y117.5 E0.71842 F300 ; print line
G1 X146 Y117.5 E1.43684 F7200 ; print line
G1 X166 Y117.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y122.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.06 EXTRUDER=extruder ; set Pressure Advance
M117 K0.06 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y122.5 E0.71842 F300 ; print line
G1 X146 Y122.5 E1.43684 F7200 ; print line
G1 X166 Y122.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y127.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.065 EXTRUDER=extruder ; set Pressure Advance
M117 K0.065 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y127.5 E0.71842 F300 ; print line
G1 X146 Y127.5 E1.43684 F7200 ; print line
G1 X166 Y127.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y132.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.07 EXTRUDER=extruder ; set Pressure Advance
M117 K0.07 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y132.5 E0.71842 F300 ; print line
G1 X146 Y132.5 E1.43684 F7200 ; print line
G1 X166 Y132.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y137.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.075 EXTRUDER=extruder ; set Pressure Advance
M117 K0.075 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y137.5 E0.71842 F300 ; print line
G1 X146 Y137.5 E1.43684 F7200 ; print line
G1 X166 Y137.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y142.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.08 EXTRUDER=extruder ; set Pressure Advance
M117 K0.08 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y142.5 E0.71842 F300 ; print line
G1 X146 Y142.5 E1.43684 F7200 ; print line
G1 X166 Y142.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y147.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.085 EXTRUDER=extruder ; set Pressure Advance
M117 K0.085 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y147.5 E0.71842 F300 ; print line
G1 X146 Y147.5 E1.43684 F7200 ; print line
G1 X166 Y147.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y152.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.09 EXTRUDER=extruder ; set Pressure Advance
M117 K0.09 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y152.5 E0.71842 F300 ; print line
G1 X146 Y152.5 E1.43684 F7200 ; print line
G1 X166 Y152.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y157.5 F7200 ; move to start
SET_PRESSURE_ADVANCE ADVANCE=0.095 EXTRUDER=extruder ; set Pressure Advance
M117 K0.095 ;
G1 E0.75 F1800 ; un-retract
G1 X106 Y157.5 E0.71842 F300 ; print line
G1 X146 Y157.5 E1.43684 F7200 ; print line
G1 X166 Y157.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X86 Y162.5 F7200 ; move to start
;
; Mark the test area for reference
M117 K0
SET_PRESSURE_ADVANCE ADVANCE=0 EXTRUDER=extruder ; Set Pressure Advance 0
G1 X106 Y167.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X106 Y187.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 X146 Y167.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X146 Y187.5 E0.71842 F300 ; print line
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
;
; print K-values
;
G1 X168 Y60.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y60.5 E0.07184 F300 ; 0
G1 X170 Y62.5 E0.07184 F300 ; 0
G1 X170 Y64.5 E0.07184 F300 ; 0
G1 X168 Y64.5 E0.07184 F300 ; 0
G1 X168 Y62.5 E0.07184 F300 ; 0
G1 X168 Y60.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y70.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y70.5 E0.07184 F300 ; 0
G1 X170 Y72.5 E0.07184 F300 ; 0
G1 X170 Y74.5 E0.07184 F300 ; 0
G1 X168 Y74.5 E0.07184 F300 ; 0
G1 X168 Y72.5 E0.07184 F300 ; 0
G1 X168 Y70.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y70.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y70.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y70.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y70.5 E0.07184 F300 ; 0
G1 X174 Y72.5 E0.07184 F300 ; 0
G1 X174 Y74.5 E0.07184 F300 ; 0
G1 X172 Y74.5 E0.07184 F300 ; 0
G1 X172 Y72.5 E0.07184 F300 ; 0
G1 X172 Y70.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y70.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y72.5 E0.07184 F300 ; 1
G1 X175 Y74.5 E0.07184 F300 ; 1
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y80.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y80.5 E0.07184 F300 ; 0
G1 X170 Y82.5 E0.07184 F300 ; 0
G1 X170 Y84.5 E0.07184 F300 ; 0
G1 X168 Y84.5 E0.07184 F300 ; 0
G1 X168 Y82.5 E0.07184 F300 ; 0
G1 X168 Y80.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y80.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y80.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y80.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y80.5 E0.07184 F300 ; 0
G1 X174 Y82.5 E0.07184 F300 ; 0
G1 X174 Y84.5 E0.07184 F300 ; 0
G1 X172 Y84.5 E0.07184 F300 ; 0
G1 X172 Y82.5 E0.07184 F300 ; 0
G1 X172 Y80.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y80.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y82.5 F7200 ; move to start
G1 X175 Y84.5 F7200 ; move to start
G1 X177 Y84.5 E0.07184 F300 ; 2
G1 X177 Y82.5 E0.07184 F300 ; 2
G1 X175 Y82.5 E0.07184 F300 ; 2
G1 X175 Y80.5 E0.07184 F300 ; 2
G1 X177 Y80.5 E0.07184 F300 ; 2
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y90.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y90.5 E0.07184 F300 ; 0
G1 X170 Y92.5 E0.07184 F300 ; 0
G1 X170 Y94.5 E0.07184 F300 ; 0
G1 X168 Y94.5 E0.07184 F300 ; 0
G1 X168 Y92.5 E0.07184 F300 ; 0
G1 X168 Y90.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y90.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y90.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y90.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y90.5 E0.07184 F300 ; 0
G1 X174 Y92.5 E0.07184 F300 ; 0
G1 X174 Y94.5 E0.07184 F300 ; 0
G1 X172 Y94.5 E0.07184 F300 ; 0
G1 X172 Y92.5 E0.07184 F300 ; 0
G1 X172 Y90.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y90.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y92.5 F7200 ; move to start
G1 X175 Y94.5 F7200 ; move to start
G1 X177 Y94.5 E0.07184 F300 ; 3
G1 X177 Y92.5 E0.07184 F300 ; 3
G1 X177 Y90.5 E0.07184 F300 ; 3
G1 X175 Y90.5 E0.07184 F300 ; 3
G1 X175 Y92.5 F7200 ; move to start
G1 X177 Y92.5 E0.07184 F300 ; 3
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y100.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y100.5 E0.07184 F300 ; 0
G1 X170 Y102.5 E0.07184 F300 ; 0
G1 X170 Y104.5 E0.07184 F300 ; 0
G1 X168 Y104.5 E0.07184 F300 ; 0
G1 X168 Y102.5 E0.07184 F300 ; 0
G1 X168 Y100.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y100.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y100.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y100.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y100.5 E0.07184 F300 ; 0
G1 X174 Y102.5 E0.07184 F300 ; 0
G1 X174 Y104.5 E0.07184 F300 ; 0
G1 X172 Y104.5 E0.07184 F300 ; 0
G1 X172 Y102.5 E0.07184 F300 ; 0
G1 X172 Y100.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y100.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y102.5 F7200 ; move to start
G1 X175 Y104.5 F7200 ; move to start
G1 X175 Y102.5 E0.07184 F300 ; 4
G1 X177 Y102.5 E0.07184 F300 ; 4
G1 X177 Y104.5 F7200 ; move to start
G1 X177 Y102.5 E0.07184 F300 ; 4
G1 X177 Y100.5 E0.07184 F300 ; 4
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y110.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y110.5 E0.07184 F300 ; 0
G1 X170 Y112.5 E0.07184 F300 ; 0
G1 X170 Y114.5 E0.07184 F300 ; 0
G1 X168 Y114.5 E0.07184 F300 ; 0
G1 X168 Y112.5 E0.07184 F300 ; 0
G1 X168 Y110.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y110.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y110.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y110.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y110.5 E0.07184 F300 ; 0
G1 X174 Y112.5 E0.07184 F300 ; 0
G1 X174 Y114.5 E0.07184 F300 ; 0
G1 X172 Y114.5 E0.07184 F300 ; 0
G1 X172 Y112.5 E0.07184 F300 ; 0
G1 X172 Y110.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y110.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X177 Y110.5 E0.07184 F300 ; 5
G1 X177 Y112.5 E0.07184 F300 ; 5
G1 X175 Y112.5 E0.07184 F300 ; 5
G1 X175 Y114.5 E0.07184 F300 ; 5
G1 X177 Y114.5 E0.07184 F300 ; 5
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y120.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y120.5 E0.07184 F300 ; 0
G1 X170 Y122.5 E0.07184 F300 ; 0
G1 X170 Y124.5 E0.07184 F300 ; 0
G1 X168 Y124.5 E0.07184 F300 ; 0
G1 X168 Y122.5 E0.07184 F300 ; 0
G1 X168 Y120.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y120.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y120.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y120.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y120.5 E0.07184 F300 ; 0
G1 X174 Y122.5 E0.07184 F300 ; 0
G1 X174 Y124.5 E0.07184 F300 ; 0
G1 X172 Y124.5 E0.07184 F300 ; 0
G1 X172 Y122.5 E0.07184 F300 ; 0
G1 X172 Y120.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y120.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y122.5 F7200 ; move to start
G1 X177 Y122.5 E0.07184 F300 ; 6
G1 X177 Y120.5 E0.07184 F300 ; 6
G1 X175 Y120.5 E0.07184 F300 ; 6
G1 X175 Y122.5 E0.07184 F300 ; 6
G1 X175 Y124.5 E0.07184 F300 ; 6
G1 X177 Y124.5 E0.07184 F300 ; 6
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y130.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y130.5 E0.07184 F300 ; 0
G1 X170 Y132.5 E0.07184 F300 ; 0
G1 X170 Y134.5 E0.07184 F300 ; 0
G1 X168 Y134.5 E0.07184 F300 ; 0
G1 X168 Y132.5 E0.07184 F300 ; 0
G1 X168 Y130.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y130.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y130.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y130.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y130.5 E0.07184 F300 ; 0
G1 X174 Y132.5 E0.07184 F300 ; 0
G1 X174 Y134.5 E0.07184 F300 ; 0
G1 X172 Y134.5 E0.07184 F300 ; 0
G1 X172 Y132.5 E0.07184 F300 ; 0
G1 X172 Y130.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y130.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y132.5 F7200 ; move to start
G1 X175 Y134.5 F7200 ; move to start
G1 X177 Y134.5 E0.07184 F300 ; 7
G1 X177 Y132.5 E0.07184 F300 ; 7
G1 X177 Y130.5 E0.07184 F300 ; 7
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y140.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y140.5 E0.07184 F300 ; 0
G1 X170 Y142.5 E0.07184 F300 ; 0
G1 X170 Y144.5 E0.07184 F300 ; 0
G1 X168 Y144.5 E0.07184 F300 ; 0
G1 X168 Y142.5 E0.07184 F300 ; 0
G1 X168 Y140.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y140.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y140.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y140.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y140.5 E0.07184 F300 ; 0
G1 X174 Y142.5 E0.07184 F300 ; 0
G1 X174 Y144.5 E0.07184 F300 ; 0
G1 X172 Y144.5 E0.07184 F300 ; 0
G1 X172 Y142.5 E0.07184 F300 ; 0
G1 X172 Y140.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y140.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X175 Y142.5 F7200 ; move to start
G1 X177 Y142.5 E0.07184 F300 ; 8
G1 X177 Y140.5 E0.07184 F300 ; 8
G1 X175 Y140.5 E0.07184 F300 ; 8
G1 X175 Y142.5 E0.07184 F300 ; 8
G1 X175 Y144.5 E0.07184 F300 ; 8
G1 X177 Y144.5 E0.07184 F300 ; 8
G1 X177 Y142.5 E0.07184 F300 ; 8
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
G1 X168 Y150.5 F7200 ; move to start
G1 Z0.2 F300 ; zHop
G1 E0.75 F1800 ; un-retract
G1 X170 Y150.5 E0.07184 F300 ; 0
G1 X170 Y152.5 E0.07184 F300 ; 0
G1 X170 Y154.5 E0.07184 F300 ; 0
G1 X168 Y154.5 E0.07184 F300 ; 0
G1 X168 Y152.5 E0.07184 F300 ; 0
G1 X168 Y150.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X171 Y150.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X171 Y150.9 E0.01437 F300 ; dot
G1 E-0.75 F1800 ; retract
G1 X172 Y150.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X174 Y150.5 E0.07184 F300 ; 0
G1 X174 Y152.5 E0.07184 F300 ; 0
G1 X174 Y154.5 E0.07184 F300 ; 0
G1 X172 Y154.5 E0.07184 F300 ; 0
G1 X172 Y152.5 E0.07184 F300 ; 0
G1 X172 Y150.5 E0.07184 F300 ; 0
G1 E-0.75 F1800 ; retract
G1 X175 Y150.5 F7200 ; move to start
G1 E0.75 F1800 ; un-retract
G1 X177 Y150.5 E0.07184 F300 ; 9
G1 X177 Y152.5 E0.07184 F300 ; 9
G1 X175 Y152.5 E0.07184 F300 ; 9
G1 X175 Y154.5 E0.07184 F300 ; 9
G1 X177 Y154.5 E0.07184 F300 ; 9
G1 X177 Y152.5 E0.07184 F300 ; 9
G1 E-0.75 F1800 ; retract
G1 Z0.3 F300 ; zHop
;
; FINISH
;
PRINT_END

;
