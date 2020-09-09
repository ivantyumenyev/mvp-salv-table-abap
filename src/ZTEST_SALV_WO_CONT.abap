*&---------------------------------------------------------------------*
*& Report ZTEST_SALV_WO_CONT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_salv_wo_cont.

INCLUDE ztest_salv_wo_cont_model.
INCLUDE ztest_salv_wo_cont_view.
INCLUDE ztest_salv_wo_cont_presenter.
INCLUDE ztest_salv_wo_cont_top.
INCLUDE ztest_salv_wo_cont_sel.

START-OF-SELECTION.
  NEW lcl_presenter(
    io_model = NEW lcl_model( s_matnr[] )
    io_view  = NEW lcl_view( ) )->run( ).
