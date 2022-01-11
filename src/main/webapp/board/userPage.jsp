<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
 <script type="text/javascript">
        $(document).ready(function(){
            $("#header").load("resources/header/header.jsp")      
         });
  </script>
<title>유저 페이지</title>
<style>
			* {
				box-sizing: border-box;
			}


		/* ========== 유저 페이지 영역 ========== */
		
		/* 유저 컨테이너 */
		.userContainer {
			width: 1600px;
			margin: auto;
			margin-top: 50px;
		}
		/* 프로필, 알림 DIV */
		.profileContainer {
			height: 869px;
		}
		/* 프로필 박스 */
		.profileBox {
			border: 1px solid lightgray;
			padding: 20px;
			border-radius: 5px;
			margin-top: 10px;
			width: 100%;
		}
		/* 프로필 영역 */
		#profileImg {
			border-radius: 100%;
			background-color: #9db0e8;
			width: 100px;
			height: 100px;
			overflow:hidden;
			padding:0;
		}
		/* 프로필 기본이미지 */
		#profileImg>img {
			width: 100%;
			height: 100%;
			object-fit:cover;
		}
		/* 팔로우 버튼 */
		#btnFollow {
			border: none;
			background-color: #5656c4;
			color: white;
			font-family: 'Jua', sans-serif;
			font-weight: bold;
			border-radius: 5px;
		}
		/* 팔로잉 버튼 */
		#btnFollowing {
			border: none;
			background-color: #5656c4;
			color: white;
			font-weight: bold;
			font-family: 'Jua', sans-serif;
			border-radius: 5px;
		}
		.flBtn{
			position:relative;
			left:120px;
			bottom:60px;
		}
		#follow{
			height:10px;
		}
		/* 프로필 수정 버튼 */
		#btnEdit {
			width: 100%;
			height: 50px;
			border-radius: 5px;
			border: none;
			background-color: #5656c4;
			color: white;
			font-weight: bold;
			font-size: 20px;
			font-family: 'Jua', sans-serif;
		}
		/* 알림창 영역 */
		
		/* 알림 창 박스 */
		.noticeBox {
			border: 1px solid lightgray;
			border-radius: 5px;
			margin: 0%;
			margin-top: 20px;
			height: 100%;
		}
		/* 알림 제목 */
		.noticeTitle {
			border-bottom: 1px solid lightgray;
			background-color: #5656c4;
			color: white;
			font-weight: 900;
			font-size: 25px;
			font-family: 'Jua', sans-serif;
			border-radius: 5px;
			padding: 15px;
		}
		/* 알림 내용 */
		.noticeContent {
			padding: 20px;
			overflow: scroll;
			padding: 20px;
			height: 95%;
			font-family: 'Jua', sans-serif;
		}
		
		/* 게시글 조회,등록 영역 */
		.boardList {
			margin-top: 5px;
			margin-left: 0px;
			margin-right: 5px;
			padding: 0%;
		}
		
		.post {
			width: 390px;
			height: 390px;
			padding: 0%;
		}
		/* 게시글 등록 상단 */
		.postDetail {
			width: 100%;
			height: 100%;
			margin-left: 2px;
			position: relative;
		}
		
		.postDetail>:first-child {
			height: 100%;
			width: 100%;
		}
		/* 체크박스 span태그 */
		.checkSeq {
			float: left;
			position: absolute;
			top: 30px;
			left: 30px;
		}
		/* 인풋 checkbox */
		.checkSeq input {
			width: 30px;
			height: 30px;
		}
		/* top삭제버튼 */
		.btnDeleteTop {
			float: right;
			position: absolute;
			left: 320px;
			top: 30px;
			width: 100px;
			height: 100px;
		}
		/* 버튼tag */
		.btnDelete {
			border: none;
			background-color: transparent;
		}
		/* top삭제버튼img */
		.btnDeleteTop svg {
			width: 30px;
			height: 30px;
			color: gray;
			background-color: transparent;
		}
		/* top삭제버튼img 호버*/
		.btnDeleteTop svg:hover {
			width: 30px;
			height: 30px;
			color: black;
			background-color: transparent;
		}
		/* 게시글 상단  */
		.postDetail {
			width: 100%;
			height: 85%;
		}
		/* 게시글추가 버튼 */
		.btnInsert {
			width: 100%;
			height: 100%;
			padding: 0%;
			margin: 0px;
			background-color: transparent;
			border: none;
			border-radius: 5px;
		}
		/* 게시글 추가 버튼 (+)이미지 */
		.btnInsert>svg {
			width: 50%;
			height: 50%;
			text-align: center;
			align-items: center;
			color: gray;
		}
		/* 게시글 추가 버튼 (+)이미지 */
		.btnInsert>svg:hover {
			width: 50%;
			height: 50%;
			text-align: center;
			align-items: center;
			color: black;
		}
		/* 사용자 이미지 DIV */
		.thumbnail_img {
		    width: 350px;
		    height: 20rem;
		}
		/* 버튼 파일 사용자 이미지:hover */
		.btnInsert>img:hover {
			width: 100%;
			height: 100%;
			border-radius: 5px;
			border: 5px solid black;
			padding: 0%;
			margin: 0%;
		}
		/* 게시글 등록 디테일 하단 */
		.barDetailBox {
			height: 12%;
			width: 93.5%;
			padding: 0px;
			margin-left: 15px;
			margin-top: 5px;
			border-radius: 5px;
			border: 1px solid #9db0e8;
			background-color: #9db0e8;
		}
		/* 게시글 등록 Input 타이틀 */
		.barDetailTitle {
			border: none;
			font-size: 17px;
			font-weight: 900;
			font-family: 'Jua', sans-serif;
			background-color: #9db0e8;
			color: white;
			width:100%;
			padding-left: 10px;
			padding-top: 8px;
			overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
		}
		.viewBox{
			margin-top:8px;
			color:white;
			font-family: 'Jua', sans-serif;
		}
		/* 게시글 등록 Input 타이틀:focus */
		.barDetailTitle:focus {
			outline: none;
		}
		/* 게시글 수정 버튼 */
		.likeBox {
			border: none;
			font-size: 17px;
			font-weight: bold;
			font-family: 'Jua', sans-serif;
			background-color: #9db0e8;
			color: white;
			padding-top: 5px;
		}
		/* 좋아요 아이콘 */
		.likeBox>svg {
			width: 45%;
			height: 45%;
		}
		
		/* 페이징 영역*/
		/* Prev 버튼 */
		#btnPrev {
			border-radius: 5px;
			font-size: 20px;
			font-weight: bold;
			background-color: #5656c4;
			color: white;
			border: none;
		}
		
		#btnNext {
			border-radius: 5px;
			font-size: 20px;
			font-weight: bold;
			background-color: #5656c4;
			color: white;
			border: none;
		}

		/**** *modal 기본 디자인 ****/
        .modal-title {
            font-size: 17px;
            text-align: left;
            font-weight: bold;
            font-family: 'Jua', sans-serif;
        }

        .modal_table {
            width: 100%;
        }

        .modal_userImg_wrapper {
            width: 70px;
        }

        #modal_userImg {
            width: 50px;
            height: 50px;
            border-radius: 75%;
        }

        .modal_userId {
            width: 200px;
        }

        .modal_userFollow {
            margin: 10px;
            text-align: right;
        }
		.dynamic_btnFollow_off { /*동적 생성 버튼2*/
			/* display: none; */
		}

        /*modal 스크롤 적용*/
        .modal-dialog {
            overflow-y: initial !important
        }

        .modal-body {
            height: 50vh;
            overflow-y: auto;
        }
        
        #followBtn, #followingBtn{
    		height:80px;
			width:100px;
			background-color:rgb(86, 86, 196);
	
}
        
