% Script for plotting the output from Simulink analysis

% Plot of step change in load demand
subplot(2,1,1)
plot(tout,yout(:,2));
xlabel('time (seconds)');
ylabel('\Delta P_L(pu)');
axis([0 11 -0.05 0.25]);

% Plot of frequency reponse of system
subplot(2,1,2)
plot(tout,yout(:,1));
xlabel('time (seconds)');
ylabel('\Delta f (Hertz)');
axis([0 11 -0.02 0]);

% Save a copy of the simulimk model
ModelName = 'single_area_model_P_control';
print(['-s',ModelName],'-dsvg',[ModelName,'.svg'])