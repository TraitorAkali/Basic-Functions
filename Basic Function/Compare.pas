var a, b : ansistring;

function Compare(a,b:ansistring):byte;
begin
    while length(a)<length(b) do a:=a+'0';
    while length(b)<length(a) do b:=b+'0';
    if a > b then exit(1);
    if a < b then exit(-1);
    exit(0);
end;

begin
    readln(a);
    readln(b);
    writeln(Compare(a,b));
end.
