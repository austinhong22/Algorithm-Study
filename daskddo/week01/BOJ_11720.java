package week01;

import java.util.Scanner;

public class BOJ_11720 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();

        char[] arr = new char[n];

        String x = sc.next();

        for (int i = 0; i < n; i++) {
            arr[i] = x.charAt(i);
        }

        int sum = 0;

        for (int i = 0; i < n; i++) {
            // char -> int 로 변형
            sum += arr[i] - '0';
        }
        System.out.println(sum);
    }
}
