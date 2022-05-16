<%--
  Created by IntelliJ IDEA.
  User: matthew
  Date: 2021/7/27
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<meta name="content-type" content="text/html; charset=UTF-8">
<head>
    <title>石大搬家公司</title>
</head>
<link href="${pageContext.request.contextPath}/css/1.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/2.js" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
<script type="text/javascript" src="2.js"></script>
<body>
<div class="navbar">
    <div class="nav">
        <div class="firRow">
            <div class="titPic"><img src="${pageContext.request.contextPath}/images/QQ20210723173914.png" width="70px" height="70px" alt=""></div>
            <div class="titTxt"><img src="${pageContext.request.contextPath}/images/QQ20210723173423.png" width="300px" alt=""></div>
            <div class="login">
                <a>欢迎回来:${username}</a>
                <form method="post" action="${pageContext.request.contextPath}/topersonal">
                    <input class="but" type="submit" value="个人中心">
                </form>
                <form method="get" action="${pageContext.request.contextPath}/logout">
                    <input class="but1" type="submit" value="注销">
                </form>
            </div>
        </div>
        <ul>
            <li>
                <a href="index_ok.jsp">首页</a>
            </li>
            <li>
                <a href="aboutus_ok.jsp">关于我们</a>
            </li>
            <li> <a href="" target="_blank" >服务优势</a>
                <ul>
                    <li><a href="" target="_blank">价格透明</a></li>
                    <li><a href="" target="_blank">准时到达</a></li>
                    <li><a href="" target="_blank" >专业团队</a></li>
                    <li><a href="" target="_blank" >24小时热线</a></li>
                </ul>
            </li>
            <li> <a href="#">服务项目</a>
                <ul>
                    <li><a href="#">同城搬家</a></li>
                    <li><a href="#">跨省搬家</a></li>
                    <li><a href="#">国际搬家</a></li>
                </ul>
            </li>
            <li>
                <a href="order.jsp">立即下单</a>  </li>
            <li class="underline"></li>
        </ul>
    </div>
</div>

<!--	背景盒子-->
<div class="bgCont">
    <a href="order.jsp"><img src="${pageContext.request.contextPath}/images/QQ20210726115621.png" height="88%" alt=""></a>
    <div id="loopToNext"></div>


    <!--	跳转-->

</div>
<div class="Gengduo"><a href="#loopToNext"><img src="${pageContext.request.contextPath}/images/down.png" height="50px" width="50px" alt=""></a></div>
<div class="BiaoTi5"> <span class="BiaoTi_5">服务优势&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>
<div class="box1"><input type="checkbox" name="" id="select">
    <div class="card">
        <label for="select" id="select_lable"></label>
        <div class="img"></div>
        <h2 class="title">价格透明</h2>
        <p class="desc">
            1.楼层费：每上、下一层加收楼层费10元，从2层开始计费;
        </p>
        <div class="content">
            <p>
                1.楼层费：每上、下一层加收楼层费10元，从2层开始计费;六层以上没有电梯时，每层加收20元;电梯每处收10元。</p>
            <p>2.多处装卸费：在运输过程中每增加一个装(卸)地点加收50元。</p>
            <p>3.空驶费：车辆到位后，客户取消用车时每车次收取空驶费100元人民币。</p>
            <p>4.距离费：当车不能停靠到位需要靠人工搬运，距离超过二十米时，按每米10元加收。</p>
        </div>
    </div>
    <input type="checkbox" name="" id="select2">
    <div class="card2">
        <label for="select2" id="select_lable2">
        </label>
        <div class="img2"></div>
        <h2 class="title2">准时到达</h2>
        <p class="desc2">
            专车派送
        </p>
        <div class="content2">
            <p>
                专车派送</p>
            <p>专车递送，全程掌控公路网络上的物流情况。我们能为您提供最合适的运输工具，始终满足各种业务需求。</p>
            <p>稳妥的全天候门到门服务</p>
            <p>运输工具包括大篷货车、卡车和控温或安全性高的车辆</p>
            <p>个性化解决方案，优化路线</p>
            <p>全程清关处理，附加送达确认</p>
            <p>所有托运物品均可选择投保
            </p>
        </div>
    </div>
    <input type="checkbox" name="" id="select3">
    <div class="card3">
        <label for="select3" id="select_lable3">
        </label>
        <div class="img3"></div>
        <h2 class="title3">专业团队</h2>
        <p class="desc3">
            他们是真正的团队。
        </p>
        <div class="content3">
            <p>
                他们是真正的团队。</p>
            <p>他们共同承诺、共同承担。</p>
            <p>他们一起分享信息、观点和创意，共同决策，以帮助每个成员能够更好地工作。</p>
            <p> 他们不只专注个人目标，更关注多名成员共同工作而带来的增值效应。他们共同奉献。</p>
            <p> 他们共同围绕于一个每一个成员能够为之信服的目标。</p>
            <p> 他们共同挑战、相互协作，平等分享工作成果。</p>
        </div>
    </div>
    <input type="checkbox" name="" id="select4">
    <div class="card4">
        <label for="select4" id="select_lable4">
        </label>
        <div class="img4"></div>
        <h2 class="title4">24小时热线</h2>
        <p class="desc4">
            我们拥有24小时的专业服务热线
        </p>
        <div class="content4">
            <p>
                我们拥有24小时的专业服务热线，您可以随时致电来了解有关搬家信息。</p>
            <p>我们的工作人员将尽心尽力的为您解答，帮助您了解更多细节。</p>
            <p> 热线电话：123456789。
            </p>
        </div>
    </div>
