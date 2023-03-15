public with sharing class circleClass {
    Decimal radius;
    final Decimal pi;
    
    public circleClass(){
        this.radius = 1;
        this.pi = 3.1416;
    }

    public circleClass(Decimal radius1, Decimal pi1){
        this.radius = radius1;
        this.pi = pi1;
    }

    public void show(){
        Decimal result = 2 * radius * pi; 
        System.debug(result);
    }
}

//circleClass obj = new circleClass();
//obj.show
//circleClass obj = new circleClass(2, 3.14);
//obj.show   ()