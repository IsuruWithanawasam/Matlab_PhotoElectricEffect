function [fitresult, gof] = createFit3(V, i_470)
%CREATEFIT3(V,I_470)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : V
%      Y Output: i_470
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 29-Dec-2022 10:45:48


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( V, i_470 );

% Set up fittype and options.
ft = fittype( 'smoothingspline' );
opts = fitoptions( 'Method', 'SmoothingSpline' );
opts.SmoothingParam = 0.989287124953883;

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.

h = plot( fitresult,'k', xData, yData );

grid on


