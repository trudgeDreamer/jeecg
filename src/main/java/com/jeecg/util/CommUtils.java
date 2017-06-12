package com.jeecg.util;

import java.util.ArrayList;
import java.util.List;

public class CommUtils {

	/**
	 * 生成随机数工具类
	 * @param min 最小值
	 * @param max 最大值
	 * @param n 随机数总数
	 * @return
	 */
	public static List<Integer> randomCommon(int min, int max, int n) {
		if (n > (max - min + 1) || max < min) {
			return null;
		}
		List<Integer> list = new ArrayList<Integer>();
		int[] result = new int[n];
		int count = 0;
		while (count < n) {
			int num = (int) (Math.random() * (max - min)) + min;
			boolean flag = true;
			for (int j = 0; j < n; j++) {
				if (num == result[j]) {
					flag = false;
					break;
				}
			}
			if (flag) {
				result[count] = num;
				list.add(num);
				count++;
			}
		}
		return list;
	}
}