</style>
</head>
<body>

	<!-- ======================================== 헤더 ======================================== -->

	
	<div class="Wrapper">
		<div id="header"></div>

	<!-- ======================================== 유저 페이지 ======================================== -->

	<div class="userContainer">
		<div class="row">
			<div class="col-3 profileContainer">
				<!-- 프로필창 -->
				<div class="row profileBox m-0">

					<!-- 프로필 사진 -->
					<div id="profileImg">
				            		<img src="${mdto.getProfilePhoto_path() }">
					</div>
					
				
					<!-- 프로필(이름, 팔로우 버튼) -->
					<div class="col-8 mb-5" id="">
						<div class="mb-1">
								<h4> ${mdto.getUser_nickname() }</h4>
						</div>
						<div>
							<div>
								<button type="button" class="mb-1" id="btnFollow">follower
										${countFollower}</button>
							</div>
							<div>
								<button type="button" id="btnFollowing">follwing ${countFollowing}</button>
							</div>
						</div>
						<div id="follow">
							<c:if test="${mdto.getUser_id() ne loginSession.get('user_id') }">
								<div class="col-1 mb-2 flBtn">
			            				<button type="button" class="btn btn-dark" id="followingBtn">팔로잉</button>
			            				<button type="button" class="btn btn-dark" id="followBtn">팔로우+</button>
		            			</div>
	            			 </c:if>
						</div>
							
					</div>

					<!-- 프로필 수정 버튼 -->
					
						<c:if test="${mdto.getUser_id() == loginSession.get('user_id') }">
							<div class="col-12 mb-3" id="">
								<button type="button" id="btnEdit">Edit Profile</button>
							</div>
						</c:if>
					
					
				</div>

				<!-- 알림창 -->
				<div class="row noticeBox">
					<div class="col-12 noticeTitle d-flex justify-content-center">
						Notice</div>
					<div class="col-12 noticeContent">
				    <c:if test="${mdto.getUser_id() eq loginSession.get('user_id')}">
				        <table class="noti_table">
				<!-- 알림 내용 추가 됨 -->
				        </table>
				    </c:if>
					</div>
				</div>
			</div>


			<div class="col-9">
				<!-- 게시글 조회,등록  -->
				<div class="row boardList m-0">
					<c:forEach items="${list}" var="dto">

						<!-- 1번 게시글 등록 -->
					
						<div class="col-4 post form-control pt-2">

							<!-- 게시글 등록 '상단'(체크박스, 제거버튼), (+)이미지, 타이틀이미지 -->
							<div class="row postDetail">
								<div class="col-12">
									<span class="checkSeq"> <input type="checkbox"
										class="checkbox" style="visibility: hidden;">
									</span>

									<!-- 상단 제거버튼 -->
									<span class="btnDeleteTop">
										<c:if test="${loginSession.get('user_id') == dto.getPost_writer() }">
										<button type="button" class="btnDelete"value="${dto.getPost_no() }">
											<svg xmlns="http://www.w3.org/2000/svg" width="16"
												height="16" fill="currentColor" class="bi bi-x-circle"
												viewBox="0 0 16 16">
                                                <path
													d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                                                <path
													d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z" />
                                            </svg>
										</button>
										</c:if>
									</span>


									<!-- 썸네일 -->
								  	<div class="thumbnail d-flex justify-content-center">
								  	 	<c:forEach items="${file_list }" var="file">
								  	 	<c:if test="${dto.getPost_no() == file.getPost_no() }">
								  		<a href="${pageContext.request.contextPath}/toDetailPost.bo?post_no=${dto.getPost_no()}&currentPage=${naviMap.get('currentPage')}">
											<img class="thumbnail_img" src="${pageContext.request.contextPath}/files/${file.getSystem_name()}">
										</a>	
										</c:if>	
										</c:forEach>
									</div>

								</div>
							</div>

							<!-- 게시글 '하단' 번호, 타이틀, 좋아요아이콘,  -->
							<div class="row barDetailBox">
								<div class="col-9 p-0 m-0">
									<input type="text" class="barDetailTitle"
										value="no${dto.getPost_no()} : ${dto.getPost_title()}"
										readonly>
								</div>
								<div class="col-3 viewBox">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
										fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
										  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z" />
										  <path
											d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z" />
									</svg>
									${dto.getPost_view_count()}
								</div>
							</div>
						</div>
					
					


					</c:forEach>
					<!-- forEach -->

				</div>

			</div>
			<!-- 게시글 col -->

		</div>

		<!-- 페이징 -->
		<div class="col-12 d-flex justify-content-center mt-5 mb-5">
			<nav class="row" aria-label="Page navigation example">
				<div class="col-12 d-flex justify-content-center">
					<ul class="pagination justify-content-center">
						<c:if test="${naviMap.get('needPrev') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/toUserPage.bo?currentPage=${naviMap.get('startNavi')-1}">Previous</a>
							</li>
						</c:if>
						<!-- startNavi -> endNavi -->
						<c:forEach var="i" begin="${naviMap.get('startNavi')}"
							end="${naviMap.get('endNavi')}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/toUserPage.bo?currentPage=${i}">${i}</a>
							</li>
						</c:forEach>

						<c:if test="${naviMap.get('needNext') eq true}">
							<li class="page-item"><a class="page-link"
								href="${pageContext.request.contextPath}/toUserPage.bo?currentPage=${naviMap.get('endNavi')+1}">Next</a>
							</li>
						</c:if>
					</ul>
				</div>
			</nav>
		</div>

	</div>
