<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>蔬果論壇</title>
</head>

<style>
.myaccount-content h1 {
	border-bottom: 1px dashed #e1e1e1;
	padding-bottom: 10px;
	margin-bottom: 25px;
	font-weight: 500;
}
</style>

<body>
	<!-- 引入共同的頁首 -->
	<jsp:include page="PageTop(login).jsp" />


	


	<!-- Breadcrumb Area Start Here -->
	<div class="breadcrumbs-area position-relative">
		<div class="container">
			<div class="row">
				<div class="col-12 text-center">
					<div class="breadcrumb-content position-relative section-content">
						<h3 class="title-3">蔬果論壇</h3>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li>My Account</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumb Area End Here -->
	<!-- my account wrapper start -->
	<div class="my-account-wrapper mt-no-text mb-no-text">
		<div class="container container-default-2 custom-area">
			<div class="row">
				<div class="col-lg-12 col-custom">
					<!-- My Account Page Start -->
					<div class="myaccount-page-wrapper">
						<!-- My Account Tab Menu Start -->
						<div class="row">
							<div class="col-lg-3 col-md-4 col-custom">
								<div class="myaccount-tab-menu nav" role="tablist">

									<a class="active" data-toggle="tab"> <i
										class="fa fa-dashboard"></i> 文章功能
										</a> 
									<a href="#allArtical" data-toggle="tab" class=""
										><i class="fa fa-book fa-fw"></i> 全部文章
										</a> 
									<a href="#addArtical" data-toggle="tab"><i
										class="fa fa-pencil fa-fw"></i> 新增文章
										</a> 	
									
								</div>
							</div>
					
							<!-- My Account Tab Menu End -->

							<!-- My Account Tab Content Start -->
							<div class="col-lg-9 col-md-8 col-custom">
<div align="right">
<a href="<c:url value='/create'/>">新增文章</a>
</div>

								<div class="tab-content" id="myaccountContent">
									<!-- Single Tab Content Start -->
										<!-- 		全部文章 -->
										<!-- 		全部文章 -->
										<!-- 		全部文章 -->
										<div class="tab-pane fade show active" id="allArtical"
											role="tabpanel">
									<c:forEach var='artical' items='${allArtical }'>
											<div class="myaccount-content">
												<div class="col-lg-9 col-md-8 col-custom">
													
														<div class="welcome">
															<h1>
															  <a
																	href='<c:url value="/artical/" />${artical.articalID }'>
																	<strong>${artical.articalID },${artical.subject }</strong>
																	</a> <br>
															</h1>
														</div>
														<p class="mb-0">${artical.content }</p>
												</div>
											</div>
										<br>
									</c:forEach>
										</div>
								<!-- 全部文章END -->
								<!-- 全部文章END -->
								<!-- 全部文章END -->
									<!-- Single Tab Content End -->
									
									<!-- 新增文章 -->
									<!-- 新增文章 -->
									<!-- 新增文章 -->
									
									
									 <!-- Single Tab Content Start -->
