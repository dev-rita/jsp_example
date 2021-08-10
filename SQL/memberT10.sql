--memberT10 테이블 생성
create table memberT10(
	mem_id varchar2(20) primary key --아이디
	,mem_pwd varchar2(100) not null -- 비밀번호
	,mem_name varchar2(20) not null --회원이름
	,phone01 varchar2(10) --첫번째 폰번호
	,phone02 varchar2(10) --두번째 폰번호
	,phone03 varchar2(10) --세번째 폰번호
	,mem_file varchar2(80) --첨부한 이진파일명
	,mem_date date --가입날짜
	,mem_state int --가입회원이면 1, 탈퇴회원이면 2  회원을 delete안하고 update를 2로해서 탈퇴된 것으로 보이게 함.
	,mem_delcont varchar2(4000) --탈퇴사유
	,mem_deldate date --탈퇴날짜
);

insert into memberT10 (mem_id,mem_pwd,mem_name,phone01,phone02,phone03,mem_date,mem_state) values('aaaaa','99999','홍길동','010','5555','5555',sysdate,1);

select * from memberT10 order by mem_id asc;

--mem_name 컬럼 크기 100으로 변경
alter table memberT10 modify mem_name varchar2(100);