function [ p ] = move(ad, speed, time )
    p = [];
    
    for t = 1:time
        if(speed(1)==0 && speed(1)==0 && speed(1)==0 && speed(1)==0)
            ad.hover;
        else
            ad.drive(speed);
        end
        p = [p ; ad.Pitch ad.Yaw ad.Roll ad.Altitude ad.X_Velocity ad.Y_Velocity ];
        pause(0.1)
        
        key = double(get(gcf,'CurrentCharacter'));
        if key == 27
            ad.emergency();
            emergency;
            return;
        end
    end
    ad.hover;
end