</div>
<div class="ShiQiJianJie">
    <div class="BiaoTi"> <span class="BiaoTi_1">实景展示&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>
    <div class="ShiQiJianJie_Con">
        <ul>
            <li> <a href="#"><img src="${pageContext.request.contextPath}/images/3.png" alt="" height="500px"></a>
                <p>打包</p>
            </li>
            <li> <a href="#"><img src="${pageContext.request.contextPath}/images/2.png" alt="" height="500px"></a>
                <p>运输</p>
            </li>
            <li> <a href="#"><img src="${pageContext.request.contextPath}/images/4.png" alt="" height="500px"></a>
                <p>搬运</p>
            </li>
            <li> <a href="#"><img src="${pageContext.request.contextPath}/images/1.png" alt=""  height="500px"></a>
                <p>安放</p>
            </li>
        </ul>
    </div>
</div>
<div class="ShiZhengYaoWen">
    <div class="BiaoTi"><span class="BiaoTi_1">公告&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
    <!--		左边轮播图-->
    <div class="wrap" id='wrap'>

        <div class="layui-carousel" id="test1" lay-filter="test1">
            <div carousel-item="">
                <div><img src="${pageContext.request.contextPath}/images/report.jpg" alt="" width="800px" height="500px"></div>
                <div><img src="${pageContext.request.contextPath}/images/move11.jpg" alt="" width="800px" height="500px"></div>
                <div><img src="${pageContext.request.contextPath}/images/gonggao.jpg" alt="" width="800px" height="500px"></div>
                <div><img src="${pageContext.request.contextPath}/images/eva11.jpg" alt="" width="800px" height="500px"></div>
                <div><img src="${pageContext.request.contextPath}/images/eva8.jpg" alt="" width="800px" height="500px"></div>
            </div>
        </div>
        <!--额外添加layui-->
    </div>


    <div class="right">
        <ul>
            <h2>公司新闻</h2>
            <li><a href="companynews.jsp"><strong>&middot;</strong>石大搬家公司努力提升搬家公司服务的平台</a></li>
            <li><a href="companynews2.jsp"><strong>&middot;</strong>公兴搬场荣获克拉玛依市“五星级诚信创建企业”称号</a></li>
        </ul>
        <ul>
            <h2>行业新闻</h2>
            <li><a href="jobnews1.jsp"><strong>&middot;</strong>全国两会上的物流新声音</a></li>
            <li><a href="jobnews2.jsp"><strong>&middot;</strong>2021年中国物流技术与装备十大发展趋势</a></li>
            <li><a href="jobnews3.jsp"><strong>&middot;</strong>疫情之下，物流行业暗流涌动。</a></li>

        </ul>
        <ul>
            <h2>搬家贴士</h2>
            <li><a href="movetips1.jsp"><strong>&middot;</strong>怎么打包比较高效？</a></li>
            <li><a href="movetips2.jsp"><strong>&middot;</strong>搬家前要准备什么</a></li>
            <li><a href="movetips3.jsp"><strong>&middot;</strong>搬家前市民应该如何做好搬家打包准备</a></li>

        </ul>
    </div>
