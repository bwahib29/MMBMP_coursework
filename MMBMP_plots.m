IC1I0 = readtable("IC1I0.dat");
IC1I60 = readtable("IC1I60.dat");
IC1I80 = readtable("IC1I80.dat");

IC2I0 = readtable("IC2I0.dat");
IC2I60 = readtable("IC2I60.dat");
IC2I80 = readtable("IC2I80.dat");

IC3I0 = readtable("IC3I0.dat");
IC3I60 = readtable("IC3I60.dat");
IC3I80 = readtable("IC3I80.dat");
% IC1
figure;
plot(IC1I0.Var1, IC1I0.Var2, 'LineWidth', 1.5)
hold on;
plot(IC1I60.Var1, IC1I60.Var2, 'LineWidth', 1.5)
plot(IC1I80.Var1, IC1I80.Var2, 'LineWidth', 1.5)
xlabel("Time",'FontSize', 14) 
ylabel("V",'FontSize', 14) 
ylim([-100 40])
title("Simulation of state variable V over time",'FontSize', 14) 
legend("I_{stim}=0", "I_{stim}=60", "I_{stim}=80",'FontSize', 14) 

% IC2
figure;
plot(IC2I0.Var1, IC2I0.Var2, 'LineWidth', 1.5)
hold on;
plot(IC2I60.Var1, IC2I60.Var2, 'LineWidth', 1.5)
plot(IC2I80.Var1, IC2I80.Var2, 'LineWidth', 1.5)
xlabel("Time",'FontSize', 14) 
ylabel("V",'FontSize', 14) 
ylim([-100 40])
title("Simulation of state variable V over time",'FontSize', 14) 
legend("I_{stim}=0", "I_{stim}=60", "I_{stim}=80",'FontSize', 14) 

% IC3
figure;
plot(IC3I0.Var1, IC3I0.Var2, 'LineWidth', 1.5)
hold on;
plot(IC3I60.Var1, IC3I60.Var2, 'LineWidth', 1.5)
plot(IC3I80.Var1, IC3I80.Var2, 'LineWidth', 1.5)
xlabel("Time",'FontSize', 14) 
ylabel("V",'FontSize', 14) 
ylim([-100 40])
title("Simulation of state variable V over time",'FontSize', 14) 
legend("I_{stim}=0", "I_{stim}=60", "I_{stim}=80",'FontSize', 14) 


%%
IC1I0 = readtable("IC1I0W.dat");
IC1I60 = readtable("IC1I60W.dat");
IC1I80 = readtable("IC1I80W.dat");

IC2I0 = readtable("IC2I0W.dat");
IC2I60 = readtable("IC2I60W.dat");
IC2I80 = readtable("IC2I80W.dat");

IC3I0 = readtable("IC3I0W.dat");
IC3I60 = readtable("IC3I60W.dat");
IC3I80 = readtable("IC3I80W.dat");
% IC1
figure;
plot(IC1I0.Var1, IC1I0.Var2, 'LineWidth', 1.5)
hold on;
plot(IC1I60.Var1, IC1I60.Var2, 'LineWidth', 1.5)
plot(IC1I80.Var1, IC1I80.Var2, 'LineWidth', 1.5)
xlabel("Time",'FontSize', 14) 
ylabel("w",'FontSize', 14) 
ylim([-0.5 0.5])
title("Simulation of state variable w over time",'FontSize', 14) 
legend("I_{stim}=0", "I_{stim}=60", "I_{stim}=80",'FontSize', 14)

% IC2
figure;
plot(IC2I0.Var1, IC2I0.Var2, 'LineWidth', 1.5)
hold on;
plot(IC2I60.Var1, IC2I60.Var2, 'LineWidth', 1.5)
plot(IC2I80.Var1, IC2I80.Var2, 'LineWidth', 1.5)
xlabel("Time",'FontSize', 14) 
ylabel("w",'FontSize', 14) 
ylim([-0.5 0.5])
title("Simulation of state variable w over time",'FontSize', 14) 
legend("I_{stim}=0", "I_{stim}=60", "I_{stim}=80",'FontSize', 14)

