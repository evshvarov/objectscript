Class Ideal.ObjectScript
{

Parameter Version = 1.0;

ClassMethod HelloWorld() As %String
{
    return "Hello World!"
}

ClassMethod SystemInfo() As %String
{
    return $zv
}

ClassMethod WriteToDevice()
{
    write "The version of the class: "_..#Version,!
    write "The version of the system: "_..SystemInfo()
}

/// This method multiplies all the values for all the keys entries by 2
/// Method expects the coming array in a form
/// list("a")=1
/// list("b")=2
/// ...
/// list("z")=n
/// list is an $Name of array 
ClassMethod ArraySample(list) As %Status
{
    set key=$Order(@list@(""))
    while key'="" {
        set @list@(key)=@list@(key)*2
        set key=$Order(@list@(key))
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

}
