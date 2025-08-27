program volcan;
var
    espacios: integer = 32;
    asteriscos: integer = 2;
    contador: integer = 1;
    aux: integer = 1;
    i, n: integer;

begin
        
    for i := 1 to 6 do
        begin
            for n := espacios downto 1 do
                write(' ');
            for n := 1 to asteriscos do
                write('*');
            writeln;
            espacios := espacios-(asteriscos-aux);
            asteriscos := asteriscos*2;
            aux := aux + i;
        end;
end.