<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
textarea {
	width: 100%;
}

table {
	width: 85%;
	margin-left: auto;
	margin-right: auto;
}

th {
	width: 12%
}

ul {
	display: inline-block;
	list-style-type: none;
	text-align: left;
	vertical-align: top;
}

.ageBtn{
	background-color: transparent !important;
	width: 200px;
	height: 200px;
	border-color: transparent;
}

.ageText{
	 font-size:15px;
	 line-height:16.5px;
	 font-weight:bold;
	 color:#191970;
}
</style>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<script src="${ pageContext.request.contextPath }/resources/js/checkForm.js"></script>
<script src="${ pageContext.request.contextPath }/resources/js/diagForm.js"></script>
<script>
function setAge(age){
	$("#check").val(age);
	for (var i = -1; i < 2; i++) {
		getTd(i).css("font-weight", "normal");
	}
	getTd(age).css("font-weight", "bold");
}

function getTd(age){
	let id = age + 2;
	let td = $("#collapseOne > div > table > tbody > tr:nth-child(2) > td:nth-child(" + id + ")");
	return td;
}
</script>
</head>
<body style="background-color:#F8F1EB">

<div class="text-center" style="margin-top:0; padding:0; width:80%; margin-left:24%; display:block; margin-bottom:0;  ">
   <h5
				style=" display: block; width:70%;white-space:pre-line; color: black	; margin-top: 3rem; margin-bottom:2rem; font-weight: 700; font-size: 2.5rem; font-family: 'Noto Sans KR';">????????? ????????? ???????????????</h5>
  
 </div>
	<div>
		<form method="post"
			action="${ pageContext.request.contextPath }/board" name="diagForm"
			onsubmit="return writeCheckVal()" enctype="multipart/form-data">
			<input type="hidden" name="mid" value="${ loginVO.mid }">
			<div align="center">
				<table>
					<tr>
						<th>??????(??????)</th><td><input type="text" style="width:100%" name="dname" required="required"></td>
					</tr>
					<tr>
						<th>??????:</th><td><textarea name="bsum"></textarea></td>
					</tr>
					<tr>
						<th>??????:</th><td><textarea name="bcause"></textarea></td>
					</tr>
					<tr>
						<th>?????????:</th><td><textarea name="btreat"></textarea></td>
					</tr>
					<tr>
						<th>?????????:</th><td><textarea name="bcare"></textarea></td>
					</tr>
					<tr>
						<th>?????????:</th><td><input type="file" name="uploadFile"></td>
					</tr>
				</table>
			</div>
			<div style="margin-left: 100px; margin-right: 100px; margin-top: 10px; text-align: center;">
				<div class="accordion" id="accordionExample">
					<div class="card">
							<div class="card-header" id="headingOne">
								<h2 class="mb-0">
									<button class="btn btn-link" type="button"
										data-toggle="collapse" data-target="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">
											????????? ????????? ????????? ???????????????!
										</button>
								</h2>
							</div>
							<div id="collapseOne" class="collapse show"
								aria-labelledby="headingOne" data-parent="#accordionExample">
								<div class="card-body">
									<table>
										<tr>
											<td>
												<button class="ageBtn" type="button" onclick=setAge(-1)>
													<img src="${ pageContext.request.contextPath }/resources/images/4.png">
												</button>
											</td>
											<td>
												<button class="ageBtn" type="button" onclick=setAge(0)>
													<img src="${ pageContext.request.contextPath }/resources/images/5.png">
												</button>
											</td>
											<td>
												<button class="ageBtn" type="button" onclick=setAge(1)>
													<img src="${ pageContext.request.contextPath }/resources/images/6.png">
												</button>
											</td>
										</tr>
										<tr>
											<td>0~1?????? ?????? ?????????</td>
											<td>????????????</td>
											<td>7??? ????????? ?????? ?????????</td>
										</tr>
									</table>
									<input type="hidden" name="dage" id="check">
									</div>
							</div>
						</div>
					<div class="card">
						<div class="card-header" id="headingTwo">
							<h2 class="mb-0">
								<button class="btn btn-link" type="button"
									data-toggle="collapse" data-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">????????? ????????? ??????
									???????????????!</button>
							</h2>
						</div>
						<div id="collapseTwo" class="collapse"
							aria-labelledby="headingTwo" data-parent="#accordionExample">
							<div class="card-body" align="left">
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="great">????????????
										??????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="dachs">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="dalma">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="dober">??????????????????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="lassa">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="rott">???????????????</li>
									<li><input type="checkbox" name="spcodeList" value="retri">????????????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="masti">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="malte">?????????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="bhound">??????
										?????????</li>
									<li><input type="checkbox" name="spcodeList" value="bteri">??????????????????</li>
									<li><input type="checkbox" name="spcodeList" value="bull">??????</li>
									<li><input type="checkbox" name="spcodeList" value="buteri">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="britt">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="brteri">????????????????????????</li>
									<li><input type="checkbox" name="spcodeList" value="beagle">??????</li>
									<li><input type="checkbox" name="spcodeList" value="bichon">???????????????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="samo">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="shar">?????????</li>
									<li><input type="checkbox" name="spcodeList" value="stber">??????????????????</li>
									<li><input type="checkbox" name="spcodeList" value="schn">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="husky">????????????
										?????????</li>
									<li><input type="checkbox" name="spcodeList" value="shitzu">??????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="akita">?????????</li>
									<li><input type="checkbox" name="spcodeList" value="amalam">????????????????????????</li>
									<li><input type="checkbox" name="spcodeList" value="oeshee">??????
										???????????? ??????</li>
									<li><input type="checkbox" name="spcodeList" value="weima">???????????????</li>
									<li><input type="checkbox" name="spcodeList" value="yteri">??????????????????</li>
									<li><input type="checkbox" name="spcodeList" value="welsh">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="esspan">????????????
										???????????? ????????????</li>
									<li><input type="checkbox" name="spcodeList" value="esett">????????????
										??????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="schaf">???????????????</li>
									<li><input type="checkbox" name="spcodeList" value="gpoint">????????????????????????</li>
								</ul>

								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="chihua">?????????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="cteri">???????????????</li>
									<li><input type="checkbox" name="spcodeList" value="coca">??????????????????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="pug">??????</li>
									<li><input type="checkbox" name="spcodeList" value="peki">????????????</li>
									<li><input type="checkbox" name="spcodeList" value="pome">???????????????</li>
									<li><input type="checkbox" name="spcodeList" value="point">?????????</li>
									<li><input type="checkbox" name="spcodeList" value="mpoo">(????????????)??????</li>
									<li><input type="checkbox" name="spcodeList" value="tpoo">(??????)??????</li>
									<li><input type="checkbox" name="spcodeList" value="pitbull">??????</li>
								</ul>
								<ul>
									<h3>???</h3>
									<li><input type="checkbox" name="spcodeList" value="hava">????????????</li>
								</ul>
								<ul>
									<h3>??????</h3>
									<li><input type="checkbox" name="spcodeList" value="etc">????????????</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="card">
						<div class="card-header" id="headingThree">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed" type="button"
									data-toggle="collapse" data-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">????????? ????????? ??????????????????!</button>
							</h2>
						</div>
						<div id="collapseThree" class="collapse"
							aria-labelledby="headingThree" data-parent="#accordionExample">
							<br>
							<h2>?????????</h2>
							<br>
							<table style="margin-left: auto; margin-right: auto;">
								<tr>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary sym"
												data-toggle="modal" data-target="#mouth"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">???</button>

											<!-- Modal -->
											<div class="modal fade" id="mouth" tabindex="-1"
												role="dialog" aria-labelledby="exampleModalCenterTitle"
												aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">???</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('mouth', 4)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth1" value="?????????">??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth2" value="??????">???????????????
															</p>
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth3" value="???????????????">????????? ?????? ??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="mouth"
																	id="mouth4" value="???????????????">?????? ??????
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('mouth', 4)">Save
																changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#ear"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">???</button>

											<!-- Modal -->
											<div class="modal fade" id="ear" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">???</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('ear', 2)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="ear"
																	id="ear1" value="?????????">??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="ear"
																	id="ear2" value="??????">??????
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('ear', 2)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#skin"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">??????</button>

											<!-- Modal -->
											<div class="modal fade" id="skin" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">??????</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('skin', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="skin"
																	id="skin1" value="???????????????">?????????
															</p>
															<p>
																<input type="checkbox" name="syname" class="skin"
																	id="skin2" value="????????????">??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="skin"
																	id="skin3" value="????????????">??????/??????
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('skin', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#eye"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">???</button>

											<!-- Modal -->
											<div class="modal fade" id="eye" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">???</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('eye', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="eye"
																	id="eye1" value="????????????">????????????
															</p>
															<p>
																<input type="checkbox" name="syname" class="eye"
																	id="eye2" value="????????????">?????????
															</p>
															<p>
																<input type="checkbox" name="syname" class="eye"
																	id="eye3" value="???????????????">????????????
															</p>
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('eye', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#nose"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">???</button>

											<!-- Modal -->
											<div class="modal fade" id="nose" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">???</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('nose', 1)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="nose"
																	id="nose1" value="??????">????????????
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('nose', 1)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>

									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#hair"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">???</button>

											<!-- Modal -->
											<div class="modal fade" id="hair" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">???</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('hair', 2)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="hair"
																	id="hair1" value="?????????">??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="hair"
																	id="hair2" value="???????????????">????????????
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('hair', 2)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>


									</th>

									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#foot"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">??????</button>

											<!-- Modal -->
											<div class="modal fade" id="foot" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">??????</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('foot', 1)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="foot"
																	id="foot1" value="????????????">????????????
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('foot', 1)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</th>
								</tr>
							</table>
							<br> <br>
							<hr>
							<h2>??? ??????</h2>
							<br>
							<table>
								<tr>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#pee"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">??????</button>

											<!-- Modal -->
											<div class="modal fade" id="pee" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">??????</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('pee', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="pee"
																	id="pee1" value="??????">??????/??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="pee"
																	id="pee2" value="??????">??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="pee"
																	id="pee3" value="??????">??????
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('pee', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>

									</th>
									<th>
										<div class="card-body">
											<!-- Button trigger modal -->
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#poo"
												style="background-color: #FFB3B3; border-color: #FFB3B3;">??????</button>

											<!-- Modal -->
											<div class="modal fade" id="poo" tabindex="-1" role="dialog"
												aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
												<div class="modal-dialog modal-dialog-centered"
													role="document">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalCenterTitle">??????</h5>
															<button type="button" class="close" data-dismiss="modal"
																aria-label="Close" onclick="closeCheck('poo', 3)">
																<span aria-hidden="true">&times;</span>
															</button>
														</div>
														<div class="modal-body mouth">
															<p>
																<input type="checkbox" name="syname" class="poo"
																	id="poo1" value="?????????">??????
															</p>
															<p>
																<input type="checkbox" name="syname" class="poo"
																	id="poo2" value="????????????">????????? ???
															</p>
															<p>
																<input type="checkbox" name="syname" class="poo"
																	id="poo3" value="??????">??????
															</p>

														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary"
																onclick="isCheckedById('poo', 3)">Save changes</button>
														</div>
													</div>
												</div>
											</div>
										</div>
								</tr>
							</table>
							<br>
							<hr>
							<h2>??????</h2>
							<br>
							<table style="font-size: 20px;">
								<tr style="color: #332621; font-size: 25px;">
									<th>??????</th>
									<th>?????????</th>
									<th>??????</th>
									<th>?????????</th>
									<th>?????????</th>
									<th>??????</th>
									<th>??????</th>
									<th>??????</th>
								</tr>
								<tr>
									<th><input type="checkbox" name="syname" value="????????????">??????
										<input type="checkbox" name="syname" value="????????????">??????</th>
									<th><input type="checkbox" name="syname" value="???????????????">??????
										<input type="checkbox" name="syname" value="???????????????">??????</th>
									<th><input type="checkbox" name="syname" value="?????????">?????????
										<input type="checkbox" name="syname" value="????????????">????????????</th>
									<th><input type="checkbox" name="syname" value="???????????????">??????
									</th>
									<th><input type="checkbox" name="syname" value="?????????">?????????</th>
									<th><input type="checkbox" name="syname" value="????????????">??????</th>
									<th><input type="checkbox" name="syname" value="????????????">????????????</th>
									<th><input type="checkbox" name="syname" value="????????????">????????????
										????????? ???</th>

								</tr>
							</table>
							<br>
							<hr>
							<h2>??????</h2>
							<br>

							<table style="font-size: 20px;">
								<tr>
									<th><input type="checkbox" name="syname" value="??????">??????(???,
										???, ?????? ???)</th>
									<th><input type="checkbox" name="syname" value="??????">??????</th>
									<th><input type="checkbox" name="syname" value="???">???</th>
									<th><input type="checkbox" name="syname" value="??????">??????</th>
									<th><input type="checkbox" name="syname" value="????????????">????????????</th>
									<th><input type="checkbox" name="syname" value="??????">??????</th>
									<th><input type="checkbox" name="syname" value="??????">??????</th>
									<th><input type="checkbox" name="syname" value="????????????">????????????</th>
									<th><input type="checkbox" name="syname" value="??????">??????</th>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<br>
			<div align="center">
			<button type="submit" class="btn btn-outline-dark">??????</button>
			</div>
		</form>
	</div>

</body>

</html>