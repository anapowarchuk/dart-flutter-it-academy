class Retangulo{
  double left, top, width, height;

  Retangulo(this.left, this.top, this.width, this.height);

  double get right => left + width;
  set right(double value) => left = value - width;

  double get bottom => top + height;
  set bottom(double value) => bottom = value - height;

}