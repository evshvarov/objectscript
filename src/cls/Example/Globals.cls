
Class Example.Globals
{
        

/// this method expects from global in a form: 
/// from(index)=value
/// and sets the inverted list in a form:
/// to(value)=index


ClassMethod InvertList(from, to) As %Status
{

    set iter=$o(@from@(""))
    while iter'="" {
        set value=@from@(iter)
        set @to@(value)=iter
        set iter=$O(@from@(iter))
        }
}

ClassMethod ArraySampleTest() As %Status
{
        set arr=$Na(^A)
        kill @arr
        for i=1:1:10 {
            set @arr@(i)=i
            }
        w "Initial array:",!
        zw @arr
        d ..ArraySample(arr)
        w !,"Multiplied arrays:",!
        zw @arr
}

/// This method loops through an array and multiplies all the values of keys  by 2
/// Method accepts list variable which has the name of an array
/// list("a")=1
/// list("b")=2
/// ...
/// list("z")=n
/// list is an $Name of array 
ClassMethod ArraySample(list) As %Status
{
        set key=$Order(@list@("")) //get initial key
        while key'="" {
            set @list@(key)=@list@(key)*2 // multiply all the keys in a list
            set key=$Order(@list@(key))
        }
}

}