</div>
<div class="PBL">
    <div class="BiaoTi"> <span class="BiaoTi_1">用户评价&nbsp;&nbsp;&nbsp;&nbsp;</span> </div>
    <div class="PuBuLiuBuJu">
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva1.jpg" alt="">
            <p>这趟搬家搬家师傅将我家所有的家具都安装、摆放好才离开的，这么热的天师傅们一刻都没有休息，简直太辛苦了，但这也反映了他们很专业。搬了这次家之后，我对搬家完全改观了，选择好的搬家公司就完全不用自己操心了。</p>
        </div>
        <div class="PuBuLiu"> <img src="${pageContext.request.contextPath}/images/eva2.jpg" alt="">
            <p>师傅们分工明确，整个过程师傅们都没有磨磨唧唧，故意拖延时间，一切都是按部就班的在进行，必须给一个大大的好评！</p>
        </div>
        <div class="PuBuLiu"> <img src="${pageContext.request.contextPath}/images/eva3.jpg" alt="">
            <p>最后，打包、搬运再加上家具拆装等等，不到五个小时就搬好了，服务也超级棒，师傅们分工合作，打包细致又专业，以后会推荐给朋友的~</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva4.jpg" alt="">
            <p>一站式搬家服务果然是“名不虚传”，我和老婆全程只用看着就行，也没帮上太多忙，而且价格公道，非常划算。</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva5.jpg" alt="">
            <p>套餐配的几个师傅很细心，出发前师傅再一次打电话确认搬家时间，搬家地点，而且到家之后做事很卖力，书房的书柜，饭桌，茶几、冰箱这一些大件的物品，师傅们扛起就走，很稳当。</p>
        </div>
        <div class="PuBuLiu"> <img src="${pageContext.request.contextPath}/images/eva6.jpg" alt="">
            <p>下单没多久，客服就来电话，帮助我安排约车约人，安排搬家行程，还提醒了一些关于搬家的注意事项，现在搬家特别轻松，不会把它当做很难的事来做，也不像以前，一个人拖拖拉拉累的要命，还心酸。</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva7.jpg" alt="">
            <p>刚预约就有客服跟我联系，大概报了一下自己的东西，她帮忙预估了一下立方，大概有12立方，300一个立方，除了这个就没有其他收费，为了保险起见，就约了师傅上门评估，11.5立方，还附上了评估单，感觉十分专业。
            </p>
        </div>
        <div class="PuBuLiu"> <img src="${pageContext.request.contextPath}/images/eva8.jpg" alt="">
            <p>收费标准非常公道，价格透明，收费也合理，对学生党也很友好，而且师傅还帮忙把物品搬到对应的房间，整理起来也非常方便。</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva9.jpg" alt="">
            <p>搬家当天都是穿着工作服过来的，搞得比较正规，爸妈见了也放心，师傅们话不多，手脚麻利做事情效率比较高。</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva10.jpg" alt="">
            <p>值得一提的是我原本住的地方在5楼没有电梯，还需要上下楼跑，真的辛苦师傅了，全程毫无怨言，搬东西也很小心，轻拿轻放，否则一家人都忙着工作，自己真不知道怎么搬好。</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva11.jpg" alt="">
            <p>体验后感觉收费便宜，性价比高，搬家前还会跟你签合同，谈好的价格后面就不会再变，也就是说不会临时加价什么的，而且服务项目很多，打包、搬运，家电家具拆装以及物品归位原样等等，可以自己选择。</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva12.jpg" alt="">
            <p>打给客服，非常耐心给我讲解了他们的服务流程，之后还安排了一位师傅免费为我们上门估价，制定了非常详细的报价方案，我和家人都觉得合适，就和易丰搬家签了合同。</p>
        </div>
        <div class="PuBuLiu"> <img src="${pageContext.request.contextPath}/images/eva13.jpg" alt="">
            <p>来搬家的师傅素质也很高，做事情规规矩矩的，靠谱~来的时候还自己带了鞋套，穿的了统一的服装，必须好评。</p>
        </div>
        <div class="PuBuLiu"> <img src="${pageContext.request.contextPath}/images/eva14.jpg" alt="">
            <p>师傅还帮我整理东西，教我怎么打包！！花瓶、碗碟等易碎物品都用气泡膜裹了厚厚的一层</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva15.jpg" alt="">
            <p>有师傅亲自上门打包东西，他们带了纸箱、气泡膜、胶带等材料，动作熟练，搬东西也是轻拿轻放，非常小心，另外走的时候还不忘把卫生打扫干净，我们全成了看客......这钱花的值！</p>
        </div>
        <div class="PuBuLiu">  <img src="${pageContext.request.contextPath}/images/eva16.jpg" alt="">
            <p>第二天安排两个大小伙子来帮我搬家，年纪与我差别不大，但是做起事来干脆利落，效率也很高，从无锡梁溪区搬家到滨湖区，全程3个小时就搞定了</p>
        </div>

    </div>
</div>
<div class="tail">
    <div class="JieShao">
        <div class="JieShaoXiang"><a href="group.jspl">小组介绍</a></div>
        <div class="JieShaoXiang">联系我们：<br>123456789</div>
        <div class="JieShaoXiang">地址<br>新疆维吾尔自治区克拉玛依市克拉玛依区胜利路355号</div>
    </div>
</div>

<!--额外添加layui-->
<script src="${pageContext.request.contextPath}/layui/layui.js" charset="utf-8"></script>
<script>
    layui.use(['carousel', 'form'], function () {
        const carousel = layui.carousel
            , form = layui.form;

        const ins3 = carousel.render({
            elem: '#test1'
        });

        //图片轮播,建造实例
        carousel.render({
            elem: '#test1'
            , width: '800px'
            , height: '500px'
            , arrow: 'always'
            , anim: 'default'
        });


        //监听开关
        form.on('switch(autoplay)', function () {
            ins3.reload({
                autoplay: this.checked
            });
        });

        $('.demoSet').on('keyup', function () {
            const value = this.value
                , options = {};
            if (!/^\d+$/.test(value)) return;

            options[this.name] = value;
            ins3.reload(options);
        });

    });
</script>
</body>

</html>
