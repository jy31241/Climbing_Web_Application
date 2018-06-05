package net.skhu.dto;

public class Mountain {
	int id;
	String mntnm;		//산명
	String areanm;		//산정보 소재지
	String aeatreason;	//명산 선정 이유
	String etccourse;	//산정보 주변 관광정보 기타코스 설명
	String details;		//산정보 내용
	int mntheight;		//산 정보 높이
	String tourisminf;	//주변관광정보설명
	String transport;	//대중교통 정보 설명
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMntnm() {
		return mntnm;
	}
	public void setMntnm(String mntnm) {
		this.mntnm = mntnm;
	}
	public String getAreanm() {
		return areanm;
	}
	public void setAreanm(String areanm) {
		this.areanm = areanm;
	}
	public String getAeatreason() {
		return aeatreason;
	}
	public void setAeatreason(String aeatreason) {
		this.aeatreason = aeatreason;
	}
	public String getEtccourse() {
		return etccourse;
	}
	public void setEtccourse(String etccourse) {
		this.etccourse = etccourse;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public int getMntheight() {
		return mntheight;
	}
	public void setMntheight(int mntheight) {
		this.mntheight = mntheight;
	}
	public String getTourisminf() {
		return tourisminf;
	}
	public void setTourisminf(String tourisminf) {
		this.tourisminf = tourisminf;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}


}
