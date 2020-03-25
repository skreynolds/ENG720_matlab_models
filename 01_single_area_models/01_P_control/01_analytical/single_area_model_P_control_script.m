% Single area model with basic proportional control

% Define the step load change
PL = 0.2;

% Derivation of the transfer function is undertaken using
% Laplacian transform models and algebra
numerator = [0.1 0.7 1];
denominator = [1 7.08 10.56 20.8];

% Define a time vector for 10 sec with 0.02 sec interval
t = 0:0.02:10;

% Model response to step input PL
frequency = -PL*step(numerator, denominator, t);

% Plot results
plot(t, frequency)