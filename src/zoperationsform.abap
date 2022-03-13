*&---------------------------------------------------------------------*
*& Include          ZOPERATIONSFORM
*&---------------------------------------------------------------------*

"Display operation's result requested by user
FORM result_display.
  WRITE result.
ENDFORM.

"Verify whether result is even or odd
FORM EVEN_ODD.

  IF p_num2 = 0 AND p_divide = 'X'.
    STOP.
  ELSE.
    IF result MOD 2 = 0.
      WRITE / 'Result is even'.
    ELSE.
      WRITE / 'Result is odd'.
    ENDIF.
  ENDIF.

ENDFORM.

FORM CALCULATE.

  "Sum operation if selected
  IF p_sum = 'X'.
    resultado = p_num1 + p_num2.
    PERFORM result_display.
  ENDIF.
  
  "Subtract operation if selected
  IF p_minus = 'X'.
    resultado = p_num1 - p_num2.
    PERFORM result_display.
  ENDIF.
  "Multiply operation if selected
  IF p_multi = 'X'.
    resultado = p_num1 * p_num2.
    PERFORM result_display.
  ENDIF.

  "Divide operation if selected
  IF p_divide = 'X'.

    TRY.
        "Checks if one of the number to be processed is equal to ZERO
        IF p_num2 = 0. 
          RAISE EXCEPTION TYPE cx_sy_zerodivide. "If the condition is true, the program throws an Exception.
        ENDIF.
        
        "If the condition is false, the program will run normally.
        result = p_num1 / p_num2.
        
        "Display result
        PERFORM result_display.


      CATCH cx_sy_zerodivide. "Exception caso um dos números a serem processados sejam iguais a ZERO
        WRITE 'Divisor to be processed by the program cannot be 0 (ZERO)'.

    ENDTRY.
  ENDIF.

ENDFORM.
