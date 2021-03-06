<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta hloginp-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<style>
    #joinagreediv01{
        width: 100%;
        height: 95vh;
 }
    #joinagreetable01{
        margin: auto;
        width: 500px;
        height: 100%;
   }
    .btn-primary{
        height: 40px;
        width: 200px;
        margin-top:40px;
        margin-left: 50px;
    }
    .btn-success{
        height: 40px;
        width: 200px;
        margin-top:40px;
        margin-left:20px;
    }
</style>
<body>
    <div id="joinagreediv01" style="margin-left:600px;margin-right:600px;margin-top:20px; width:600px;">
        <table id="joinagreetable01">
            <tr>
                <td>
        <div>
            <label for="agree_all">
              <input type="checkbox" name="agree_all" id="agree_all">
             <span style="margin-left: 20px;font-size: 25px; color: skyblue; ">전체 약관에 동의합니다</span>
            </label>
        </div>
        <hr style="margin-top: 20px;margin-bottom: 20px; height:2px; background-color:#ededed;">
        <p style="color: skyblue; font-size: 20px;">필수동의항목 </p> 
         <div>
            <label for="agree">
              <input type="checkbox" name="agree" id="agree_01" value="1" style="margin-top: 40px;">
              <span>ONE TRILLION 여행 약관<span class="essential_write"><strong>(필수)</strong><button type="button" style="border: 0;outline: 0;background-color: white;text-decoration: underline;margin-left:170px; " data-toggle="modal" data-target="#exampleModalLong1">
                약관보기
              </button></span>
            </label>
        </div>
        <div>
            <label for="agree">
              <input type="checkbox" name="agree"  id="agree_02" value="2"  style="margin-top: 40px;">
              <span>개인정보 수집, 이용에 대한안내<span class="essential_write"><strong>(필수)</strong><button type="button" style="border: 0;outline: 0;background-color: white;text-decoration: underline;margin-left:120px; " data-toggle="modal" data-target="#exampleModalLong2">
                약관보기
              </button></span>
            </label>
            <label for="agree">
              <input type="checkbox" name="agree" id="agree_03" value="3"  style="margin-top: 40px;">
              <span> 개인정보 제3자 제공에 대한안내<span class="essential_write"><strong>(필수)</strong><button type="button" style="border: 0;outline: 0;background-color: white;text-decoration: underline;margin-left:115px; " data-toggle="modal" data-target="#exampleModalLong3">
                약관보기
              </button></span>
            </label>
        </div>
        <div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">ONE TRILLION 여행 약관</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
               
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
               </div>
              </div>
            </div>
          </div>
          <div class="modal fade" id="exampleModalLong2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">ONE TRILLION 이용 약관</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
               </div>
              </div>
            </div>
          </div>
          <div class="modal fade" id="exampleModalLong3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">개인정보 제3자 제공 동의 약관</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-dark" data-dismiss="modal">Close</button>
               </div>
              </div>
            </div>
          </div>

        <p style="margin-top: 40px;">*개인정보의 수집,제공및 활용에 동의하지 않을 권리가 있으며,<br>
        미동의시 회원가입및 여행서비스 제공이 제한됩니다</p>
        <button type="button" class="btn btn-success" onclick="agreePass()">동의합니다</button><button type="button" class="btn btn-primary" onclick="location.href='login.do'">동의 하지않습니다</button>
    </td>
</tr>
</table>
    </div>
    
    	<script type="text/javascript">

			const ChkAll = document.querySelector('input[name=agree_all]');
			
		    ChkAll.addEventListener('change', (e) => {
		    	let agreeChk = document.querySelectorAll('input[name=agree]');
		    		for(let i = 0; i < agreeChk.length; i++){
		      			agreeChk[i].checked = e.target.checked;
			    	}
			});
		      
		    function agreePass() {
				if($("#agree_01").is(':checked') && $("#agree_02").is(':checked') && $("#agree_03").is(':checked')) {
					location.href="join.do";		
				} else {
					alert('필수동의를 모두 체크해주세요');
					return;
				}
		    }	
						    
		    
		</script>
</body>
</html>