% IC3
figure;
plot(IC3I0.Var1, IC3I0.Var2, 'LineWidth', 1.5)
hold on;
plot(IC3I60.Var1, IC3I60.Var2, 'LineWidth', 1.5)
plot(IC3I80.Var1, IC3I80.Var2, 'LineWidth', 1.5)
xlabel("Time",'FontSize', 14) 
ylabel("w",'FontSize', 14) 
ylim([-0.5 0.5])
title("Simulation of state variable w over time",'FontSize', 14) 
legend("I_{stim}=0", "I_{stim}=60", "I_{stim}=80",'FontSize', 14)


%%

IC3I0nc = readtable("IC3I0nc.dat");
IC3I0 = readtable("IC3I0PP.dat");

IC3I60nc = readtable("IC3I60nc.dat");
IC3I60 = readtable("IC3I60PP.dat");

IC3I80nc = readtable("IC3I80nc.dat");
IC3I80 = readtable("IC3I80PP.dat");

% Split data based on 1 and 2 in the 3rd column
IC3I0_nc1 = IC3I0nc(IC3I0nc.Var3 == 1, :); % Rows where 3rd column is 1
IC3I0_nc2 = IC3I0nc(IC3I0nc.Var3 == 2, :);  % Rows where 3rd column is 2
IC3I0_nc1 = sortrows(IC3I0_nc1, 'Var1');  
IC3I0_nc2 = sortrows(IC3I0_nc2, 'Var1');

IC3I60_nc1 = IC3I60nc(IC3I60nc.Var3 == 1, :); 
IC3I60_nc2 = IC3I60nc(IC3I60nc.Var3 == 2, :);  
IC3I60_nc1 = sortrows(IC3I60_nc1, 'Var1');  
IC3I60_nc2 = sortrows(IC3I60_nc2, 'Var1');

IC3I80_nc1 = IC3I80nc(IC3I80nc.Var3 == 1, :); 
IC3I80_nc2 = IC3I80nc(IC3I80nc.Var3 == 2, :);  
IC3I80_nc1 = sortrows(IC3I80_nc1, 'Var1');  
IC3I80_nc2 = sortrows(IC3I80_nc2, 'Var1');

figure;
% plot(IC3I0.Var1, IC3I0.Var2, 'b.','LineWidth', 1)
% hold on;
plot(IC3I60.Var1, IC3I60.Var2, 'r','LineWidth', 1.5)
hold on;
plot(IC3I80.Var1, IC3I80.Var2, 'r.--','LineWidth', 1.5)
% plot(IC3I0_nc1.Var1, IC3I0_nc1.Var2, 'k', 'LineWidth', 1.5)
% plot(IC3I0_nc2.Var1, IC3I0_nc2.Var2, 'r', 'LineWidth', 1.5)
plot(IC3I60_nc1.Var1, IC3I60_nc1.Var2, 'k', 'LineWidth', 1.5)
plot(IC3I60_nc2.Var1, IC3I60_nc2.Var2, 'b','LineWidth', 1.5)
plot(IC3I80_nc1.Var1, IC3I80_nc1.Var2, 'k.--', 'LineWidth', 1.5)
% plot(IC3I80_nc2.Var1, IC3I80_nc2.Var2, 'b','LineWidth', 1.5)
xlabel("V",'FontSize', 14) 
ylabel("w",'FontSize', 14) 
% ylim([-0.5 0.5])
title("Phase plane",'FontSize', 14) 
legend( "I_{stim}=60", "I_{stim}=80",'FontSize', 14)



%%

IC2I0nc = readtable("IC2I0nc.dat");
IC2I0 = readtable("IC2I0PP.dat");

IC2I60nc = readtable("IC2I60nc.dat");
IC2I60 = readtable("IC2I60PP.dat");

IC2I80nc = readtable("IC2I80nc.dat");
IC2I80 = readtable("IC2I80PP.dat");

