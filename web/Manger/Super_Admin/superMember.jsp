<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="superMenber.css">
</head>
<body>
<div class="dataBox">    <!-- 外部大盒子 -->
    <h2 class="dataBox_theme">超级管理员</h2>   <!-- 超级会员标题 -->
    <div class="dataBox_nav">     <!-- 左边导航栏 -->
        <span class="dataBoxNav_theme dataBoxNavTheme_first">
             <i class="dataBoxNav_letter">求</i>
             <i class="dataBoxNav_letter">职</i>
             <i class="dataBoxNav_letter">资</i>
             <i class="dataBoxNav_letter">料</i>
          </span>
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter">用</i>
             <i class="dataBoxNav_letter">户</i>
             <i class="dataBoxNav_letter">信</i>
             <i class="dataBoxNav_letter">息</i>
          </span>
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter">管</i>
             <i class="dataBoxNav_letter">理</i>
             <i class="dataBoxNav_letter">员</i>
             <i class="dataBoxNav_letter">管</i>
             <i class="dataBoxNav_letter">理</i>
          </span>
        <span class="dataBoxNav_theme">
             <i class="dataBoxNav_letter">数</i>
             <i class="dataBoxNav_letter">据</i>
             <i class="dataBoxNav_letter">分</i>
             <i class="dataBoxNav_letter">析</i>
          </span>
    </div>
    <!-- 右边信息显示 -->
    <div class="dataBox_right">
        <!-- 表单控制 -->
        <form method="post" action="AddJob.action">
            <!-- 右边求职信息 -->
            <div class="dataBox_jobInformation dataBox_information">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">公司</i>
                    <input type="text" name="jobInfo.Company" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">招聘部门</i>
                    <input type="text" name="jobInfo.Department" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">薪资区间</i>
                    <input type="text" name="jobInfo.Salary" class="salary dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">
                        工作类型：</i><select name="jobInfo.type">
                    <option value="" name="">JAVA</option>
                    <option value="" name="">PYTHON</option>
                    <option value="" name="">JAVASCRIPT</option>
                    <option value="" name="">大数据</option>
                    <option value="" name="">人工智能</option>
                    <option value="" name="">PHP</option>
                    <option value="" name="">C</option>
                    <option value="" name="">运维</option>
                    <option value="" name="">区块链</option>
                    <option value="" name="">SHELL</option>
                    <option value="" name="">VB</option>
                    <option value="" name="">RUBY</option>
                    <option value="" name="">其他</option>
                </select>


                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">工作</i>
                    <input type="text" class="work dataBoxInp_input" name="jobInfo.Job">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">福利</i>
                    <input type="text" class="experience dataBoxInp_input" name="jobInfo.Welfare">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">学历要求</i>
                    <input type="text" class="education dataBoxInp_input" name="jobInfo.Academic">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">职位描述</i>
                    <input type="text" class="describe dataBoxInp_input" name="jobInfo.Descrive">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">工作地址</i>
                    <input type="text" class="address dataBoxInp_input" name="jobInfo.Address">
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub" onclick="javascript:form.submit();">
            </div>
        </form>
        <!-- 右边用户管理信息 -->
        <div class="dataBox_userInformation dataBox_information">
            <!-- 张三 -->
            <div class="dataBoxUser_name">张三
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 李四 -->
            <div class="dataBoxUser_name">李四
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 章家宝 -->
            <div class="dataBoxUser_name">章家宝
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 梁东海 -->
            <div class="dataBoxUser_name">梁东海
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 习近平 -->
            <div class="dataBoxUser_name">习近平
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 小明 -->
            <div class="dataBoxUser_name">小明
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 小刚 -->
            <div class="dataBoxUser_name">小刚
                <a href="javascript:" class="dataBoxUser_delete">删除</i>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- 小红 -->
            <div class="dataBoxUser_name dataBoxUser_xiao">小红
                <a href="javascript:" class="dataBoxUser_delete">删除</a>
            </div>
            <div class="dataBoxUser_box">
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">ID</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">姓名</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">E-mail</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">电话</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                    <a href="javascript:" class="delete">删除</a>
                    <a href="javascript:" class="modify">修改</a>
                </div>
                <input type="submit" value="提交" class="dataBoxInp_sub">
            </div>
            <!-- <input type="submit" class="dataBoxUser_sub" value="添加用户····"> -->
            <button type="submit" class="dataBoxUser_sub">添加用户</button>
        </div>
        <!-- 右边会员管理信息 -->
        <div class="dataBox_menberInformation dataBox_information">
            <div class="dataBoxInp_ordinary">
                <h2 class="dataBoxInp_theme">普通会员</h2>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">用户名</i>
                    <input type="text" class="describe dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">密码</i>
                    <input type="text" class="address dataBoxInp_input">
                </div>
                <input type="submit" class="dataBoxInp_sub" value="添加会员">
                <input type="submit" class="dataBoxInp_sub" value="提交">

            </div>
            <div class="dataBoxInp_super">
                <h2 class="dataBoxInp_theme">超级会员</h2>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="describe dataBoxInp_input">
                </div>
                <div class="dataBoxInp_box">
                    <i class="dataBoxInp_text">空</i>
                    <input type="text" class="address dataBoxInp_input">
                </div>
            </div>
        </div>
        <!-- 右边数据分析信息 -->
        <div class="dataBox_dataInformation dataBox_information"></div>

    </div>

