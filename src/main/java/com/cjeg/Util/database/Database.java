package com.cjeg.Util.database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * 创建数据库类型
 * 
 * @author acer
 * 
 */
public class Database {

	private static Connection connect;
	private static Statement statement;
	// /////////////
	private String name = null;
	private String userName = null;
	private String password = null;
	private String host = null;
	private Integer port = null;
	private String url = null;
	private List<Table> table = new ArrayList<Table>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public Integer getPort() {
		return port;
	}

	public void setPort(Integer port) {
		this.port = port;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public List<Table> getTable() {
		return table;
	}


	/**
	 * 执行查询数据库操作
	 * 
	 * @throws Exception
	 */
	public void excute() throws Exception {
		if (url == null) {
			url = "jdbc:mysql://"
					+ host
					+ ":"
					+ port
					+ "/"
					+ name
					+ "?useUnicode=true&characterEncoding=utf8&autoReconnect=true&zeroDateTimeBehavior=convertToNull&allowMultiQueries=true";
		} else {
			String str[] = url.split("[:,//,?]");
			host = str[4];
			port = Integer.parseInt(str[5]);
			name = str[6];
		}
		Class.forName("com.mysql.jdbc.Driver");
		connect = DriverManager.getConnection(url, userName, password);
		statement = connect.createStatement();
		
		List<String> list=getTables(connect);
		DatabaseMetaData metaData=connect.getMetaData();
		for(String tab:list){
			Table table=new Table();
			table.setName(tab);
			
			ResultSet keySet=metaData.getPrimaryKeys(null, null, tab);
			if(keySet.next()){
				String key=keySet.getString("COLUMN_NAME");
				table.setPrimaryKey(key);
			}
			String sql="select * from "+tab;
			ResultSet result=statement.executeQuery(sql);
			ResultSetMetaData data= result.getMetaData();
			table.setColumnSize(data.getColumnCount());
			for(int i=1;i<=data.getColumnCount();i++){
				String name=data.getColumnName(i);
				String type=data.getColumnTypeName(i);
				int size=data.getColumnDisplaySize(i);
				table.addColumn(name, type, size);
			}
			this.table.add(table);
		}
	}
	
	private List<String> getTables(Connection connect) {
		List<String> list = new ArrayList<String>();
		try {
			DatabaseMetaData metaData = connect.getMetaData();
			ResultSet set = metaData.getTables(null, null, null,
					new String[] {});
			while (set.next()) {
				list.add(set.getString(3));
			}
		} catch (Exception e) {
		}
		return list;
	}
}
