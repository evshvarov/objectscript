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

}
