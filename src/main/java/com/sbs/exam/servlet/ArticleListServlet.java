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
import java.util.List;
import java.util.Map;

@WebServlet("/article/list")
public class ArticleListServlet extends HttpServlet {

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

            int page = 1;
            if(req.getParameter("page") != null && req.getParameter("page").length() !=0){
                page = rq.getIntParam("page",0);
            }



            int itemInAPage = 10;
            int limitFrom = (page -1) * itemInAPage;

            SecSql sql = new SecSql();
            sql.append("SELECT COUNT(*) AS cnt ");
            sql.append("FROM article");

            int totalCount = DBUtil.selectRowIntValue(conn, sql);
            int totalPage = (int)Math.ceil((double) totalCount/itemInAPage);


            sql = new SecSql();
            sql.append("SELECT * ");
            sql.append("FROM article");
            sql.append("ORDER BY id DESC");
            sql.append("LIMIT ?, ?",limitFrom,itemInAPage);


            List<Map<String, Object>> articleRows = DBUtil.selectRows(conn, sql);

            req.setAttribute("articleRows", articleRows);
            req.setAttribute("page",page);
            req.setAttribute("totalPage",totalPage);
            rq.jsp("../article/list");

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


