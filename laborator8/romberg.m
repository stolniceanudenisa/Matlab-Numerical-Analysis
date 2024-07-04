
function rombergRez = romberg(f, a, b, precizie)
  h = b - a; %lungimea intervalului de integrare
  q_last = h/2*(f(a)+f(b)); % ultima estimare a integralei folosinf formula trapezului
  k = 0; % contor pt nr de iteratii
  while (1)
    k = k + 1;
    primultermen =  q_last / 2;
    j = 1:(2^(k - 1));
    valoaresuma = sum(f(a + (2 .* j - 1) / (2 ^ k) * h));
    %calculam suma valorilor functiei in pct mij ale fiecarui subinterval
    
    aldoileatermen =  h/(2^k)*valoaresuma; % a doua parte a estimarii integralei
    q_k = primultermen + aldoileatermen;
    
    if abs(q_k - q_last) <= precizie  %dacă diferenta abs dintre 
        % noua estimare a integralei si cea anterioară 
        % este <= precizia specificata.
      break;
    end
    q_last = q_k; %actualizam ultima estimare a integr cu noua estimare
  end
  rombergRez = q_k; % estimarea finala a integralei
end