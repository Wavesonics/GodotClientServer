GDPC                                                                             /   <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex05      �      �p��<f��r�g��.�$   res://client/ClientEntry.gd.remap   Pa      -       G���*����I�C   res://client/ClientEntry.gdc       �       �����"XLX�
q��G    res://client/ClientEntry.tscn          �       P�'%[HC�Vxϩ�4(   res://client/game/ClientGame.gd.remap   �a      1       �O�d)�s@�I�t���    res://client/game/ClientGame.gdc�      �       \��Pg	�"�&�$   res://client/game/ClientGame.tscn   0      �       j%�� �	S��d(   res://client/lobby/ClientLobby.gd.remap �a      3       ��+"�]σ,C�҃$   res://client/lobby/ClientLobby.gdc  0      �      �s�rz����$3	�$   res://client/lobby/ClientLobby.tscn       *      �x��"h��!�� �(   res://client/main_menu/MainMenu.gd.remap b      4       p��[WN4<͚J�hk�$   res://client/main_menu/MainMenu.gdc @      	      ^RA��J����H�v$   res://client/main_menu/MainMenu.tscnP      #      �e�.^��'5��T���    res://common/game/Game.gd.remap @b      +       �������+���z��   res://common/game/Game.gdc  �            �8���KM>k�&���v   res://common/game/Game.tscn �!      �       �a��/vz�;ߪ$   res://common/game/Player.gd.remap   pb      -       �en���six�mh/   res://common/game/Player.gdcP"      �      �M�����jE}ԩ���    res://common/game/Player.tscn   0&      �      ���J����p<���$   res://common/lobby/Lobby.gd.remap   �b      -       �4�D��.a�_���3   res://common/lobby/Lobby.gdc�(      �      ��(	�9��I�q�ڌ�    res://common/lobby/Lobby.tscn   �-      :      ����g4�@v���$   res://common/lobby/NamePlate.tscn   �/      F      p[;�p7��j�#
�nX   res://default_env.tres  01      �       um�`�N��<*ỳ�8   res://entry/Entry.gd.remap  �b      &       �>����A����{��   res://entry/Entry.gdc   �1      �      �k[�ӡcAHr&��t   res://entry/Entry.tscn  �4      �       O�u�Z@ɷ���j�   res://icon.png  �d      i      ����󈘥Ey��
�   res://icon.png.import   �B      �      �����%��(#AB�(   res://networking/BaseNetwork.gd.remap    c      1       ��!�fN��w��]�P�    res://networking/BaseNetwork.gdcPE      �      i��2B9.���hө��(   res://networking/ClientNetwork.gd.remap @c      3       3�̟���^q�7�$   res://networking/ClientNetwork.gdc  @I      �      "Q"w�g=��R��l$   res://networking/GameData.gd.remap  �c      .       �f&H�YW� D`z    res://networking/GameData.gdc   �P            ���H:y{F��^��A�(   res://networking/ServerNetwork.gd.remap �c      3       � :!\�|L�A��b$   res://networking/ServerNetwork.gdc  �R      �      �Ķ�ͳ#�ɀ��   res://project.binaryr      �      �����a�>�����W%A$   res://server/ServerEntry.gd.remap   �c      -       ��n�Xcc����{Q�:�   res://server/ServerEntry.gdc�X      �       ,�H\�K��$�d���    res://server/ServerEntry.tscn   �Y      �       ���.�$6;/#wB�-(   res://server/game/ServerGame.gd.remap    d      1       �$u�J��V��[�:    res://server/game/ServerGame.gdc`Z      �      ��'���O��ڮ<�$   res://server/game/ServerGame.tscn   �\      �       �����/��^��`�0x�(   res://server/lobby/ServerLobby.gd.remap `d      3       +�n[�|�J���NH$   res://server/lobby/ServerLobby.gdc  �]      G      q��n�ra����ABz�$   res://server/lobby/ServerLobby.tscn @`            ֊�|�be�/G��;3&        GDSC                  ���Ӷ���   �����϶�   �������Ӷ���   �����������Ӷ���   $   res://client/main_menu/MainMenu.tscn                                           3YYYY0�  PQV�  �  PQT�  PQY`      [gd_scene load_steps=2 format=2]

