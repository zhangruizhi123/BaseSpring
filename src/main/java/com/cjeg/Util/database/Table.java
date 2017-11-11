package com.cjeg.Util.database;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Table implements Serializable{
	//表名
	private String name;
	//主键
	private String primaryKey;
	//有多少列
	private int columnSize;
	//列名
	private List<String>columnName=new ArrayList<String>();
	//列对应的类型
	private List<String>columnType=new ArrayList<String>();
	
	private List<Integer>columnLength=new ArrayList<Integer>();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrimaryKey() {
		return primaryKey;
	}
	public void setPrimaryKey(String primaryKey) {
		this.primaryKey = primaryKey;
	}
	public int getColumnSize() {
		return columnSize;
	}
	public void setColumnSize(int columnSize) {
		this.columnSize = columnSize;
	}
	
	/**
	 * 添加一列
	 * @param name
	 * @param type
	 * @param length
	 */
	public void addColumn(String name,String type,Integer length){
		columnName.add(name);
		columnType.add(type);
		columnLength.add(length);
	}
	/**
	 * 获取列名
	 * @param index
	 * @return
	 */
	public String getColumnName(int index){
		return columnName.get(index);
	}
	
	public List<String> getColumnName(){
		return columnName;
	}
	/**
	 * 获取列的类型
	 * @param index
	 * @return
	 */
	public String getColumnType(int index){
		return columnType.get(index);
	}
	public List<String> getColumnType(){
		return columnType;
	}
	
	/**
	 * 获取列的长度
	 * @param index
	 * @return
	 */
	public Integer getColumnLength(int index){
		return columnLength.get(index);
	}
	public List<Integer> getColumnLength(){
		return columnLength;
	}
	
	public void setColumnName(List<String> columnName) {
		this.columnName = columnName;
	}
	public void setColumnType(List<String> columnType) {
		this.columnType = columnType;
	}
	public void setColumnLength(List<Integer> columnLength) {
		this.columnLength = columnLength;
	}
	
	
}