% Split data based on 1 and 2 in the 3rd column
IC2I0_nc1 = IC2I0nc(IC2I0nc.Var3 == 1, :); 
IC2I0_nc2 = IC2I0nc(IC2I0nc.Var3 == 2, :);  
IC2I0_nc1 = sortrows(IC2I0_nc1, 'Var1');  
IC2I0_nc2 = sortrows(IC2I0_nc2, 'Var1');

IC2I60_nc1 = IC2I60nc(IC2I60nc.Var3 == 1, :); 
IC2I60_nc2 = IC2I60nc(IC2I60nc.Var3 == 2, :);  
IC2I60_nc1 = sortrows(IC2I60_nc1, 'Var1');  
IC2I60_nc2 = sortrows(IC2I60_nc2, 'Var1');

IC2I80_nc1 = IC3I80nc(IC2I80nc.Var3 == 1, :); 
IC2I80_nc2 = IC3I80nc(IC2I80nc.Var3 == 2, :); 
IC2I80_nc1 = sortrows(IC2I80_nc1, 'Var1');  
IC2I80_nc2 = sortrows(IC2I80_nc2, 'Var1');

figure;
% plot(IC3I0.Var1, IC3I0.Var2, 'b.','LineWidth', 1)
% hold on;
plot(IC2I60.Var1, IC2I60.Var2, 'r','LineWidth', 1.5)
hold on;
plot(IC2I80.Var1, IC2I80.Var2, 'r.--','LineWidth', 1.5)
% plot(IC3I0_nc1.Var1, IC3I0_nc1.Var2, 'k', 'LineWidth', 1.5)
% plot(IC3I0_nc2.Var1, IC3I0_nc2.Var2, 'r', 'LineWidth', 1.5)
plot(IC2I60_nc1.Var1, IC2I60_nc1.Var2, 'k', 'LineWidth', 1.5)
plot(IC2I60_nc2.Var1, IC2I60_nc2.Var2, 'b','LineWidth', 1.5)
plot(IC2I80_nc1.Var1, IC2I80_nc1.Var2, 'k.--', 'LineWidth', 1.5)
% plot(IC3I80_nc2.Var1, IC3I80_nc2.Var2, 'b','LineWidth', 1.5)
xlabel("V",'FontSize', 14) 
ylabel("w",'FontSize', 14) 
% ylim([-0.5 0.5])
title("Phase plane",'FontSize', 14) 
legend( "I_{stim}=60", "I_{stim}=80",'FontSize', 14)


%%
% Load the bifurcation data
data = readtable('diagram.dat');  % Skip the first line (header)

% Extract parameters and state variables
par = data.Var1;   % PAR(0)
u1 = data.Var2;     % U(1) - V
% u2 = data.data(:, 3);     % U(2) - w
sortedPar = sortedData.Var1;
sortedU1 = sortedData.Var2;
% Plot the bifurcation diagram
figure;

plot(sortedPar, sortedU1, 'b-', 'Linewidth', 2)  % Plot U(1) 
xlabel('I_{stim}','FontSize', 14)
ylabel('V','FontSize', 14)
ylim([-80 40])
xlim([0 78])
title('Bifurcation Diagram','FontSize', 14)
% legend('show')
hold off;

%%

isDecreasing = all(diff(par) < 0);

if isDecreasing
    disp('Values are strictly decreasing.')
else
    disp('Values are NOT strictly decreasing.')
end


%%
% Sort the data by the parameter (first column) in descending order
sortedData = sortrows(data, -1);  % Sort by the first column in descending order

% Extract the sorted columns
sortedPar = sortedData.Var1;
sortedU1 = sortedData.Var2;
% sortedU2 = sortedData(:, 3);

% Plot the sorted bifurcation diagram
figure;
hold on;
plot(sortedPar, sortedU1, 'b-', 'DisplayName', 'U(1)');  % Plot U(1)
% plot(sortedPar, sortedU2, 'r-', 'DisplayName', 'U(2)');  % Plot U(2)
xlabel('Parameter (PAR(0))');
ylabel('State Variables');
title('Bifurcation Diagram');
legend('show');
grid on;
hold off;

