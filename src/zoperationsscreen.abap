*&---------------------------------------------------------------------*
*& Include          ZOPERATIONS5SCREEN
*&---------------------------------------------------------------------*

SELECTION-SCREEN BEGIN OF BLOCK group WITH FRAME TITLE TEXT-001.
PARAMETERS: p_num1 TYPE i.
PARAMETERS: p_num2 TYPE i.

SELECTION-SCREEN SKIP 1.

PARAMETERS: p_sum RADIOBUTTON GROUP op DEFAULT 'X'.
PARAMETERS: p_minus RADIOBUTTON GROUP op.
PARAMETERS: p_multi RADIOBUTTON GROUP op.
PARAMETERS: p_divide RADIOBUTTON GROUP op.
SELECTION-SCREEN END OF BLOCK group.
