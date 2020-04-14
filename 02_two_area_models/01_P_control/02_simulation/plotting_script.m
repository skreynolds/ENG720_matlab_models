% Script for plotting the output from Simulink analysis

% Plot of step change in load demand
subplot(2,1,1)
plot(tout,yout(:,3));
xlabel('time (seconds)');
ylabel('\Delta P_{L1}(pu)');
axis([0 10 -0.005 0.015]);

% Plot of frequency reponse of system
subplot(2,1,2)
plot(tout,yout(:,1));
hold on;
plot(tout,yout(:,2));
xlabel('time (seconds)');
ylabel('\Delta f (Hertz)');
legend('\Delta f_1','\Delta f_2');
axis([0 10 -0.027 0]);

% Save a copy of the simulimk model
ModelName = 'two_area_model_P_control';
print(['-s',ModelName],'-dsvg',[ModelName,'.svg'])