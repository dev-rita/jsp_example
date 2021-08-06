--boardT8 테이블 생성
create table boardT8(
	b_no number(38) primary key--게시판 번호
	,b_name varchar2(30) not null --글쓴이
	,b_title varchar2(200) not null --글제목
	,b_pwd varchar2(20) not null--비밀번호
	,b_cont varchar2(4000)not null--글내용
	,b_hit int default 0 --조회수, default 0 제약조건은 굳이 해당 컬럼에 레코드를 저장하지 않아도 정수 숫자 0이 기본값으로 저장된다.
	,b_date date --등록 날짜
);

select * from boardT8 order by b_no desc;

--b_no_seq8 시퀀스생성
create sequence b_no_seq8
start with 1
increment by 1
nocache;

--b_no_seq8 시퀀스 번호값 확인
select b_no_seq8.nexval from dual;
