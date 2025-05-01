package week01;

import java.util.*;

public class BOJ_1546 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();

        Integer[] list = new Integer[n];
        for (int i = 0; i < n; i++) {
            list[i] = sc.nextInt();
        }

        Arrays.sort(list, Collections.reverseOrder());

        int M = list[0];

        float[] arr = new float[n];
        for (int i = 0; i < n; i++) {
            arr[i] = (float) list[i] / M * 100;
        }

        float sum = 0;

        for (int i = 0; i < n; i++) {
            sum += arr[i];
        }

        System.out.println(sum/n);
    }
}
