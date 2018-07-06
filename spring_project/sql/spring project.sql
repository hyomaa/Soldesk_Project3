-- ȸ������
CREATE TABLE User_Info (
	USER_NUM      NUMBER         NOT NULL, -- ȸ����ȣ
	user_id       VARCHAR2(50)   NOT NULL, -- ID
	user_pw       VARCHAR2(20)   NOT NULL, -- PW
	user_name     VARCHAR2(20)   NOT NULL, -- �̸�
	user_nicname  VARCHAR2(50)   NOT NULL, -- �г���
	user_grade    VARCHAR2(20))  NOT NULL, -- ���
	user_phone    VARCHAR2(13)   NOT NULL, -- ��ȭ��ȣ
	user_birth    NUMBER(8)      NOT NULL, -- �������
	user_location VARCHAR2(70)   NOT NULL, -- ����
	user_profile  VARCHAR2(1000) NOT NULL, -- �����ʻ���
	user_regdate  DATE           NOT NULL  -- ��������
);

-- ȸ������ �⺻Ű
CREATE UNIQUE INDEX PK_User_Info
	ON User_Info ( -- ȸ������
		USER_NUM ASC -- ȸ����ȣ
	);

-- ȸ������
ALTER TABLE User_Info
	ADD
		CONSTRAINT PK_User_Info -- ȸ������ �⺻Ű
		PRIMARY KEY (
			USER_NUM -- ȸ����ȣ
		);

-- �Խ���
CREATE TABLE Board (
	BOARD_EVENT      NUMBER(1)      NOT NULL, -- ����
	BOARD_CATEGORY   NUMBER(2)      NOT NULL, -- �Խ��Ǻз�
	USER_NUM         NUMBER         NOT NULL, -- ȸ����ȣ
	board_num        NUMBER         NOT NULL, -- �Խñ۹�ȣ
	board_title      VARCHAR2(100)  NOT NULL, -- �Խñ�����
	board_writer     VARCHAR2(50)   NOT NULL, -- �۾���
	board_date       DATE           NOT NULL, -- �ۼ���
	board_contents   VARCHAR2(2000) NULL,     -- �Խñ۳���
	board_image      VARCHAR2(1000) NULL,     -- ÷������
	board_status     NUMBER(1)      NOT NULL, -- ����
	board_hits       NUMBER         NOT NULL, -- ��ȸ��
	board_nomination NUMBER         NOT NULL  -- ��õ��
);

-- �Խ��� �⺻Ű
CREATE UNIQUE INDEX PK_Board
	ON Board ( -- �Խ���
		BOARD_EVENT    ASC, -- ����
		BOARD_CATEGORY ASC, -- �Խ��Ǻз�
		USER_NUM       ASC  -- ȸ����ȣ
	);

-- �Խ���
ALTER TABLE Board
	ADD
		CONSTRAINT PK_Board -- �Խ��� �⺻Ű
		PRIMARY KEY (
			BOARD_EVENT,    -- ����
			BOARD_CATEGORY, -- �Խ��Ǻз�
			USER_NUM        -- ȸ����ȣ
		);

-- ������
CREATE TABLE Team_Info (
	TEAM_NUM      NUMBER       NOT NULL, -- ����ȣ
	team_name     VARCHAR2(50) NOT NULL, -- ����
	team_location VARCHAR2(50) NOT NULL, -- Ȱ������
	team_event    NUMBER(1)    NOT NULL, -- ����
	team_count    NUMBER(2)    NOT NULL, -- ������
	team_record   VARCHAR2(20) NOT NULL, -- ����
	team_score    NUMBER(5)    NOT NULL  -- ������
);

-- ������ �⺻Ű
CREATE UNIQUE INDEX PK_Team_Info
	ON Team_Info ( -- ������
		TEAM_NUM ASC -- ����ȣ
	);

-- ������
ALTER TABLE Team_Info
	ADD
		CONSTRAINT PK_Team_Info -- ������ �⺻Ű
		PRIMARY KEY (
			TEAM_NUM -- ����ȣ
		);

-- ���������
CREATE TABLE Stadium (
	STADIUM_NUM      NUMBER         NOT NULL, -- ������ȣ
	stadium_name     VARCHAR2(100)  NOT NULL, -- ������
	stadium_location VARCHAR2(300)  NOT NULL, -- �������ġ
	stadium_event    NUMBER(1)      NOT NULL, -- �����
	stadium_tel      VARCHAR2(13)   NOT NULL, -- ����ó
	stadium_date     VARCHAR2(20)   NOT NULL, -- �����
	stadium_time     VARCHAR2(50)   NOT NULL, -- ��ð�
	stadium_image    VARCHAR2(1000) NOT NULL  -- �̹���
);

-- ��������� �⺻Ű
CREATE UNIQUE INDEX PK_Stadium
	ON Stadium ( -- ���������
		STADIUM_NUM ASC -- ������ȣ
	);

-- ���������
ALTER TABLE Stadium
	ADD
		CONSTRAINT PK_Stadium -- ��������� �⺻Ű
		PRIMARY KEY (
			STADIUM_NUM -- ������ȣ
		);

-- ��û������
CREATE TABLE Challenger_list (
	match_challenger VARCHAR2(50) NULL -- ��û����
);

