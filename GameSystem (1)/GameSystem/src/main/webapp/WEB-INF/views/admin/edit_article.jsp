<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="<c:url value='/template/admin/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value='/template/admin/css/sb-admin-2.min.css'/>" rel="stylesheet">

</head>


<body id="page-top">
<jsp:include page="./auth.jsp"></jsp:include>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <jsp:include page="./_sidebar.jsp"></jsp:include>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <jsp:include page="./_topbar.jsp"></jsp:include>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">


                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Form</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <s:form method="POST" modelAttribute="article" action="${pageContext.request.contextPath}/manager/article/new" enctype="multipart/form-data">
                                	<!-- input text code -->					
					  				<s:hidden path="id" class="form-control" />				
					              	 <!-- input text code-->
					              	<div class="table-responsive">
					                	<div class="input-group mb-3">
					  						<div class="input-group-prepend">
					    						<span class="input-group-text" id="">Title</span>
					  						</div>
					  						<s:input path="title" class="form-control" />
										</div>
					              	</div>
					              	<div class="table-responsive">
					                	<div class="input-group mb-3">
					  						<div class="input-group-prepend">
					    						<span class="input-group-text" id="">Slug</span>
					  						</div>
					  						<s:input path="slug" class="form-control" />
										</div>
					              	</div>
		              	            <div class="input-group mb-3">
					  					<div class="input-group-prepend">
					    					<span class="input-group-text">Photo</span>
					  					</div>
					  					<div class="custom-file">
					  					<!-- id="inputGroupFile01 -->
					    					<input type="file" name="file" class="custom-file-input"/>
					    					<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
					  					</div>
									 </div>
					              	<div class="table-responsive">
					                	<div class="input-group mb-3">
					  						<div class="input-group-prepend">
					    						<span class="input-group-text" id="">Short Description</span>
					  						</div>
					  						<s:textarea path="shortDescription" class="form-control"/>
										</div>
					              	</div>					              	           
					  				<s:textarea path="content" id="editor" class="form-control"/>
					              	<div class="table-responsive mt-3">
					                	<div class="input-group mb-3">
					  						<div class="input-group-prepend">
					    						<span class="input-group-text" id="">High Light</span>
					  						</div>
					  						<s:input path="highlight" class="form-control"/>
										</div>
					              	</div>
					              	<div class="table-responsive">
					                	<div class="input-group mb-3">
					  						<div class="input-group-prepend">
					    						<span class="input-group-text" id="">View</span>
					  						</div>
					  						<s:input path="view" class="form-control"/>
										</div>
					              	</div>
					              	<div class="table-responsive">
					                	<div class="input-group mb-3">
					  						<div class="input-group-prepend">
					    						<span class="input-group-text" id="">Category</span>
					  						</div>
					  						<s:select path="category.id" class="custom-select" id="inputGroupSelect01"> 
		                                           <c:forEach items="${listCategory}" var="category">
		                                            	<s:option value="${category.id}">${category.name}</s:option>
		                                           </c:forEach>
		                                      </s:select>
										</div>
					              	</div>
					              	                       
					              	<button type="submit" class="btn btn-primary">Submit</button>
                                </s:form>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value='/template/admin/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<c:url value='/template/admin/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

    <!-- Custom scripts for all pages-->
    <script src="<c:url value='/template/admin/js/sb-admin-2.min.js'/>"></script>

    <!-- Page level plugins -->
    <script src="<c:url value='/template/admin/vendor/chart.js/Chart.min.js'/>"></script>

    <!-- Page level custom scripts -->
    <script src="<c:url value='/template/admin/js/demo/chart-area-demo.js'/>"></script>
    <script src="<c:url value='/template/admin/js/demo/chart-pie-demo.js'/>"></script>

<%--     <script src="<c:url value='/template/web/lib/ckeditor/ckeditor.js'/>"></script> --%>
	<script type="text/javascript" src="https://dl.dropboxusercontent.com/s/hb9vf8r4vz7imyy/ckeditor.js"></script>
    <script>
    
    ClassicEditor.create(document.querySelector("#editor"), {
        toolbar: {
          items: [
            "heading",
            "|",
            "bold",
            "italic",
            "link",
            "bulletedList",
            "numberedList",
            "|",
            "indent",
            "outdent",
            "|",
            "imageUpload",
            "blockQuote",
            "mediaEmbed",
            "undo",
            "redo",
          ],
        },
        language: "en",
        image: {
          toolbar: ["imageTextAlternative", "imageStyle:full", "imageStyle:side"],
        },
        licenseKey: "",
      })
        .then((editor) => {
          window.editor = editor;
        })
        .catch((error) => {
          console.error("Oops, something went wrong!");
          console.error(
            "Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:"
          );
          console.warn("Build id: ref2goguw78q-8ghiwfe1qu83");
          console.error(error);
        });
    </script>

</body>

</html>