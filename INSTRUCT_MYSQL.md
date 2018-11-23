# 创建用户登陆表
用户登陆表 user_register  
Id：user_id  
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
# 创建博客评论回复表
博客评论回复表设计：user_blog_comment_reply  
评论回复消息ID：blog_comment_reply_id  
发表者：user_id  
回复内容：blog_comment_reply_content  
发表日期：blog_comment_reply_publish_time  
回复类型：blog_comment_reply_type 0为回复评论，1为回复别人的回复。  
回复评论ID：blog_comment_id  
博客id：blog_id  
回复别人的回复：blog_comment_id回复消息ID   
点赞量：blog_comment_reply_number_like  
点踩量：blog_comment_reply_number_dislike  
回复消息状态：blog_comment_reply_status  
