package com.program.vo;

public class cycleInfo {
	
	private int pid;
	private int ps_id;
	private String ps_name;
	private String ps_begin;
	private String ps_close;
	private int ps_zhuangtai;//0表示未评估，1表示正评估，2表示已经评估
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getPs_id() {
		return ps_id;
	}
	public void setPs_id(int psId) {
		ps_id = psId;
	}
	public String getPs_name() {
		return ps_name;
	}
	public void setPs_name(String psName) {
		ps_name = psName;
	}
	public String getPs_begin() {
		return ps_begin;
	}
	public void setPs_begin(String psBegin) {
		ps_begin = psBegin;
	}
	public String getPs_close() {
		return ps_close;
	}
	public void setPs_close(String psClose) {
		ps_close = psClose;
	}
	public int getPs_zhuangtai() {
		return ps_zhuangtai;
	}
	public void setPs_zhuangtai(int psZhuangtai) {
		ps_zhuangtai = psZhuangtai;
	}
	

}
