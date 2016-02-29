package com.wmanual.jdbc.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManualJDBCService{

	private Logger log = LoggerFactory.getLogger(getClass());


	@Autowired
	private DataSource dataSource;

	public void excuteUpdate(String sql) throws SQLException {
		Connection conn = dataSource.getConnection();
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		conn.close();
	}

	public ResultSet executeQuery(String sql) {
		ResultSet resultSet = null;
		log.info("Run SQL:" + sql);
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			resultSet = pstmt.executeQuery();
			conn.close();
		} catch (SQLException e) {
			log.error("SQL failed:", e);
		} finally {
			log.info("excute sql: {}", "");
		}
		return resultSet;
	}
	
	public ResultSet countQuery(String sql) {
		ResultSet resultSet = null;
		log.info("Run SQL:" + sql);
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			resultSet = pstmt.executeQuery();
			conn.close();
		} catch (SQLException e) {
			log.error("SQL failed:", e);
		} finally {
			log.info("excute sql: {}", "");
		}
		return resultSet;
	}
	
	
	public ResultSet executeQueryPage(String sql, int pageSize, int pageNumber) {
		ResultSet resultSet = null;
		try {
			
			Connection conn = dataSource.getConnection();
			sql = sql + " limit " + pageSize * pageNumber + ", " + pageSize;
			log.info("Run SQL:" + sql);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			resultSet = pstmt.executeQuery();
			conn.close();
		} catch (SQLException e) {
			log.error("SQL failed:", e);
		} finally {
			log.info("excute sql: {}", "");
		}
		return resultSet;
	}	
	
}
