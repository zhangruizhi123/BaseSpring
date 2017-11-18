package com.cjeg.web.commen.message;

public class Response<T> {
	//状态码0为成功
	private int flag=0;
	//返回信息
	private String msg;
	//分页总数
	private int total;
	//返回信息
	private T obj;
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public T getObj() {
		return obj;
	}
	public void setObj(T obj) {
		this.obj = obj;
	}
	
}
