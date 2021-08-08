--memberT 테이블 생성
create table memberT(
	mem_id varchar2(20) primary key --primary key는 기본키 제약조건으로 중복 자료 저장금지, null 저장 금지
	,mem_pwd varchar2(20) not null --not null제약조건은 null 저장금지
	,mem_name varchar2(20)--회원 이름
	,mem_email varchar2(100)--회원 이메일 주소
	,mem_regdate date --등록 날짜
);

select * from memberT order by mem_id desc;
