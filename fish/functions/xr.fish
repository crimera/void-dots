function xr --wraps='sudo xbps-remove' --wraps='sudo xbps-remove -Ro' --description 'alias xr sudo xbps-remove -Ro'
  sudo xbps-remove -Ro $argv
        
end
