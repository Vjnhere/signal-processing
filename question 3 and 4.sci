clear 
close
x=[3 5 2 4 1]
h=[3 5]
linear=convol(x,h)
disp("linear convol =", linear)
l1=length(x)
l2=length(h)
n=l1+l2-1
hrev=h(:,$:-1:1)
x1=[zeros(1,l2-1),x]
h1=[hrev,zeros(1,l1-1)]
for i=1:n
    y1=x1.*h1
    y(i)=sum(y1)
    for j=n:-1:2
        h1(j)=h1(j-1)
    end
    h1(1)=0
    
end
disp ('y=',y)

 subplot(3,1,1)
 plot2d3(y)
 title('linear convolution')
 // circular convolution  //
 M=max(l1,l2)
 x1=[x zeros(1,M-l1)]
 h1=[h zeros(1,M-l2)]
 ccirc=ifft(fft(x1).*fft(h1))
 disp('circular=',ccirc)
  subplot(3,1,2)
 plot2d3(ccirc)
 title('circular convolution')
