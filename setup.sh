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
BZh91AY&SY�C$ p��t0�����������b��  �p `*=`BQ���wy^��zc7Y�{��w�}�ݓ�7�����ף��a�X=���g����t�z�5�g\V�5�6����0�,��i�v������y����-�[����[��z	B&A2h 	�MF��M��4&MM�
~���D�&� h� ��m
O�S�h�i��� �Ѧ�  H$�����z�	<SOSȀA�i� 4   jDB���FP�)�6Q���y'��=h   � @	��=&���4��=O�mOSS�SG��� h��$!0A�0��22�SI�x%?M$�&�����h 4 ��� �*�,!�2 �E��u�=(2J�����bEb}��gj�r��_�~.��0VtB�z�M����
��H�L�2�gO���p��R�5E�ŉ�Be}���F-�;q�6�m��ld��$���qi�ǴנݣؽH �_�
�Jm�0(67�)���7v�Q/G���D�1�Y����O�ss����1�a�y�;]iDA���zi~G>��W6�P��|l�
`�q�.c���mUQgsU�+���F�����F8t�^7ၜ�����$���m
VEe�書ܪ��ep�DQ_��N|��nU�K	�rh��$L�ɽ4����)�B
���q��˸>jsY�@�9����y���0�Q��[%PZ�����4N,mVL>y睲��#D~��H<��w������{���`��v]������@FaL�{f��E��dr�k�NB�m
m}��UE'®��:_�v©4*�d붌՟#��'�Yߺ��X8QX�na���rB�ݫM!�S�ǂ|�z�^�����/�^k��ԁ����D���.#c���"%�@�ʋ����3&F;KB3�ɬpK�q�l�U����_�y�A/�-q0" ���֤A���[fKi�Xs~ H��Q>�TUOS��|&3pK7$Y`Q&�Ve)gu�Wd.-�c&��%3�%���2 v����]i�ع��+ZM�Kp�<*j�����~��S��p��d���<YO�������{�����Om��T������\��Z�`�(�؇�@���y-[{�Z#{[��ڤ����}����w�>����`�OA������v(����������m&�t��1�i�`Y0�#��q��,��[��kFλsĄ�Z������v�@��tW�Li��v�r �\��Lq�����!�΢4&���<��d��'�-aɽ_y��t^f�8Ⱦ (s����o�������f����x:ZKl�x��bW-�g�"��sw�}m���}����53��C��"�ôէ�
�C21�8���k6�Ex�s%�L�=/۪�N�M��\�)���=Y�^�ad���5L�$*�(}
�1�I�� ���J{��P���"`b��mu��3�y/�C%�ܐ��S��^��l��F�����v��ǵQ������>�%�$,���e�D�ɵ��rh�Ia\���F`��s2�㓱y�Zz��bڑ��9��i����N�٩�5&ʲ�3���U9 ���)�7V�y�e(�g�$찿�N	�MW����i)S�������$������4�b5P>�x����>�"Ԏ��O^�������O���*��;-rVudR����(����A��(�J ���S��܏�@1�#��x�Ӆj�Z����E��@�&q h/��I9˅�?����<��٤B��ࡍU8ٙś+�py�����u�37�����eތd��n��jM�F�^�z5�.��j�7�(fp�ŠUF_�k��tl��F._⼃w���C+���Ճnp�|x��:e��25�!���EH��U�@��p DX���Su��������d�̋'y!����6����g���Xt$�x�[R��$Dc����:��ڸ*�|�^�~����u�H8c���|ۻߓ����w[ :����=P3��Hٿ��&^�
{ ఄ���Y���-F"�^ۣi����5J�Hi*}��Q��}��40)��A{�vB)M��7�ø߁�mWz����˞�����79&��?����	���cZ2zT����KGN�hk�2��'oU͠l1'�%֥����.��d��d,Zj�ً�]G9{����y��_8ܜ"�<�'=lѐ��ȅI"6$6��ҙ�L����V�����mUf��Z�b@�# S$��"6��f%#9���H
a�����>3��/X��Y$��
M�
Cy��δ�4Z�2�PyP��^!vJ�(�i>�crZS.�6�1��������*_�a���#�g��}~����)���T;�t�ӊst&��)n%��Rk�_h��� K`��m���1���j����xk  ͜+Zcnj�-�� m��QQ��hce�W����e��ʣ�{��Wٚ��'������!�oX��@�T}X�N7K�<��r�gS)?q\�1�^ֱBd棲Rg4�&�OG'���P��{�Y��o����Bg�S�6��1P���8AHdRࡗoH�سX���_2D��IW�!�t��Zoʑ+�`6��3�NS����Hf��<��tk%���/����}5�λoWIv�J�B�꫆��q	!f�v�^Y��D]�L	�H��	�'�1��B��ND��f!0���[�'	���J}
`9�P�.�h����"�I6),���\ҝ�IS����Cn���U�"h�Tx�۾xէ��\��
YF��WN7=A���n�˭�V�Ɖ���&��8�R��R�UU�K�zdA W�ܧ�=yuT�+��g���+��+�h���Zf2* ?[L������s����}`�ʄK+̜��R�V$넮�^����蘳�^�1I>�gҎ���$@�h���Ym�wKWs�;��yJ�皫җ4���X���e�����ˌ2ɋ�|�J�����ER"���(�X�PMS<~{���w_Ϣ��.Si�-���A�MԀ�ٲx:^ıcx� #���;��h�9vI&��JТ��l��=*qs�q�\��S��XSYX�v�)lYiR�%��w����oh\&ay�n�Љ"��,�2c���MC�B6�q�T3`�Q�`���m�*-�m�͘$Z�)�Ū@�d��ո���9�߰:���,q�6��Q�g��)\�
I��rY
�`��>�l1�m\x�d��oN �涴��os�h�3�u��p��fK��E����{9�A����Q���H�oJ\]���/�A��r3f1�bD�n��~���K����i����&	δb���h$��t�D�!H��8M�2R|�}13y��������g%s-��:�Se����%��4>Lw�+UMJȤ���I�\Ԉ����1|��:#^��W��"8��&�n���ͨBҁu<_Ǖ��9��Wjv>c�Ј����)�Q�G�#��W�~>��-�<W�!¼h�#����*�������cW䱍��o7��lEo�]�B���r���q�W�mOĽ���K��.'K'o¶���_CͽA8�۴��#�jk�:� �7]��.$s�ָ�G)��3!��IRt� z��+��� ��d��+�~��z�A�`��|:~�ᖟ:n>N�!ȈNIŞEA��Q�j����z&�)��F�@ߑ��I�s�߄�n�l�B�*������
�'C\��K�h1�)RLjG�0Bvqx�<�Q=ל��3s;^�����H��jh��9���͇�m���"b=q9$<d�8��Fj�;d�\ޒ�|�m �O}��������[�b����0��������8�UN��h�I,����zm:Z�%D6�Z�dOZ�E�7�F'�VEa�S��2@�[L��_�H艂;�VWi	�&����PڍH؞1�3�*ipn�lB�O�<Uڕ9�SiO,�V J�2�m�\�ʉ�>���Io<�LV9��=\��T$lb4
����ӥI!3�(��"o�͑�֩T�����a��D�Q���S��W�&kL&�a�=>��t#�v����nR��`-+z��]�����䎾"�鄤���R*"�@�^H��39�Ü3V!���r]k��&t�l6_ܯH�3���빖n��0��;��\P�T�VAu�����@ɕ�[(`k�O��*��Y]�'��ըɇZⲼ��D:��A�����X�t>�n��Nb������Pe4.L�������VޒK��ރ�ߒ���SA2+�H��$u3��a��eT4��i���):얾zԼ:��y���l�.��'!l�{sڑa��`P_.��=�������y�16�/<�.E�bE!R�`��R
 �hBz5�c�=��B��B*�E���*N4�{C�R���"���8�/���0CXk���Gz���;�zz��0�>���t�C1Kr�\�z�UcD�-����,zL��DN1a��r�q�N�	�L���sG�o)G�m+��9�,!�Tz�B|������F��7b�S�[�#�m�c�ym'n�5�~�>�a����D���8@m�܊3�QC!4�4C��A���Q��4��>,C+������9��qUH�h$A5H�I*�9�뗼b\g˒éw,6h?B��8�'q�h�!pOOl����g�**v�)��@�!���ZJ���jK��v�eS��ן�V)聊s�TĉDL�{�n:�ʕ3P�PSUE�K�Qm-�@���)(�b}%�A��o�F\���<_B;�zx=!�sSE 4đ�x5H��5>��* «b� ��:��<ӥ�����Mw[O���ӕ�Mn����x�
<�|$c!��	�D��R���A1��S�Q@ZA�6�
!��~D���%G��g��������f�SF�ݒ���Ǻ�����?]8��|>���%�/R�S�23�׷�L�Vу$j�o���K�9�Z���mC�!
�-G��qq�ƤaUɟëF2	X)JR�.kiI�7-��T�X�M\�[2�ġwRDkĬ�)y���a�)�Z��.Tsv�j8�9��N�i�$M	�֟"��-�A0��a�A#D6��pTt(D/�q�%0!�CiZL��}�|Bn��0��f�#��(��2�Ȉ���Ѧ�@H�'vcb��4��1K��W�oVy�W��8��g8h��{$��)G(���蜖;�"��'�qGˮ;�&sț��G�&A� �T���>$�V�Hψ����2��^�	L����z���A@ޤ���������X�Y�e	eLwcK~��"�l��J�W�.4]�K0O�񿍣c5��)�f�{�v�ew���5+;l��� ��V׫"-,�\1��9p��\��fH��{����4������ΐ`�"�U0��BT���m�	���X0K
��{ w�(*�ϩp����ŕ�O%PF����(��5��`hl�G�H�Z( �&"Q�K�5��˔1�n뢆MNKZB�eJ6�����2)��-���>{���aʹG�]��K �y�m*p��SL�i.��� L�b��2��X�a��M*�iWPT�B�9<����7A4�RVT�iUܭ-�!���H ^���&��^Q��a��R(~?٤�'�NtH��cS�`�F,b�;��Q��y�>၅���Z���������LA;R��P(ђ���!���N�0��R�r����^腣%ZƢ4[[�Q
�l���K,mU$F����3v�|n 4�mDdd�=Ӈ}Ϋ��$�@���.���1 �^��9.�gM
��;�\����a��`f��}S��4��d�E�;�H��Z�=�'AB�Jy���ۮ�x(MJ! �]��&j�L�bds&.8�F��w�P�����d��-�f#�g���79h�@���<�4�,��7�
���ѧY�&6��7�9�s�;�����[.�m�c܇:%��i��g�W�E�R���+$�P�àG(F��0���[��P��`A�zSH+�V֒���HX�n+�2!T��C?g�U:��,Uu��2�ÕE06:�G,�&�;�{����ý��$����4�!/8��\�v9j9�m멺�dC�M��V�@6&؂Q8h-}E��0S�T�fy3�<m�t����x�����x�D�"H�6юΠ���C9���B�D��ygC�]��ր���Z������ uW3A�p��0��\�YlSZ#�Z��4�!�s$����"��~cn�����Z��m�#��F�2D��	"�%�l��	ʾ,i���%�t��y 6�t�JA8-@0&1��;Նc2�;R�P�6ޢ�^�x-�!OzB ����F5��K�pT�A�3��
 �P�ٞݱ�<D ���k��z�����X5�L��V�iTDx0�a�U�� �j)9R�7�H�Hb���ӢD4��(��i/|^��,�L@ə#�ЌA�_f�Sn=�m�t��9�aN�]E��גH�QI�!I�[���ߏ��s�
9��T��aa���1֦����l�7#߱ϼ�eV:���kEHD�b�2�d�Xb�GC�d�"��J���+��5l5/�n�S�U��"kQ���E��Z,�ʭ���1�-!�������+S��Mʵ�4�%�0��zk˗��̕���A���q7�(cg5o�h��Dv�m!ZQ�W&�o��T÷�]w�^ڠm}7�<�%�٭6 �ep�Ə���O)�,�@W�.�ʘ�E�C��A�/�q�FC �f���)�;4�%�%9��2�[QE�c��.±J*��l����Yi�D�f���rxÏx��%�,9 �K��/Q�*�������A�ŗu�[�ar��J

$�s��tv�vqĢ�	�*�:�%܄��Vem�\�*`�iL���ۄ�M	�A$�b"����aD�Y��/��*�8�j�!Չ�tkz�����ui���2A��,�;���a���ň��	��Ɍ1#f�Q�T����(K��9��T� �,�J�h=0�b>�}~a�%[SJ�f``i��/O7$�4�'��H0�*|'1_P�o=� 4~4�Z�^e��̡X3�"�:OÒ�W����YAY�p6!���M���9x��Q�qʩ�K��$�A��B尅�~��=��ί]T� =#$Mf�%�ˈ�!�%�D���j��9O��+�������`ѽs�x�^��Ö�/�{%dk��� �c�N�O�"%a�"���G���p7>��Y�w�i:G��,oM�jP����u�c���i[� H
1D��3Y�3@啋���b0�v! "��bQ�J�6���B�g(5����,U7�$�d�zȉ�Pl�2��O���xq.B��� �!v�6Ip���Sy�kH�;j��t.PW��	��n	�>l>�>�v��P���
�G)D���r�QTI�F({1��6�.��L`��$.pV��v�T���n<gV%���dTT �j��F���]��)�-R�e���A�8bY��PXUP��'�P,�H�R�>�~50Ƚv�0������$��PP��I8&s���!�P �cALg����d��<�D��_ݰlm#M��!���zQt#�bǴy��Y$7��ko7�%�8���$�B�E2d�����F�ܢ��Gc�
�'MET�����'N������N�i:�ͺ;��V�ˁD]����H.��Td[�j�@h�D*<Ė��@
��ch���;FFg즙�c�,cT�v?Ul�j�g��띩ue{�B��%B�Kyum�J���}�7�.00 M��6�R��	R'�2�(tnG�X�B����j�-5���Z �DLsz���Nt�~���I�5^�;K���B���1��sWL �H�N}%J������bO�N��:7ßy�$�bn4ↅ�9�!V*�NU��Q/Q�pa��E`t"��Yd���	i����=�3�.bzL����C�r�J� �"�l����
։�x�5�+ˢ#�Ka��˔wr�@�E�6	E`�ƌ=�$�m#�L+(iR#��������t��ؘ��?�H�1\ji�Pp4q��`BB1!�`Z�t��>8K@NFV59�UY;+^^��h�1�H=rͤ,茩頨�dJ�ɀ�.������k.����b����6_Q�,�����Xf��e3F�
O�>�fٝ�1	�R]�Y��d�Y�;C�ݝ��(N[Dj��JXFH��<�0���lD�v �A#�VQ�s-Y��'C9*GF�c.$H�$t"㎀��]
g�rB�J�6�HI �3_8�V0�dA�F����┹B8M�]ߔ���4�@�0�D��l�[��A���(j�5��i�qŅ��p�/���8���N�j!A�d�e��R�]7q�)ҜCS�ga7}�qz�鑑t<Go�GW2����gPBACA��
�%��P�����0J[�����3��S��%u��Hs��V��Z�_?�&�:M��3@&� B9R��	��nt������H����ӕ���$�������*V�6�`i�e�bc�m����):��hC�P�Fz�x�A7K��x���.���hάTT&[gj�q�֩�덲���w�2o;�f�����Єg��>O��0gq�2�V�s5�����������
�u�X/T��:���v�	7�<@o��ëN���06v�B*�$���t���\�Q�eЇ��R������&m���Q���7�1��R��V�h����TC��qaV��6�+�lK��ă�u�LCcC��N��!�����U��{q��T������x!8�\@�=A�:O��$b� ܗB�I�tЫ��!"(}�zO��ǬzCY����Յ���"H7z���i@Q���&����}��;bP�m�JH}�K���������uO��IN�N����{@#��?�D����D�߹�}�fA�����~����(��A1XB���y���H�
d��