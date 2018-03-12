<!DOCTYPE html>
<#assign base = context.contextPath>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Throwable's Blog</title>

    <!-- Bootstrap -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="css/content.css" rel="stylesheet">
    <link href="css/oschina.css" rel="stylesheet">

    <style>
        .ztree {
            overflow: auto;
            height: 100%;
            min-height: 200px;
            top: 50px;
            padding: 0;
            margin: 0;
    </style>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>

    <script src="js/common.js"></script>

    <!-- strapdownify -->
    <script src="js/strapdown.js"></script>
    <!-- markdown_toc -->
    <script src="js/markdown_toc.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->
</head>
<body>

<nav class="navbar navbar-fixed-top navbar-inverse">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Throwable's Blog</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${base}/index">Home</a></li>
                <li class="active"><a href="#">Spring</a></li>
                <li><a href="#">Jdk</a></li>
            </ul>
        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav><!-- /.navbar -->

<div class="container-fluid">

    <div class="row row-offcanvas row-offcanvas-left">
        <div class="col-xs-6 col-sm-2 sidebar-offcanvas" id="sidebar">
            <ul id="ztree" class="ztree"></ul>
        </div>
        <div id="content" class="col-xs-12 col-sm-10">
            <div id="content-title" class="content-title">测试博客内容</div>
            <div id="content-description" class="content-description">
                <!--创建时间-->
                <span id="content-create-time" class="content-create-time">
                    创建时间：2018-01-01
                </span>
                <!--更新时间-->
                <span id="content-update-time" class="content-update-time">
                    更新时间：2018-01-08
                </span>
                <!--浏览数-->
                <span id="content-views" class="content-views">
                    浏览次数：1000
                </span>
                <!--评论数-->
                <span id="content-replies" class="content-replies">
                    评论次数：1000
                </span>
            </div>
            <div id="article-content" data-spy="scroll">

            </div>
        </div>
    </div>
    <hr>
    <footer>
        <p style="text-align: center" id="copy-right"></p>
    </footer>

</div><!--/.container-->


<script type="text/javascript">
    $.ajax({
        url: 'test.md',
        type: 'GET',
        dataType: 'text',
        success: function (data) {
            markdownFromText(data, "article-content");
        }
    });

    $(document).ready(function () {
        $('#ztree').markdown_toc({
            is_auto_number: false,
            _header_nodes: [],
            render_after: function (opts, compiled_html) {
                $(opts._zTree).html("\<div class='BlogAnchor'>\<p>\<em class='corner' id='AnchorContentToggle' title='展开' style='cursor:pointer;'>目录\</em>\</p>\<div class='AnchorContent' id='AnchorContent' style='display: block;'>" + compiled_html + "\</div>\</div>");
            },
            compile_headers_with_item: function (item) {
                return "<li class='osc_h" + item.level + "'><a href='#" + item.id + "'>" + item.origin_title + "</a></li>"
            }
        });
    });

</script>

<!--toc-->
<#--<script src="js/toc.js"></script>-->

</body>
