THROTTLE_AMP = [0.5 1.1 1.7 2.5 3.4 4.4 5.4 6.5 7.7...
    8.8 11.9 14.6 18.1 22.1];
scale_THR = normalize(THROTTLE_AMP,'range');

Speed_Rad = [1530 2120 2500 2860 3210 3490 3740 3990 4200 ...
    4380 4760 5130 5450 5880];

thr_rad = [scale_THR(1,:)',Speed_Rad(1,:)'];

thr_sm = [0:0.01:1];

speed_int = interp1(thr_rad(:,1),thr_rad(:,2),thr_sm);

thr_rad_c = [thr_sm',speed_int'];