<%@ page import="Dao.ItemsDao" %>
<%@ page import="Entity.Items" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>详情</title>
    <style type="text/css">
        div{
            float:left;
            margin-left: 30px;
            margin-right:30px;
            margin-top: 5px;
            margin-bottom: 5px;
        }
        div dd{
            margin:0px;
            font-size:10pt;
        }
        div dd.dd_name
        {
            color:blue;
        }
        div dd.dd_city
        {
            color:#000;
        }
    </style>
</head>
<body>
<h1>商品详情</h1>
<div>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <%
                ItemsDao itemsDao = new ItemsDao();
                int id = Integer.parseInt(request.getParameter("id"));
                Items item = itemsDao.getItemsById(id);
                if(item != null){
            %>
            <td width="70%" valign="top">
                <table>
                    <tr>
                        <td rowspan="4"><img src="../images/<%=item.getPicture()%>" width="200" height="160"/></td>
                    </tr>
                    <tr>
                        <td><B><%=item.getName()%></B></td>
                    </tr>
                    <tr>
                        <td>产地：<%=item.getCity()%></td>
                    </tr>
                    <tr>
                        <td>价格：<%=item.getPrice() %>￥</td>
                    </tr>
                </table>
            </td>
            <%
                }
            %>


            <%
                String list = "";
                //从客户端获取cookie集合
                Cookie[] cookies = request.getCookies();
                //遍历客户端cookie
                if(cookies != null && cookies.length > 0) {
                    for (Cookie c : cookies) {
                        if (c.getName().equals("listCookies")) {
                            list = c.getValue();
                        }
                    }
                }

                String Id = request.getParameter("id") + ",";
                //如果字符串list包含该字符串id
                if (list.contains(Id)) {
                    list = list.replace(Id, ""); //将list中的id清除
                }
                list += Id; //添加字符串id
                String[] arr = list.split(",");
                if(arr != null && arr.length > 0){
                    //如果记录条数超过1000则清空
                    if(arr.length >= 1000){
                        list= "";
                    }
                }
                Cookie cookie = new Cookie("listCookies",list);
                response.addCookie(cookie);

            %>
            <td width="30%" bgcolor="#EEE" align="center">
                <br>
                <b>您浏览过的商品</b><br>
                <!-- 循环开始 -->
                <%
                    ArrayList<Items> itemlist = itemsDao.getHistory(list);
                    if(itemlist!=null&&itemlist.size()>0 )
                    {
                        System.out.println("itemlist.size="+itemlist.size());
                        for(Items i:itemlist)
                        {

                %>
                <div>
                    <dl>
                        <dt>
                            <a href="details.jsp?id=<%=i.getId()%>"><img src="../images/<%=i.getPicture() %>" width="120" height="90" border="1"/></a>
                        </dt>
                        <dd class="dd_name"><%=i.getName() %></dd>
                        <dd class="dd_city">产地:<%=i.getCity() %>&nbsp;&nbsp;价格:<%=i.getPrice() %> ￥ </dd>
                    </dl>
                </div>
                <%
                        }
                    }
                %>
                <!-- 循环结束 -->
            </td>
        </tr>
    </table>
</div>
</body>
</html>
