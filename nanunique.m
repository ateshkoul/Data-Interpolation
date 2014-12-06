function y = nanunique(x)
% ----------------------------
% Author : Atesh Koul
% Italian Institute of technology, Genoa
% ----------------------------


  y = unique(x);
  if any(isnan(y))
    y(isnan(y)) = []; % remove all nans    
  end
end