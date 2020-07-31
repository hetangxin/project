package com.meeting.dao;

import java.math.BigInteger;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        int n;
        Scanner sc = new Scanner(System.in);
        n = sc.nextInt();
        BigInteger ans = new BigInteger("1");
        for(Integer i = 1; i <= n; ++i) {
            ans = ans.multiply(new BigInteger(i.toString()));
        }
        ans = ans.pow(2);
        System.out.println(ans);
    }

}
