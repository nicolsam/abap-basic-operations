*&---------------------------------------------------------------------*
*& Report ZOPERATIONS
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zoperations.

INCLUDE zoperationstop.
INCLUDE zoperationsscreen.
INCLUDE zoperationsform.

START-OF-SELECTION.

  "Calculate from user's inputed value
  PERFORM CALCULATE.

  "FORM to verify whether result is even or odd
  PERFORM EVEN_ODD.
