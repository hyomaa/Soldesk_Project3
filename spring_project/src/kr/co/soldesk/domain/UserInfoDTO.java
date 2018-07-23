package kr.co.soldesk.domain;

public class UserInfoDTO {
	
	private int user_num;
	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_nicname;
	private String user_grade;
	private String user_phone;
	private String user_birth;
	private String user_location;
	private String user_profile;
	private String user_regdate;

	
	public UserInfoDTO() {
		super();
	}

	public UserInfoDTO(int user_num, String user_id, String user_pw, String user_name, String user_nicname,
			String user_grade, String user_phone, String user_birth, String user_location, String user_profile, String user_regdate) {
		super();
		this.user_num = user_num;
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_nicname = user_nicname;
		this.user_grade = user_grade;
		this.user_phone = user_phone;
		this.user_birth = user_birth;
		this.user_location = user_location;
		this.user_profile = user_profile;
		this.user_regdate = user_regdate;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_nicname() {
		return user_nicname;
	}

	public void setUser_nicname(String user_nicname) {
		this.user_nicname = user_nicname;
	}

	public String getUser_grade() {
		return user_grade;
	}

	public void setUser_grade(String user_grade) {
		this.user_grade = user_grade;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_location() {
		return user_location;
	}

	public void setUser_location(String user_location) {
		this.user_location = user_location;
	}

	public String getUser_profile() {
		return user_profile;
	}

	public void setUser_profile(String user_profile) {
		this.user_profile = user_profile;
	}

	public String getUser_regdate() {
		return user_regdate;
	}

	public void setUser_regdate(String user_regdate) {
		this.user_regdate = user_regdate;
	}


}
