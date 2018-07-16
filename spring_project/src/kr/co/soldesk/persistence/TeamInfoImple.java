package kr.co.soldesk.persistence;

import java.util.List;

import kr.co.soldesk.domain.TeamInfoDTO;
import kr.co.soldesk.domain.TeamRegDTO;

public interface TeamInfoImple {
	
	public List<TeamInfoDTO> myTeamInfo(int no);
	public TeamInfoDTO myTeamInfo_user(int no);
	public List<TeamInfoDTO> teamInfoByEvent(TeamInfoDTO teaminfoDTO);
	public List<TeamInfoDTO> teamInfoByEventLoc(TeamInfoDTO teaminfoDTO);
	public TeamInfoDTO teamCount(TeamInfoDTO teamInfoDTO);

}
