v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 330 -390 820 -150 {flags=graph
y1=-0.038
y2=0.041
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="11 7"
node="vi
vo"}
B 2 330 -125 820 125 {flags=graph,unlocked
y1=0
y2=7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8

subdivx=8
node="\\"vo db20()\\""
color=4
dataset=0
unitx=1
logx=1
logy=0
divx=5
sweep=""}
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
N 10 -60 160 -60 {
lab=#net2}
N 10 -60 10 -50 {
lab=#net2}
N -180 -20 -180 20 {
lab=Vi}
N -200 -20 -180 -20 {
lab=Vi}
N 160 -60 160 40 {
lab=#net2}
N 160 100 160 160 {
lab=#net3}
N 30 60 30 160 {
lab=#net3}
N 30 160 160 160 {
lab=#net3}
N 100 -0 120 -0 {
lab=Vo}
N -180 -20 -150 -20 {
lab=Vi}
N -90 -20 -50 -20 {
lab=#net1}
N -180 80 -180 160 {
lab=GND}
N -180 160 -10 160 {
lab=GND}
N -10 60 -10 160 {
lab=GND}
N -70 20 -50 20 {
lab=GND}
N -70 20 -70 160 {
lab=GND}
N -70 160 -70 180 {
lab=GND}
C {opamp.sym} 20 0 0 0 {name=x1}
C {devices/res.sym} -120 -20 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 10 -100 1 0 {name=R2
value=2k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -180 50 0 0 {name=V1 value="sin(0 20m 100) ac 1" savecurrent=false}
C {devices/vsource.sym} 160 70 0 0 {name=V3 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 120 0 2 0 {name=p1 sig_type=std_logic lab=Vo}
C {devices/launcher.sym} -170 -210 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/simulator_commands_shown.sym} 50 -310 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.control
tran 10u 100m
write opamp_inv_tb.raw
ac dec 100 1 100MEG
write opamp_inv_tb_ac.raw
.endc
"}
C {sky130_fd_pr/corner.sym} -220 -350 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/lab_pin.sym} -200 -20 0 0 {name=p2 sig_type=std_logic lab=Vi}
C {devices/gnd.sym} -70 180 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} -170 -160 0 0 {name=h4 
descr="Load/unload
AC waveforms" 
tclcommand="
xschem raw_read $netlist_dir/opamp_inv_tb_ac.raw ac
"
}
