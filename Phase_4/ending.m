%% Plot
% Situation plot
figure("Name",'Situation')
subplot(2, 2, 1)
hold on
plot(out.tout, out.xyz(:,1), "LineWidth",3)
plot(out.tout, out.xyz(:,2), "LineWidth",3)
plot(out.tout, out.xyz(:,3), "LineWidth",3)
title('Position')
xlabel('Time (s)')
legend('X (m)' ,'Y (m)' ,'Z (m)')
grid on

subplot(2, 2, 2)
hold on
plot(out.tout, out.phi_theta_psi(:,1), "LineWidth",3)
plot(out.tout, out.phi_theta_psi(:,2), "LineWidth",3)
plot(out.tout, out.phi_theta_psi(:,3), "LineWidth",3)
title('Atittude')
xlabel('Time (s)')
legend('{\phi} (rad)' ,'{\theta} (rad)' ,'{\psi} (rad)')
grid on

subplot(2, 2, 3)
hold on
plot(out.tout, out.uvw(:,1), "LineWidth",3)
plot(out.tout, out.uvw(:,2), "LineWidth",3)
plot(out.tout, out.uvw(:,3), "LineWidth",3)
title('Ground Velocity')
xlabel('Time (s)')
legend('{u} (m/s)' ,'{v} (m/s)' ,'{w} (m/s)')
grid on

subplot(2, 2, 4)
hold on
plot(out.tout, out.pqr(:,1), "LineWidth",3)
plot(out.tout, out.pqr(:,2), "LineWidth",3)
plot(out.tout, out.pqr(:,3), "LineWidth",3)
title('Angular Velocities')
xlabel('Time (s)')
legend('{p} (rad/s)' ,'{q} (rad/s)' ,'{r} (rad/s)')
grid on

% Rotor Rotational Velocities plot
figure("Name",'Rotor Rotational Velocities')
hold on
plot(out.tout, out.Omegas(:,1), "LineWidth",2)
plot(out.tout, out.Omegas(:,2), "LineWidth",2)
plot(out.tout, out.Omegas(:,3), "LineWidth",2)
plot(out.tout, out.Omegas(:,4), "LineWidth",2)
title('Rotor Rotational Velocities')
xlabel('Time (s)')
legend('{w1} (rpm)', '{w2} (rpm)', '{w3} (rpm)', '{w4} (rpm)')
grid on
