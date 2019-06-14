var a, b : ansistring;

function Add(a,b:ansistring):ansistring;
var sum, carry, i, x, y : integer;
    c                   : ansistring;
begin
    while length(a)<length(b) do a:='0'+a;
    while length(b)<length(a) do b:='0'+b;
    carry:=0;
    c:='';
    for i:=length(a) downto 1 do
    begin
        val(a[i],x);
        val(b[i],y);
        sum:=x+y+carry;
        carry:=sum div 10;
        sum:=sum mod 10;
        c:=chr(sum + 48)+c; //Theo ASCII thi '0' o vi tri 48 nen cong them 48 de ra duoc so do trong bang ma ASCII
    end;
    if carry > 0 then c:='1'+c;
    add:=c;    
end;

begin
    readln(a);
    readln(b);
    writeln(Add(a,b);
end.
