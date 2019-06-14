var a, b : ansistring;

function Compare(a,b:ansistring):byte;
begin
    while length(a)<length(b) do a:=a+'0';
    while length(b)<length(a) do b:=b+'0';
    if a > b then exit(1);
    if a < b then exit(-1);
    exit(0);
end;

function Sub(a,b:ansistring);
var a, borrow, i : integer;
    c            : ansistring;
begin
    //So sanh neu ra so am
    if Compare(a,b) = -1 then
        begin
            tmp:=a;
            a:=b;
            b:=tmp;
            ok:=true;
        end
    else ok:=false;
    
        
      
end;

begin
    readln(a);
    readln(b);
    writeln(Sub(a,b));
end.
