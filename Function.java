package com.company;

import java.util.Arrays;
import java.util.Collections;
import java.util.Random;

public class Function {
    public static Integer[][] Func(int n) {
        Random random = new Random();
        int[] arrSizes = new Random()
                .ints(1, n + 5)
                .distinct()
                .limit(n)
                .toArray();
        Integer[][] returnedArray = new Integer[n][];

        for (int i = 0; i < n; i++) {
            Integer[] array = new Integer[arrSizes[i]];

            for (int j = 0; j < array.length; j++) {
                array[j] = random.nextInt();
            }


            if ((i + 1) % 2 == 0) {
                Arrays.sort(array);
            } else {
                Arrays.sort(array, Collections.reverseOrder());
            }

            returnedArray[i] = array;
        }

        return returnedArray;
    }
}