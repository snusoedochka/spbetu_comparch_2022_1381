
; HELLO1.ASM -  ��饭��� ����� �祡��� �ணࠬ�� ���.ࠡ. N1
;               �� ���樯���� "���⥪��� ��������"
; *****************************************************************
; �����祭��: �ணࠬ�� �ନ��� � �뢮��� �� ��࠭ �ਢ���⢨�
;             ���짮��⥫� � ������� �㭪樨 ��� "�뢮� ��ப�"
;             (����� 09 ���뢠��� 21h), �����:
;              - ���ᯥ稢��� �뢮� �� ��࠭ ��ப� ᨬ�����,
;                �����稢��饩�� ������ "$";
;              - �ॡ�� ������� � ॣ���� ah ����� �㭪樨=09h,
;                � � ॣ���� dx -  ᬥ饭��  ����  �뢮�����
;                ��ப�;
;              - �ᯮ���� ॣ����  ax  �  �� ��࠭�� ���
;                ᮤ�ন���.
; ******************************************************************

   DOSSEG                                      ; ������� ᥣ���⮢ ��� ���
   .MODEL  SMALL                               ; ������ �����-SMALL(�����)
   .STACK  100h                                ; �⢥�� ��� �⥪ 256 ����
   .DATA                                       ; ��砫� ᥣ���� ������
Greeting  LABEL  BYTE                          ; �����  �ਢ���⢨�
   DB 'Vas privetstvuet st.gr. 1381 - Demchuk P.D.',13,10,'$'
   .CODE                                ; ��砫� ᥣ���� ����
   mov  ax, @data                        ; ����㧪� � DS ���� ��砫�
   mov  ds, ax                           ; ᥣ���� ������
   mov  dx, OFFSET Greeting              ; ����㧪� � dx ᬥ饭��
                                        ; ���� ⥪�� �ਢ���⢨�
DisplayGreeting:
   mov  ah, 9                            ; # �㭪樨 ��� ���� ��ப�
   int  21h                             ; �뢮� �� ��࠭  �ਢ���⢨�
   mov  ah, 4ch                          ; # �㭪樨 ��� �����襭�� �ணࠬ��
   int  21h                             ; �����襭�� �ணࠬ�� � ��室 � ���
   END
