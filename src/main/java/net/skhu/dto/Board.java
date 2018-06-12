package net.skhu.dto;

public class Board {
	int id;
	String title;
	String createdDate;
	int views;
	int recommend;
	int boardType_id;
	int user_id;
	int region_id;
	String text;
	String startDate;
	String endDate;
	int person;
	int cost;
	int nowperson;
	int mountain_id;

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getRecommend() {
		return recommend;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}

	public int getBoardType_id() {
		return boardType_id;
	}

	public void setBoardType_id(int boardType_id) {
		this.boardType_id = boardType_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getRegion_id() {
		return region_id;
	}

	public void setRegion_id(int region_id) {
		this.region_id = region_id;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public int getPerson() {
		return person;
	}

	public void setPerson(int person) {
		this.person = person;
	}

	public int getCost() {
		return cost;
	}

	public void setCost(int cost) {
		this.cost = cost;
	}

	public int getNowperson() {
		return nowperson;
	}

	public void setNowperson(int nowperson) {
		this.nowperson = nowperson;
	}

	public int getMountain_id() {
		return mountain_id;
	}

	public void setMountain_id(int mountain_id) {
		this.mountain_id = mountain_id;
	}


}
