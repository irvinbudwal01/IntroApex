public with sharing class Calculator {
    public Calculator() {
        
    }

    public static Integer Add(Integer a, Integer b) {
        return a + b;
    }

    public static Integer Multiply(Integer a, Integer b) {
        Integer toReturn = 0;
        
        for(Integer i = 0; i < b; i++) {
            toReturn = Add(a, toReturn);
        }

        return toReturn;
    }

    public static Integer Divide(Integer a, Integer b) {
        if(b == 0) {
            return null; //requires testing
        }

        Integer toReturn = 0;

        while(a >= b) {
            a = Add(a, -b);
            toReturn += 1;
        }
        
        return toReturn;
    }

    public static Integer Mod(Integer a, Integer b) {
        if(b == 0) {
            return null; //requires testing
        }

        Integer toReturn = 0;

        while(a >= b) {
            a = Add(a, -b);
        }
        
        return Math.abs(a);
    }
}