ClassMethod Example.DataStructures() As %Status
{

ClassMethod GetMonthList() As %List
{
    Return $Listfromstring("January,February,March,April,May,June,July,August,September,October,November,December")
}

ClassMethod MonthListUsage()
{
    set monthList=..GetMonthList()

    // get the particular value by index
    w "Month N5 is ",$Listget(monthlist,5)

    // work with all entries of the list
    set iter=0,id=0
    while $Listnext(monthList,iter,month) {
        w $seq(id)," month is ",month,!
    }
}

ClassMethod MonthGlobalSetup(ad)
{
    for i="January","February","March","April","May","June","July","August","September","October","November","December" {
        s @ad@($I(@ad))=i
    }
}

ClassMethod MonthGlobalUsage()
{
    set ad=$na(^Month) k @ad
    d ..MonthGlobalSetup(ad)

    // get the particular value by index
    W "Month N5 is ",@ad@(5)

    // work with all entries of the global level
    set monthId=$Order(@ad@(""))
    while monthId'="" {
        w monthId," month is ",@ad@(monthId),!
        set monthId=$Order(@ad@(monthId))
    }
}
    
}