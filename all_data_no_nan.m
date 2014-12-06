

% script to save all_subjects_without interpolation_no_nans for the columns that we are interested in 
% given here by p variable

[a,b] = uigetfile('*.xlsx','Multiselect','on');
filename = fullfile(b,a);

clear a b;

A = importdata(filename);
Data = A.data;


% find all the sheets in the file
sheet = fieldnames(Data);
nsheet = size(sheet,1);


for i = 1:nsheet-1
    M{i} = getfield(Data,sheet{i});
    %sheet_data = sheet_data(:,[1 2 8:27]);
    % loop over all the conditions 1 and 2
    % find number of conditions (in our case only two - 1,2)      
end
clear i;


Final = cat(1,M{:});

p = [1 2 8:17 18:27 40:109 200:219 222:231 232:241 3 4 5 6 7 35 220 221 242 243 244];

valid = Final(:,p);
nonvalid = valid(~any(isnan(valid),2),:);
