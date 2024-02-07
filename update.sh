#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY y�  �_�Tp}���~ߎ����  D   � P @�k!Z;0hE2z$l���i��F��M � h���6��L�I��4���ڏQ��2    2 ���P�4��       $�����jd��cS#M�dhi���Ё���@	��fi�ː�'"u'�*�>�W+��R��
=F�a������ߦi,_*C	?�����Oa�q[��xFa�Qi�II�}���b�EA�;�}E�+���Fߙ/L���Aa�5�m,�z��ʄq%nJ2�=͒	�0Tף�&mgn)���h#��e��بM��U����"���� �@ȷY����@�%z;�%%}�B�	Үt�������:�k"�X��
���ji���-RL��!�Q����D�H4�lŒ�]�^�%!�,')m�x�;|,�1�r�fW!�s�O�89�ܨo�<���F1�����l�Y*F7��c��L��FD:�<nx��M�%����t
ÿw]c0o8M�aU�&={��P+e�	���H(�}����<���T�L�ҧj�Rz�6�S��=�q$�	���`Sdݖh����ʲH2��S���~	a,�l�l1���>#�.�D*2��I�6D�IJ���R�ܝ�\\DE�h���L��U��l=���k&�[���Vb/�B����2��ԐR-R��D�i��l�P"D"T��x}Om�!���&�����WF�!�z���\�W육@�@)�P@���)U���|�1aV���OQ�ܨ0k�	�nŖnL$A^nC�2�o�B@������$:�8��I \)�?��H�
5��