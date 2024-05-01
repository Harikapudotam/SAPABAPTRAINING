*&---------------------------------------------------------------------*
*& Report ZDPM_SUBADD
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZDPM_SUBADD.

INCLUDE ZD_ARITH.
PERFORM FACTORIAL USING P_L1 CHANGING P_L2.
WRITE :'THE FACTORIAL OF A NUM IS ', P_L2.
ULINE.

*&---------------------------------------------------------------------*
*& Form FACTORIAL
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*&      --> P_L1
*&      <-- P_L2
*&---------------------------------------------------------------------*
FORM factorial  USING    p_p_l1
                CHANGING p_p_l2.
  P_P_L2 = 1.
  WHILE ( P_P_L1 ) > 0.
  P_P_L2 = P_P_L2 * P_P_L1.
  P_P_L1 = P_P_L1 - 1.
  ENDWHILE.
ENDFORM.