<!--                                         <div class="tab-pane fade" id="addArtical" role="tabpanel"> -->
<!--                                             <div class="myaccount-content"> -->
<!--                                                 <h3>新增文章</h3> -->
<!--                                                 <div class="account-details-form"> -->
<%--                                                     <form action="#"> --%>
<!--                                                         <div class="row"> -->
<!--                                                             <div class="col-lg-6 col-custom"> -->
<!--                                                                 <div class="single-input-item mb-3"> -->
<!--                                                                     <label for="first-name" class="required mb-1">First -->
<!--                                                                         Name</label> -->
<!--                                                                     <input type="text" id="first-name" -->
<!--                                                                         placeholder="First Name" /> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                             <div class="col-lg-6 col-custom"> -->
<!--                                                                 <div class="single-input-item mb-3"> -->
<!--                                                                     <label for="last-name" class="required mb-1">Last -->
<!--                                                                         Name</label> -->
<!--                                                                     <input type="text" id="last-name" -->
<!--                                                                         placeholder="Last Name" /> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
<!--                                                         <div class="single-input-item mb-3"> -->
<!--                                                             <label for="display-name" class="required mb-1">Display -->
<!--                                                                 Name</label> -->
<!--                                                             <input type="text" id="display-name" -->
<!--                                                                 placeholder="Display Name" /> -->
<!--                                                         </div> -->
<!--                                                         <div class="single-input-item mb-3"> -->
<!--                                                             <label for="email" class="required mb-1">Email -->
<!--                                                                 Addres</label> -->
<!--                                                             <input type="email" id="email" -->
<!--                                                                 placeholder="Email Address" /> -->
<!--                                                         </div> -->
<!--                                                         <fieldset> -->
<!--                                                             <legend>Password change</legend> -->
<!--                                                             <div class="single-input-item mb-3"> -->
<!--                                                                 <label for="current-pwd" class="required mb-1">Current -->
<!--                                                                     Password</label> -->
<!--                                                                 <input type="password" id="current-pwd" -->
<!--                                                                     placeholder="Current Password" /> -->
<!--                                                             </div> -->
<!--                                                             <div class="row"> -->
<!--                                                                 <div class="col-lg-6 col-custom"> -->
<!--                                                                     <div class="single-input-item mb-3"> -->
<!--                                                                         <label for="new-pwd" class="required mb-1">New -->
<!--                                                                             Password</label> -->
<!--                                                                         <input type="password" id="new-pwd" -->
<!--                                                                             placeholder="New Password" /> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                                 <div class="col-lg-6 col-custom"> -->
<!--                                                                     <div class="single-input-item mb-3"> -->
<!--                                                                         <label for="confirm-pwd" -->
<!--                                                                             class="required mb-1">Confirm -->
<!--                                                                             Password</label> -->
<!--                                                                         <input type="password" id="confirm-pwd" -->
<!--                                                                             placeholder="Confirm Password" /> -->
<!--                                                                     </div> -->
<!--                                                                 </div> -->
<!--                                                             </div> -->
<!--                                                         </fieldset> -->
<!--                                                         <div class="single-input-item single-item-button"> -->
<!--                                                             <button class="btn obrien-button primary-btn">Save -->
<!--                                                                 Changes</button> -->
<!--                                                         </div> -->
<%--                                                     </form> --%>
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                         </div> Single Tab Content End -->
									
<!--                                                                 --- -->
<!--                                                                 --- -->
<!--                                                                 --- -->
<div class="tab-pane fade" id="addArtical" role="tabpanel">
    <div class="myaccount-content">
      <h3>新增文章</h3>
 <div class="account-details-form">
 <div class="myaccount-content">
<!--  <h3>新增文章</h3> -->
 <div class="account-details-form">                                                               
	<form:form modelAttribute="artical" action="save" method="POST">
	<table>
	 <div class="row">
        <div class="col-lg-6 col-custom">
	<fieldset>
 <div class="single-input-item mb-3">
 <legend> 文章標題 </legend>
    <label for="display-name" class="required mb-1">  </label>
	<form:input path="subject" placeholder="請輸入標題內容" 
					id="display-name" type="text"></form:input>
    </div>
	</fieldset>
    </div>
    </div>

<!-- 	<fieldset> -->
	<div class="single-input-item mb-3">
	<legend>文章內容:</legend>
	<form:input path="content" placeholder="請輸入文章內容" 
					id="display-name" type="text" ></form:input>
	</div>
<!-- 	</fieldset> -->
<%-- <tr><td><form:input path="picture" action="create" method="GET" ></form:input></td> --%>
	<form:button value="Send" id="addArtical" class="btn obrien-button primary-btn">Submit</form:button>
	
	</table>
	</form:form>
	
</div>
</div>
</div>
</div>
</div>
                                                                
