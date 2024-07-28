import 'dart:html';
import 'dart:js' as js;

void main() {
  CanvasElement canvas = querySelector('#signatureCanvas') as CanvasElement;
  CanvasRenderingContext2D ctx = canvas.getContext('2d') as CanvasRenderingContext2D;
  
  bool isDrawing = false;
  num lastX = 0;
  num lastY = 0;

  canvas.onMouseDown.listen((MouseEvent e) {
    isDrawing = true;
    [lastX, lastY] = [e.offset.x, e.offset.y];
  });

  canvas.onMouseMove.listen((MouseEvent e) {
    if (!isDrawing) return;
    ctx.beginPath();
    ctx.moveTo(lastX, lastY);
    ctx.lineTo(e.offset.x, e.offset.y);
    ctx.stroke();
    [lastX, lastY] = [e.offset.x, e.offset.y];
  });

  canvas.onMouseUp.listen((MouseEvent e) {
    isDrawing = false;
  });

  canvas.onMouseLeave.listen((MouseEvent e) {
    isDrawing = false;
  });

  querySelector('#clearButton')!.onClick.listen((Event e) {
    ctx.clearRect(0, 0, canvas.width!, canvas.height!);
  });

  querySelector('#saveButton')!.onClick.listen((Event e) {
    final dataUrl = canvas.toDataUrl('image/png');
    js.context.callMethod('open', [dataUrl, '_blank']);
  });
}