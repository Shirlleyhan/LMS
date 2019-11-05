package Util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Random;

public class Md5Util {
    public static String getMD5String(String str) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");

            md.update(str.getBytes());

            return new BigInteger(1, md.digest()).toString(16);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getRandomString(int length){
        String str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random=new Random();
        StringBuffer sb=new StringBuffer();
        for(int i=0;i<length;i++){
            int number=random.nextInt(62);
            sb.append(str.charAt(number));
        }
        return sb.toString();
    }

}
