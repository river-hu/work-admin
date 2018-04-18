-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-04-18 10:58:08
-- 服务器版本： 5.6.35
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- 表的结构 `experience`
--

CREATE TABLE `experience` (
  `id` int(10) NOT NULL COMMENT '主键',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `sortid` tinyint(1) NOT NULL COMMENT '分类id',
  `content` varchar(255) NOT NULL COMMENT '内容'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `experience`
--

INSERT INTO `experience` (`id`, `userid`, `sortid`, `content`) VALUES
(1, 1, 0, '2017年－2017年8月郑州广之迪公司'),
(2, 1, 1, '2017年－2017年8月张弓酒官方商城'),
(3, 1, 0, 'test'),
(4, 53, 0, '2014-2015 郑州科技学院');

-- --------------------------------------------------------

--
-- 表的结构 `imgmsg`
--

CREATE TABLE `imgmsg` (
  `id` int(10) NOT NULL COMMENT 'zhujian',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '无标题' COMMENT '名字',
  `content` text NOT NULL COMMENT '内容',
  `intime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入时间',
  `sortid` tinyint(1) NOT NULL COMMENT '分类id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imgmsg`
--

INSERT INTO `imgmsg` (`id`, `userid`, `name`, `content`, `intime`, `sortid`) VALUES
(9, 1, 'qq截图', '102QQ20180412-231658.png', '2018-04-14 14:07:30', 0),
(11, 1, '王亚比哦你', '大叔看见很多旅客介绍的护肤科技大厦饭卡地脚螺丝饭卡掉了手机分四大皆空', '2018-04-14 15:01:31', 1),
(12, 1, 'test', '测试留言功能', '2018-04-14 15:10:37', 1),
(13, 1, 'qewqweq', 'qweqweqw', '2018-04-14 15:11:43', 1),
(14, 1, 'test', '啊精华粉底霜考拉饭卡空间啊咖啡开始的反抗撒娇反馈撒奋斗史 看看开发卡法放 封口机沙河口就是大后方是打开就是大接口会富士康喝咖啡婚纱的空间合法化阿斯顿好可视电话分康师傅喝咖啡可减肥可是可视电话反馈放金卡空间发挥空间收到话费卡号开始的可就是大街上的看法哈萨克绿肥红瘦的开发和老师咖啡化肥饭还卡数回复可见啊稻盛和夫会计老师的回复说的话放科技看见速度很快啊放假回来绥芬河市大法好了快点发货可敬可嘉是代理反馈结束了对拉开', '2018-04-15 14:11:15', 1),
(18, 1, 'me.jpg', '505me.jpg', '2018-04-15 14:15:35', 0),
(19, 53, 'test', '留言限制测试', '2018-04-18 08:27:05', 1),
(20, 53, 'logo', '640logo.jpg', '2018-04-18 08:37:58', 0),
(21, 53, '无标题', '532me.jpg', '2018-04-18 08:38:08', 0),
(22, 53, '无标题', '42logo.jpg', '2018-04-18 08:38:13', 0),
(23, 53, '无标题', '310logo.jpg', '2018-04-18 08:38:16', 0),
(24, 53, '无标题', '487logo.jpg', '2018-04-18 08:38:21', 0),
(25, 53, '无标题', '878logo.jpg', '2018-04-18 08:38:24', 0),
(26, 53, '无标题', '61logo.jpg', '2018-04-18 08:38:28', 0),
(27, 53, '无标题', '710logo.jpg', '2018-04-18 08:38:31', 0),
(28, 53, '无标题', '322logo.jpg', '2018-04-18 08:38:34', 0),
(29, 53, '无标题', '444logo.jpg', '2018-04-18 08:38:38', 0),
(30, 53, '无标题', '422logo.jpg', '2018-04-18 08:38:42', 0);

-- --------------------------------------------------------

--
-- 表的结构 `page`
--

CREATE TABLE `page` (
  `id` int(10) NOT NULL COMMENT '主键',
  `userid` int(10) NOT NULL COMMENT '用户id',
  `scroe` tinyint(1) NOT NULL COMMENT '分级',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `datein` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '插入日期',
  `img` varchar(255) DEFAULT '' COMMENT '图片地址',
  `content` text NOT NULL COMMENT '文章内容',
  `pagedec` text NOT NULL COMMENT '文章摘要',
  `sortid` varchar(10) NOT NULL COMMENT '分类id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `page`
--

INSERT INTO `page` (`id`, `userid`, `scroe`, `title`, `datein`, `img`, `content`, `pagedec`, `sortid`) VALUES
(1, 1, 0, '最新博客', '2018-04-11 12:09:50', '', '', '', '0'),
(2, 1, 0, '热门', '2018-04-11 12:10:14', '', '', '', '0'),
(3, 1, 0, 'vue', '2018-04-11 12:10:29', '', '', '', '0'),
(4, 1, 0, '微信小程序', '2018-04-11 12:10:47', '', '', '', '0'),
(10, 1, 0, 'test', '2018-04-12 08:08:54', '', '', '', '0'),
(19, 1, 1, 'asdasda', '2018-04-14 13:53:30', '532logo.jpg', '<p>请输入文章的内容asdasd</p>', 'asdasd', '1'),
(24, 1, 1, 'sadfasedf', '2018-04-14 14:33:05', '644logo.jpg', '<p>请输入文章的内容sdfsdfsd</p>', 'sdfsdfsdf', '2'),
(25, 1, 1, 'sadas', '2018-04-14 14:34:31', '374logo.jpg', '<p>请输入文章的内容asdasd</p>', 'asdasd', '-1'),
(26, 1, 1, 'test', '2018-04-14 14:39:40', '882logo.jpg', '<p>请输入文章的内容dsadasdasdasdas</p>', 'sdfsdfsdf', '-1'),
(27, 53, 0, '最新博客', '2018-04-16 06:08:41', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL COMMENT '主键',
  `name` varchar(255) NOT NULL DEFAULT '无' COMMENT '名字',
  `email` varchar(255) NOT NULL DEFAULT '无' COMMENT '邮箱',
  `city` varchar(10) NOT NULL DEFAULT '无' COMMENT '现居城市',
  `days` varchar(10) NOT NULL COMMENT '出生日期',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '性别',
  `liker` varchar(255) NOT NULL DEFAULT '无' COMMENT '爱好',
  `dec` text NOT NULL COMMENT '简介',
  `header` varchar(255) NOT NULL COMMENT '头像地址',
  `password` varchar(255) NOT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `city`, `days`, `sex`, `liker`, `dec`, `header`, `password`) VALUES
(1, '胡长江', '1486985856@qq.com', '周口', '1995-06-15', 1, '看书,看电影,旅游', '文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字文字1', 'http://ccdn.goodq.top/caches/b2ac3c765e8751bf8ed83348310feed1/aHR0cDovLzU2YjAwNTk3MGNmYzcudDczLnFpZmVpeWUuY29tL3FmeS1jb250ZW50L3VwbG9hZHMvMjAxNy8wNi8xZGUwMGQzM2U0YjQ3YjYyMjU3ZjhiYjllODA2MTU5ZC5wbmc_p_p100_p_3D.png', '123456'),
(47, '啊实打实的', 'sdfsd@das.com', 'test', '2018-04-03', 1, '美食,睡觉,健身,看电影', '说到饭卡健身房看见啥都快世界饭卡上饭卡上的快乐分辣螺蛳粉看啥回复了卡洛斯地方海伦凯勒啥疯狂老师的回复拉萨分反馈放', '', 'f4e3ed5bb3cfb3c4a2aa0b7d7a0a8209'),
(48, 'qweqwe', '123456@qq.com', 'beijing', '2018-04-03', 1, '美食,睡觉,健身,看电影', '大家啊好开始啥都会思考粉色的科技护肤开始接电话疯狂的身份和可视电话放是否开放可是大开发和赛季', '762logo.jpg', 'e10adc3949ba59abbe56e057f20f883e'),
(53, '胡长江', '654321@qq.com', '北京市', '1995-06-15', 1, '美食,看电影,动漫,学习', '我是一个程序员，一个it男，热爱编程，目标是成为一个伟大的程序员。', '117logo.jpg', 'e10adc3949ba59abbe56e057f20f883e'),
(54, 'tmde-1', '无', '无', '', 0, '无', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgmsg`
--
ALTER TABLE `imgmsg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `imgmsg`
--
ALTER TABLE `imgmsg`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'zhujian', AUTO_INCREMENT=31;
--
-- 使用表AUTO_INCREMENT `page`
--
ALTER TABLE `page`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=28;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键', AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
