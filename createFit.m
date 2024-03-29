function [fitresult, gof] = createFit(V, i_532)
%CREATEFIT(V,I_532)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : V
%      Y Output: i_532
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 29-Nov-2022 23:17:40


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( V, i_532 );

% Set up fittype and options.
ft = fittype( 'sin3' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];
opts.StartPoint = [5.08355124672043 0.628318530717959 0.11011445798156 1.61792311527068 1.25663706143592 3.07801785816109 0.489647466648287 2.51327412287183 -2.31332245903932];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
h = plot( fitresult );
%legend( h, 'i_532 vs. V', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
grid on