[ext_resource path="res://client/ClientEntry.gd" type="Script" id=1]

[node name="ClientEntry" type="Node"]
script = ExtResource( 1 )
        GDSC                  �����϶�      res://common/game/Game.gd                      	            3YY0PQV�  -Y`[gd_scene load_steps=3 format=2]

[ext_resource path="res://common/game/Game.tscn" type="PackedScene" id=1]
[ext_resource path="res://client/game/ClientGame.gd" type="Script" id=2]

[node name="Game" instance=ExtResource( 1 )]
script = ExtResource( 2 )
   GDSC            3      �����϶�   ������������ݶ��   ������¶   ����������������������Ҷ   ���������Ӷ�   ������������Ӷ��   �������Ӷ���   �����������Ӷ���      res://common/lobby/Lobby.gd    
   start_game        on_start_game      !   res://client/game/ClientGame.tscn                      	                        !      "   	   (   
   1      3YY0PQV�  �  T�  P�  RR�  QYY0�  PQV�  �  T�  PQYY0�  PQV�  �  PQT�  P�  QY`       [gd_scene load_steps=3 format=2]

[ext_resource path="res://common/lobby/Lobby.tscn" type="PackedScene" id=1]
[ext_resource path="res://client/lobby/ClientLobby.gd" type="Script" id=2]

[node name="Lobby" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="StartButton" type="Button" parent="." index="2"]
margin_left = 772.0
margin_top = 257.0
margin_right = 855.0
margin_bottom = 277.0
text = "Start Game"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="StartButton" to="." method="_on_StartButton_pressed"]
      GDSC            ]      ������ڶ   �����϶�   �������Ӷ���   ������¶   ������������������������Ҷ��   �ƶ�   ������������ڶ��   �������ƶ���   ���¶���   ����������������Ķ��   �������ƶ���   ���������Ӷ�   ������������ݶ��   ��������Ӷ��   ���������������������Ķ�   �����������Ӷ���      connected_to_server       on_connected_to_server     
   Client Guy     #   res://client/lobby/ClientLobby.tscn                    	                              +   	   0   
   1      2      ;      @      A      J      K      L      R      [      3YY0�  PQV�  �  PQT�  PRR�  QYYY0�  PQV�  ;�  VW�  �  T�  <�  �  �	  P�  QYYY0�	  P�
  V�  QV�  ;�  �  �  �  �  T�  P�
  R�  QYYY0�  PQV�  �  PQT�  P�  QY`       [gd_scene load_steps=2 format=2]

[ext_resource path="res://client/main_menu/MainMenu.gd" type="Script" id=1]

