*&---------------------------------------------------------------------*
*& Include          ZTEST_ALV_APP_MODEL
*&---------------------------------------------------------------------*
CLASS lcl_model DEFINITION.
  PUBLIC SECTION.
    TYPES:
      tr_matnr     TYPE RANGE OF matnr,
      tt_materials TYPE STANDARD TABLE OF mara WITH DEFAULT KEY.
    METHODS:
      constructor IMPORTING ir_matnr TYPE tr_matnr,
      read_materials
        RETURNING VALUE(ro_instance) TYPE REF TO lcl_model,
      get_materials
        RETURNING VALUE(rt_materials) TYPE REF TO tt_materials.

  PRIVATE SECTION.
    DATA:
      mr_matnr     TYPE tr_matnr,
      mt_materials TYPE REF TO tt_materials.
ENDCLASS.

CLASS lcl_model IMPLEMENTATION.
  METHOD constructor.
    mr_matnr = ir_matnr.
    mt_materials = NEW #( ).
  ENDMETHOD.

  METHOD read_materials.
    ro_instance = me.

    CLEAR mt_materials->*.
    SELECT * FROM mara WHERE matnr IN @mr_matnr
      INTO TABLE @mt_materials->*.
  ENDMETHOD.

  METHOD get_materials.
    rt_materials = mt_materials.
  ENDMETHOD.
ENDCLASS.
