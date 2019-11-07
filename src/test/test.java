package test;

import Dao.IODao;
import Util.Md5Util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class test {
    public static void main(String[] args) {
        List<Map<String, Integer>> lists = new ArrayList<>();
        IODao ioDao = new IODao();
        lists = ioDao.countBook();

        for (Map<String, Integer> map : lists) {
            System.out.println(map);
        }

        String str = "32453";
        System.out.println(str);
        str = Md5Util.getMD5String(str);
        System.out.println(str);
    }
}