-- �����
CREATE TABLE Team_Reg (
	TEAMREG_NUM     NUMBER       NOT NULL, -- ����Ϲ�ȣ
	USER_NUM        NUMBER       NOT NULL, -- ȸ����ȣ
	TEAM_NUM        NUMBER       NOT NULL, -- ����ȣ
	teamreg_event   NUMBER(1)    NOT NULL, -- ������
	teamreg_positon VARCHAR2(20) NOT NULL  -- �����Ǽ���
);

-- ����� �⺻Ű
CREATE UNIQUE INDEX PK_Team_Reg
	ON Team_Reg ( -- �����
		TEAMREG_NUM ASC, -- ����Ϲ�ȣ
		USER_NUM    ASC, -- ȸ����ȣ
		TEAM_NUM    ASC  -- ����ȣ
	);

-- �����
ALTER TABLE Team_Reg
	ADD
		CONSTRAINT PK_Team_Reg -- ����� �⺻Ű
		PRIMARY KEY (
			TEAMREG_NUM, -- ����Ϲ�ȣ
			USER_NUM,    -- ȸ����ȣ
			TEAM_NUM     -- ����ȣ
		);

-- ȸ����������
CREATE TABLE USER_DETAIL (
);

-- ��Ī���
CREATE TABLE Match_Reg (
	MATCHREG_NUM        NUMBER       NOT NULL, -- ��Ī��Ϲ�ȣ
	TEAM_NUM            NUMBER       NOT NULL, -- ����ȣ
	USER_NUM            NUMBER       NOT NULL, -- ȸ����ȣ
	STADIUM_NUM         NUMBER       NOT NULL, -- ������ȣ
	matchreg_event      NUMBER(1)    NOT NULL, -- ����
	matchreg_date       DATE         NOT NULL, -- ��Ī��¥
	matchreg_time       VARCHAR2(20) NOT NULL, -- ���ð�
	matchreg_status     NUMBER(1)    NOT NULL, -- ����
	matchreg_challenger VARCHAR2(50) NULL,     -- �������
	matchreg_result     VARCHAR2(20) NULL      -- �����
);

-- ��Ī��� �⺻Ű
CREATE UNIQUE INDEX PK_Match_Reg
	ON Match_Reg ( -- ��Ī���
		MATCHREG_NUM ASC, -- ��Ī��Ϲ�ȣ
		TEAM_NUM     ASC, -- ����ȣ
		USER_NUM     ASC, -- ȸ����ȣ
		STADIUM_NUM  ASC  -- ������ȣ
	);

-- ��Ī���
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT PK_Match_Reg -- ��Ī��� �⺻Ű
		PRIMARY KEY (
			MATCHREG_NUM, -- ��Ī��Ϲ�ȣ
			TEAM_NUM,     -- ����ȣ
			USER_NUM,     -- ȸ����ȣ
			STADIUM_NUM   -- ������ȣ
		);

-- ������
CREATE TABLE CREATE_TEAM (
);

-- �Խ���
ALTER TABLE Board
	ADD
		CONSTRAINT FK_User_Info_TO_Board -- ȸ������ -> �Խ���
		FOREIGN KEY (
			USER_NUM -- ȸ����ȣ
		)
		REFERENCES User_Info ( -- ȸ������
			USER_NUM -- ȸ����ȣ
		);

-- �����
ALTER TABLE Team_Reg
	ADD
		CONSTRAINT FK_User_Info_TO_Team_Reg -- ȸ������ -> �����
		FOREIGN KEY (
			USER_NUM -- ȸ����ȣ
		)
		REFERENCES User_Info ( -- ȸ������
			USER_NUM -- ȸ����ȣ
		);

-- �����
ALTER TABLE Team_Reg
	ADD
		CONSTRAINT FK_Team_Info_TO_Team_Reg -- ������ -> �����
		FOREIGN KEY (
			TEAM_NUM -- ����ȣ
		)
		REFERENCES Team_Info ( -- ������
			TEAM_NUM -- ����ȣ
		);

-- ��Ī���
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT FK_User_Info_TO_Match_Reg -- ȸ������ -> ��Ī���
		FOREIGN KEY (
			USER_NUM -- ȸ����ȣ
		)
		REFERENCES User_Info ( -- ȸ������
			USER_NUM -- ȸ����ȣ
		);

-- ��Ī���
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT FK_Stadium_TO_Match_Reg -- ��������� -> ��Ī���
		FOREIGN KEY (
			STADIUM_NUM -- ������ȣ
		)
		REFERENCES Stadium ( -- ���������
			STADIUM_NUM -- ������ȣ
		);

-- ��Ī���
ALTER TABLE Match_Reg
	ADD
		CONSTRAINT FK_Team_Info_TO_Match_Reg -- ������ -> ��Ī���
		FOREIGN KEY (
			TEAM_NUM -- ����ȣ
		)
		REFERENCES Team_Info ( -- ������
			TEAM_NUM -- ����ȣ
		);


-- ������
create sequence user_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence board_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence team_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence teamreg_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;

create sequence matchreg_num_seq
start with 1
minvalue 1
nomaxvalue
increment by 1
nocache
nocycle;
