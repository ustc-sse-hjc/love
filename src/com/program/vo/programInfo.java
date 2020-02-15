package com.program.vo;

public class programInfo {
	private int pid;
	private String pname;
	private String pbegin;
	private String pclose;
	private String pmaker;
	private int pzhuangtai;//0方案未开启,1开启，2已开启。
	private int ptype;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPbegin() {
		return pbegin;
	}
	public void setPbegin(String pbegin) {
		this.pbegin = pbegin;
	}
	public String getPclose() {
		return pclose;
	}
	public void setPclose(String pclose) {
		this.pclose = pclose;
	}
	public String getPmaker() {
		return pmaker;
	}
	public void setPmaker(String pmaker) {
		this.pmaker = pmaker;
	}
	
	public int getPzhuangtai() {
		return pzhuangtai;
	}
	public void setPzhuangtai(int pzhuangtai) {
		this.pzhuangtai = pzhuangtai;
	}
	public int getPtype() {
		return ptype;
	}
	public void setPtype(int ptype) {
		this.ptype = ptype;
	}
	
	

}
