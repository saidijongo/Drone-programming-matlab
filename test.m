ad=ARDrone();
ad.takeoff;
p = [0 0 0 0 0 0];

figure('doublebuffer','on', ...
        'CurrentCharacter','a', ...
        'WindowStyle','modal')

out = move(ad, [0 0 0 0], 40);      % Stabilization
p = [p ; out];
out = move(ad, [-0.5 0 0 0], 5);      % moveForward
p = [p ; out];

out = move(ad, [0 0.5 0 0], 5);       % moveRight
p = [p ; out];
out = move(ad, [0 0 0 0], 15);      % Stabilization
p = [p ; out];

out = move(ad, [0.5 0 0 0], 5);       % moveReverse
p = [p ; out];
out = move(ad, [0 0 0 0], 15);      % Stabilization
p = [p ; out];

out = move(ad, [0 -0.5 0 0], 5);      % moveLeft
p = [p ; out];
out = move(ad, [0 0 0 0], 15);      % Stabilization
p = [p ; out];

ad.land()
