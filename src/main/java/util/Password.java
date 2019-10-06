package util;

import java.util.Base64;
import java.util.Random;

public class Password {

	
  	public static String MD5(String md5) {
		try {
			java.security.MessageDigest md = java.security.MessageDigest.getInstance("MD5");
			byte[] array = md.digest(md5.getBytes());
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < array.length; ++i) {
				sb.append(Integer.toHexString((array[i] & 0xFF) | 0x100).substring(1, 3));
			}
			return sb.toString();
		} catch (java.security.NoSuchAlgorithmException e) {
		}
		return null;
	}
  
  public static String encryption(String data, int i) {
		byte[] array = null;
		Random rd = new Random();
		int ri = rd.nextInt(899) + 100;
		for (int j = 0; j < i; j++) {
			array = Base64.getEncoder().encode(data.getBytes());
			data = new String(array);
		}
		String encrypted = new String(array) + MD5("" + ri);
		System.out.println("encrypted : " + encrypted);
		return encrypted;
	}

	public static String decrypt(String data, int i) {
		byte[] array = null;
		data = data.substring(0, data.length() - 32);
		for (int j = 0; j < i; j++) {
			array = Base64.getDecoder().decode(data.getBytes());
			data = new String(array);
		}
		String decoding = new String(array);
		System.out.println("decoding : " + decoding);
		return decoding;
	}
}
