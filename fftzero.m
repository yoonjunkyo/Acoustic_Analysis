function y=fftzero(y,N,Dt)
  freq = [0:N-1]/(N*Dt);

  figure()
  plot(freq,abs(fft(y,N)));
  axis([200 600 0 3000])
  set(gca,'xtick',[200:20:000])
  grid on