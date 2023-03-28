package com.sbs.exam.servlet;


import com.sbs.exam.Rq;
import com.sbs.exam.util.DBUtil;
import com.sbs.exam.util.SecSql;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/article/doDelete")
public class ArticleDoDeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Rq rq = new Rq(req, resp);

        // DB 연결시작
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.printf("[ClassNotFoundException 예외, %s]", e.getMessage());
            System.out.println("DB 드라이버 클래스 로딩 실패");
            return;
        }

        String url = "jdbc:mysql://127.0.0.1:3306/jsp_community?useUnicode=true&characterEncoding=utf8&autoReconnect=true&serverTimezone=Asia/Seoul&useOldAliasMetadataBehavior=true&zeroDateTimeNehavior=convertToNull";
        String user = "jijae92";
        String password = "tiger";

        try {
            conn = DriverManager.getConnection(url, user, password);

            int id = rq.getIntParam("id",0);

            SecSql sql = new SecSql();
            sql.append("DELETE ");
            sql.append("FROM article");
            sql.append("WHERE id = ?", id);
            DBUtil.delete(conn, sql);
            rq.appendBody(String.format("<script> alert('%d번 글이 삭제되었습니다.'); location.replace('list'); </script>",id));


        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (conn != null && !conn.isClosed()) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        // DB 연결 끝
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}


