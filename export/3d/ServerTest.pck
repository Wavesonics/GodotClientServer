GDPC                                                                                <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex       �      �p��<f��r�g��.�   res://Network.gd.remap  �,      "       f��CeY�.�%�C.   res://Network.gdc   �      �       )��֘����@4�%6$   res://clients/2d/Client2d.gd.remap  �,      .       ���ڻҿ}�D4���    res://clients/2d/Client2d.gdc   �      o       �ˆ���0;�9�(^�    res://clients/2d/Client2d.tscn  0      �      Y���;�{�p�0�3�1$   res://clients/3d/Client3d.gd.remap  �,      .       �ZM�����g�����    res://clients/3d/Client3d.gdc    
      o       �ˆ���0;�9�(^�    res://clients/3d/Client3d.tscn  �
            t��B6&�M�d��$   res://clients/ClientBase.gd.remap   -      -       fBQ[�ά�J������y   res://clients/ClientBase.gdc�      C      ��t֬ם��ׯ^{�q    res://clients/ClientBase.tscn          �       @C@��%�5[�Ù   res://default_env.tres  �      �       um�`�N��<*ỳ�8   res://entry/Entry.gd.remap  @-      &       �>����A����{��   res://entry/Entry.gdc   `            ��(;^��Ұi˷yk�   res://entry/Entry.tscn  �      �       O�u�Z@ɷ���j�   res://icon.png  �-      i      ����󈘥Ey��
�   res://icon.png.import   �%      �      �����%��(#AB�   res://project.binary;            �߳� c7�q����Y    res://server/Server.gd.remapp-      (       r"s�JA��;�3�6�   res://server/Server.gdc @(      �      鵦�Ḅ�ӰpiM��   res://server/Server.tscn�+      �       ��?�:ZH<�B�y�v    GDSC                  ���Ӷ���   �����������   �����������   �����϶�   �                           	                              3YY:�  VY:�  V�  YY0�  PQV�  -Y`       GDSC                   ���������Ӷ�   �����϶�                   	            3YY0�  PQV�  -Y` [gd_scene load_steps=3 format=2]

[ext_resource path="res://clients/ClientBase.tscn" type="PackedScene" id=1]
[ext_resource path="res://clients/2d/Client2d.gd" type="Script" id=2]

[node name="ClientBase" index="0" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="Control" type="Control" parent="." index="0"]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="Panel" type="Panel" parent="Control" index="0"]
margin_left = 312.0
margin_top = 186.0
margin_right = 669.0
margin_bottom = 389.0

