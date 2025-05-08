package week02;

import java.util.Scanner;

public class BOJ_11659 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int N = sc.nextInt();
        int M = sc.nextInt();

        int[] A = new int[N];
        int[] S = new int[N + 1];
        S[0] = 0;

        // 배열 A 값 입력
        for (int i = 0; i < N; i++) {
            int a = sc.nextInt();
            A[i] = a;
        }

        // 합 배열 S 값 입력
        for (int j = 1; j <= N; j++) {
            S[j] = S[j-1] + A[j-1];
        }

        int[] sum = new int[M];

        // 구간 합
        for (int i = 0; i < M; i++) {
            int a = sc.nextInt();
            int b = sc.nextInt();
            sum[i] = S[b] - S[a - 1];
        }

        sc.close();

        for (int i = 0; i < M; i++) {
            System.out.println(sum[i]);
        }
    }
}
