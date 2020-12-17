function GUI_MainEditBox_Update_FFC(reset,new_str,color)

% This function updates the string content of the multi-line edit ui in Fragments-Expert GUI.
%
% Copyright (C) 2020 Mehdi Teimouri <mehditeimouri [at] ut.ac.ir>
%
% This file is a part of Fragments-Expert software, a software package for
% feature extraction from file fragments and classification among various file formats.
%
% Fragments-Expert software is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
%
% Fragments-Expert software is distributed in the hope that it will be useful,but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License along with this program.
% If not, see <http://www.gnu.org/licenses/>.
%
% Inputs:
%   reset: if true, first the contents are reset
%   new_str: New string that should be added to edit ui contents.
%   color: The color of displayed texts ('red','black').
%
%   Note 1: If the number of inputs is less than three, for the third input the default value 'black' is used.
%   Note 2: If the number of inputs is less than two, for the second input the default value '' is used.
%
% Revisions:
% 2020-Mar-02   function was created

%% Initialization
global TextBox_FFC TextBox_FFC_String

if nargin<3
    color = 'black';
end

if nargin<2
    new_str = '';
end

%% Reset the contents if needed
if reset
    TextBox_FFC_String = {};
end

%% Update the content
TextBox_FFC_String = [TextBox_FFC_String new_str];
set(TextBox_FFC,'String',TextBox_FFC_String);

%% Change the color of contents
switch color    
    case 'red'
        set(TextBox_FFC,'ForegroundColor',[1 0 0]);
        
    otherwise
        set(TextBox_FFC,'ForegroundColor',[0 0 0]);
end