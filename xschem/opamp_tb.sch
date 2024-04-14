v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 310 -370 750 -140 {flags=graph

y2=0.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.0026299827
x2=0.11967592
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="11 7 12 15 4"
node="vi
vo
vilay
volay
i(vmeas)"
y1=-0.1}
B 2 310 -120 750 130 {flags=graph,unlocked
y1=-6.9
y2=12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8

subdivx=8
node="\\"vo db20()\\"
\\"volay db20()\\""
color="4 7"
dataset=0
unitx=1
logx=1
logy=0
divx=5
sweep=""}
N -80 -20 -50 -20 {
lab=#net1}
N -70 -100 -20 -100 {
lab=#net1}
N -70 -100 -70 -20 {
lab=#net1}
N 90 -0 100 -0 {
lab=Vo}
N 100 -100 100 -0 {
lab=Vo}
N 40 -100 100 -100 {
lab=Vo}
N -80 20 -80 40 {
lab=Vi}
N -80 20 -50 20 {
lab=Vi}
N 10 -60 10 -50 {
lab=#net2}
N -90 20 -80 20 {
lab=Vi}
N 160 -60 160 20 {
lab=#net2}
N 160 80 160 180 {
lab=#net3}
N 30 60 30 180 {
lab=#net3}
N 30 180 160 180 {
lab=#net3}
N -160 -20 -140 -20 {
lab=GND}
N 100 0 120 -0 {
lab=Vo}
N -10 60 -10 180 {
lab=GND}
N -80 100 -80 180 {
lab=GND}
N -80 180 -10 180 {
lab=GND}
N -160 -20 -160 180 {
lab=GND}
N -160 180 -80 180 {
lab=GND}
N -10 180 -10 200 {
lab=GND}
N -490 -20 -460 -20 {
lab=#net4}
N -480 -100 -430 -100 {
lab=#net4}
N -480 -100 -480 -20 {
lab=#net4}
N -320 0 -310 0 {
lab=Volay}
N -310 -100 -310 0 {
lab=Volay}
N -370 -100 -310 -100 {
lab=Volay}
N -490 20 -490 40 {
lab=Vilay}
N -490 20 -460 20 {
lab=Vilay}
N -400 -60 -250 -60 {
lab=#net5}
N -400 -60 -400 -50 {
lab=#net5}
N -500 20 -490 20 {
lab=Vilay}
N -250 -60 -250 20 {
lab=#net5}
N -250 80 -250 180 {
lab=#net6}
N -380 60 -380 180 {
lab=#net6}
N -380 180 -250 180 {
lab=#net6}
N -570 -20 -550 -20 {
lab=GND}
N -310 0 -290 0 {
lab=Volay}
N -420 60 -420 180 {
lab=GND}
N -490 100 -490 180 {
lab=GND}
N -490 180 -420 180 {
lab=GND}
N -570 -20 -570 180 {
lab=GND}
N -570 180 -490 180 {
lab=GND}
N -420 180 -420 200 {
lab=GND}
N 10 -60 160 -60 {
lab=#net2}
C {opamp.sym} 20 0 0 0 {name=x1}
C {devices/res.sym} -110 -20 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 10 -100 1 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -80 70 0 0 {name=V1 value="sin(0 20m 100) ac 1" savecurrent=false}
C {devices/vsource.sym} 160 50 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/gnd.sym} -10 200 0 0 {name=l4 lab=GND}
C {devices/launcher.sym} -180 -210 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 60 -310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 10u 100m
write opamp_tb.raw
ac dec 100 1 100MEG
write opamp_tb_ac.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -250 -360 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -90 20 0 0 {name=p2 sig_type=std_logic lab=Vi}
C {devices/lab_pin.sym} 120 0 2 0 {name=p1 sig_type=std_logic lab=Vo}
C {devices/launcher.sym} -180 -150 0 0 {name=h4 
descr="Load/unload
AC waveforms" 
tclcommand="
xschem raw_read $netlist_dir/opamp_tb_ac.raw ac
"
}
C {opamp.sym} -390 0 0 0 {name=x2

schematic=opamp_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/opamp.sim.spice])"
tclcommand="textwindow [file normalize ../mag/opamp.sim.spice]"
}
C {devices/res.sym} -520 -20 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -400 -100 1 0 {name=R4
value=2k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -490 70 0 0 {name=V2 value="sin(0 20m 100) ac 1" savecurrent=false}
C {devices/vsource.sym} -250 50 0 0 {name=V4 value=1.8 savecurrent=false}
C {devices/gnd.sym} -420 200 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -500 20 0 0 {name=p3 sig_type=std_logic lab=Vilay}
C {devices/lab_pin.sym} -290 0 2 0 {name=p4 sig_type=std_logic lab=Volay}
