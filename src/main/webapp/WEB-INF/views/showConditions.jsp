<%--
  Created by IntelliJ IDEA.
  User: PWB
  Date: 2019/4/18
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="multipart/form-data; charset=utf-8" />

    <title>后台管理</title>

    <!-- Bootstrap -->
    <link href="../../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="../../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../../build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <div class="navbar nav_title" style="border: 0;">
                    <a class="site_title"><span>后台管理</span></a>
                </div>

                <div class="clearfix"></div>

                <!-- menu profile quick info -->
                <div class="profile clearfix">
                    <div class="profile_pic">
                        <img src="<c:choose><c:when test="${userDetail.icon == 'true'}">/../../images/user/${currentUser.userid}.JPG</c:when>
                                  <c:otherwise>/../../images/user/user.JPG</c:otherwise></c:choose>" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>欢迎,</span>
                        <h2>${currentUser.username}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>功能</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-car"></i> 汽车管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="<%=request.getContextPath() %>/rentCar">所有汽车</a></li>
                                    <li><a href="<%=request.getContextPath() %>/backManage/carsNotOnline">汽车上线审核</a></li>
                                    <li><a href="<%=request.getContextPath() %>/findCarOnRent">在租汽车</a></li>
                                    <li><a href="<%=request.getContextPath() %>/backManage/showCarConditions">添加条件</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-newspaper-o"></i> 新闻管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="<%=request.getContextPath() %>/News">所有新闻</a></li>
                                    <li><a href="<%=request.getContextPath() %>/backManage/addNews">添加新闻</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-user"></i> 用户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="<%=request.getContextPath() %>/backManage/showUsers">所有用户</a></li>
                                    <li><a href="<%=request.getContextPath() %>/backManage/addManager">添加管理员</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-dollar"></i> 订单管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="<%=request.getContextPath() %>/backManage/showOrdersNotPaid">未支付订单</a></li>
                                    <li><a href="<%=request.getContextPath() %>/backManage/showRefund">退款订单</a></li>
                                </ul>
                            </li>
                            <li><a><i class="fa fa-bar-chart-o"></i> 数据展示 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="<%=request.getContextPath() %>/findTopCarData">汽车数据</a></li>
                                    <li><a href="<%=request.getContextPath() %>/findTopCityData">城市数据</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /sidebar menu -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="<c:choose><c:when test="${userDetail.icon == 'true'}">/../../images/user/${currentUser.userid}.JPG</c:when>
                                          <c:otherwise>/../../images/user/user.JPG</c:otherwise></c:choose>" alt="">${currentUser.username}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="<%=request.getContextPath() %>/userDetail">个人信息</a></li>
                                <li><a href="<%=request.getContextPath() %>/user/logout"><i class="fa fa-sign-out pull-right"></i>注销</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">
                <div class="clearfix"></div>

                <div class="row">
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>添加</h2>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">
                                <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                    <ul id="myTab1" class="nav nav-tabs bar_tabs right" role="tablist">
                                        <li role="presentation" class="active"><a href="#tab_content11" id="home-tabb" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">汽车类别</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content22" role="tab" id="profile-tabb" data-toggle="tab" aria-controls="profile" aria-expanded="false">汽车品牌</a>
                                        </li>
                                        <li role="presentation" class=""><a href="#tab_content33" role="tab" id="profile-tabb3" data-toggle="tab" aria-controls="profile" aria-expanded="false">门店</a>
                                        </li>
                                    </ul>
                                    <div id="myTabContent2" class="tab-content" style="text-align: center">
                                        <div role="tabpanel" class="tab-pane fade active in" id="tab_content11" aria-labelledby="home-tab">
                                            <!-- Small modal -->
                                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".addCarType"><i class="fa fa-plus"></i> 添加汽车类型</button>

                                            <div class="modal fade addCarType" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">

                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalLabel2">输入新的汽车类型</h4>
                                                        </div>
                                                        <form action="<%=request.getContextPath() %>/backManage/addCarType" method="post">
                                                            <div class="modal-body">
                                                                <input id="carTypeName" name="carTypeName" >
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                                <button type="submit" class="btn btn-primary">保存</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /modals -->
                                            <div class="ln_solid"></div>
                                            <table id="datatable" class="table table-striped table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>汽车类别</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="carType" items="${carTypes}" varStatus="s">
                                                    <tr>
                                                        <td>${carType.ctypename}</td>
                                                        <td>
                                                            <a href="<%=request.getContextPath() %>/backManage/deleteCarType?cTypeId=${carType.ctypeid}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 删除 </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content22" aria-labelledby="profile-tab">
                                            <!-- Small modal -->
                                            <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".addCarBrand"><i class="fa fa-plus"></i> 添加汽车品牌</button>

                                            <div class="modal fade addCarBrand" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                                            </button>
                                                            <h4 class="modal-title" id="myModalLabel1">输入新的汽车品牌</h4>
                                                        </div>
                                                        <form action="<%=request.getContextPath() %>/backManage/addCarBrand" method="post" enctype="multipart/form-data">
                                                            <div class="modal-body">
                                                                <label>品牌名</label>
                                                                <input id="brandName" name="brandName" >
                                                                <input type="file" name="file">
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                                <button type="submit" class="btn btn-primary">保存</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- /modals -->
                                            <div class="ln_solid"></div>
                                            <table id="datatable-fixed-header" class="table table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>品牌号</th>
                                                    <th>汽车品牌</th>
                                                    <th>品牌商标</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="carBrand" items="${carBrands}" varStatus="s">
                                                    <tr>
                                                        <td style="vertical-align: middle">${carBrand.brandid}</td>
                                                        <td style="vertical-align: middle">${carBrand.brandname}</td>
                                                        <td style="vertical-align: middle"><img src="../../images/logo/${carBrand.brandid}.JPG"></td>
                                                        <td style="vertical-align: middle">
                                                            <a href="<%=request.getContextPath() %>/backManage/deleteCarBrand?brandId=${carBrand.brandid}" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i> 删除 </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="tab_content33" aria-labelledby="profile-tab">
                                            <form action="<%=request.getContextPath() %>/backManage/addLocation" method="post">
                                                <select id="province" name="pId" onchange="chooseProvice(this)">
                                                    <option>请选择省</option>
                                                    <c:forEach var="province" items="${locations}">
                                                        <option value="${province.pid}">${province.pname}</option>
                                                    </c:forEach>
                                                </select>
                                                <select id="city" name="cId" onchange="chooseCity(this)">
                                                    <option>请选择市</option>
                                                </select>
                                                <!-- Small modal -->
                                                <button style="display: none" id="addLocation" type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".addlocation"><i class="fa fa-plus"></i> 添加门店</button>

                                                <div class="modal fade addlocation" tabindex="-1" role="dialog" aria-hidden="true">
                                                    <div class="modal-dialog modal-sm">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span>
                                                                </button>
                                                                <h4 class="modal-title">输入门店名</h4>
                                                            </div>
                                                            <div class="modal-body">
                                                                <input type="text" name="name">
                                                            </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                                    <button type="submit" class="btn btn-primary">保存</button>
                                                                </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /modals -->
                                            </form>
                                            <table id="datatable-responsive" class="table table-striped table-bordered">
                                                <thead>
                                                <tr>
                                                    <th>名称</th>
                                                    <th>操作</th>
                                                </tr>
                                                </thead>
                                                <tbody id="table">
                                                <c:forEach var="location" items="${locations}" varStatus="s">
                                                    <tr>
                                                        <td>${location.pname}</td>
                                                        <td></td>
                                                    </tr>
                                                </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
            <div class="pull-right">
                基于J2EE的汽车租赁 PWB
            </div>
            <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
    </div>
