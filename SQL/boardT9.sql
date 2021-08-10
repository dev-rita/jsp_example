--boartT9 테이블 생성
create table boardT9(
	no int primary key
	,title varchar2(200) not null
	,content varchar2(4000) not null
	,regdate date
);

select * from boardT9 order by no desc;

--no_seq라는 시퀀스를 생성
create sequence no_Seq
start with 1 --1부터 시작
increment by 1 --1씩 증가
nocache; --임시메모리를 사용하지 않겠다는 의미

--no_seq라는 시퀀스 번호값을 확인
select no_seq.nextval from dual;