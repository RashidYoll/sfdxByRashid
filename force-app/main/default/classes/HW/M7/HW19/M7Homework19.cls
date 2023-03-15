public class M7Homework19 {
    public static void show(){
        
        Account acc1 = new Account(Name = 'ABC Corp', Website = 'www.abcCorp.com', Phone = '+765222222');
        INSERT acc1;
        
        Account acc2 = new Account(Name = 'ABC Corporations', Website = 'www.abcCorporations.com', Phone = '+765999999');
        INSERT acc2;
        
        MERGE acc2 acc1;
    }
}