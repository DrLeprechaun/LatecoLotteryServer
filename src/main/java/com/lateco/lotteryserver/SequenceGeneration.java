package com.lateco.lotteryserver;

import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.StringUtils;

public class SequenceGeneration {
	
	private static final long MIN = 1;
	private static final long MAX1 = 49;
	private static final long MAX2 = 26;
	

	public static int[] randomSequence() {
		int[] seq = new int[6];
		for (int i = 0; i < 5; i++) {
			seq[i] = rnd(MIN, MAX1);
		}
		seq[5] = rnd(MIN, MAX2);
		return seq;
	}
	
	public static int rnd(long min, long max)
    {
            max -= min;
            final double random = Math.random();
            return (int) Math.round((random * max) + min);
    }
	
	public static String lotterySequenceToString(int[] arr) {
		return "'{" + StringUtils.join(ArrayUtils.toObject(arr), ",") + "}'";
	}
	
}
