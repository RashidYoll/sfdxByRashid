public with sharing class GeometryClass {
    final Decimal pi = 3.14;
    public void RectangleArea(Decimal value1, Decimal value2){
        Decimal result = value1*value2;
        System.debug(result);
    }
    public void CircleArea(Decimal radio){
       Decimal result = pi*radio*radio; 
       System.debug(result);
    }
    public void TriangleArea(Decimal value1, Decimal value2){
       Decimal result = (value1*value2)/2; 
       System.debug(result);
    }
}