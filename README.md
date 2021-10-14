Program name: UnitConversion<br />

Introduction:<br />
A generalized program for unit ocnversion in Julia DataFrames. The function will change the original dataframe. There's no need to assign the result to a new variable.<br />

Implementation:<br />
include("UnitConversion.jl")<br />
unit_converison!(df1,value_col,unit_col,from_unit,to_unit,rate1)<br />