<!--                                                                 --- -->
<!--                                                                 --- -->
<!--                                                                 --- -->
<!--                                                                 --- -->
									<!-- 新增文章END -->
									<!-- 新增文章END -->
									<!-- 新增文章END -->
									
									
									
									
									

									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="orders" role="tabpanel">
										<div class="myaccount-content">
											<h3>Orders</h3>
											<div class="myaccount-table table-responsive text-center">
												<table class="table table-bordered">
													<thead class="thead-light">
														<tr>
															<th>Order</th>
															<th>Date</th>
															<th>Status</th>
															<th>Total</th>
															<th>Action</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>1</td>
															<td>Aug 22, 2018</td>
															<td>Pending</td>
															<td>$3000</td>
															<td><a href="cart.html"
																class="btn obrien-button-2 primary-color rounded-0">View</a>
															</td>
														</tr>
														<tr>
															<td>2</td>
															<td>July 22, 2018</td>
															<td>Approved</td>
															<td>$200</td>
															<td><a href="cart.html"
																class="btn obrien-button-2 primary-color rounded-0">View</a>
															</td>
														</tr>
														<tr>
															<td>3</td>
															<td>June 12, 2019</td>
															<td>On Hold</td>
															<td>$990</td>
															<td><a href="cart.html"
																class="btn obrien-button-2 primary-color rounded-0">View</a>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- Single Tab Content End -->

									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="download" role="tabpanel">
										<div class="myaccount-content">
											<h3>Downloads</h3>
											<div class="myaccount-table table-responsive text-center">
												<table class="table table-bordered">
													<thead class="thead-light">
														<tr>
															<th>Product</th>
															<th>Date</th>
															<th>Expire</th>
															<th>Download</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>Haven - Free Real Estate PSD Template</td>
															<td>Aug 22, 2018</td>
															<td>Yes</td>
															<td><a href="#"
																class="btn obrien-button-2 primary-color rounded-0"><i
																	class="fa fa-cloud-download mr-2"></i>Download File</a></td>
														</tr>
														<tr>
															<td>HasTech - Profolio Business Template</td>
															<td>Sep 12, 2018</td>
															<td>Never</td>
															<td><a href="#"
																class="btn obrien-button-2 primary-color rounded-0"><i
																	class="fa fa-cloud-download mr-2"></i>Download File</a></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
									<!-- Single Tab Content End -->

									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="payment-method" role="tabpanel">
										<div class="myaccount-content">
											<h3>Payment Method</h3>
											<p class="saved-message">You Can't Saved Your Payment
												Method yet.</p>
										</div>
									</div>
									<!-- Single Tab Content End -->

									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="address-edit" role="tabpanel">
										<div class="myaccount-content">
											<h3>Billing Address</h3>
											<address>
												<p>
													<strong>Alex Aya</strong>
												</p>
												<p>
													1355 Market St, Suite 900 <br> San Francisco, CA 94103
												</p>
												<p>Mobile: (123) 456-7890</p>
											</address>
											<a href="#"
												class="btn obrien-button-2 primary-color rounded-0"><i
												class="fa fa-edit mr-2"></i>Edit Address</a>
										</div>
									</div>
									<!-- Single Tab Content End -->

									<!-- Single Tab Content Start -->
									<div class="tab-pane fade" id="account-info" role="tabpanel">
										<div class="myaccount-content">
											<h3>Account Details</h3>
											<div class="account-details-form">
												<form action="#">
													<div class="row">
														<div class="col-lg-6 col-custom">
															<div class="single-input-item mb-3">
																<label for="first-name" class="required mb-1">First
																	Name</label> <input type="text" id="first-name"
																	placeholder="First Name" />
															</div>
														</div>
														<div class="col-lg-6 col-custom">
															<div class="single-input-item mb-3">
																<label for="last-name" class="required mb-1">Last
																	Name</label> <input type="text" id="last-name"
																	placeholder="Last Name" />
															</div>
														</div>
													</div>
													<div class="single-input-item mb-3">
														<label for="display-name" class="required mb-1">Display
															Name</label> <input type="text" id="display-name"
															placeholder="Display Name" />
													</div>
													<div class="single-input-item mb-3">
														<label for="email" class="required mb-1">Email
															Addres</label> <input type="email" id="email"
															placeholder="Email Address" />
													</div>
													<fieldset>
														<legend>Password change</legend>
														<div class="single-input-item mb-3">
															<label for="current-pwd" class="required mb-1">Current
																Password</label> <input type="password" id="current-pwd"
																placeholder="Current Password" />
														</div>
														<div class="row">
															<div class="col-lg-6 col-custom">
																<div class="single-input-item mb-3">
																	<label for="new-pwd" class="required mb-1">New
																		Password</label> <input type="password" id="new-pwd"
																		placeholder="New Password" />
																</div>
															</div>
															<div class="col-lg-6 col-custom">
																<div class="single-input-item mb-3">
																	<label for="confirm-pwd" class="required mb-1">Confirm
																		Password</label> <input type="password" id="confirm-pwd"
																		placeholder="Confirm Password" />
																</div>
															</div>
														</div>
													</fieldset>
													<div class="single-input-item single-item-button">
														<button class="btn obrien-button primary-btn">Save
															Changes</button>
													</div>
												</form>
											</div>
										</div>
									</div>
									<!-- Single Tab Content End -->
								</div>
							</div>
							<!-- My Account Tab Content End -->
						</div>
					</div>
					<!-- My Account Page End -->
				</div>
			</div>
		</div>
	</div>
	<!-- my account wrapper end -->




</body>
</html>