</div>
<script src="../jquery-3.3.1.min.js"></script>

<!-- 鼠标点击不同导航栏出现不同内容  鼠标点击用户弹出相应内容, 用户管理宽度, 超级会员居中, 右边信息定位, 左边导航栏字体变颜色, 点击删除键清空输入框 -->
<script type="text/javascript">
    $(document).ready(function () {
        var dataBoxNavTheme = $(".dataBoxNav_theme");
        var dataBoxInf = $(".dataBox_information");
        var dataBoxUserName = $(".dataBoxUser_name");
        var dataBoxUserBox = $(".dataBoxUser_box");
        var dataBoxNavLetter = $(".dataBoxNav_letter")

        function clearDis() {
            for (var i = 0; i < dataBoxNavTheme.length; i++) {
                dataBoxInf.eq(i).css("display", "none");
                dataBoxNavTheme.eq(i).children().css("color", "#fff")

            }
        }

        for (var i = 0; i < dataBoxNavTheme.length; i++) {
            (function (k) {
                dataBoxNavTheme.eq(k).bind({
                    click: function () {
                        clearDis();
                        dataBoxInf.eq(k).fadeIn('fast');
                        for (var j = 0; j < $(this).children().length; j++) {
                            $(this).children().eq(j).css("color", "#f40")
                        }
                    },
                    mouseenter: function () {
                        var distance = 20;
                        var themeTime = 0.5;
                        for (var j = 0; j < $(this).children().length; j++) {
                            $(this).children().eq(j).animate({
                                top: -distance + "px"
                            }, "1s")
                            $(this).children().eq(j).animate({
                                top: "0px"
                            }, "1s")
                            distance += -3;
                            $(this).children().eq(j).css({
                                "transition": "color " + themeTime + "s"

                            })
                            if (dataBoxInf.eq(k).css("display") == "none") {
                                $(this).children().eq(j).css({
                                    "color": "#f40"
                                })
                            }
                            themeTime += 0.5
                        }
                    },
                    mouseleave: function () {
                        for (var j = 0; j < $(this).children().length; j++) {
                            if (dataBoxInf.eq(k).css("display") == "none") {
                                $(this).children().eq(j).css({
                                    "color": "#fff"
                                });
                            }
                        }
                    }
                })
            }(i))
        }
        // 鼠标移动到用户时，出现阴影
        dataBoxUserName.bind({
            mouseenter: function () {
                $(this).css({
                    "box-shadow": "0 0 10px black"
                })
            },
            mouseleave: function () {
                $(this).css({
                    "box-shadow": "0 0 0 black"
                })
            }
        })
        // 鼠标点击用户弹出相应内容
        for (var i = 0; i < dataBoxUserName.length; i++) {
            (function (k) {
                dataBoxUserName.eq(k).click(function () {
                    dataBoxUserBox.eq(k).slideToggle("slow");
                    dataBoxUserName.css({
                        "width": dataBoxUserBox.css("width")
                    })
                })
            }(i))
        }

        // 超级会员居中
        var dataBoxTheme = $(".dataBox_theme");
        dataBoxTheme.css({
            "left": "50%",
            "margin-left": -parseInt(dataBoxTheme.css("width")) / 2 + "px"
        })
        // 右边信息定位
        var dataBox = $(".dataBox");
        var dataBoxRight = $(".dataBox_right");
        dataBoxRight.css({
            "right": parseInt(dataBox.css("margin-left")) + 130 + "px"
        })
        // 鼠标点击删除清空输入栏
        var dataDelete = $(".delete");
        for (var i = 0; i < dataDelete.length; i++) {
            dataDelete.eq(i).click(function () {
                $(this).prev().val("");
            })
        }

    })

</script>
</body>
</html>