</div>

<!-- jQuery -->
<script src="../../vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="../../vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="../../vendors/nprogress/nprogress.js"></script>
<!-- iCheck -->
<script src="../../vendors/iCheck/icheck.min.js"></script>
<!-- Datatables -->
<script src="../../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="../../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
<script src="../../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="../../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="../../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
<script src="../../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
<script src="../../vendors/jszip/dist/jszip.min.js"></script>
<script src="../../vendors/pdfmake/build/pdfmake.min.js"></script>
<script src="../../vendors/pdfmake/build/vfs_fonts.js"></script>

<!-- Custom Theme Scripts -->
<script src="../../build/js/custom.min.js"></script>

<script>
    var pTag = document.getElementById("province");
    var cTag = document.getElementById("city");
    var lTag = document.getElementById("location");
    var table = document.getElementById("table");
    function chooseProvice() {
        var l = table.rows.length;
        for (var r = 0; r < l; r++) {
            table.deleteRow(0);
        }
        $("#city").empty();
        cTag.add(new Option("请选择市"));
        <c:forEach var="province" items="${locations}">
           if (pTag.options[pTag.selectedIndex].text === "${province.pname}") {
               <c:forEach var="city" items="${province.cities}">
                    var tr = document.createElement("tr");
                    var td2 = document.createElement("td");
                    var td3 = document.createElement("td");
                    tr.append(td2);
                    tr.append(td3);
                    table.append(tr);
                    td2.innerHTML = "${city.cname}";
                    td3.innerHTML = "无";
                    cTag.add(new Option("${city.cname}", ${city.cid}));
               </c:forEach>
           }
        </c:forEach>
    }

    function chooseCity() {
        $("#addLocation").css("display","inline-block");
        var l = table.rows.length;
        for (var r = 0; r < l; r++) {
            console.warn(r);
            table.deleteRow(0);
        }
        <c:forEach var="province" items="${locations}">
        if (pTag.options[pTag.selectedIndex].text === "${province.pname}") {
            <c:forEach var="city" items="${province.cities}">
                if (cTag.options[cTag.selectedIndex].text === "${city.cname}") {
                    <c:forEach var="location" items="${city.locations}">
                        var tr = document.createElement("tr");
                        var td2 = document.createElement("td");
                        var td3 = document.createElement("td");
                        tr.append(td2);
                        tr.append(td3);
                        table.append(tr);
                        td2.innerHTML = "${location.lname}";
                        td3.innerHTML =
                            "<td> " +
                             "<a href='<%=request.getContextPath() %>/backManage/deleteLocation?lId=${location.lid}' class='btn btn-danger btn-xs'><i class='fa fa-trash-o'></i> 删除 </a></td>";
                    </c:forEach>
                }
            </c:forEach>
        }
        </c:forEach>
    }
</script>

</body>
</html>