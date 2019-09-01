Class Example.ObjectScript
{

Parameter Version = 1.0;

ClassMethod HelloWorld() As %String
{
    return "Hello World"
}

ClassMethod SystemInfo() As %String
{
    write $zd(3)
    return $zv
}

ClassMethod RussianToEnglish(russian = "привет") As %String
{
    set rus="абвгдезийклмнопрстуфхыэАБВГДЕЗИЙКЛМНОПРСТУФХЫЭьЬъЪ"
    set eng="abvgdeziyklmnoprstufhyeABVGDEZIYKLMNOPRSTUFHYE"
    set rus("ж")="zh"
    set rus("ц")="ts"
    set rus("ч")="ch"
    set rus("ш")="sh"
    set rus("щ")="shch"
    set rus("ю")="yu"
    set rus("я")="ya"
    set rus("Ж")="Zh"
    set rus("Ц")="Ts"
    set rus("Ч")="Ch"
    set rus("Ш")="Sh"
    set rus("Щ")="Shch"
    set rus("Ю")="Yu"
    set rus("Я")="Ya"
    
    set english=$tr(russian,rus,eng)

    set wow=$O(rus(""))
    while wow'="" {
        set english=$Replace(english,wow,rus(wow))
        set wow=$O(rus(wow))
    }
    return english
}

ClassMethod WriteToDevice()
{
    write "The version of the class: "_..#Version,!
    write "The version of the system: "_..SystemInfo()
}

ClassMethod FizzBuzz()
{
        f i=1:1:100 {
            s k=i
            f a=3,5,15 s:'(i#a) k=$CASE(a,3:"Fizz",5:"Buzz",:"FizzBuzz") 
            w k,!
        }
}

}
