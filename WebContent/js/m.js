/**
 * m.js
 */

function join_check(){
   if($.trim($("#mem_id").val())==""){
      alert("아이디를 입력하세요!");
      $("#mem_id").val("").focus();
      return false;
   }
   $mem_pwd=$.trim($("#mem_pwd").val());
   $mem_pwd2=$.trim($("#mem_pwd2").val());
   if($mem_pwd == ""){
      alert("비번을 입력하세요!");
      $("#mem_pwd").val("").focus();
      return false;
   }
   if($mem_pwd2 == ""){
      alert("비번확인을 입력하세요!");
      $("#mem_pwd2").val("").focus();
      return false;
   }
   if($mem_pwd != $mem_pwd2){
      alert("비번이 다릅니다!");
      $("#mem_pwd").val("");
      $("#mem_pwd2").val("");
      $("#mem_pwd").focus();
      return false;
   }
   if($.trim($("#mem_name").val())==""){
      alert("회원이름을 입력하세요!");
      $("#mem_name").val("").focus();
      return false;
   }
   if($.trim($("#phone02").val())==""){
      alert("폰번호를 입력하세요!");
      $("#phone02").val("").focus();
      return false;
   }
   if($.trim($("#phone03").val())==""){
      alert("폰번호를 입력하세요!");
      $("#phone03").val("").focus();
      return false;
   }
}


//아이디 중복 검색
function id_check(){
  /* copy begin */
   $("#idcheck").hide();
   //아이디 영역을 숨김
   $mem_id=$.trim($("#mem_id").val());
   //1.입력글자 길이 체크
   if($mem_id.length < 4){
      $newtext='<font color="red" size="3"><b>아이디는 4자 이상이어야 합니다.</b></font>';
      $("#idcheck").text('');
      //idcheck 아이디 영역 문자열을 초기화
      $("#idcheck").show();
      //idcheck 아이디 영역을 보이게 함.
      $("#idcheck").append($newtext);
      //idcheck영역에 문자열을 추가
      $("#mem_id").val('').focus();
      return false;
   };
   if($mem_id.length > 12){
      $newtext='<font color="red" size="3"><b>아이디는12자 이하이어야 합니다.</b></font>';
      $("#idcheck").text('');
      //idcheck 아이디 영역 문자열을 초기화
      $("#idcheck").show();
      //idcheck 아이디 영역을 보이게 함.
      $("#idcheck").append($newtext);
      //idcheck영역에 문자열을 추가
      $("#mem_id").val('').focus();
      return false;
   };
   //2.입력글자 확인
   if(!(validate_userid($mem_id))){
      $newtext='<font color="red" size="3"><b>아이디는 영문소문자,숫자,_조합만 가능합니다.</b></font>';
      $("#idcheck").text('');
      $("#idcheck").show();
      $("#idcheck").append($newtext);
      $("#mem_id").val('').focus();
      return false;
   };
   //아이디 중복확인
    $.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 아작스 실행
        type:"POST",//데이터를 서버로 보내는 방법
       //url:"./member/member_idcheck.jsp",    
        url:"idcheck.do", //아작스 서버 매핑주소
        data: {"id":$mem_id},  //좌측 id 피라미터 이름에 우측 $mem_id변수값을 저장
        datatype:"int",//서버의 실행된 결과값을 사용자로 받아오는 자료형 형태
        success: function (data) {//success는 아작스로 받아오는것이 성공했을경우
           //서버 데이터를 data변수에 저장
           if(data==1){//중복 아이디가 있다면
            $newtext='<font color="red" size="3"><b>중복 아이디입니다.</b></font>';
            $("#idcheck").text('');
           $("#idcheck").show();
           $("#idcheck").append($newtext);                
             $("#mem_id").val('').focus();
             return false;
        
           }else{//중복 아이디가 아니면
            $newtext='<font color="blue" size="3"><b>사용가능한 아이디입니다.</b></font>';
            $("#idcheck").text('');
            $("#idcheck").show();
            $("#idcheck").append($newtext);
            $("#mem_pwd").focus();
           }              
        },
         error:function(){
            alert("data error");
         }
      });//$.ajax   
  /* copy end */   
}

//아이디 유효성검사
function validate_userid($mem_id)
{
  var pattern= new RegExp(/^[a-z0-9_]+$/);
  return pattern.test($mem_id);
};

//회원정보 수정 member_edit.jsp
function edit_check(){
   $mem_pwd=$.trim($("#mem_pwd").val());
   $mem_pwd2=$.trim($("#mem_pwd2").val());
   if($mem_pwd == ""){
      alert("비번을 입력하세요!");
      $("#mem_pwd").val("").focus();
      return false;
   }
   if($mem_pwd2 == ""){
      alert("비번확인을 입력하세요!");
      $("#mem_pwd2").val("").focus();
      return false;
   }
   if($mem_pwd != $mem_pwd2){
      alert("비번이 다릅니다!");
      $("#mem_pwd").val("");
      $("#mem_pwd2").val("");
      $("#mem_pwd").focus();
      return false;
   }
   if($.trim($("#mem_name").val())==""){
      alert("회원이름을 입력하세요!");
      $("#mem_name").val("").focus();
      return false;
   }
   if($.trim($("#phone02").val())==""){
      alert("폰번호를 입력하세요!");
      $("#phone02").val("").focus();
      return false;
   }
   if($.trim($("#phone03").val())==""){
      alert("폰번호를 입력하세요!");
      $("#phone03").val("").focus();
      return false;
   }

}