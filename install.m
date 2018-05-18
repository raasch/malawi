% Setup script for MaLAWi
%
% This file is part of MaLAWi, the Matlab Library for Adaptive Wavelet and Multiscale Solvers
% Copyright (c) 2018 Thorsten Raasch
%
% MaLAWi is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% MaLAWi is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

% You should have received a copy of the GNU General Public License
% along with MaLAWi.  If not, see <http://www.gnu.org/licenses/>.

% add some subdirectories to the Matlab search path
mfilepath=fileparts(which(mfilename));
addpath(fullfile(mfilepath,'classes'))
addpath(fullfile(mfilepath,'unit_tests'))
clear mfilepath;
