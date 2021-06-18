<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.dao.CheckLogDAO, com.entity.LogStatus" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>个人与家乡展示管理平台</title>

    <!-- Custom fonts for this template-->
    <link href="static/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="static/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>
            <div class="sidebar-brand-text mx-3">我与家乡</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
            <a class="nav-link" href="index.jsp">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>欢迎页</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            个人
        </div>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link" href="selfIntro.jsp">
                <i class="fas fa-fw fa-cog"></i>
                <span>个人简介</span>
            </a>
        </li>

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
               aria-expanded="true" aria-controls="collapseUtilities">
                <i class="fas fa-fw fa-wrench"></i>
                <span>个人技能管理</span>
            </a>
            <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                 data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">方向:</h6>
                    <a class="collapse-item" href="science.jsp">科研情况</a>
                    <a class="collapse-item" href="study.jsp">学习成绩</a>
                    <a class="collapse-item" href="develop.jsp">开发技能</a>
                    <a class="collapse-item" href="reward.jsp">获奖</a>
                </div>
            </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            家乡
        </div>

        <!-- Nav Item - Charts -->
        <li class="nav-item">
            <a class="nav-link" href="hometown.jsp">
                <i class="fas fa-fw fa-chart-area"></i>
                <span>家乡简介</span></a>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
               aria-expanded="true" aria-controls="collapsePages">
                <i class="fas fa-fw fa-folder"></i>
                <span>特色介绍</span>
            </a>
            <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">南京特色:</h6>
                    <a class="collapse-item" href="food.jsp">美食</a>
                    <a class="collapse-item" href="scene.jsp">美景</a>
                    <a class="collapse-item" href="custom.jsp">风土人情</a>
                </div>
            </div>
        </li>


        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            留言板
        </div>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link" href="messageBoard.jsp">
                <i class="fas fa-fw fa-table"></i>
                <span>用户留言</span></a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block">

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
            <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

        <!-- Sidebar Message -->
        <div class="sidebar-card">
            <img class="sidebar-card-illustration mb-2" src="static/img/undraw_rocket.svg" alt="">
            <p class="text-center mb-2"><strong>个人家乡管理展示平台</strong> 是我为java高级应用课设而开发的平台！访问更多代码，请点击： </p>
            <a class="btn btn-success btn-sm" href="https://blog.csdn.net/xiangQiAtCSDN">访问我的博客!</a>
        </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%
                                CheckLogDAO dao = new CheckLogDAO();
                                List<LogStatus> list = dao.readLogStatus();
                                for(LogStatus ls:list){
                            %>
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">
                <%=ls.getName()%>
              </span>
                            <%}%>
                            <img class="img-profile rounded-circle"
                                 src="static/img/undraw_profile.svg">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="login.jsp">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                访客注册/登录/切换账号
                            </a>
                            <a class="dropdown-item" href="loginAdmin.jsp">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                管理员登录/切换账号
                            </a>
                            <div class="dropdown-divider"></div>
                            <form method="post" action="ServletLogout">
                                <button class="dropdown-item" type="submit" data-toggle="modal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    退出登录
                                </button>
                            </form>

                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">家乡简介</h1>
                </div>

                <div class="row">
                    <div class="col-lg-6">

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">历史沿革</h6>
                            </div>
                            <div class="card-body">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历史上南京既受益又罹祸于其得天独厚的地理位置和气度不凡的风水佳境，过去曾多次遭受兵燹之灾，但亦屡屡从瓦砾荒烟中重整繁华。且在中原被异族所占领，汉民族即将遭受灭顶之灾时，通常汉民族都会选择南京休养生息，立志北伐，恢复华夏。大明、民国二次北伐成功；东晋、萧梁、刘宋三番北伐功败垂成。南宋初立，群臣皆议以建康为都以显匡复中原之图，惜宋高宗无意北伐而定行在于临安，但迫于舆论仍定金陵为行都。太平天国以南京为都，也以驱除异族统治为动员基础和合法性之一。所以南京被视为汉族的复兴之地，在中国历史上具有特殊地位和价值。故朱偰先生在比较了长安、洛阳、金陵、燕京四大古都后，言“此四都之中，文学之昌盛，人物之俊彦，山川之灵秀，气象之宏伟，以及与民族患难相共，休戚相关之密切，尤以金陵为最。” [23]
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;据史志记载，南京一带在100-120万年前就有古人类活动 [24]  。60多万年前古猿人在南京地域生活，汤山旧石器时代文化遗址出土的南京猿人化石，是研究东亚早期人类演化及旧石器时代考古领域具有世界意义的重大发现，再次证明南京是中华文明的发祥地之一 [25]  。同一化石点发现两个人种，全世界仅有南京一处。这不仅让“南京猿人洞”成了全球唯一的同一化石点发现两个人种的地方，也为人类多地起源论提供了有力依据——中国人并非起源于非洲 [26]  。 [27-28]
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7000年前，南京栖霞地区已有农业文明产生 [29]  。6000年前，出现以北阴阳营文化为代表的新石器时代原始村落，在南京及周边地区发现200多处新石器时代的遗址 [30]  。4000年前，秦淮河流域出现了密集的原始聚落，被称为湖熟文化，在这些聚落的基础上形成了南京地区最早的城邑 [31]  。
                                <div align="center"><img src="static/img/nj3.jpg" width="400"></div>
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3100年前，南京是西周周章的封地。前571年，楚国在六合已设有棠邑，置棠邑大夫，这是南京有历史记载的最早的地方建置，也是南京建城的开始，至2020年已有2591年。前541年，吴国在高淳建濑渚邑，因城池坚固，又名固城。前495年前后，吴国在朝天宫一带筑冶城。前473年，越灭吴，于中华门外的长干里筑越城。前333年，楚灭越，楚威王熊商欲借南京的长江天堑为屏障以图谋天下，于石头城筑金陵邑，金陵之名源于此 [32]  。
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;229年，吴大帝孙权在此建都，南京从此崛起，使中国的政治中心走出黄河文化板块的格局，引领了长江流域及整个中国南方地区的发展。此后，东晋、南朝的宋、齐、梁、陈相继在此建都，故南京有“六朝古都”之称，其文化辐射力达整个东亚地区 [33]  。六朝建康城在中国都城发展史上具有重要地位，首开中轴对称布局的先例，形成了东亚都城特有的以中轴线为基准，主要建筑左右对称的布局和风格，成为后世都城建设的范本。六朝皇宫建康宫是当时中国规模最大、最壮丽的宫殿，存世三百六十年，史书记载“穷极壮丽，冠绝古今” [34]  。其平面布局、建筑形制不仅直接影响了北朝和隋唐的都城，还进而影响到日本的京都、奈良以及朝鲜半岛的百济等都城，深远影响了后世宫室建设的形制 [35]  。今南京图书馆和六朝博物馆下仍保留有建康城遗址 [36]  。
                                </div>
                        </div>



                    </div>
                    <div class="col-lg-6">

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">经济</h6>
                            </div>
                            <div class="card-body">
                                <div align="center"><img src="static/img/nj4.jpg" width="300"></div>
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1981年南京被国家列为15个经济中心城市 [59]  。1992年被国家九个部委列为中国投资硬环境“四十优”城市。1994年中国城市综合实力五十强南京名列第5 [60]  。2001年被评为亚太地区最有发展前景的城市之一 [61]  。2004年经济中心定位指数排名，南京列中国大陆第6，仅次于北上广深津 [62]  。2008年总部经济发展能力列中国第5，位居北上广深之后，在长三角中南京发展总部经济的能力仅次于上海 [63]  。2014年中国区域中心城市竞争力评估，南京仅次于深圳广州 [64]  。2015年全国投资吸引力城市排名，南京列中国第5，紧随北上广深 [65]  。2020年8月，名列上半年中国GDP十强 [66]  。
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019年，南京地区生产总值14030.15亿元，列全国第11位，比上年增长7.8%。人均地区生产总值152886元，在中国直辖市、副省级市及省会城市中排名第二，仅次深圳，省会城市排名第一。第一产业增加值289.82亿元、增长0.7%；第二产业增加值5040.86亿元、增长6.7%；第三产业增加值8699.47亿元、增长8.6%。三次产业增加值结构为2.1:35.9:62.0 [5]  。
                            </div>
                        </div>

                        <!-- Basic Card Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">位置境遇</h6>
                            </div>
                            <div class="card-body">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;南京位于中国东部、长江下游中部地区，是长三角辐射带动中西部地区发展的国家重要门户城市 [52]  ，南京经济区主席方城市 [53]  ，地理坐标为北纬31°14″至32°37″，东经118°22″至119°14″。市中心新街口地理坐标为北纬32°02'38"、东经118°46'43" [54]  ，总面积6587平方千米 [55]  ，2019年建成区面积823平方千米 [4]  。
                            </div>
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
                    <span>Copyright &copy; 曹泽昊 2021</span>
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

<!-- Bootstrap core JavaScript-->
<script src="static/vendor/jquery/jquery.min.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="static/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="static/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="static/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="static/js/demo/chart-area-demo.js"></script>
<script src="static/js/demo/chart-pie-demo.js"></script>

</body>

</html>