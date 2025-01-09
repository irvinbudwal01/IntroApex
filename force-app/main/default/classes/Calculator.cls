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

    public static Integer Calculate(String s) {
        
        List<String> expression = s.split(' ');
        
        Integer result = 0;

        Integer left = 0;

        Integer right = 0;

        String operation = '';

        for(Integer i = 0; i < expression.size(); i++) {
            if(expression[i] == '+' && expression[i] == '-' && expression[i] == '*' && expression[i] == '/') {
                operation = expression[i];
                // Integer offset = 0;
                // while(!expression[i - offset].isNumeric()) {
                //     offset--;
                // }
                // left = expression.substring(i - offset, i);
                // offset = 0;
                // while(!expression[i + offset].isNumeric()) {
                //     offset++;
                // }
                // right = expression.substring(i, i + offset + 1);
                left = Integer.valueOf(expression[i - 1]);
                right = Integer.valueOf(expression[i + 1]);

                if(operation == '+') {
                    result += Add(left, right);
                }
                else if(operation == '-') {
                    result -= Add(left, -right);
                }
                else if(operation == '*') {
                    result += Multiply(left, right);
                }
                else if(operation == '/') {
                    result -= Divide(left, right);
                }
            }
        }

        return result;
    }
}