# Presentación recurrente

Página que dibuja una presentación de cuatro láminas a partir de un Excel y la
exporta a PDF, PowerPoint y PNG.

- Aquí solo está el cascarón. No hay datos ni textos de la presentación: todo
  viene del Excel que se carga (pestañas `DATOS`, `RANKING` y `TEXTOS`).
- El Excel se lee en el navegador y no se envía a ningún servidor.
- Para publicar un cambio: `publicar.bat`.

Usa [PptxGenJS](https://github.com/gitbrent/PptxGenJS) (licencia MIT) para
armar el archivo de PowerPoint.
