local d=string.byte;local r=string.char;local c=string.sub;local T=table.concat;local s=math.ldexp;local P=getfenv or function()return _ENV end;local l=setmetatable;local u=select;local f=unpack;local h=tonumber;local function b(d)local e,o,t="","",{}local n=256;local a={}for l=0,n-1 do a[l]=r(l)end;local l=1;local function i()local e=h(c(d,l,l),36)l=l+1;local o=h(c(d,l,l+e-1),36)l=l+e;return o end;e=r(i())t[1]=e;while l<#d do local l=i()if a[l]then o=a[l]else o=e..c(e,1,1)end;a[n]=e..c(o,1,1)t[#t+1],e,n=o,o,n+1 end;return table.concat(t)end;local t=b('22P27422P22R27522R22S2751H1J181F1L22R23B2752191K1021T21A13171K1I12101L1E1J21T131O21T21D1O101F22T27526K22X24124E23W22X27426G23528A23T23527426L23528J23V28J22P26L28D22P23Y28S22P');local n=bit and bit.bxor or function(l,o)local e,n=1,0
while l>0 and o>0 do
local c,a=l%2,o%2
if c~=a then n=n+e end
l,o,e=(l-c)/2,(o-a)/2,e*2
end
if l<o then l=o end
while l>0 do
local o=l%2
if o>0 then n=n+e end
l,e=(l-o)/2,e*2
end
return n
end
local function e(o,l,e)if e then
local l=(o/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else
local l=2^(l-1);return(o%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local a,o,c,e=d(t,l,l+3);a=n(a,97)o=n(o,97)c=n(c,97)e=n(e,97)l=l+4;return(e*16777216)+(c*65536)+(o*256)+a;end;local function a()local e=n(d(t,l,l),97);l=l+1;return e;end;local function b()local l=o();local o=o();local c=1;local n=(e(o,1,20)*(2^32))+l;local l=e(o,21,31);local e=((-1)^e(o,32));if(l==0)then
if(n==0)then
return e*0;else
l=1;c=0;end;elseif(l==2047)then
return(n==0)and(e*(1/0))or(e*(0/0));end;return s(e,l-1023)*(c+(n/(2^52)));end;local i=o;local function h(e)local o;if(not e)then
e=i();if(e==0)then
return'';end;end;o=c(t,l,l+e-1);l=l+e;local e={}for l=1,#o do
e[l]=r(n(d(c(o,l,l)),97))end
return T(e);end;local l=o;local function r(...)return{...},u('#',...)end
local function i()local d={0,0,0,0};local l={};local c={};local t={d,nil,l,nil,c};for e=1,o()do l[e-1]=i();end;local l=o()local c={0,0};for o=1,l do
local e=a();local l;if(e==3)then l=(a()~=0);elseif(e==1)then l=b();elseif(e==2)then l=h();end;c[o]=l;end;t[2]=c
for a=1,o()do
local c=n(o(),140);local o=n(o(),236);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;d[a]=l;end;t[4]=a();return t;end;local function h(l,e,a)local e=l[1];local o=l[2];local c=l[3];local l=l[4];return function(...)local h=e;local n=o;local e=c;local o=l;local l=r
local c=1;local t=-1;local i={};local d={...};local r=u('#',...)-1;local l={};local e={};for l=0,r do
if(l>=o)then
i[l-o]=d[l+1];else
e[l]=d[l+1];end;end;local l=r-o+1
local l;local o;while true do
l=h[c];o=l[1];if o<=3 then if o<=1 then if o==0 then local o=l[2];local c={};local n=0;local l=o+l[3]-1;for l=o+1,l do n=n+1;c[n]=e[l];end;e[o](f(c,1,l-o));t=o;else e[l[2]]=a[n[l[3]]];end;elseif o==2 then do return end;else do return end;end;elseif o<=5 then if o==4 then e[l[2]]=n[l[3]];else e[l[2]]=a[n[l[3]]];end;elseif o>6 then e[l[2]]=n[l[3]];else local o=l[2];local c={};local n=0;local l=o+l[3]-1;for l=o+1,l do n=n+1;c[n]=e[l];end;e[o](f(c,1,l-o));t=o;end;c=c+1;end;end;end;return h(i(),{},P())();