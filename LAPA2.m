
nx = 40;
ny = 40;
x = 0;
y = 0;
No_of_Iterations = 1000;
delta = 1; 

V = zeros(nx,ny);
V2 = zeros(nx,ny);
Ex = zeros(nx,ny);
Ey = zeros(nx,ny);
E = zeros(nx,ny);

% subplot(2,1,1);
% title('Voltage');
% xlabel('X');
% ylabel('Y');
% hold on
% 
% subplot(2,1,2)
% title('Electric Field');
% xlabel('Time (s)');
% ylabel('Velocity (m/s)');
% hold on
        V(:,1) = 1;
        V(:,ny) = 1;
        V(1,:) = 0;
        V(nx,:) = 0;

for n = 1:No_of_Iterations
    
        V = imboxfilt(V,3);
        V(:,1) = 1;
        V(:,ny) = 1;
        V(1,:) = 0;
        V(nx,:) = 0;
        
        

end

surf(V)


   
    
 

    
        

