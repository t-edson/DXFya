# DXFya
Librería en Object Pascal para el manejo de archivos en formato DXF

Unidad con rutinas para el manejo de archivos DXF.
También se incluyen los contenedores destinados a almacenar los diversos bloques usados.

Para cargar archivos DXF hay que crear una instancia de TDXFfile:

```
  dxfFile := TDXFfile.Create;
  dxfFile.ReadFromFile('prueba.dxf');
  if dxfFile.Er<>'' then begin
    //Some error
  end;
```

Las entidades leídas se alamacenan en la lista "dxfFile.entities":

