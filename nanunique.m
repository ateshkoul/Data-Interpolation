function y = nanunique(x)
  y = unique(x);
  if any(isnan(y))
    y(isnan(y)) = []; % remove all nans    
  end
end