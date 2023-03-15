public class Student {		//M9HW10
    public static void validateMarks(Integer marks){
       
        if(marks >= 0 && marks <= 100){
            System.debug('Your mark is ' + marks);
        }
        else if(marks == null){
            throw new StudentException('Invalid Marks');
        }
        else if(marks >100){
            throw new StudentException('Marks can’t be more than 100');
        }
        else{
            throw new StudentException('Marks can’t be negative');
        }
    }
}