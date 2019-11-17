public class Calculator {
    public static float calculate(float num_first, float num_second, char operator) {
        switch (operator) {
            case '+':
                return num_first + num_second;
            case '-':
                return num_first - num_second;
            case '*':
                return num_first * num_second;
            case '/':
                if (num_second != 0)
                    return num_first / num_second;
                else
                    throw new RuntimeException("Can't divide by zero");
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
