function [fitresult, gof] = createFit6(V, i_524)
%CREATEFIT6(V,I_524)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : V
%      Y Output: i_524
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 29-Dec-2022 11:36:00


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( V, i_524 );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = 0.982459356724425;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.

h = plot( fitresult,'m', xData, yData,'.m' );

grid on

