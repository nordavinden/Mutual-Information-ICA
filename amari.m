%This file is part of the MutualInformationICA package
%Copyright 2005, 2008, 2019 Alexander Kraskov, Harald Stoegbauer, Sergey Astakhov, Peter Grassberger

%This program is free software: you can redistribute it and/or modify
%it under the terms of the GNU General Public License as published by
%the Free Software Foundation, either version 3 of the License, or
%(at your option) any later version.

%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%GNU General Public License for more details.

%You should have received a copy of the GNU General Public License
%along with this program.  If not, see <https://www.gnu.org/licenses/>.



function out=amari(C,A)

[b,a]=size(C);

dummy=pinv(A)*C;
dummy=sum(ntu(abs(dummy)))-1;

dummy2=pinv(C)*A;
dummy2=sum(ntu(abs(dummy2)))-1;

out=(sum(dummy)+sum(dummy2))/(2*a*(a-1));


function CN=ntu(C)
[m n]=size(C);
for t=1:n,
 CN(:,t)=C(:,t)./max(abs(C(:,t)));
end
