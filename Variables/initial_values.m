VSS_Airframe = 0; %Non-linear Airframe

%Initial condition
vehicle.init_PosE = [0, 0, 0];  %Initial position
vehicle.init_VelB = [0, 0, 0];  %Initial velocity
vehicle.init_AngEuler = [0, 0, 0];  %Initial Euler angle
vehicle.init_RateB = [0, 0, 0];  %Initial angular velocity
vehicle.init_Rads = 0; %Initial motor speed(rad/s)

%UAV model parameter
vehicle.mass = 3; %Mass of UAV(kg)
vehicle.Jxx = 4.582e-2;
vehicle.Jyy = 4.582e-2; 
vehicle.Jzz = 8.243e-2;
%Moment of inertia matrix
vehicle.inertia= [vehicle.Jxx, 0, 0;...
    0, vehicle.Jyy, 0;...
    0, 0, vehicle.Jzz];
vehicle.R = 0.3;   %Body radius(m)
vehicle.Cd = 1.339e-1;   %Damping coefficient(N/(m/s)^2)

vehicle.motor.cr = 500.03; %Motor throttle-speed curve slope(rad/s)
vehicle.motor.wb = -123.73;  %Motor speed-throttle curve constant term(rad/s)
vehicle.motor.T = 0.0115;  %Motor inertia time constant(s)
vehicle.motor.Jm = 2.27e-4;  %Moment of inertia of motor rotor + propeller(kg.m^2)
%M=Cm*w^2
vehicle.motor.Cm = 6.873e-7;  %Rotor torque coefficient(kg.m^2)
%T=Ct**w^2
vehicle.motor.Ct = 3.514e-5;  %Rotor thrust coefficient(kg.m^2)
vehicle.motor.xy = vehicle.R*sqrt(2)/2; %Motor xy position (m)
vehicle.motor.h = 0; %Motor h position 

RAD2DEG = 57.2957795;
DEG2RAD = 0.0174533;


%max control angle,default 35deg
MAX_CONTROL_ANGLE_ROLL = 35;
MAX_CONTROL_ANGLE_PITCH  = 35;
%max control angle rate,rad/s 
MAX_CONTROL_ANGLE_RATE_PITCH = 220;
MAX_CONTROL_ANGLE_RATE_ROLL = 220;
MAX_CONTROL_ANGLE_RATE_Y = 200;
%Maximum control speed, m/s
MAX_CONTROL_VELOCITY_XY = 5;
MAX_CONTROL_VELOCITY_Z = 3;
%Throttle amplitude
MAX_MAN_THR = 0.9;
MIN_MAN_THR = 0.05;

g= 9.81;
rpm2rad = 1/9.5492965964254;