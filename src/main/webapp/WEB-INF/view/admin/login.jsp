<div class="container"> 
<fieldset> 
<legend>로그인하기</legend>
<form action="/spweb_up/admin/login" method="post" name="myform" id="myform" class="" onsubmit="return check()">
<div class="form-group"> 
                    <label for="name">아이디</label> 
                    <input type="text" class="form-control" size="10" name="userid"> 
                </div> 
                <div class="form-group"> 
                    <label for="name">비밀번호</label> 
                    <input type="text" class="form-control" size="10" name="userpass"> 
                </div> 
                 <input type=submit value="로그인" class="btn btn-primary"> 
                <input type=button value="회원가입" class="btn btn-danger" onclick="location.href='daotest.do'">
                </form>
                 </fieldset>
                 </div>
                 <br><br>