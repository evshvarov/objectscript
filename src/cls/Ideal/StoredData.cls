Class Ideal.StoredData Extends (%Persistent, %Populate)
{

Property StringData As %String;

ClassMethod AddRecords(records As %Integer = 10) As %Status
{
    set counter=0
    while counter < records {
        set obj=..%New()
        do obj.%Save()
        set counter=$I(counter)
    }
}

ClassMethod DeleteAllRecords() As %Status
{
    do ..%KillExtent()
}

ClassMethod GetPropertyForID(stId As %Integer) As %String
{
    set obj=..%OpenId(stId)
    return obj.StringData
}

ClassMethod GetColumnForID(stId As %Integer) As %String
{
    &sql(select StringData into :sd from Ideal.StoredData where id = :stId)
    return sd
}

Storage Default
{
<Data name="StoredDataDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>StringData</Value>
</Value>
</Data>
<DataLocation>^Ideal.StoredDataD</DataLocation>
<DefaultData>StoredDataDefaultData</DefaultData>
<IdLocation>^Ideal.StoredDataD</IdLocation>
<IndexLocation>^Ideal.StoredDataI</IndexLocation>
<StreamLocation>^Ideal.StoredDataS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