[node name="MainMenu" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ScreenTitle" type="Label" parent="."]
margin_left = 30.0
margin_top = 39.0
margin_right = 101.0
margin_bottom = 53.0
text = "Main Menu"

[node name="ServerIpLabel" type="Label" parent="."]
margin_left = 193.0
margin_top = 179.0
margin_right = 233.0
margin_bottom = 193.0
text = "Server IP"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ServerIp" type="LineEdit" parent="ServerIpLabel"]
margin_right = 243.0
margin_bottom = 24.0
text = "127.0.0.1"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ConnectButton" type="Button" parent="."]
margin_left = 375.0
margin_top = 268.0
margin_right = 439.0
margin_bottom = 288.0
text = "Connect"
__meta__ = {
"_edit_use_anchors_": false
}
[connection signal="pressed" from="ConnectButton" to="." method="_on_ConnectButton_pressed"]
             GDSC      	   *   �      ���ӄ�   �����϶�   �������Ӷ���   �����Ҷ�   ������������Ӷ��   ����Ķ��   �������Ҷ���   �������׶���   ������Ŷ   �����������Ķ���   ����������������Ķ��   �����Ҷ�   ������������ݶ��   ��������򶶶   ��������������������Ҷ��   �����Ķ�   ���������Ӷ�   �����������   ����Ӷ��   ���Ӷ���   �������Ӷ���   �����������������Ķ�   �������Ӷ���   �������ض���   ζ��   ϶��   ��������������Ӷ   ��������Ҷ��   ������������������������Ӷ��      Entering game                      on_client_ready       Creating player game object       res://common/game/Player.tscn      d      .   All clients are configured. Starting the game.                            	                                 	      
   #      )      1      8      <      =      H      I      Z      [      d      i      s      t      ~            �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   3YY0�  PQV�  �?  PQ�  �  PQT�  �  �  �  �  PQYYY0�  PQV�  ;�  V�  �  )�  �  T�  V�  �	  P�  R�  Q�  �  �  �  &�  PQT�
  PQV�  �  �  P�  T�  R�  R�  PQT�  PQQYY0�	  P�  R�  QV�  �?  P�  Q�  ;�  �  T�  L�  M�  �  ;�  �  L�  T�  M�  �  ;�  ?P�  Q�  �  ;�  �  T�  PQ�  �  T�  P�  Q�  �  T�  P�>  P�  QQ�  �  �  T�  T�  �  �  �  �  T�  T�  �  �  �  T�  P�  Q�  �  �  P�  QYYYI0�  PQV�  �?  P�  Q�  �  PQT�  �  Y`         [gd_scene load_steps=2 format=2]

[ext_resource path="res://common/game/Game.gd" type="Script" id=1]


[node name="Game" type="Node2D"]
script = ExtResource( 1 )
              GDSC            �      ������������τ�   ����򶶶   �������������Ӷ�   �������ض���   ���������������Ŷ���   ����׶��   ����������������Ķ��   �������϶���   ��������   ����¶��   ����������������Ҷ��   ϶��   ζ��   �������������Ӷ�   �������������Ӷ�   ��������������Ӷ   ���������Ӷ�   ��������ڶ��   ���¶���     �?      ui_down       ui_up         ui_left       ui_right      network_update                     	      
                        "   	   (   
   0      9      ?      H      N      W      ]      f      l      m      t      u      ~            �      �      3YY:�  VYYH0�  P�  V�  QV�  T�  �  YY0�  P�  QV�  &�  PQV�  ;�  V�  T�  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  &�	  T�
  P�  QV�  �  T�  �  �  �  �  �  P�  Q�  �  �  P�  RT�  QYY0�  P�  V�  QV�  W�  T�  �  Y`               [gd_scene load_steps=3 format=2]

[ext_resource path="res://common/game/Player.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 20, 20 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -20.0
margin_top = -20.0
margin_right = 20.0
margin_bottom = 20.0

[node name="NameLabel" type="Label" parent="."]
margin_left = -30.0
margin_top = 40.0
margin_right = 116.0
margin_bottom = 90.0
text = "Name"
__meta__ = {
"_edit_use_anchors_": false
}
              GDSC            �      ������ڶ   �����϶�   ������������ݶ��   ������¶   ������������Ķ��   �������Ҷ���   �������������Ӷ�   ������������Ӷ��   �������Ӷ���   �����������������Ķ�   �������Ӷ���   �����Ķ�   �������׶���   ������Ŷ   �������Ӷ���   ���¶���   �����������   ������Ŷ   ��������Ҷ��   ������������Ķ��   ���Ӷ���   ����Ҷ��   �����������ض���   �����������Ҷ���      create_player         remove_player         Creating player in lobby   !   res://common/lobby/NamePlate.tscn         Name      Player removed                     	                         )      .   	   /   
   7      8      A      H      R      S      ]      m      n      o      p      q      y      z      �      �      �      �      �      �      �      3YY0�  PQV�  �  T�  PRRQ�  �  T�  P�  RR�  QYY0�  P�  V�  QV�  �?  P�  Q�  �  ;�  ?P�  Q�  �  ;�  �  T�  PQ�  �  T�	  P�  Q�  �  T�
  P�>  P�  QQ�  �  ;�  �  T�  L�  M�  �  T�  P�  QT�  �  L�  T�  M�  �  �  �  �  W�  T�  P�  QYY0�  P�  V�  QV�  ;�  �>  P�  Q�  )�  W�  T�  PQV�  &�  T�  �  V�  �?  P�  Q�  W�  T�  P�  Q�  +Y`       [gd_scene load_steps=2 format=2]

[ext_resource path="res://common/lobby/Lobby.gd" type="Script" id=1]

[node name="Lobby" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Title" type="Label" parent="."]
margin_right = 40.0
margin_bottom = 14.0
text = "Lobby"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Players" type="VBoxContainer" parent="."]
margin_left = 138.0
margin_top = 73.0
margin_right = 666.0
margin_bottom = 347.0
__meta__ = {
"_edit_use_anchors_": false
}
      [gd_scene format=2]

[node name="NamePlate" type="HBoxContainer"]
anchor_right = 0.187
anchor_bottom = 0.083
margin_right = -0.488007
margin_bottom = 0.199997
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Name" type="Label" parent="."]
margin_top = 18.0
margin_right = 81.0
margin_bottom = 32.0
text = "Player Name"
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC            S      ���Ӷ���   �����϶�   �嶶   ����������Ӷ   �������Ӷ���   �����������Ӷ���      Application started       server     	   Is server         res://server/ServerEntry.tscn         client     	   Is client         res://client/ClientEntry.tscn      8   Could not detect application type! Defaulting to client.                                                    	   '   
   0      5      >      ?      B      G      P      Q      3YYYY0�  PQV�  �?  PQ�  &�  T�  P�  QV�  �?  P�  Q�  �  PQT�  P�  Q�  '�  T�  P�  QV�  �?  P�  Q�  �  PQT�  P�  Q�  �  (V�  �?  P�  Q�  �  PQT�  P�  Q�  Y`    [gd_scene load_steps=2 format=2]

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
GDSC            �      ���Ӷ���   ������������Ķ��   �����������   �����������   �����϶�   ������������ݶ��   �������Ӷ���   ������¶   �������������������Ҷ���   �Ҷ�   �������׶���   ������Ŷ   ����Ӷ��   ����������ڶ   ���Ӷ���   ���Ķ���   �����������Ķ���   ���������������ض���   ����¶��   �              network_peer_disconnected         _player_disconnected      Player disconnected:          remove_player         Total players: %d                                                           	      
         ,      -      .      5      ?      H      I      P      ]      ^      _      e      n      t      z      {      |      �      3YYB�  YY:�  VY:�  V�  YY0�  PQV�  �  PQ�  �  �  PQT�  P�  RR�  QYYY0�  P�	  QV�  �?  P�  �>  P�	  QQ�  �
  T�  T�  P�	  Q�  �  �  P�  R�	  Q�  �?  P�  �
  T�  T�  PQQYYY0�  PQV�  ;�  �  PQT�  �  &�  �  V�  �  T�  PQ�  �  �  �
  T�  PQY`GDSC   !      1        ������������Ķ��   ���������Ӷ�   ��������������Ӷ   ��������Ӷ��   �������ƶ���   ���������Ӷ�   �������Ӷ���   ������¶   ���Ķ���   �����������������������¶���   ����   �����¶�   ������������¶��   �����������   ����   ���������������Ķ���   ���������������������Ķ�   �������Ҷ���   ��������������������Ҷ��   ������������ݶ��   ������������ж��   ������������������������Ķ��   ��ն   ��������������Ķ   ����������Ҷ   �����Ҷ�   �����������������Ķ�   �������׶���   ���������Ķ�   ����������ڶ   ������Ŷ   ���Ӷ���   ������������Ӷ��      BaseNetwork.gd        connected_to_server       on_connected_to_server        Connecting to server...                    Connected to server.      on_register_player        on_register_player:       create_player         Total players: %d         on_start_game      
   start_game                           	      
                     	   ,   
   -      3      4      =      I      J      P      Y      ^      a      d      g      h      n      s      ~            �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /     0     1   3YYBYB�  YY;�  V�  YY0�  P�  V�  R�  V�  QX�  V�  �  PQT�  P�  RR�  Q�  �  T�  �  �  �  ;�  �	  T�
  PQ�  ;�  �  T�  P�  R�  Q�  �  &�  �  V�  �  PQT�  P�  Q�  �?  P�  Q�  .�  �  (V�  .�  YY0�  PQV�  �?  P�  Q�  ;�  �  PQT�  PQ�  �  �  T�  P�  RT�  Q�  �  YY0�  P�  V�  R�  V�  QV�  �  P�  R�  R�  QYY0�  P�  V�  R�  V�  R�  V�  QV�  �  P�  R�  R�  R�  QYYD0�  P�  V�  R�  V�  QV�  �?  P�  Q�  �?  P�  �>  P�  QQ�  �  T�  P�  R�  Q�  �  P�	  R�  Q�  �?  P�
  �  T�  T�  PQQYY0�  PQV�  �  P�  QYYI0�   PQV�  �  P�  QY`      GDSC   
         _      ���Ӷ���   ������Ŷ   ��������򶶶   �����������   ����������������Ķ��   �������Ҷ���   ���������Ӷ�   ���������Ķ�   ��������Ķ��   ����¶��      id        name                   	      
                  #      .   	   /   
   <      F      O      P      V      ]      3YY;�  NOYY:�  Y:�  �  Y0�  P�  V�  R�  V�  QX�  V�  .N�  V�  R�  V�  OYY0�  P�  V�  R�  V�  QV�  ;�  �  P�  R�  Q�  T�  L�  M�  YY0�	  PQV�  T�  NOY`     GDSC      
   %   �      ��������򶶶   ����������������Ҷ��   �Ҷ�   �������Ҷ���   �������׶���   ������Ŷ   �����Ķ�   ������������ݶ��   ��������������Ķ   ���Ӷ���   ������������ж��   ���������Ӷ�   �����Ҷ�   ���������������ж���   �����������������Ķ�   ����������Ҷ   ��������Ӷ��   ���Ķ���   �����������������������¶���   ����   �����¶�   ������������Ķ��   �����������   �����������   ����   �������Ӷ���   ���������������Ķ���   ������¶      BaseNetwork.gd              Player connected:         on_register_self      network_peer_connected        _player_connected         Server started.             Failed to host game: %d                           	      
                           	   %   
   +      5      B      C      D      M      X      Y      c      l      m      u      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   3YY:V�  YY0�  P�  QV�  �?  P�  �>  P�  QQ�  �  �  )�  �  T�  V�  &�  �  V�  ;�  �  T�  L�  M�  �  T�  P�  R�  R�  T�	  QYYY0�
  P�  R�  QV�  �  PR�  R�  R�  QYYD0�  P�  R�  QV�  �  T�  P�  R�  Q�  �  )�  �  T�  V�  �  T�  P�  R�  R�  QYY0�  PQX�  V�  ;�  �  T�  PQ�  ;�  �  T�  P�  R�  Q�  &�  �  V�  �  PQT�  P�  Q�  �  �  PQT�  P�  RR�  Q�  �  �?  P�  Q�  .�  �  (V�  �?  P�  �  Q�  .�	  Y`               GDSC                  ���Ӷ���   �����϶�   �������Ӷ���   �����������Ӷ���   #   res://server/lobby/ServerLobby.tscn                                            3YYYY0�  PQV�  �  PQT�  PQY`      [gd_scene load_steps=2 format=2]