[node name="Label" type="Label" parent="Control/Panel" index="0"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -29.5
margin_top = -7.0
margin_right = 29.5
margin_bottom = 7.0
text = "2D Client"
     GDSC                   ���������Ӷ�   �����϶�                   	            3YY0�  PQV�  -Y` [gd_scene load_steps=5 format=2]

[ext_resource path="res://clients/ClientBase.tscn" type="PackedScene" id=1]
[ext_resource path="res://clients/3d/Client3d.gd" type="Script" id=2]

[sub_resource type="ProceduralSky" id=1]

[sub_resource type="Environment" id=2]
background_mode = 2
background_sky = SubResource( 1 )

[node name="ClientBase" index="0" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="Spatial" type="Spatial" parent="." index="0"]

[node name="WorldEnvironment" type="WorldEnvironment" parent="Spatial" index="0"]
environment = SubResource( 2 )

[node name="CSGBox" type="CSGBox" parent="Spatial" index="1"]
width = 4.79809
height = 0.22609
depth = 5.96047

[node name="Camera" type="Camera" parent="Spatial" index="2"]
transform = Transform( 1, 0, 0, 0, 0.939594, 0.342291, 0, -0.342291, 0.939594, 0, 1.59238, 1.97735 )

[node name="CSGCylinder" type="CSGCylinder" parent="Spatial" index="3"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0.538828, 0.666492, -1.58278 )
radius = 0.312663

[node name="CanvasLayer" type="CanvasLayer" parent="." index="1"]

[node name="Control" type="Control" parent="CanvasLayer" index="0"]
anchor_right = 1.0
anchor_bottom = 1.0

[node name="Panel" type="Panel" parent="CanvasLayer/Control" index="0"]
margin_right = 257.0
margin_bottom = 151.0

[node name="Label" type="Label" parent="CanvasLayer/Control/Panel" index="0"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -29.5
margin_top = -7.0
margin_right = 29.5
margin_bottom = 7.0
text = "3D Client"
  GDSC            E      ���Ӷ���   ���������Ӷ�   �����϶�   �������ƶ���   ���Ķ���   �����������������������¶���   ����   �����¶�   ������������¶��   ������ݶ   �����������   ����   �������Ӷ���   ���������������Ķ���      Client base setup      	   127.0.0.1         Connecting to server                                                 !   	   /   
   0      6      ?      3Y2�  YY0�  PQV�  �8  PQ�  ;�  V�  �  �  ;�  �  T�  PQ�  ;�  �  T�  P�  R�	  T�
  Q�  �  &�  �  V�  �  PQT�  P�  Q�  �8  P�  Q`             [gd_scene load_steps=2 format=2]

[ext_resource path="res://clients/ClientBase.gd" type="Script" id=1]

[node name="ClientBase" type="Node"]
script = ExtResource( 1 )
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            f      ���Ӷ���   �����϶�   �嶶   ����������Ӷ   �������Ӷ���   �����������Ӷ���   ���¶���      Application started       server     	   Is server         res://server/Server.tscn      2d        Is client: 2d         res://clients/2d/Client2d.tscn        3d        Is client: 3d         res://clients/3d/Client3d.tscn     +   Could not detect application type! Exiting.                                                     	   '   
   0      5      >      G      L      U      X      ]      3YYYY0�  PQV�  �8  PQ�  &�  T�  P�  QV�  �8  P�  Q�  �  PQT�  P�  Q�  '�  T�  P�  QV�  �8  P�  Q�  �  PQT�  P�  Q�  '�  T�  P�  QV�  �8  P�  Q�  �  PQT�  P�	  Q�  (V�  �8  P�
  Q�  �  PQT�  PQ`     [gd_scene load_steps=2 format=2]

[ext_resource path="res://entry/Entry.gd" type="Script" id=1]

[node name="Entry" type="Node"]
script = ExtResource( 1 )
     GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC            y      ���Ӷ���   �����Ķ�   �����������   �����϶�   �������Ӷ���   ������¶   ���Ķ���   �����������������������¶���   ����   ������������Ķ��   ������ݶ   �����������   ���������������Ķ���   ����������������Ҷ��   �Ҷ�   �������������������Ҷ���            network_peer_connected        _player_connected         network_peer_disconnected         _player_disconnected      Server listening      Player connected:                                                     -   	   .   
   7      B      K      L      Q      R      Y      c      d      e      f      m      n      3Y2�  YY:�  VYY0�  PQV�  �  PQT�  P�  RR�  Q�  �  PQT�  P�  RR�  Q�  �  ;�  �  T�  PQ�  �  T�	  P�
  T�  R�  Q�  �  PQT�  P�  Q�  �  �8  P�  QYY0�  P�  QV�  �8  P�  �7  P�  QQ�  �  YY0�  P�  QV�  �  �8  P�  �7  P�  QQ`    [gd_scene load_steps=2 format=2]

[ext_resource path="res://server/Server.gd" type="Script" id=1]

[node name="Server" type="Node"]
script = ExtResource( 1 )
  [remap]

path="res://Network.gdc"
              [remap]

path="res://clients/2d/Client2d.gdc"
  [remap]

path="res://clients/3d/Client3d.gdc"
  [remap]

path="res://clients/ClientBase.gdc"
   [remap]

path="res://entry/Entry.gdc"
          [remap]

path="res://server/Server.gdc"
        �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _custom_features         3d     _global_script_classes(                    class      
   ClientBase        language      GDScript      path      res://clients/ClientBase.gd       base      Node            class         Server        language      GDScript      path      res://server/Server.gd        base      Node   _global_script_class_icons<               Server            
   ClientBase            application/config/name      
   ServerTest     application/run/main_scene          res://entry/Entry.tscn     application/config/icon         res://icon.png     autoload/Network         *res://Network.gd   )   rendering/environment/default_environment          res://default_env.tres                 GDPC