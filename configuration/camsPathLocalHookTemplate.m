% function camsPathLocalHook

%  camsPathLocalHook
%
% Configure things for working on the  visual diet projects.
%
% For use with CHOP network computers, need appropriate access to run
% For use with ToolboxToolbox
% If you 'git clone' camsPath into your ToolboxToolbox "projectRoot"
% folder, then run in MATLAB
%   tbUseProject('camsPath')
% ToolboxToolbox will set up camsPath and its dependencies on
% your machine.
%
% As part of the setup process, ToolboxToolbox will copy this file to your
% ToolboxToolbox localToolboxHooks directory (minus the "Template" suffix).
% The defalt location for this would be
%   ~/localToolboxHooks/camsPathLocalHook.m
%
% Each time you run tbUseProject('camsPath'), ToolboxToolbox will
% execute your local copy of this file to do setup for continuousHA.
%
% You should edit your local copy with values that are correct for your
% local machine, for example the output directory location.
%


%% Say hello.
projectName = 'camsPath';

%% Delete any old prefs
if (ispref(projectName))
    rmpref(projectName);
end

%% Specify base paths for materials and data (set up for CPG only)
[~, userID] = system('whoami');
userID = strtrim(userID);

camsPath_dataBasePath = ['/Users/' userID '/OneDrive - Children''s Hospital of Philadelphia/Research/CAMS Path/Data/'];
camsPath_analysisBasePath = ['/Users/' userID '/OneDrive - Children''s Hospital of Philadelphia/Research/CAMS Path/Analysis/'];

%% Specify where output goes (for mac)

% Code to run on Mac plaform
setpref(projectName,'camsPathDataPath', camsPath_dataBasePath);
setpref(projectName,'camsPathAnalysisPath', camsPath_analysisBasePath);

