
%% xyz position using ground truth 
tt = abs_pos.Time;

plot(tt, abs_pos.data(:,1), 'r-', 'LineWidth', 1); hold on; grid on;
plot(tt, abs_pos.data(:,2), 'g-', 'LineWidth', 1); 
plot(tt, abs_pos.data(:,3), 'b-', 'LineWidth', 1); 

plot(tt, pr.data(:,1), 'r:', 'LineWidth', 1);
plot(tt, pr.data(:,2), 'g:', 'LineWidth', 1);
plot(tt, pr.data(:,3), 'b:', 'LineWidth', 1);

legend('x','y','z','x_d_e_s_i_r_e_d','y_d_e_s_i_r_e_d','z_d_e_s_i_r_e_d','Location','SouthEast');
xlabel('Simulation time, t [s]'); ylabel('COM XYZ Positions [m]');
title('XYZ Position of COM Frame \{W\}');
% axis([0,60,-2.5,2.5]);
axis([0,40,-1.2,1.2]);



%% position error using ground truth 


%% ZYX euler angle
tt = abs_intO.Time;
r1 = abs_intO.Data;

figure;
plot(tt,r1(:,1),'r-', 'LineWidth', 1); hold on; grid on;
plot(tt,r1(:,2),'g-', 'LineWidth', 1);
plot(tt,r1(:,3),'b-', 'LineWidth', 1);
plot(tt,rotr.Data(:,1),'r:', 'LineWidth', 1); 
plot(tt,rotr.Data(:,2),'g:', 'LineWidth', 1);
plot(tt,rotr.Data(:,3),'b:', 'LineWidth', 1);
legend('Xrot','Yrot','Zrot','Xrot_d','Yrot_d','Zrot_d','Location','NorthWest');
title('XYZ Angle of COM Frame \{W\}');
xlabel('Simulation time, t [s]'); ylabel('Body Euler Angles [rad]');
axis([0,40,-0.2,0.7]);

%% angle error



%% abs_rot

figure;
subplot(331);
plot(abs_rot.Time,abs_rot.Data(:,1));
subplot(332);
plot(abs_rot.Time,abs_rot.Data(:,2));
subplot(333);
plot(abs_rot.Time,abs_rot.Data(:,3));
subplot(334);
plot(abs_rot.Time,abs_rot.Data(:,4));
subplot(335);
plot(abs_rot.Time,abs_rot.Data(:,5));
subplot(336);
plot(abs_rot.Time,abs_rot.Data(:,6));
subplot(337);
plot(abs_rot.Time,abs_rot.Data(:,7));
subplot(338);
plot(abs_rot.Time,abs_rot.Data(:,8));
subplot(339);
plot(abs_rot.Time,abs_rot.Data(:,9));

%% R

figure;
subplot(331);
plot(R.Time,squeeze(R.Data(1,1,:)));
subplot(332);
plot(R.Time,squeeze(R.Data(1,2,:)));
subplot(333);
plot(R.Time,squeeze(R.Data(1,3,:)));
subplot(334);
plot(R.Time,squeeze(R.Data(2,1,:)));
subplot(335);
plot(R.Time,squeeze(R.Data(2,2,:)));
subplot(336);
plot(R.Time,squeeze(R.Data(2,3,:)));
subplot(337);
plot(R.Time,squeeze(R.Data(3,1,:)));
subplot(338);
plot(R.Time,squeeze(R.Data(3,2,:)));
subplot(339);
plot(R.Time,squeeze(R.Data(3,3,:)));


%% Rd

figure;
subplot(331);
plot(Rd.Time,squeeze(Rd.Data(1,1,:)));
subplot(332);
plot(Rd.Time,squeeze(Rd.Data(1,2,:)));
subplot(333);
plot(Rd.Time,squeeze(Rd.Data(1,3,:)));
subplot(334);
plot(Rd.Time,squeeze(Rd.Data(2,1,:)));
subplot(335);
plot(Rd.Time,squeeze(Rd.Data(2,2,:)));
subplot(336);
plot(Rd.Time,squeeze(Rd.Data(2,3,:)));
subplot(337);
plot(Rd.Time,squeeze(Rd.Data(3,1,:)));
subplot(338);
plot(Rd.Time,squeeze(Rd.Data(3,2,:)));
subplot(339);
plot(Rd.Time,squeeze(Rd.Data(3,3,:)));


%% xyz acceleration
tt = pddot.Time;

figure; 
plot(tt, pddot.Data(:,1), 'r-', 'LineWidth', 1);  hold on; grid on;
plot(tt, pddot.Data(:,2), 'g-', 'LineWidth', 1); 
plot(tt, pddot.Data(:,3), 'b-', 'LineWidth', 1); 
legend('x','y','z','Location','SouthEast');
xlabel('Simulation time, t [s]'); ylabel('COM XYZ Accelerations [m]');
title('XYZ Acceleration of COM Frame \{W\}');
axis([0,15,-8,8]);

%% joint torques

tt = Jtorque.Time;

