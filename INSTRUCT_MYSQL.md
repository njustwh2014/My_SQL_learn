# 创建用户登陆表
用户登陆表 user_register  
ID：user_id  
账号：account  
密码：user_password  
登录状态：register_status  
IP地址：IP_address  
上次登录时间：last_time  
权限：authority  

```sql
SHOW DATABASES;
CREATE DATABASE SEUMSTC;
USE SEUMSTC;
SHOW TABLES;
CREATE TABLE user_register(
    user_id int(11),
    account varchar(255),
    user_password varchar(255),
    register_status char(1),
    IP_address  int UNSIGNED,
    last_time timestamp,
    authority char(1)
);
DESCRIBE user_register;
ALTER TABLE user_register MODIFY IP_address varchar(255);
INSERT INTO user_register ( user_id,account,user_password,register_status,IP_address,last_time,authority)
                       VALUES
                       (220181499,'seuwh2018@foxmail.com',123456,1,'192.168.1.1','1999-9-9 12:12:12',1);

select * from user_register;

SELECT * FROM user_register INTO OUTFILE 'F:/SEUMSTC/web/My_SQL_learn/output/user_register.txt';
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';
```


**Tips:** 查看 secure-file-priv 当前的值是什么?
```sql
    show variables like '%secure%';
```
# 创建用户信息表
用户信息表：user_information  
用户ID：user_id  
昵称：nickname  
账号：account  
性别：gender  
出生日期：birthdate  
学校：school  
爱好：hobby  
头像：head_portrait 图片的相对路径  
黑名单：blacklist  
贡献度：contribution_degree  
收藏数：number_collect  

```sql
SHOW DATEBASES;
USE SEUMSTC;
SHOW TABLES;
CREATE TABLE user_information(
    user_id int(11),
    nickname varchar(255),
    account varchar(255),
    gender tinyint(1),
    birthdate datetime,
    school varchar(255),
    hobby text,
    head_portrait varchar(255),
    blacklist text,
    contribution_degree SMALLINT,
    number_collect SMALLINT
);
```

# 创建用户收藏表
用户收藏表：user_collect  
用户ID：user_id  
收藏类型：collect_type  
博客ID:blog_id  
活动ID：activity_id  
技术讨论ID：technical_discussion_id  
编程ID：program_id  
收藏日期：collect_time  
```sql
SHOW DATEBASES;
USE SEUMSTC;
SHOW TABLES;
CREATE TABLE user_collect(
    user_id int(11),
    collect_type  int(1),
    blog_id int(11),
    activity_id int(11),
    technical_discussion_id int(11),
    program_id int(11),
    collect_time datetime
);

```

# 创建博客信息表
博客信息表：user_blog_information  
博客ID：blog_id  
作者ID：user_id  
发表日期：blog_publish_time  
更新日期：blog_update_time  
源地址：blog_html_source_address  
博客主题：blog_topic  
来源：blog_source  
标题：blog_title  
标题字体大小：blog_title_font_size  
标题字体颜色：blog_title_font_color  
关键字：blog_key_word  
博客内容：blog_content  

是否推荐：blog_recommended  
是否删除：blog_deleted  

被收藏量：blog_number_collected  
点赞数：blog_number_like  
点踩数：blog_number_dislike  

