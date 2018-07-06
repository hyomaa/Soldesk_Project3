package kr.co.soldesk.domain;

public class MatchRegDTO {
	private int matchreg_num;
	private int team_num;
	private int user_num;
	private int stadium_num;
	private int matchreg_event;
	private String matchreg_date;
	private String matchreg_time;
	private int matchreg_status;
	private String matchreg_challenger;
	private String matchreg_result;
	
	public MatchRegDTO() {
		
	}

	public MatchRegDTO(int matchreg_num, int team_num, int user_num, int stadium_num, int matchreg_event,
			String matchreg_date, String matchreg_time, int matchreg_status, String matchreg_challenger,
			String matchreg_result) {
		super();
		this.matchreg_num = matchreg_num;
		this.team_num = team_num;
		this.user_num = user_num;
		this.stadium_num = stadium_num;
		this.matchreg_event = matchreg_event;
		this.matchreg_date = matchreg_date;
		this.matchreg_time = matchreg_time;
		this.matchreg_status = matchreg_status;
		this.matchreg_challenger = matchreg_challenger;
		this.matchreg_result = matchreg_result;
	}

	public int getMatchreg_num() {
		return matchreg_num;
	}

	public void setMatchreg_num(int matchreg_num) {
		this.matchreg_num = matchreg_num;
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public int getStadium_num() {
		return stadium_num;
	}

	public void setStadium_num(int stadium_num) {
		this.stadium_num = stadium_num;
	}

	public int getMatchreg_event() {
		return matchreg_event;
	}

	public void setMatchreg_event(int matchreg_event) {
		this.matchreg_event = matchreg_event;
	}

	public String getMatchreg_date() {
		return matchreg_date;
	}

	public void setMatchreg_date(String matchreg_date) {
		this.matchreg_date = matchreg_date;
	}

	public String getMatchreg_time() {
		return matchreg_time;
	}

	public void setMatchreg_time(String matchreg_time) {
		this.matchreg_time = matchreg_time;
	}

	public int getMatchreg_status() {
		return matchreg_status;
	}

	public void setMatchreg_status(int matchreg_status) {
		this.matchreg_status = matchreg_status;
	}

	public int getTeam_num() {
		return team_num;
	}

	public void setTeam_num(int team_num) {
		this.team_num = team_num;
	}

	public String getMatchreg_challenger() {
		return matchreg_challenger;
	}

	public void setMatchreg_challenger(String matchreg_challenger) {
		this.matchreg_challenger = matchreg_challenger;
	}

	public String getMatchreg_result() {
		return matchreg_result;
	}

	public void setMatchreg_result(String matchreg_result) {
		this.matchreg_result = matchreg_result;
	}
}
