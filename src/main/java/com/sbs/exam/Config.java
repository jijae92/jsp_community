package com.sbs.exam;

public class Config {
    public static String getDBUrl(){
        return "jdbc:mysql://127.0.0.1:3306/jsp_community?useUnicode=true&characterEncoding=utf8&autoReconnect=true&serverTimezone=Asia/Seoul&useOldAliasMetadataBehavior=true&zeroDateTimeNehavior=convertToNull";
    }

    public static String getDBId(){
        return "jijae92";
    }
    public static String getDBPw(){
        return "tiger";
    }
    public static String getDriverClassName(){
        return "com.mysql.jdbc.Driver";
    }
}
