<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
        <ul class="am-list admin-sidebar-list">
            <!-- 智能看护宝后台首页  -->
            <li><a class="am-cf" href="javascript:void(0)"><span class="am-icon-home am-icon-fw"></span> 首页<span
                    class="am-icon-angle-right am-fr am-margin-right"></span></a></li>




                    <li class="admin-parent">
                        <a class="am-cf" data-am-collapse="{target: '#collapse-nab'}"><span class="am-icon-file"></span>个人办公
                            <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                        <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nab">
                            <li><a href="#" class="am-cf"><span
                                    class="am-icon-check"></span>领导周行程<span
                                    class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
                            <li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 工作日报</a></li>
                            <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 工作周报<span
                                    class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
                            <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 工作月报</a></li>
                            <li><a href="admin-404.html"><span class="am-icon-bug"></span> 分享天地</a></li>
                        </ul>
                    </li>



                                        <div class="am-panel am-panel-default admin-sidebar-panel">
                                            <div class="am-panel-bd">
                                                <p><span class="am-icon-bookmark"></span> 公告</p>
                                                <a href="${pageContext.request.contextPath}/system/notice/noReadList"><p
                                                        class="notice-latest"></p></a>
                                            </div>
                                        </div>

                                        <script type="text/javascript">
                                            $(function () {
                                                $.post('${pageContext.request.contextPath}/system/notice/latest', function (data) {
                                                    $('.notice-latest').html(data.title);
                                                });
                                            });

                                            $(document).ready(function () {
                                                $("#HrManager").click(function () {
                                                    var name = $(this).attr('name');
                                                    if ($("#collapse-hr").css("display") == "none") {
                                                        $("#" + name).attr("class", "am-icon-angle-down am-fr am-margin-right");
                                                    } else {
                                                        $("#" + name).attr("class", "am-icon-angle-right am-fr am-margin-right");
                                                    }
                                                });

                                                $("#EmployeeManager").click(function () {
                                                    var name = $(this).attr('name');
                                                    if ($("#collapse-employee").css("display") == "none") {
                                                        $("#" + name).attr("class", "am-icon-angle-down am-fr am-margin-right");
                                                    } else {
                                                        $("#" + name).attr("class", "am-icon-angle-right am-fr am-margin-right");
                                                    }
                                                });

                                                $("#SysManager").click(function () {
                                                    var name = $(this).attr('name');
                                                    if ($("#collapse-sys").css("display") == "none") {
                                                        $("#" + name).attr("class", "am-icon-angle-down am-fr am-margin-right");
                                                    } else {
                                                        $("#" + name).attr("class", "am-icon-angle-right am-fr am-margin-right");
                                                    }
                                                });

                                                $("#UserSysManager").click(function () {
                                                    var name = $(this).attr('name');
                                                    if ($("#collapse-nav").css("display") == "none") {
                                                        $("#" + name).attr("class", "am-icon-angle-down am-fr am-margin-right");
                                                    } else {
                                                        $("#" + name).attr("class", "am-icon-angle-right am-fr am-margin-right");
                                                    }
                                                });
                                            });

                                        </script>
    </div>
</div>