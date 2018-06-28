%%% read SLIM_COMP/APPS environments
slimcomp = getenv('SLIM_COMP');
if length(slimcomp)<1
	fprintf('FATAL ERROR: SLIM_COMP environment does not exist\n');
	fprintf('\t source appropriate environment.(sh/csh) in installation directory\n');
	return;
end
slimapps = getenv('SLIM_APPS');
if length(slimapps)<1
	fprintf('FATAL ERROR: SLIM_APPS environment does not exist\n');
	fprintf('\t source appropriate environment.(sh/csh) in installation directory\n');
	return;
end

fprintf('Loading SLIM Toolboxes from\n\t%s\n',slimapps);

% SPOT (slim updates)
addpath([slimapps '/tools/utilities/SPOT-SLIM']);
addpath([slimapps '/tools/utilities/SPOT-SLIM/tests']);
try
   addpath(fullfile(spot.path,'tests','xunit'));
catch ME
   error('Can''t find xunit toolbox.');
end
% pSPOT
addpath([slimapps '/tools/utilities/pSPOT']);
% HTopt package
addpath([slimapps '/tools/solvers/HTOpt']);
addpath([slimapps '/tools/solvers/HTOpt/htuck']);
addpath([slimapps '/tools/solvers/HTOpt/htuckOpt']);
addpath([slimapps '/tools/solvers/HTOpt/tuckOpt']);
addpath([slimapps '/tools/solvers/HTOpt/interpolation']);
addpath([slimapps '/tools/solvers/HTOpt/utility']);
addpath([slimapps '/tools/solvers/HTOpt/objective']);
% Miscellaneous
addpath([slimapps '/tools/operators/misc']);
addpath([slimapps '/tools/functions/misc']);


%%% done
fprintf('Done loading SLIM Toolboxes\n');
%path