{% macro usd_to_eur (col,des)%}

round({{col}}*0.86,{{des}})
{%endmacro%}