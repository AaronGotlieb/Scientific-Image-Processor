pro grandmaster
  sci  = readfits(dialog_pickfile(/multiple_files));select sci to process
  flat = readfits(dialog_pickfile(/multiple_files));select flat to process
  dark = readfits(dialog_pickfile(/multiple_files));select dark to process
  DF   = readfits(dialog_pickfile(/multiple_files));select darkflat to process
  exp = .5
  nummer = abs(sci - dark) /exp
  normflat  = abs(flat - DF) / mean(flat - DF)
  gmimg = nummer/normflat
  
  outfile = dialog_pickfile(Title = "Why not select a name for your Grand Master Image!")
  writefits, outfile, gmimg
end
  
  