[ext_resource path="res://server/ServerEntry.gd" type="Script" id=1]

[node name="ServerEntry" type="Node"]
script = ExtResource( 1 )
        GDSC   
         X      �������������Ŷ�   �����϶�   �������Ҷ���   �������׶���   ������Ŷ   ��������������϶   ����Ӷ��   ���Ӷ���   ����϶��   ��ն      res://common/game/Game.gd         client ready: %s      Still waiting on %d players       Starting the game         on_pre_configure_complete                      
                               !   	   )   
   0      7      B      C      D      L      Q      V      3YY;�  PQYY0�  PQV�  )�  �  T�  V�  L�  M�  YYD0�  P�  QV�  �?  P�  �  Q�  T�  P�  Q�  �?  P�  T�  PQQ�  �  �  &T�  PQV�  �?  P�  Q�  �	  P�  QY`    [gd_scene load_steps=3 format=2]

[ext_resource path="res://common/game/Game.tscn" type="PackedScene" id=1]
[ext_resource path="res://server/game/ServerGame.gd" type="Script" id=2]

[node name="Game" instance=ExtResource( 1 )]
script = ExtResource( 2 )
   GDSC   	         @      �����϶�   ������������ݶ��   ��������Ӷ��   �������Ӷ���   ���¶���   ������������ݶ��   ������¶   ������������Ӷ��   �����������Ӷ���      res://common/lobby/Lobby.gd    &   Failed to start server, shutting down.     
   start_game        on_start_game      !   res://server/game/ServerGame.tscn                      	                        !      "   	   -   
   .      /      5      >      3YY0PQV�  &�  T�  PQV�  �?  P�  Q�  �  PQT�  PQ�  .�  �  �  T�  P�  RR�  QYYY0�  PQV�  �  PQT�  P�  QY`         [gd_scene load_steps=3 format=2]