浏览量：blog_number_readed  
评论量：blog_number_commented  
最后评论时间：blog_lasted_commented_time  
```sql
SHOW DATEBASES;
USE SEUMSTC;
SHOW TABLES;
CREATE TABLE user_blog_information(
    blog_id int(11),
    user_id int(11),   
    blog_publish_time datetime,
    blog_update_time datetime,
    blog_html_source_address TEXT,
    blog_topic VARCHAR(255),
    blog_source varchar(255),
    blog_title varchar(255),
    blog_title_font_size INT UNSIGNED,
    blog_title_font_color INT UNSIGNED,
    blog_key_word varchar(255),
    blog_recommended Bit,
    blog_deleted Bit,
    blog_number_collected SMALLINT,
    blog_number_like SMALLINT,
    blog_number_dislike SMALLINT,
    blog_number_readed MEDIUMINT,
    blog_number_commented SMALLINT,
    blog_lasted_commented_time datetime
);

ALTER TABLE user_blog_information ADD blog_publish_time datetime;
ALTER TABLE user_blog_information ADD blog_update_time datetime;
ALTER TABLE user_blog_information ADD blog_html_source_address TEXT;
ALTER TABLE user_blog_information ADD blog_topic VARCHAR(255);
ALTER TABLE user_blog_information ADD blog_source varchar(255);
ALTER TABLE user_blog_information ADD blog_title varchar(255);
ALTER TABLE user_blog_information ADD blog_title_font_size INT UNSIGNED;
ALTER TABLE user_blog_information ADD blog_title_font_color INT UNSIGNED;
ALTER TABLE user_blog_information ADD blog_key_word varchar(255);
ALTER TABLE user_blog_information ADD blog_recommended Bit;
ALTER TABLE user_blog_information ADD blog_deleted Bit;
ALTER TABLE user_blog_information ADD blog_number_collected SMALLINT;
ALTER TABLE user_blog_information ADD blog_number_like SMALLINT;
ALTER TABLE user_blog_information ADD blog_number_dislike SMALLINT;
ALTER TABLE user_blog_information ADD blog_number_readed MEDIUMINT;
ALTER TABLE user_blog_information ADD blog_number_commented SMALLINT;
ALTER TABLE user_blog_information ADD blog_lasted_commented_time datetime;
DROP TABLE user_blog_information;
DESCRIBE user_blog_information;
```

# 创建博客评论表
博客评论表设计：user_blog_comment  
评论ID：blog_comment_id  
对应博客ID：blog_id  
发表者：user_id  
发表日期：blog_comment_publish_time  
评论内容：blog_comment_content  
点赞量：blog_comment_number_like  
点踩量：blog_comment_number_dislike  
回复评论数：blog_comment_number_replyed  
是否为热评：blog_comment_hot  
是否置顶：blog_comment_stick  
评论状态：blog_comment_status -1为删除，0为待审核，1为已发布 
```sql
CREATE TABLE user_blog_comment(
    blog_comment_id int(11),
    blog_id int(11),
    user_id int(11),
    blog_comment_publish_time datetime,
    blog_comment_content text,
    blog_comment_number_like SMALLINT,
    blog_comment_number_dislike SMALLINT,
    blog_comment_number_replyed SMALLINT,
    blog_comment_hot bit,
    blog_comment_stick bit,
    blog_comment_status int(1)
);
```

# 创建博客评论回复表
博客评论回复表设计：user_blog_comment_reply  
评论回复消息ID：blog_comment_reply_id  
发表者：user_id  
回复内容：blog_comment_reply_content  
发表日期：blog_comment_reply_publish_time  
回复类型：blog_comment_reply_type 0为回复评论，1为回复别人的回复。  
回复评论ID：blog_comment_id  
博客id：blog_id  
回复别人的回复：blog_comment_reply_reply_id回复消息ID   
点赞量：blog_comment_reply_number_like  
点踩量：blog_comment_reply_number_dislike  
回复消息状态：blog_comment_reply_status 

```sql
CREATE TABLE user_blog_comment_reply(
    blog_comment_reply_id int(11),
    user_id int(11),
    blog_comment_reply_content text,
    blog_comment_reply_publish_time datetime,
    blog_comment_reply_type int(1),
    blog_comment_id int(11),
    blog_id int(11),
    blog_comment_reply_reply_id int(11),
    blog_comment_reply_number_like SMALLINT,
    blog_comment_reply_number_dislike SMALLINT,
    blog_comment_reply_status int(1)
);
```
