package com.wmanual.page;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import net.sourceforge.pinyin4j.PinyinHelper;

public class GenerateBrandPage {

	public static void main(String[] args) throws Exception {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/wmanual?"
				+ "user=root&password=root&useUnicode=true&characterEncoding=UTF8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url);
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			Statement stmt1 = conn.createStatement();

			File tv = new File("./src/main/webapp/WEB-INF/jsp/brands/haier.jsp");
			copyPage(stmt, stmt1, tv);
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
		}
	}

	public static void copyPage(Statement stmt, Statement stmt1, File file)
			throws Exception {
		if (file.isFile() && file.exists()) {

			String line;
			StringBuffer out = new StringBuffer();
			List<String> content = new ArrayList<String>();
			InputStreamReader read = new InputStreamReader(new FileInputStream(
					file), "UTF8");
			BufferedReader reader = new BufferedReader(read);
			while ((line = reader.readLine()) != null) {
				content.add(line);
			}

			String sql = "select id, name from wmanual_brand";
			String updateSql = "update wmanual_brand set link = '";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				try {
					long id = rs.getLong("id");
					String name = rs.getString("name");
					String pageName = PinyinUtil.getPinYinHeadChar(name);
					System.out.println(pageName);

					out.setLength(0);
					for (String c : content) {
						if (c != null && c.indexOf("window.brand") > 0) {
							c = "window.brand = '" + name + "';";
						}
						if (c != null && c.indexOf("<title>") > 0) {
							c = "<title>" + name + "说明书 ｜ 乐道说明书</title>";
						}
						out.append(c).append("\n");
					}

					outToFile(pageName, out.toString());

					System.out.println(updateSql + pageName + "' where id = "
							+ id);
					stmt1.executeUpdate(updateSql + pageName + "' where id = "
							+ id);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			reader.close();
			read.close();
		}
	}

	public static void outToFile(String pageName, String out) throws Exception {
		FileOutputStream fs = new FileOutputStream(new File(pageName + ".jsp"));
		PrintStream p = new PrintStream(fs);
		p.println(out);
	}

}