[ext_resource path="res://common/lobby/Lobby.tscn" type="PackedScene" id=1]
[ext_resource path="res://server/lobby/ServerLobby.gd" type="Script" id=2]


[node name="Lobby" instance=ExtResource( 1 )]
script = ExtResource( 2 )
             [remap]

path="res://client/ClientEntry.gdc"
   [remap]

path="res://client/game/ClientGame.gdc"
               [remap]

path="res://client/lobby/ClientLobby.gdc"
             [remap]

path="res://client/main_menu/MainMenu.gdc"
            [remap]

path="res://common/game/Game.gdc"
     [remap]

path="res://common/game/Player.gdc"
   [remap]

path="res://common/lobby/Lobby.gdc"
   [remap]

path="res://entry/Entry.gdc"
          [remap]

path="res://networking/BaseNetwork.gdc"
               [remap]

path="res://networking/ClientNetwork.gdc"
             [remap]

path="res://networking/GameData.gdc"
  [remap]

path="res://networking/ServerNetwork.gdc"
             [remap]

path="res://server/ServerEntry.gdc"
   [remap]

path="res://server/game/ServerGame.gdc"
               [remap]

path="res://server/lobby/ServerLobby.gdc"
             �PNG
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
�?���{�    IEND�B`�       ECFG      _custom_features         client     _global_script_classes             _global_script_class_icons             application/config/name         ClientServer   application/run/main_scene          res://entry/Entry.tscn     application/config/icon         res://icon.png     autoload/ClientNetwork,      "   *res://networking/ClientNetwork.gd     autoload/ServerNetwork,      "   *res://networking/ServerNetwork.gd     autoload/GameData(         *res://networking/GameData.gd   '   debug/gdscript/warnings/unused_argument          .   debug/gdscript/warnings/return_value_discarded             layer_names/2d_physics/layer_1         players )   rendering/environment/default_environment          res://default_env.tres     