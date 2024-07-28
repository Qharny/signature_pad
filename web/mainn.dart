import 'dart:html';

void main() {
  CanvasElement canvas = querySelector('#signatureCanvas') as CanvasElement;
  CanvasRenderingContext2D ctx = canvas.getContext('2d') as CanvasRenderingContext2D;
  
  bool isDrawing = false;
  num lastX = 0;
  num lastY = 0;

  void startDrawing(Event e) {
    isDrawing = true;
    MouseEvent mouseEvent = e as MouseEvent;
    lastX = mouseEvent.offset.x;
    lastY = mouseEvent.offset.y;
  }

  void draw(Event e) {
    if (!isDrawing) return;
    MouseEvent mouseEvent = e as MouseEvent;
    
    ctx.beginPath();
    ctx.moveTo(lastX, lastY);
    ctx.lineTo(mouseEvent.offset.x, mouseEvent.offset.y);
    ctx.stroke();

    lastX = mouseEvent.offset.x;
    lastY = mouseEvent.offset.y;
  }

  void stopDrawing(Event e) {
    isDrawing = false;
  }

  canvas.onMouseDown.listen(startDrawing);
  canvas.onMouseMove.listen(draw);
  canvas.onMouseUp.listen(stopDrawing);
  canvas.onMouseLeave.listen(stopDrawing);
}