--// Protected by Karrot 1.0 - discord.gg/vPY3XmntKU

return (function()local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIIIlIl = "\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110";local karrotlIIllllI=269;local karrotlIIlllIl=138;local karrotlIIlllII=3;local karrotlIIlIllI=function(a)local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';a=string.gsub(a,'[^'..b..'=]','')return a:gsub('.',function(c)if c=='='then return''end;local d,e='',b:find(c)-1;for f=6,1,-1 do d=d..(e%2^f-e%2^(f-1)>0 and'1'or'0')end;return d end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(c)if#c~=8 then return''end;local g=0;for f=1,8 do g=g+(c:sub(f,f)=='1'and 2^(8-f)or 0)end;return string.char(g)end)end;local karrotlIIlllIl=290;local karrotlIIlIlIl=(function()local function a(b)local c={}for d=0,255 do c[d]={}end;c[0][0]=b[1]*255;local e=1;for f=0,7 do for d=0,e-1 do for g=0,e-1 do local h=c[d][g]-b[1]*e;c[d][g+e]=h+b[2]*e;c[d+e][g]=h+b[3]*e;c[d+e][g+e]=h+b[4]*e end end;e=e*2 end;return c end;local i=a{0,1,1,0}local function j(self,k)local l,d,g=self.S,self.i,self.j;local m={}local n=string.char;for o=1,k do d=(d+1)%256;g=(g+l[d])%256;l[d],l[g]=l[g],l[d]m[o]=n(l[(l[d]+l[g])%256])end;self.i,self.j=d,g;return table.concat(m)end;local function p(self,q)local r=j(self,#q)local s={}local t=string.byte;local n=string.char;for d=1,#q do s[d]=n(i[t(q,d)][t(r,d)])end;return table.concat(s)end;local function u(self,v)local l=self.S;local g,w=0,#v;local t=string.byte;for d=0,255 do g=(g+l[d]+t(v,d%w+1))%256;l[d],l[g]=l[g],l[d]end end;function new(v)local l={}local s={S=l,i=0,j=0,generate=j,cipher=p,schedule=u}for d=0,255 do l[d]=d end;if v then s:schedule(v)end;return s end;return new end)();local fev=getfenv or function()return _ENV end;local karrotlIIlIlII=(function()if not bit then local bit_=nil pcall(function()bit_=require('bit') end)bit=bit_ end local bit=bit or bit32 or(function()local a={_TYPE='module',_NAME='bit.numberlua',_VERSION='0.3.1.20120131'}local b=math.floor;local c=2^32;local d=c-1;local function e(f)local g={}local h=setmetatable({},g)function g:__index(i)local j=f(i)h[i]=j;return j end;return h end;local function k(h,l)local function m(n,o)local p,q=0,1;while n~=0 and o~=0 do local r,s=n%l,o%l;p=p+h[r][s]*q;n=(n-r)/l;o=(o-s)/l;q=q*l end;p=p+(n+o)*q;return p end;return m end;local function t(h)local u=k(h,2^1)local v=e(function(n)return e(function(o)return u(n,o)end)end)return k(v,2^(h.n or 1))end;function a.tobit(w)return w%2^32 end;a.bxor=t{[0]={[0]=0,[1]=1},[1]={[0]=1,[1]=0},n=4}local x=a.bxor;function a.bnot(n)return d-n end;local y=a.bnot;function a.band(n,o)return(n+o-x(n,o))/2 end;local z=a.band;function a.bor(n,o)return d-z(d-n,d-o)end;local A=a.bor;local B,C;function a.rshift(n,D)if D<0 then return B(n,-D)end;return b(n%2^32/2^D)end;C=a.rshift;function a.lshift(n,D)if D<0 then return C(n,-D)end;return n*2^D%2^32 end;B=a.lshift;function a.tohex(w,E)E=E or 8;local F;if E<=0 then if E==0 then return''end;F=true;E=-E end;w=z(w,16^E-1)return('%0'..E..(F and'X'or'x')):format(w)end;local G=a.tohex;function a.extract(E,H,I)I=I or 1;return z(C(E,H),2^I-1)end;local J=a.extract;function a.replace(E,j,H,I)I=I or 1;local K=2^I-1;j=z(j,K)local L=y(B(K,H))return z(E,L)+B(j,H)end;local M=a.replace;function a.bswap(w)local n=z(w,0xff)w=C(w,8)local o=z(w,0xff)w=C(w,8)local N=z(w,0xff)w=C(w,8)local O=z(w,0xff)return B(B(B(n,8)+o,8)+N,8)+O end;local P=a.bswap;function a.rrotate(w,D)D=D%32;local Q=z(w,2^D-1)return C(w,D)+B(Q,32-D)end;local R=a.rrotate;function a.lrotate(w,D)return R(w,-D)end;local S=a.lrotate;a.rol=a.lrotate;a.ror=a.rrotate;function a.arshift(w,D)local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end;local U=a.arshift;function a.btest(w,V)return z(w,V)~=0 end;a.bit32={}local function W(w)return(-1-w)%c end;a.bit32.bnot=W;local function X(n,o,N,...)local T;if o then n=n%c;o=o%c;T=x(n,o)if N then T=X(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bxor=X;local function Y(n,o,N,...)local T;if o then n=n%c;o=o%c;T=(n+o-x(n,o))/2;if N then T=Y(T,N,...)end;return T elseif n then return n%c else return d end end;a.bit32.band=Y;local function Z(n,o,N,...)local T;if o then n=n%c;o=o%c;T=d-z(d-n,d-o)if N then T=Z(T,N,...)end;return T elseif n then return n%c else return 0 end end;a.bit32.bor=Z;function a.bit32.btest(...)return Y(...)~=0 end;function a.bit32.lrotate(w,D)return S(w%c,D)end;function a.bit32.rrotate(w,D)return R(w%c,D)end;function a.bit32.lshift(w,D)if D>31 or D<-31 then return 0 end;return B(w%c,D)end;function a.bit32.rshift(w,D)if D>31 or D<-31 then return 0 end;return C(w%c,D)end;function a.bit32.arshift(w,D)w=w%c;if D>=0 then if D>31 then return w>=0x80000000 and d or 0 else local T=C(w,D)if w>=0x80000000 then T=T+B(2^D-1,32-D)end;return T end else return B(w,-D)end end;function a.bit32.extract(w,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;return J(w,H,...)end;function a.bit32.replace(w,j,H,...)local I=...or 1;if H<0 or H>31 or I<0 or H+I>32 then error'out of range'end;w=w%c;j=j%c;return M(w,j,H,...)end;a.bit={}function a.bit.tobit(w)w=w%c;if w>=0x80000000 then w=w-c end;return w end;local _=a.bit.tobit;function a.bit.tohex(w,...)return G(w%c,...)end;function a.bit.bnot(w)return _(y(w%c))end;local function a0(n,o,N,...)if N then return a0(a0(n,o),N,...)elseif o then return _(A(n%c,o%c))else return _(n)end end;a.bit.bor=a0;local function a1(n,o,N,...)if N then return a1(a1(n,o),N,...)elseif o then return _(z(n%c,o%c))else return _(n)end end;a.bit.band=a1;local function a2(n,o,N,...)if N then return a2(a2(n,o),N,...)elseif o then return _(x(n%c,o%c))else return _(n)end end;a.bit.bxor=a2;function a.bit.lshift(w,E)return _(B(w%c,E%32))end;function a.bit.rshift(w,E)return _(C(w%c,E%32))end;function a.bit.arshift(w,E)return _(U(w%c,E%32))end;function a.bit.rol(w,E)return _(S(w%c,E%32))end;function a.bit.ror(w,E)return _(R(w%c,E%32))end;function a.bit.bswap(w)return _(P(w%c))end;return a end)()local unpack=table.unpack or unpack;local a3;local a4;local a5;local a6=50;local a7={[22]=18,[31]=8,[33]=28,[0]=3,[1]=13,[2]=23,[26]=33,[12]=1,[13]=6,[14]=10,[15]=16,[16]=20,[17]=26,[18]=30,[19]=36,[3]=0,[4]=2,[5]=4,[6]=7,[7]=9,[8]=12,[9]=14,[10]=17,[20]=19,[21]=22,[23]=24,[24]=27,[25]=29,[27]=32,[32]=34,[34]=37,[11]=5,[28]=11,[29]=15,[30]=21,[35]=25,[36]=31,[37]=35}local a8={[0]='ABC','ABx','ABC','ABC','ABC','ABx','ABC','ABx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','ABC','ABC','ABC','ABC','ABC','ABC','ABC','ABC','AsBx','AsBx','ABC','ABC','ABC','ABx','ABC'}local a9={[0]={b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgN'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgU',c='OpArgU'},{b='OpArgR',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgR'},{b='OpArgR',c='OpArgN'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgK',c='OpArgK'},{b='OpArgR',c='OpArgU'},{b='OpArgR',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgU',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgR',c='OpArgN'},{b='OpArgN',c='OpArgU'},{b='OpArgU',c='OpArgU'},{b='OpArgN',c='OpArgN'},{b='OpArgU',c='OpArgN'},{b='OpArgU',c='OpArgN'}}local function aa(ab,s,e,d)local ac=0;for i=s,e,d do ac=ac+string.byte(ab,i,i)*256^(i-s)end;return ac end;local function ad(ae,af,ag,ah)local ai=(-1)^bit.rshift(ah,7)local aj=bit.rshift(ag,7)+bit.lshift(bit.band(ah,0x7F),1)local ak=ae+bit.lshift(af,8)+bit.lshift(bit.band(ag,0x7F),16)local al=1;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7F then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-127)*(1+al/2^23)end;local function am(ae,af,ag,ah,an,ao,ap,aq)local ai=(-1)^bit.rshift(aq,7)local aj=bit.lshift(bit.band(aq,0x7F),4)+bit.rshift(ap,4)local ak=bit.band(ap,0x0F)*2^48;local al=1;ak=ak+ao*2^40+an*2^32+ah*2^24+ag*2^16+af*2^8+ae;if aj==0 then if ak==0 then return ai*0 else al=0;aj=1 end elseif aj==0x7FF then if ak==0 then return ai*1/0 else return ai*0/0 end end;return ai*2^(aj-1023)*(al+ak/2^52)end;local function ar(ab,s,e)return aa(ab,s,e-1,1)end;local function as(ab,s,e)return aa(ab,e-1,s,-1)end;local function at(ab,s)return ad(string.byte(ab,s,s+3))end;local function au(ab,s)local ae,af,ag,ah=string.byte(ab,s,s+3)return ad(ah,ag,af,ae)end;local function av(ab,s)return am(string.byte(ab,s,s+7))end;local function aw(ab,s)local ae,af,ag,ah,an,ao,ap,aq=string.byte(ab,s,s+7)return am(aq,ap,ao,an,ah,ag,af,ae)end;local ax={[4]={little=at,big=au},[8]={little=av,big=aw}}local function ay(S)local az=S.index;local aA=string.byte(S.source,az,az)S.index=az+1;return aA end;local function aB(S,aC)local aD=S.index+aC;local aE=string.sub(S.source,S.index,aD-1)S.index=aD;return aE end;local function aF(S)local aC=S:s_szt()local aE;if aC~=0 then aE=string.sub(aB(S,aC),1,-2)end;return aE end;local function aG(aC,aH)return function(S)local aD=S.index+aC;local aI=aH(S.source,S.index,aD)S.index=aD;return aI end end;local function aJ(aC,aH)return function(S)local aK=aH(S.source,S.index)S.index=S.index+aC;return aK end end;local function aL(S)local aM=S:s_int()local aN={}for i=1,aM do local aO=S:s_ins()local aP=bit.band(aO,0x3F)local aQ=a8[aP]local aR=a9[aP]local aS={value=aO,op=a7[aP],A=bit.band(bit.rshift(aO,6),0xFF)}if aQ=='ABC'then aS.B=bit.band(bit.rshift(aO,23),0x1FF)aS.C=bit.band(bit.rshift(aO,14),0x1FF)aS.is_KB=aR.b=='OpArgK'and aS.B>0xFF;aS.is_KC=aR.c=='OpArgK'and aS.C>0xFF elseif aQ=='ABx'then aS.Bx=bit.band(bit.rshift(aO,14),0x3FFFF)aS.is_K=aR.b=='OpArgK'elseif aQ=='AsBx'then aS.sBx=bit.band(bit.rshift(aO,14),0x3FFFF)-131071 end;aN[i]=aS end;return aN end;local function aT(S)local aM=S:s_int()local aU={}for i=1,aM do local aV=ay(S)local k;if aV==1 then k=ay(S)~=0 elseif aV==3 then k=S:s_num()elseif aV==4 then k=aF(S)end;aU[i]=k end;return aU end;local function aW(S,ab)local aM=S:s_int()local aX={}for i=1,aM do aX[i]=a5(S,ab)end;return aX end;local function aY(S)local aM=S:s_int()local aZ={}for i=1,aM do aZ[i]=S:s_int()end;return aZ end;local function a_(S)local aM=S:s_int()local b0={}for i=1,aM do b0[i]={varname=aF(S),startpc=S:s_int(),endpc=S:s_int()}end;return b0 end;local function b1(S)local aM=S:s_int()local b2={}for i=1,aM do b2[i]=aF(S)end;return b2 end;function a5(S,b3)local b4={}local ab=aF(S)or b3;b4.source=ab;S:s_int()S:s_int()b4.numupvals=ay(S)b4.numparams=ay(S)ay(S)ay(S)b4.code=aL(S)b4.const=aT(S)b4.subs=aW(S,ab)b4.lines=aY(S)a_(S)b1(S)for _,v in ipairs(b4.code)do if v.is_K then v.const=b4.const[v.Bx+1]else if v.is_KB then v.const_B=b4.const[v.B-0xFF]end;if v.is_KC then v.const_C=b4.const[v.C-0xFF]end end end;return b4 end;function a3(ab)local b5;local b6;local b7;local b8;local b9;local ba;local bb;local bc={index=1,source=ab}assert(aB(bc,4)=='\27Lua','invalid Lua signature')assert(ay(bc)==0x51,'invalid Lua version')assert(ay(bc)==0,'invalid Lua format')b6=ay(bc)~=0;b7=ay(bc)b8=ay(bc)b9=ay(bc)ba=ay(bc)bb=ay(bc)~=0;b5=b6 and ar or as;bc.s_int=aG(b7,b5)bc.s_szt=aG(b8,b5)bc.s_ins=aG(b9,b5)if bb then bc.s_num=aG(ba,b5)elseif ax[ba]then bc.s_num=aJ(ba,ax[ba][b6 and'little'or'big'])else error('unsupported float size')end;return a5(bc,'@virtual')end;local function bd(be,bf)for i,bg in pairs(be)do if bg.index>=bf then bg.value=bg.store[bg.index]bg.store=bg;bg.index='value'be[i]=nil end end end;local function bh(be,bf,bi)local bj=be[bf]if not bj then bj={index=bf,store=bi}be[bf]=bj end;return bj end;local function bk(...)return select('#',...),{...}end;local function bl(bm,bn)local ab=bm.source;local bo=bm.lines[bm.pc-1]local b3,bp,bq=string.match(bn,'^(.-):(%d+):%s+(.+)')local br='%s:%i: [%s:%i] %s'bo=bo or'0'b3=b3 or'?'bp=bp or'0'bq=bq or bn;error(string.format(br,ab,bo,b3,bp,bq),0)end;local function bs(bm)local aN=bm.code;local bt=bm.subs;local bu=bm.env;local bv=bm.upvals;local bw=bm.varargs;local bx=-1;local by={}local bi=bm.stack;local bz=bm.pc;while true do local bA=aN[bz]local aP=bA.op;bz=bz+1;if aP<18 then if aP<8 then if aP<3 then if aP<1 then for i=bA.A,bA.B do bi[i]=nil end elseif aP>1 then local bg=bv[bA.B]bi[bA.A]=bg.store[bg.index]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB+bC end elseif aP>3 then if aP<6 then if aP>4 then local A=bA.A;local B=bA.B;local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[A+1]=bi[B]bi[A]=bi[B][bf]else bi[bA.A]=bu[bA.const]end elseif aP>6 then local bf;if bA.is_KC then bf=bA.const_C else bf=bi[bA.C]end;bi[bA.A]=bi[bA.B][bf]else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB-bC end else bi[bA.A]=bi[bA.B]end elseif aP>8 then if aP<13 then if aP<10 then bu[bA.const]=bi[bA.A]elseif aP>10 then if aP<12 then local A=bA.A;local B=bA.B;local C=bA.C;local bD;local bE,bF;if B==0 then bD=bx-A else bD=B-1 end;bE,bF=bk(bi[A](unpack(bi,A+1,A+bD)))if C==0 then bx=A+bE-1 else bE=C-1 end;for i=1,bE do bi[A+i-1]=bF[i]end else local bg=bv[bA.B]bg.store[bg.index]=bi[bA.A]end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB*bC end elseif aP>13 then if aP<16 then if aP>14 then local A=bA.A;local B=bA.B;local bD;if B==0 then bD=bx-A else bD=B-1 end;bd(by,0)return bk(bi[A](unpack(bi,A+1,A+bD)))else local bf,bG;if bA.is_KB then bf=bA.const_B else bf=bi[bA.B]end;if bA.is_KC then bG=bA.const_C else bG=bi[bA.C]end;bi[bA.A][bf]=bG end elseif aP>16 then bi[bA.A]={}else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB/bC end else bi[bA.A]=bA.const end else local A=bA.A;local bH=bi[A+2]local bf=bi[A]+bH;local bI=bi[A+1]local bJ;if bH==math.abs(bH)then bJ=bf<=bI else bJ=bf>=bI end;if bJ then bi[bA.A]=bf;bi[bA.A+3]=bf;bz=bz+bA.sBx end end elseif aP>18 then if aP<28 then if aP<23 then if aP<20 then bi[bA.A]=#bi[bA.B]elseif aP>20 then if aP<22 then local A=bA.A;local B=bA.B;local bK={}local aM;if B==0 then aM=bx-A+1 else aM=B-1 end;for i=1,aM do bK[i]=bi[A+i-1]end;bd(by,0)return aM,bK else local aE=bi[bA.B]for i=bA.B+1,bA.C do aE=aE..bi[i]end;bi[bA.A]=aE end else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB%bC end elseif aP>23 then if aP<26 then if aP>24 then bd(by,bA.A)else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB==bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 end elseif aP>26 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 else local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;bi[bA.A]=bB^bC end else bi[bA.A]=bA.B~=0;if bA.C~=0 then bz=bz+1 end end elseif aP>28 then if aP<33 then if aP<30 then local bB,bC;if bA.is_KB then bB=bA.const_B else bB=bi[bA.B]end;if bA.is_KC then bC=bA.const_C else bC=bi[bA.C]end;if bB<=bC==(bA.A~=0)then bz=bz+aN[bz].sBx end;bz=bz+1 elseif aP>30 then if aP<32 then local aX=bt[bA.Bx+1]local bL=aX.numupvals;local bM;if bL~=0 then bM={}for i=1,bL do local bN=aN[bz+i-1]if bN.op==a7[0]then bM[i-1]=bh(by,bN.B,bi)elseif bN.op==a7[4]then bM[i-1]=bv[bN.B]end end;bz=bz+bL end;bi[bA.A]=a4(aX,bu,bM)else local A=bA.A;local B=bA.B;if not bi[B]==(bA.C~=0)then bz=bz+1 else bi[A]=bi[B]end end else bi[bA.A]=-bi[bA.B]end elseif aP>33 then if aP<36 then if aP>34 then local A=bA.A;local aM=bA.B;if aM==0 then aM=bw.size;bx=A+aM-1 end;for i=1,aM do bi[A+i-1]=bw.list[i]end else local A=bA.A;local bO,bI,bH;bO=assert(tonumber(bi[A]),'`for` initial value must be a number')bI=assert(tonumber(bi[A+1]),'`for` limit must be a number')bH=assert(tonumber(bi[A+2]),'`for` step must be a number')bi[A]=bO-bH;bi[A+1]=bI;bi[A+2]=bH;bz=bz+bA.sBx end elseif aP>36 then local A=bA.A;local C=bA.C;local aM=bA.B;local bP=bi[A]local bQ;if aM==0 then aM=bx-A end;if C==0 then C=bA[bz].value;bz=bz+1 end;bQ=(C-1)*a6;for i=1,aM do bP[i+bQ]=bi[A+i]end else bi[bA.A]=not bi[bA.B]end else if not bi[bA.A]==(bA.C~=0)then bz=bz+1 end end else local A=bA.A;local aH=bi[A]local bR=bi[A+1]local bf=bi[A+2]local bS=A+3;local bK;bi[bS+2]=bf;bi[bS+1]=bR;bi[bS]=aH;bK={aH(bR,bf)}for i=1,bA.C do bi[bS+i-1]=bK[i]end;if bi[bS]~=nil then bi[A+2]=bi[bS]else bz=bz+1 end end else bz=bz+bA.sBx end;bm.pc=bz end end;function a4(bR,bu,b2)local bT=bR.code;local bU=bR.subs;local bV=bR.lines;local bW=bR.source;local bX=bR.numparams;local function bY(...)local bi={}local bZ={}local b_=0;local c0,c1=bk(...)local bm;local c2,bn,bK;for i=1,bX do bi[i-1]=c1[i]end;if bX<c0 then b_=c0-bX;for i=1,b_ do bZ[i]=c1[bX+i]end end;bm={varargs={list=bZ,size=b_},code=bT,subs=bU,lines=bV,source=bW,env=bu,upvals=b2,stack=bi,pc=1}c2,bn,bK=pcall(bs,bm,...)if c2 then return unpack(bK,1,bn)else bl(bm,bn)end;return end;return bY end;return function(c3,bu)return a4(a3(c3),bu or fev(0))end end)();local karrotlIIllIIl='\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110';local karrotlIIlIIIl="\104\78\90\56\110\71\120\101\74\113\78\48\106\80\111\57\112\54\118\86\47\74\73\69\106\115\55\72\101\88\47\51\102\72\66\71\88\119\116\99\48\98\50\47\47\80\104\87\104\66\101\118\66\72\70\85\109\112\110\80\108\86\87\106\101\73\66\107\118\51\48\120\99\109\47\121\67\104\83\108\108\78\85\86\89\76\51\106\101\66\70\70\87\88\68\84\52\102\79\80\48\118\71\109\110\71\88\85\122\47\87\103\50\109\121\52\102\86\51\82\54\112\84\101\73\55\56\48\47\81\104\54\120\73\97\77\122\43\80\74\72\79\116\99\70\109\56\112\109\120\88\80\55\74\89\118\50\104\56\104\71\79\105\72\51\55\110\84\103\120\76\55\83\78\109\106\115\67\87\54\70\88\66\66\122\70\50\67\78\56\99\77\107\90\72\86\90\113\43\69\72\56\67\82\99\104\108\50\122\122\73\51\76\114\69\70\117\55\69\71\115\110\75\89\43\98\120\98\78\76\77\78\103\113\75\66\118\56\71\69\89\76\115\110\79\121\115\86\88\88\111\108\121\89\57\68\104\97\73\57\54\69\47\50\108\67\69\87\104\55\74\71\85\117\49\50\121\108\120\108\53\83\74\75\83\57\85\119\73\84\66\99\69\76\120\116\55\104\99\70\87\83\81\117\69\72\116\109\79\73\119\80\112\66\104\84\117\111\69\65\52\102\114\55\118\110\97\119\73\65\75\72\53\121\52\77\49\47\103\55\66\118\111\56\51\107\73\73\84\51\83\102\115\86\57\118\110\76\90\57\50\118\114\52\88\79\74\120\51\82\99\116\71\106\107\109\122\89\115\51\107\84\86\51\109\50\98\97\43\79\105\87\87\103\71\76\83\86\121\51\90\79\97\121\80\75\51\55\77\101\97\73\105\115\86\57\105\115\85\50\113\113\119\88\66\56\49\121\113\48\43\111\55\71\47\71\47\106\50\122\72\113\88\118\51\49\85\80\116\78\87\117\86\101\50\57\97\69\102\57\107\51\71\89\118\110\122\82\72\89\79\112\51\57\122\74\118\111\78\52\107\57\70\111\79\48\106\119\90\117\76\69\109\85\115\51\84\66\48\80\116\69\51\51\122\98\50\99\67\113\67\50\109\79\67\57\108\69\51\71\109\65\50\101\76\55\119\77\77\99\67\49\54\67\106\107\122\68\79\71\43\76\51\75\86\101\100\85\86\47\107\56\78\72\119\105\100\118\57\72\86\103\102\54\79\115\113\104\66\113\70\54\47\122\66\76\49\106\51\113\81\65\115\75\112\106\78\113\49\55\89\100\69\109\47\74\109\114\97\115\57\97\80\53\122\116\55\119\103\83\50\114\100\103\54\67\101\57\103\112\107\78\114\72\111\90\105\101\114\103\50\120\121\104\112\121\57\73\116\72\109\73\110\111\115\119\88\53\79\98\121\70\76\78\84\107\102\98\119\104\100\54\79\65\68\78\43\103\65\101\112\52\90\78\57\43\50\108\120\90\97\121\115\74\111\120\122\69\102\69\105\106\67\57\69\48\120\117\77\115\88\103\71\68\56\69\115\98\102\74\79\69\54\80\68\73\103\98\111\65\116\121\75\75\88\67\53\79\106\107\103\98\115\77\73\75\86\57\88\68\67\77\118\103\85\65\51\52\52\112\113\84\65\120\101\70\57\100\104\104\116\122\116\66\118\84\101\55\79\76\80\106\66\72\78\77\43\105\52\68\83\84\98\83\108\83\78\75\51\83\103\75\68\97\87\81\53\73\51\99\104\98\70\82\97\120\66\101\89\69\100\66\115\74\66\48\51\65\84\90\115\110\74\47\100\108\106\81\109\104\72\79\65\56\65\102\65\70\85\71\90\51\80\105\51\76\57\100\116\109\113\112\119\77\52\73\50\67\99\104\65\73\111\53\115\120\79\99\116\81\51\57\67\72\70\72\88\109\105\111\86\114\121\117\57\107\82\49\109\56\84\98\57\68\102\86\108\73\112\48\74\86\83\115\112\49\84\87\54\77\100\78\112\101\118\79\48\112\81\120\47\103\57\98\106\80\113\72\83\120\120\65\48\51\104\43\66\102\101\103\100\74\107\82\115\49\48\104\112\56\65\108\56\74\97\121\109\106\109\102\102\102\113\111\105\66\121\110\50\117\113\88\79\97\111\76\85\99\47\97\83\76\86\67\108\118\71\48\122\88\56\98\122\84\104\70\43\106\54\75\81\119\74\57\113\43\49\97\119\114\77\97\113\101\48\50\111\48\66\108\122\89\69\49\84\71\120\79\52\111\49\100\57\80\112\116\109\101\56\118\104\90\117\65\101\111\71\98\112\121\114\74\47\66\87\54\88\122\111\114\117\114\115\109\47\53\78\83\97\114\66\102\70\108\117\103\97\56\82\103\73\120\75\97\113\74\101\56\57\119\102\110\71\69\101\115\105\107\66\51\101\77\74\70\102\69\104\89\49\115\120\89\70\71\87\51\66\75\112\47\103\55\77\115\65\121\102\90\43\82\116\56\99\50\118\57\71\69\121\56\89\50\70\116\83\76\49\104\86\79\43\53\51\106\71\113\97\69\84\69\49\115\104\57\49\68\102\119\79\75\57\77\100\112\108\81\66\115\110\54\122\51\89\122\81\89\52\98\75\116\80\85\90\89\67\122\98\88\51\90\49\70\84\106\90\49\116\66\118\119\99\115\120\84\66\68\86\111\120\121\77\73\43\98\84\82\83\52\78\112\112\105\82\76\87\107\114\98\80\66\57\74\120\72\122\54\86\117\55\74\100\121\43\83\50\102\108\113\74\120\47\119\103\106\112\65\105\55\56\111\110\50\48\86\53\54\110\71\47\120\104\117\115\80\90\71\67\100\70\100\109\89\114\112\70\99\53\98\53\119\51\53\57\49\79\67\49\78\106\83\66\106\117\118\48\115\70\117\54\51\87\82\121\119\110\71\68\79\90\116\74\115\119\76\84\72\107\83\77\109\80\109\66\68\76\82\97\77\119\54\114\48\90\76\76\65\83\87\105\97\114\109\90\53\81\86\52\74\100\108\57\121\116\71\90\120\48\86\74\88\49\119\112\113\50\98\104\111\74\51\69\53\112\104\84\88\53\112\51\55\103\101\72\107\71\87\70\48\67\115\118\87\98\104\107\119\118\74\81\122\122\119\105\67\48\122\88\103\56\81\83\67\117\51\84\56\79\110\89\113\78\90\56\65\112\103\54\79\98\90\101\107\55\55\116\98\74\68\121\115\114\52\112\98\120\77\89\75\68\122\103\110\84\52\69\108\116\114\52\81\71\76\81\82\116\109\110\51\103\66\74\81\55\101\85\50\105\79\81\119\109\108\87\98\75\97\98\121\71\104\101\100\74\65\84\115\73\73\55\117\98\102\70\116\43\103\99\102\100\89\82\104\52\66\98\108\47\55\74\100\51\119\116\109\83\103\97\68\117\47\84\57\110\97\73\105\66\89\68\48\47\107\101\81\107\105\122\102\71\85\117\121\47\105\75\87\54\111\100\86\100\87\106\68\79\100\88\86\53\55\97\43\116\114\114\115\66\98\83\120\79\111\57\118\53\71\43\70\54\110\116\112\76\43\43\105\75\86\66\77\68\57\85\47\88\110\110\70\86\74\109\74\48\55\112\47\57\74\108\103\109\109\68\112\83\99\90\88\85\102\101\116\56\49\108\103\80\52\105\87\83\75\74\75\90\56\98\86\52\117\87\102\54\121\79\112\66\85\75\116\87\53\118\100\55\84\118\66\85\83\122\49\102\88\104\76\51\48\102\77\43\83\68\70\98\119\82\73\111\74\108\101\72\73\90\98\70\88\84\56\69\118\54\66\105\54\71\108\56\73\107\99\77\119\47\122\108\122\71\98\118\43\69\98\55\65\115\105\97\116\97\74\86\105\81\79\99\90\110\118\87\113\74\107\86\97\97\99\77\47\83\53\106\66\68\97\97\121\121\121\76\107\121\57\50\68\108\119\106\120\106\73\87\80\101\115\103\90\66\105\73\103\90\78\111\68\121\99\105\111\43\118\122\122\100\100\51\98\121\76\103\114\51\122\52\69\105\57\49\119\51\117\51\73\112\113\78\77\109\66\79\107\90\56\116\76\54\78\100\43\57\51\118\111\105\72\108\47\52\109\48\71\79\84\119\52\68\109\43\114\105\49\80\108\50\120\115\83\67\85\56\113\54\77\89\75\99\72\110\49\70\85\79\107\105\108\72\106\79\86\47\57\115\98\85\106\116\54\119\116\74\105\110\87\65\80\109\83\120\107\111\116\109\97\81\114\43\99\55\105\55\122\111\48\78\56\98\111\114\72\84\78\79\85\101\114\107\67\83\105\76\54\47\97\89\57\81\121\80\86\121\71\115\118\112\111\65\108\77\51\110\66\121\87\110\56\43\116\99\43\107\101\99\102\107\43\78\110\43\70\76\112\119\71\75\99\84\120\118\56\48\52\65\89\121\107\69\103\110\43\80\111\72\80\47\51\73\68\49\121\50\66\108\74\74\74\52\51\120\112\119\111\75\53\116\117\114\109\114\89\104\77\53\48\117\100\112\100\122\48\109\72\53\101\120\86\110\51\75\53\109\87\86\118\82\103\113\69\109\50\111\111\67\79\83\121\112\117\85\78\72\67\112\86\107\55\86\104\116\67\55\65\65\103\104\97\89\70\49\120\54\117\120\78\121\56\43\80\70\85\114\52\117\69\120\122\89\83\89\72\53\51\85\117\69\67\117\106\56\55\87\118\50\79\47\98\120\102\117\114\68\52\77\110\73\83\97\109\102\50\48\72\88\55\79\77\56\55\118\122\90\43\89\105\84\51\85\51\43\66\100\114\77\90\89\81\105\55\81\54\71\70\55\75\65\117\85\85\70\82\97\86\66\90\118\89\110\113\110\90\69\85\54\66\53\80\53\117\88\119\117\43\75\105\100\117\83\114\68\105\112\86\107\52\81\88\97\115\47\52\74\117\106\66\49\48\103\121\81\90\108\57\57\106\90\77\68\99\107\70\119\77\106\103\105\83\85\50\68\90\86\120\90\119\105\74\121\118\122\107\104\118\107\109\49\85\50\65\48\112\83\71\78\68\50\43\80\116\108\74\115\48\98\122\52\78\86\88\66\55\114\55\110\47\53\90\51\73\70\56\81\50\48\90\97\99\67\87\54\86\68\113\75\105\53\99\90\108\103\71\122\51\86\121\72\78\117\100\87\48\90\70\72\111\102\47\65\72\82\73\66\55\107\121\78\121\87\47\105\103\122\49\52\90\51\115\120\77\81\53\70\117\111\74\85\99\72\83\77\116\104\69\107\116\76\49\57\80\66\118\109\48\116\43\65\50\79\53\84\99\82\66\119\103\120\121\70\49\110\50\113\76\106\57\52\98\110\113\103\52\108\104\70\68\74\57\114\113\80\102\69\106\86\71\106\73\102\47\109\109\99\119\70\110\47\52\122\85\97\79\109\54\81\117\72\75\88\107\81\97\110\101\86\114\102\74\56\76\75\121\107\43\120\57\65\90\103\101\68\71\57\54\112\75\43\49\76\117\77\121\110\85\71\51\65\104\71\48\88\110\77\85\56\118\72\53\116\68\65\55\84\80\113\107\77\67\87\84\75\53\117\111\66\79\119\113\102\107\118\76\71\48\107\97\49\86\86\120\73\111\65\75\111\120\67\51\73\86\112\122\104\53\81\90\76\114\56\55\112\112\86\81\107\121\74\82\81\110\104\83\84\52\118\85\78\109\103\115\51\112\116\43\104\75\109\78\83\84\86\109\73\105\121\83\99\116\122\78\107\56\55\57\97\99\49\76\111\119\51\70\77\112\113\43\102\101\43\49\90\86\115\117\103\89\117\54\43\87\110\47\103\83\48\120\55\98\82\115\89\117\116\87\88\47\120\103\54\72\72\83\108\112\84\111\90\73\55\77\80\119\54\121\69\80\79\116\68\68\52\103\111\80\69\51\100\87\81\122\101\98\87\113\119\71\101\84\76\113\103\82\118\77\84\51\79\73\99\84\82\103\87\72\84\108\80\78\65\86\98\119\78\69\113\79\106\99\81\87\56\122\56\65\86\70\74\77\54\65\55\105\81\71\111\122\83\100\97\97\105\118\102\85\76\54\116\55\79\71\73\118\106\100\43\118\51\110\76\119\83\81\78\100\77\106\85\54\52\116\106\113\120\57\76\56\99\115\122\106\72\69\110\81\89\66\74\100\90\106\68\112\76\75\105\90\118\117\115\72\54\81\77\113\72\103\120\77\108\118\79\66\111\51\107\54\108\108\78\99\76\79\106\87\71\109\105\82\120\113\85\114\116\79\49\121\101\51\78\76\110\90\82\121\70\85\112\72\73\112\118\65\43\83\74\110\70\67\106\113\43\122\105\53\86\112\101\76\66\120\119\117\82\72\103\100\84\56\80\118\48\82\43\97\65\65\97\119\108\88\88\116\73\54\121\111\108\98\108\117\84\103\106\112\79\105\72\106\122\113\118\75\82\47\66\68\105\67\69\121\100\117\85\71\49\89\104\102\56\49\107\121\80\97\57\105\54\55\74\78\107\77\71\121\69\84\43\76\66\88\100\108\121\43\57\84\56\87\54\108\87\90\99\52\90\115\87\87\79\120\72\80\70\78\69\72\120\49\81\101\121\103\81\73\115\82\74\71\112\122\74\105\86\97\65\82\104\49\103\100\101\120\54\48\72\51\66\49\85\76\88\52\90\116\102\57\90\67\100\51\56\67\87\117\53\111\119\120\54\82\87\108\80\89\103\119\115\90\71\75\108\78\79\101\83\114\118\98\70\75\117\111\121\69\100\107\103\113\71\116\81\102\67\111\82\81\118\65\103\90\89\89\54\49\121\70\80\118\114\79\86\102\117\108\85\88\107\52\78\77\97\54\108\112\73\109\120\87\90\55\57\66\99\55\118\66\56\116\70\117\107\107\65\78\109\119\80\82\76\107\43\104\98\47\119\109\81\117\113\54\67\107\65\106\51\86\101\113\121\87\49\43\107\52\114\97\67\104\71\53\67\65\106\43\98\99\54\98\57\105\113\84\87\98\115\103\106\78\47\120\100\73\108\43\89\112\70\52\103\54\85\84\69\82\55\71\49\103\115\77\108\108\100\111\77\47\99\97\51\80\120\67\65\122\89\57\85\55\76\89\121\105\77\50\43\52\108\90\99\97\50\114\120\106\72\67\118\53\115\79\101\67\74\118\52\78\73\71\106\99\43\113\90\88\98\50\53\89\74\111\110\104\87\103\106\77\107\115\87\114\57\119\99\84\109\113\57\49\113\47\55\50\118\66\84\82\108\84\70\67\80\107\103\109\71\54\113\98\109\101\112\114\121\69\80\72\66\47\74\108\67\72\52\55\48\108\73\83\115\120\56\87\54\113\84\107\47\115\74\103\111\101\66\68\104\121\107\69\100\97\88\90\81\86\106\119\50\90\84\55\72\112\121\99\81\98\100\86\81\86\69\102\88\105\85\112\116\113\98\49\97\52\74\103\116\82\120\109\118\77\55\85\111\81\78\65\115\106\105\90\78\122\51\57\74\88\105\67\85\98\82\49\120\85\68\90\71\120\69\73\49\53\53\112\52\114\78\85\74\108\120\53\104\76\100\52\80\110\84\121\97\101\86\107\67\53\102\78\69\84\67\104\85\121\49\66\118\89\67\65\120\114\106\115\50\47\53\75\112\50\72\52\77\89\47\90\71\71\109\49\117\54\115\81\105\80\109\110\106\120\70\103\77\82\73\55\79\97\114\86\114\49\80\81\109\56\107\78\90\79\88\121\113\107\112\67\98\109\69\53\53\120\81\122\101\88\116\84\51\80\117\79\84\120\72\77\121\116\51\101\108\79\70\113\80\53\117\67\69\89\76\78\50\52\72\50\108\98\78\78\86\68\106\109\110\117\70\55\73\99\48\74\102\111\48\122\83\89\105\84\80\67\80\57\89\57\71\122\82\84\108\117\66\53\105\77\115\82\57\87\80\115\70\120\56\43\82\74\52\114\75\69\103\76\55\105\82\66\89\89\86\104\71\48\74\101\89\72\100\71\111\52\77\78\117\115\98\80\88\107\49\43\68\83\47\109\76\113\88\116\79\68\84\53\86\47\66\57\121\76\104\76\115\109\73\71\51\50\53\70\55\57\99\57\86\51\89\119\97\82\87\56\78\101\112\70\57\43\99\47\118\101\68\74\68\120\116\73\97\116\48\87\73\86\67\105\104\56\88\89\56\54\84\70\86\115\52\82\119\121\49\72\71\104\56\89\74\69\88\104\51\70\57\51\43\77\117\89\72\116\82\52\78\52\54\101\84\119\85\51\122\101\115\98\118\50\55\102\77\85\72\49\48\50\98\47\100\101\70\109\53\104\120\119\68\75\43\65\116\54\120\69\122\111\99\69\76\115\104\110\100\120\84\75\57\87\76\55\47\81\76\54\69\122\113\66\100\82\48\118\88\72\57\122\48\108\65\73\75\52\122\109\82\111\65\52\81\118\66\77\79\65\84\53\116\109\85\47\72\47\103\82\69\113\99\72\65\108\55\73\116\56\99\106\103\106\52\61";local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIII='NGI2d3Q8YSp3KmsvYWc9K0c6dw==';local karrotlIIlIIlI=function(a,b)local c=karrotlIIlIlIl(karrotlIIlIllI(a))local d=c["\99\105\112\104\101\114"](c,karrotlIIlIllI(b))return karrotlIIlIllI(d)end;local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIll='\97\121\107\116\88\49\78\108\75\108\112\53\99\106\86\111\100\106\111\114\78\107\66\79\77\119\61\61';local karrotlIIllIIl='\107\97\114\114\111\116\32\102\114\101\101\32\111\98\102\117\115\99\97\116\105\111\110';local karrotlIIlIIII='OS5nRkJxRlY8XydZaSZ2OXdEb3t7I2EkNmcvbyxdZVYvZy86Mjg=';function karrotlIIlIlll(a,b)local c=karrotlIIlIllI(a,b);local d=karrotlIIllIlI;return c,d end;return karrotlIIlIlII(karrotlIIlIIlI(karrotlIIllIll,karrotlIIlIIIl),getfenv(0))()end)()