</div>

<!------------- Modal --------------->
    <div class="modal fade" id="followModal" role="dialog"> 
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <!--팔로워 or 팔로잉 목록 헤더가 들어감-->
                    <h4 class="modal-title"></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <table class="modal_table">
                        <!--유저 목록 들어갈 자리-->
                    </table>
                </div>
                <div id="count" value="1"></div>
            </div>
        </div>
    </div>

    <!--modal 호출 버튼(hidden)-->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#followModal" id="btnModalCall"
        hidden>
    </button>>

	 <script>
		document.addEventListener("click", function(e) {
			let id = "${mdto.getUser_id()}";
			if(e.target.id == "btnFollowing") {
				console.log("버튼에 대한 계정id : " + id);
				const url = "${pageContext.request.contextPath}/getListFollowingProc.bo?user_id="+id;
				document.getElementsByClassName("modal-header")[0].innerHTML = "팔로잉 목록";
				// setModal(url);
				getListFollow(url);
			} else if(e.target.id == "btnFollow") {
				console.log("버튼에 대한 계정id : " + id);
				const url = "${pageContext.request.contextPath}/getListFollowerProc.bo?user_id="+id;
				document.getElementsByClassName("modal-header")[0].innerHTML = "팔로워 목록";
				// setModal(url);
				getListFollow(url);
			}
		});

		// user가 팔로우하는 유저 목록 가져오기
	      function getListFollow(url) {
	         $(".modal_table").empty(); // modal창 기존 데이터 제거
	         $.ajax({ 
	            type: "get",
	            url: url,
	            dataType: "json"
	         }).done(function(rs) { 
	            let listFollower = ""; // 리스트 담을 공간
	            for(let list of rs) { 
	               if(checkFollow(list.user_id)) { // 팔로우 상태 판별
	                  listFollower = '<tr>'
	                            + '<td class="modal_userImg_wrapper">'
	                                + '<img id="modal_userImg" src="' + list.profilePhoto_path + '">'
	                            + '</td>'
	                            + '<td class="modal_userID">' + list.user_nickname + '</td>';
	                        if("${loginSession.get("user_id")}" !== list.user_id) { // 팔로워 목록에 로그인 유저 본인이 있으면 버튼 제외
	                            listFollower += '<td class="modal_userFollow">'
	                     + '<buttton class="btn btn-primary dynamic_btnFollow_on" id="' + list.user_id + '" value="">팔로잉</button>'
	                            + '</td>'
	                            + '<td class="modal_userFollow" style="display: none;">'
	                                + '<buttton class="btn btn-outline-primary dynamic_btnFollow_off" id="' + list.user_id + '" value="">팔로우</button>'
	                            + '</td>';
	                        }
	               } else {
	                  listFollower = '<tr>'
	                  + '<td class="modal_userImg_wrapper">'
	                     + '<img id="modal_userImg" src="' + list.profilePhoto_path + '">'
	                  + '</td>'
	                  + '<td class="modal_userID">' + list.user_nickname + '</td>';
	                        if("${loginSession.get("user_id")}" !== list.user_id) { // 팔로워 목록에 로그인 유저 본인이 있으면 버튼 제외
	                            listFollower += '<td class="modal_userFollow" style="display: none;">'
	                      + '<buttton class="btn btn-primary dynamic_btnFollow_on" id="' + list.user_id + '" value="">팔로잉</button>'
	                            + '</td>'
	                            + '<td class="modal_userFollow">'
	                                + '<buttton class="btn btn-outline-primary dynamic_btnFollow_off" id="' + list.user_id + '" value="">팔로우</button>'
	                            + '</td>';
	                        }
	               }
	               $(".modal_table").append(listFollower); // 리스트 삽입
	               document.getElementById("btnModalCall").click(); // modal창 열기
	            }
	         }).fail(function(e) {
	            console.log(e);
	         });
	      }

		// 팔로우 여부 확인
		function checkFollow(id) {
			let tmp = false;
			$.ajax({ // id끼리 비교하여, 팔로우 중인지 확인 후 boolean리턴
				type: "post",
				url: "${pageContext.request.contextPath}/checkFollowProc.bo",
				async: false, // 동기식으로 처리해야 리턴값 제대로 처리됨
				data: {
					id: id
				}
			}).done(function(rs){
				if(rs == "true") tmp = true;
			}).fail(function(e){
				console.log(e);
			});
			return tmp;
		}

		// 팔로우 +1
		$(document).on("click", ".dynamic_btnFollow_off", function(e) { // 바인딩 처리
			let id = e.target.getAttribute("id");
			$(e.target).parent().prev().show();
			$(e.target).parent().hide();
			follow("add", id); // 팔로우 +1
		});
		
		// 팔로잉 버튼 클릭(언팔하겠다)
		$(document).on("click", ".dynamic_btnFollow_on", function(e) { // 바인딩 처리
			let id = e.target.getAttribute("id");
			$(e.target).parent().next().show();
			$(e.target).parent().hide();
			follow("remove", id); // 팔로우 +1
		});

        // 팔로우 버튼 노출(modal아님)
        if(checkFollow("${mdto.getUser_id()}")) {
            $("#followBtn").hide();
            $("#followingBtn").show();
        } else {
            $("#followBtn").show();
            $("#followingBtn").hide();
        }

        // 팔로우 버튼(modal아님)
		document.addEventListener("click", function(e) {
            if(e.target.id == "followBtn") {
                follow("add", "${mdto.getUser_id()}");
                $("#followBtn").hide();
                $("#followingBtn").show();
            } else if(e.target.id == "followingBtn" && confirm("팔로우를 취소하시겠습니까?")) {
                follow("remove", "${mdto.getUser_id()}");
                $("#followBtn").show();
                $("#followingBtn").hide();
            }
        });

		// 팔로우 처리
		function follow(count, id) {
			let followCount = 0; // 서버로 보낼 값
			if(count == "add") {  // count값이 add이면 +1처리
				followCount = 1;
			} else if(count == "remove") { // count값이 remove이면 -1처리
				followCount = -1;
			}
			$.ajax({ 
				type: "post",
				url: "${pageContext.request.contextPath}/followProc.bo",
				data: { 
					followCount: followCount,
					writer: id 
				}
			}).done(function(rs) {
				console.log(rs);
			}).fail(function(e) {
				console.log(e);
			});
		}
		
		$(document).ready(function () {
			 $(".noti_table").append(notiShare); // header에서 noti받아옴
		});

		

    </script>

	<script src="https://code.jquery.com/jquery-3.6.0.js"
		integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
		crossorigin="anonymous"></script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<script>
//	단일 삭제
	$(".btnDelete").click(function(){
		let val = this.value;
		location.href = "${pageContext.request.contextPath}/deleteProc.bo?post_no=" +val;
		console.log(val);
	});

		//Edit profile 버튼 처리 ->마이페이지로 
		$("#btnEdit").click(function(){
			location.href="${pageContext.request.contextPath}/toMyPage.mem?";
		})
	
		// 게시글 상세 조회로 이동
		$(".thumbnail").on("click",function() {
		     location.href = "${pageContext.request.contextPath}/toDetailPost.bo";
		});
	
		
		
	</script>


</body>
</html>