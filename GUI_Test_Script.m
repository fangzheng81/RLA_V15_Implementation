%%%%%%%%%%%
% Test script
%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
%%%%%%%%% Initialize variables here

% --Define algorithm parameters here
interrupt=0;
scan_freq=20;   % set scan frequency from 8 up to 30Hz, measurement mode will do the loop and send back the data
%%reflector_map='Reflector_map';
num_ref_pool=3;
num_detect_pool=3;
scan_data=zeros(8400,3);
amp_thres=1600;
reflector_diameter=120;
dist_delta=200;  % minimum distance to distinguish a reflector
dist_thres=400;  % minimum distance to start to recognize a reflector
thres_dist_large=30000;   % this is the filter to knock out the large distance points
thres_dist_match=400;   % distance threshold to match reflectors
thres_angle_match=6;  % angle threshold to match reflectors
% Execute mode manager to run GUI test script
[mode,status]=mode_manager(interrupt,scan_freq,num_ref_pool,num_detect_pool,scan_data,amp_thres,dist_thres,reflector_diameter,dist_delta,thres_dist_match,thres_dist_large,thres_angle_match);

if status == 0
    disp('RLA is running properly!!')
elseif status == 1
    error('Error happen!!')
end
