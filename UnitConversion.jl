using DataFrames, XLSX, Pipe

function unit_converison!(df1::DataFrame,value_col::Symbol,unit_col::Symbol,from_unit::String,to_unit::String,rate1::Float64)
    recode!(df1[!,unit_col],missing=>"missing")
    df1[!,value_col][df1[!,unit_col] .== from_unit]=@pipe df1[!,value_col][df1[!,unit_col] .== from_unit] ./ rate1 |> round.(_,digits=2)
    recode!(df1[!,unit_col],from_unit=>to_unit)
end
