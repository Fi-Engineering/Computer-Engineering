



A1 = [100 103 99 97 93 94 78 73;
102 97 100 111 113 104 96 82;
99 109 104 95 93 92 88 76;
114 104 99 102 93 82 74 74;
96 91 91 87 79 78 77 76;
90 88 83 78 77 74 76 76;
92 81 73 72 69 65 66 62;
75 70 69 65 60 55 61 65];

c0 = haar2D_n(A1);

  c1 = round(c0);
 
c2 = abs(c1);
c2(c2<10) = 0;
disp(c2);
%  
%   
%   c2 = [682  52  15  21  0   0     0     0;
%     78     0     0    22     0     0     0     0;
%      0    14     0     0     0     0     0     0;
%     38     0     0     0     0     0     0     0;
%     17    12     0     0     0     0     0     0;
%      0    10     0     0    10     0     0     0;
%      0     0     0     0     0     0     0     0;
%     15     0     0     0     0     0     0     0]

