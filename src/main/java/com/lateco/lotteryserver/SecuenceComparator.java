package com.lateco.lotteryserver;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import com.google.common.collect.HashMultiset;

public class SecuenceComparator {
	
	public static boolean simpleComparator(int[] array1, int[] array2) {
		if (array1.length != array2.length) {
			return false;
		} else {
			Arrays.sort(array1);
			Arrays.sort(array2);
			return Arrays.equals(array1, array2);
		}
	}
	
	public static int countComparator(int[] array1, int[] array2) {
		List<Integer> counted = new ArrayList<Integer>();
		for (int i = 0; i < 6; i++) {
			for (int j = 0; j < 6; j++) {
				if (array1[i] == array2[j] && !counted.contains(j)) {
					counted.add(j);
				}
			}
		}	
		return counted.size();
	}

}
