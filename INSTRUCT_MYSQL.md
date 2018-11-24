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
发表日期：publish_time  
更新日期：update_time  
源地址：html_source_address  
博客主题：topic  
来源：source  
标题：title  
标题字体大小：title_font_size  
标题字体颜色：title_font_color  
关键字：key_word  
博客内容：content  

是否推荐：recommended  
是否删除：deleted  

被收藏量：number_collected  
点赞数：number_like  
点踩数：number_dislike  

浏览量：number_readed  
评论量：number_commented  
最后评论时间：lasted_commented_time  
状态: status_flag
```sql
SHOW DATEBASES;
USE SEUMSTC;
SHOW TABLES;
CREATE TABLE user_blog_information(
    blog_id int(11),
    user_id int(11),   
    publish_time datetime,
    update_time datetime,
    html_source_address TEXT,
    topic VARCHAR(255),
    source varchar(255),
    title varchar(255),
    title_font_size INT UNSIGNED,
    title_font_color INT UNSIGNED,
    key_word varchar(255),
    recommended Bit,
    deleted Bit,
    number_collected SMALLINT,
    number_like SMALLINT,
    number_dislike SMALLINT,
    number_readed MEDIUMINT,
    number_commented SMALLINT,
    lasted_commented_time datetime,
    status_flag bit
);
DROP TABLE user_blog_information;
DESCRIBE user_blog_information;
```
**添加字段**
```sql
ALTER TABLE user_blog_information ADD publish_time datetime;
```
# 创建博客评论表
博客评论表设计：user_blog_comment  
评论ID：blog_comment_id  
对应博客ID：blog_id  
发表者：user_id  
发表日期：publish_time  
评论内容：content  
点赞量：number_like  
点踩量：number_dislike  
回复评论数：number_replyed  
是否为热评：hot  
是否置顶：stick  
评论状态：status_flag -1为删除，0为待审核，1为已发布 
```sql
CREATE TABLE user_blog_comment(
    blog_comment_id int(11),
    blog_id int(11),
    user_id int(11),
    publish_time datetime,
    content text,
    number_like SMALLINT,
    number_dislike SMALLINT,
    number_replyed SMALLINT,
    hot bit,
    stick bit,
    status_flag bit
);
```

# 创建博客评论回复表
博客评论回复表设计：user_blog_comment_reply  
评论回复消息ID：blog_comment_reply_id  
发表者：user_id  
回复内容：content  
发表日期：publish_time  
回复类型：reply_type 0为回复评论，1为回复别人的回复。  
回复评论ID：blog_comment_id  
博客id：blog_id  
回复别人的回复：comment_reply_reply_id回复消息ID   
点赞量：number_like  
点踩量：number_dislike  
回复消息状态：status 

```sql
CREATE TABLE user_blog_comment_reply(
    blog_comment_reply_id int(11),
    user_id int(11),
    content text,
    publish_time datetime,
    reply_type int(1),
    blog_comment_id int(11),
    blog_id int(11),
    comment_reply_reply_id int(11),
    number_like SMALLINT,
    number_dislike SMALLINT,
    status_flag bit
);
```


# 创建活动信息表
活动信息表：user_activity_information  
活动ID：activity_id  
作者ID：user_id  
发表日期：publish_time  
更新日期：update_time  
源地址：html_source_address  
博客主题：topic  
来源：source  
标题：title  
标题字体大小：title_font_size  
标题字体颜色：title_font_color  
关键字：key_word  
活动内容：content  

是否推荐：recommended  
是否删除：deleted  

被收藏量：number_collected  
点赞数：number_like  
点踩数：number_dislike  

浏览量：number_readed  
评论量：number_commented  
最后评论时间：lasted_commented_time  
状态: status_flag

**复制博客信息表**
```sql
SHOW DATEBASES;
USE SEUMSTC;
SHOW TABLES;
CREATE TABLE user_activity_information LIKE user_blog_information;
INSERT INTO user_activity_information SELECT * FROM user_blog_information;


```

**修改字段名称**
```sql
ALTER TABLE user_activity_information CHANGE blog_id activity_id int(11);
```

**删除字段**
```sql
ALTER TABLE user_activity_information  DROP source;
ALTER TABLE user_activity_information  DROP html_source_address;
```
# 创建活动评论表
博客评论表设计：user_activity_comment  
评论ID：activity_comment_id  
对应博客ID：activity_id  
发表者：user_id  
发表日期：publish_time  
评论内容：content  
点赞量：number_like  
点踩量：number_dislike  
回复评论数：number_replyed  
是否为热评：hot  
是否置顶：stick  
评论状态：status_flag -1为删除，0为待审核，1为已发布 
```sql
CREATE TABLE user_activity_comment(
    activity_comment_id int(11),
    activity_id int(11),
    user_id int(11),
    publish_time datetime,
    content text,
    number_like SMALLINT,
    number_dislike SMALLINT,
    number_replyed SMALLINT,
    hot bit,
    stick bit,
    status_flag bit
);
```

# 创建活动评论回复表
博客评论回复表设计：user_activity_comment_reply  
评论回复消息ID：activity_comment_reply_id  
发表者：user_id  
回复内容：content  
发表日期：publish_time  
回复类型：reply_type 0为回复评论，1为回复别人的回复。  
回复评论ID：activity_comment_id  
博客id：blog_id  
回复别人的回复：comment_reply_reply_id回复消息ID   
点赞量：number_like  
点踩量：number_dislike  
回复消息状态：status 

```sql
CREATE TABLE user_activity_comment_reply(
    activity_comment_reply_id int(11),
    user_id int(11),
    content text,
    publish_time datetime,
    reply_type int(1),
    activity_comment_id int(11),
    activity_id int(11),
    comment_reply_reply_id int(11),
    number_like SMALLINT,
    number_dislike SMALLINT,
    status_flag bit
);
```