figure; 
plot(tt, Jtorque.Data(:,1)); hold on; grid on;
plot(tt, Jtorque.Data(:,3));
plot(tt, Jtorque.Data(:,5));
plot(tt, Jtorque.Data(:,7));
xlabel('Simulation time, t [s]'); ylabel('Torque [Nm]');
title('Joint Torques Alpha \{W\}');

figure; 
plot(tt, Jtorque.Data(:,2)); hold on; grid on;
plot(tt, Jtorque.Data(:,4));
plot(tt, Jtorque.Data(:,6));
plot(tt, Jtorque.Data(:,8));
xlabel('Simulation time, t [s]'); ylabel('Torque [Nm]');
title('Joint Torques Beta \{W\}');
axis([0,20,-5,5]);

%% input from position control u1

tt = u1.Time;
figure;
plot(tt, u1.Data(:,1)); hold on; grid on;
plot(tt, u1.Data(:,2));
plot(tt, u1.Data(:,3));
xlabel('Simulation time, t [s]'); ylabel('Force [N]');
legend('x','y','z','Location','SouthEast');
title('input from position control u1');
axis([0,60,-200,200]);

%% input from LQG

figure;
plot(uzp.Time, uzp.Data); grid on;
xlabel('Simulation time, t [s]'); ylabel('Input force [N]');
% legend('z','Location','SouthEast');
title('Input from LQG Controller u_z_p');
axis([0,60,-5,4]);

%% input from u1_2 (transformed uzp)

tt = u1_2.Time;
figure;
plot(tt, u1_2.Data(:,1)); hold on; grid on;
plot(tt, u1_2.Data(:,2));
plot(tt, u1_2.Data(:,3));
xlabel('Simulation time, t [s]'); ylabel('Force [N]');
legend('x','y','z','Location','SouthEast');
title('input from position control u1_2');
axis([0,60,-5,5]);

%% input from angle control u2

tt = u2.Time;
figure;
plot(tt, u2.Data(:,1)); hold on; grid on;
plot(tt, u2.Data(:,2));
plot(tt, u2.Data(:,3));
xlabel('Simulation time, t [s]'); ylabel('Torque [Nm]');
legend('x','y','z','Location','SouthEast');
title('input from angle control u2');
axis([0,60,-1.6,1.6]);

%% difference in input du1

tt = du1.Time;
figure;
plot(tt, du1.Data(:,1)); hold on; grid on;
plot(tt, du1.Data(:,2));
plot(tt, du1.Data(:,3));
xlabel('Simulation time, t [s]'); ylabel('diff in Force [N]');
legend('x','y','z','Location','SouthEast');
title('difference in input from u1 (du1)');
axis([0,20,-5,5]);

%% difference in input du2

tt = du2.Time;
figure;
plot(tt, du1.Data(:,1)); hold on; grid on;
plot(tt, du1.Data(:,2));
plot(tt, du1.Data(:,3));
xlabel('Simulation time, t [s]'); ylabel('diff in Torque [Nm]');
legend('x','y','z','Location','SouthEast');
title('difference in input from u2 (du2)');
axis([0,20,-5,5]);

%% q
iofq = 2;

tt = q.Time;
figure;
plot(tt, q.Data(:,1+3*iofq)); hold on; grid on;
plot(tt, q.Data(:,2+3*iofq));
plot(tt, q.Data(:,3+3*iofq));
xlabel('Simulation time, t [s]');
legend('x','y','z','Location','SouthEast');
title('thrust vector q');
axis([0,20,-500000,500000]);

%% acmd

tt = acmd.Time;
figure;
plot(tt, acmd.Data(:,1)); hold on; grid on;
plot(tt, acmd.Data(:,2));
plot(tt, acmd.Data(:,3));
plot(tt, acmd.Data(:,4));
xlabel('Simulation time, t [s]'); ylabel('Angle [rad]');
legend('a1','a2','a3','a4')
title('alpha angle');

%% bcmd

tt = bcmd.Time;
figure;
plot(tt, bcmd.Data(:,1)); hold on; grid on;
plot(tt, bcmd.Data(:,2));
plot(tt, bcmd.Data(:,3));
plot(tt, bcmd.Data(:,4));
xlabel('Simulation time, t [s]'); ylabel('Angle [rad]');
legend('b1','b2','b3','b4')
title('beta angle');

%% omega-cmd

tt = omega_cmd.Time;
figure;
plot(tt, omega_cmd.Data(:,1)); hold on; grid on;
plot(tt, omega_cmd.Data(:,2));
plot(tt, omega_cmd.Data(:,3));
plot(tt, omega_cmd.Data(:,4));
xlabel('Simulation time, t [s]'); ylabel('angular speed [rad/s]');
title('omega command');
axis([0,35,200,450]);

%% IB

tt = IB.Time;
figure;
plot(tt, IB.Data(:,1),'b'); hold on; grid on;
plot(tt, IB.Data(:,5),'r');
plot(tt, IB.Data(:,9),'g');
xlabel('Simulation time, t [s]'); ylabel('IB [kg.m^2]');
title('IB');


