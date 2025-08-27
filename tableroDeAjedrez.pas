program tableroDeAjedrez;
var
    fila, columna: integer;
begin
    for fila := 1 to 8 do
        begin
            for columna := 1 to 8 do
                begin
                    if (fila + col) mod 2 = 0 then
                        write('|__|')
                    else
                        write('__');
                end;
            writeln;
        end;
end.