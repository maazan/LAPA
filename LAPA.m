
nx = 40;
ny = 40;
x = 0;
y = 0;
No_of_Iterations = 20000;
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


for n = 1:No_of_Iterations
    
    for i = 1:nx
        for j = 1:ny
            
           %---------------------------
                if (i == 1)
                    x = i+1;
                elseif (i == nx)
                    x = i-1;
                else 
                    x = i;
                end
            %---------------------------
                 if (j == 1)
                    y = j+1;
                elseif (j == ny)
                    y = j-1;
                else 
                    y = j;
                 end 
             %----------------------------
             %----------------------------

            %if (n == 1 && j == 1)
            if (j == 1 || j == ny)
                V2(i,j) = 1; 
            %elseif (n == 1 && j == ny)
            elseif (i == nx || i == 1 )
                V2(i,j) = 0;
            else
           V2(i,j) = (V(x+1,y) + V(x-1,y) + V(x,y+1) + V(x,y-1))/4; 
            end 
            
            %-----------------------------
          
            Ex(i,j) = V(x,y) - V(x+1,y);
            Ey(i,j) = V(x,y) - V(x,y+1);
           
             
            
        end
    end  
        V = V2;
end
E = sqrt((Ex.^2)+(Ey.^2));
 
    figure
    title('Voltage')
    xlabel('X')
    ylabel('Y')
    zlabel('V')
    surf(V2)
          
    figure
    title('Electric Field')
    xlabel('X')
    ylabel('Y')
    zlabel('E')
    surf(E)
    
    figure
     title('Electric Field')
    xlabel('X')
    ylabel('Y')
    quiver(Ex,Ey)
    
   
    

    
 

    
        

