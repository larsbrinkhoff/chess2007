\ ����������� ������ � ������ ( ������� ���� ) a u  �� ������� n1 � ������� n2
\                1 2 3  4
: carry-symbol ( a u n1 n2 -- a u )
4/13+b34<?13+i13+e14+dit34-aV14+w12 ;

\ ������� � ����������� � ����������� ����
: car-symb ( a u n1 n2 -- a u )
4/13 + C@ /34 < IF /13 + 1+ /13 + ELSE /14 + DUP 1+ THEN /34 - ABS MOVE /14 + C! /12 ;

\ ����� ����� ������������ ��������� ������� - ������������ ����� ����������� ���������� � ����������� ���������� � ����� �� ����������
: car-symb1 ( a u n1 n2 -- a u )
4/13+ C@ /34< IF /13+ 1+ /13+ /e /14+ DUP 1+ /t /34- ABS MOVE /14+ C! /12 ;

\ �������� ������� ������� � ������ ( ������� ���� ) a u  �� ������� n1 � �� ������� n2
: swap-symbol ( a u n1 n2 -- a u )
4/13+b14+b13+w14+w12 ;

STARTLOG
S" 0123456789" 2 6 car-symb TYPE CR
S" 0123456789" 6 2 carry-symbol TYPE CR
S" 0123456789" 6 2 swap-symbol  TYPE CR                                              \ 0123456789
S" 0123456789" 2 6 carry-symbol 5 2 carry-symbol TYPE CR                             \ 0134562789  2->6
                                                                                     \ 0163452789  5->2
