Class Ideal.StoredData Extends %Persistent
{

Property StringData As %String;

ClassMethod AddRecords(records As %Integer = 10) As %Status
{
    set counter=0
    while counter < records {
        set counter=$I(counter)
        set obj=..%New()
        set obj.StringData="Value"_counter
        do obj.%Save()
    }
}

ClassMethod DisplayAllRecords() As %Status
{
    set query = ##class(%SQL.Statement).%New()
    set status= query.%PrepareClassQuery("Ideal.StoredData","Extent")
    set rset=query.%Execute()

    while (rset.%Next()) {
    
    set obj=..%OpenId(rset.%Get("ID"))
    write "%ID=",rset.%Get("ID"),", StringData=",obj.StringData,!
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
