% Script for plotting the output from Simulink analysis

% Plot of step change in load demand
subplot(2,1,1)
plot(tout,yout(:,2));
xlabel('time (seconds)');
ylabel('\Delta P_C(pu)');
axis([0 11 -0.05 0.25]);

% Plot of frequency reponse of system
subplot(2,1,2)
plot(tout,yout(:,1));
xlabel('time (seconds)');
ylabel('\Delta f (Hertz)');
axis([0 11 -0.015 0.005]);

% Save a copy of the simulimk model
%print(['-s',ModelName],'-dsvg',[ModelName,'.svg'])