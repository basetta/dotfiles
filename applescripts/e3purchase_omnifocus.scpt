FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Entry point when run     � 	 	 *   E n t r y   p o i n t   w h e n   r u n   
  
 l     ��������  ��  ��        i         I     ������
�� .aevtoappnull  �   � ****��  ��    k            I    ��  
�� .sysodlogaskr        TEXT  m        �   B E n t e r   p u r c h a s e   o r d e r   d e s c r i p t i o n :  �� ��
�� 
dtxt  m       �    P u r c h a s e��     ��  I    �� ���� *0 createomnifocustask createOmniFocusTask   ��  l  	  ����  n  	     1   
 ��
�� 
ttxt  1   	 
��
�� 
rslt��  ��  ��  ��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $    Create tasks in Omnifocus    % � & & 4   C r e a t e   t a s k s   i n   O m n i f o c u s #  ' ( ' l     ��������  ��  ��   (  )�� ) i     * + * I      �� ,���� *0 createomnifocustask createOmniFocusTask ,  -�� - o      ���� 0 	eventname 	eventName��  ��   + O     � . / . O    � 0 1 0 k   
 � 2 2  3 4 3 l  
 
�� 5 6��   5   Grab the context    6 � 7 7 "   G r a b   t h e   c o n t e x t 4  8 9 8 r   
  : ; : 6  
  < = < 4  
 �� >
�� 
FCct > m    ����  = =    ? @ ? 1    ��
�� 
pnam @ m     A A � B B  E m a r s y s ; o      ���� "0 purchasecontext purchaseContext 9  C D C l   ��������  ��  ��   D  E F E l   �� G H��   G ' ! Create the task inside a project    H � I I B   C r e a t e   t h e   t a s k   i n s i d e   a   p r o j e c t F  J K J r    ) L M L 6   ' N O N 4   �� P
�� 
FCAr P m    ����  O =   & Q R Q 1     "��
�� 
pnam R m   # % S S � T T  E m a r s y s M o      ���� 0 fld   K  U�� U O   * � V W V k   . � X X  Y Z Y r   . = [ \ [ 6  . ; ] ^ ] 4  . 2�� _
�� 
FCpr _ m   0 1����  ^ =  3 : ` a ` 1   4 6��
�� 
pnam a m   7 9 b b � c c  S i n g l e   A c t i o n s \ o      ���� 0 proj   Z  d�� d O   > � e f e k   B � g g  h i h l  B B�� j k��   j + % Create parent task and its subtasks.    k � l l J   C r e a t e   p a r e n t   t a s k   a n d   i t s   s u b t a s k s . i  m n m r   B R o p o I  B P���� q
�� .corecrel****      � null��   q �� r s
�� 
kocl r m   D E��
�� 
FCac s �� t��
�� 
prdt t K   F L u u �� v w
�� 
pnam v o   G H���� 0 	eventname 	eventName w �� x��
�� 
FCsq x m   I J��
�� boovtrue��  ��   p o      ���� 0 
parenttask 
parentTask n  y�� y O   S � z { z k   W � | |  } ~ } I  W i���� 
�� .corecrel****      � null��    �� � �
�� 
kocl � m   Y Z��
�� 
FCac � �� ���
�� 
prdt � K   [ e � � �� � �
�� 
pnam � b   \ a � � � m   \ _ � � � � � & P r i n t   F o r m u l a r   f o r   � o   _ `���� 0 	eventname 	eventName � �� ���
�� 
FCct � o   b c���� "0 purchasecontext purchaseContext��  ��   ~  � � � I  j |���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   l m��
�� 
FCac � �� ���
�� 
prdt � K   n x � � �� � �
�� 
pnam � b   o t � � � m   o r � � � � � " G e t   t h e   S i g n   f o r   � o   r s���� 0 	eventname 	eventName � �� ���
�� 
FCct � o   u v���� "0 purchasecontext purchaseContext��  ��   �  ��� � I  } ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m    ���
�� 
FCac � �� ���
�� 
prdt � K   � � � � �� � �
�� 
pnam � b   � � � � � m   � � � � � � �  O r d e r   f o r   � o   � ����� 0 	eventname 	eventName � �� ���
�� 
FCct � o   � ����� "0 purchasecontext purchaseContext��  ��  ��   { o   S T���� 0 
parenttask 
parentTask��   f o   > ?���� 0 proj  ��   W o   * +���� 0 fld  ��   1 1    ��
�� 
FCDo / m      � ��                                                                                  OFOC  alis    X  Macintosh HD               ��&�H+     MOmniFocus.app                                                   ��c�Dv        ����  	                Applications    ���      �(V       M  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��       �� � � ���   � ����
�� .aevtoappnull  �   � ****�� *0 createomnifocustask createOmniFocusTask � �� ���� � ���
�� .aevtoappnull  �   � ****��  ��   �   �  �� ��������
�� 
dtxt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� *0 createomnifocustask createOmniFocusTask�� ���l O*��,k+  � �� +���� � ����� *0 createomnifocustask createOmniFocusTask�� �� ���  �  ���� 0 	eventname 	eventName��   � ������������ 0 	eventname 	eventName�� "0 purchasecontext purchaseContext�� 0 fld  �� 0 proj  �� 0 
parenttask 
parentTask �  ����� ��� A� S�~ b�}�|�{�z�y�x � � �
�� 
FCDo
�� 
FCct �  
�� 
pnam
� 
FCAr
�~ 
FCpr
�} 
kocl
�| 
FCac
�{ 
prdt
�z 
FCsq�y 
�x .corecrel****      � null�� �� �*�, �*�k/�[�,\Z�81E�O*�k/�[�,\Z�81E�O� e*�k/�[�,\Z�81E�O� P*�����e�� E�O� :*����a �%��� O*����a �%��� O*����a �%��� UUUUU ascr  ��ޭ