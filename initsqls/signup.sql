--注册接口
--测试成功注册，删：test06以及姓名成功注册用户
delete from info where name='成功注册用户'
delete from users where username='test06'

--测试用户名为空，删姓名注册用户名为空
delete from info where name='注册用户名为空用户'

--测试密码为空，删test07、姓名注册密码为空
delete from info where name='注册密码为空用户'
delete from users where username='test07'

--测试确认密码为空，删test08、姓名注册确认密码为空
delete from info where name='注册确认密码为空用户'
delete from users where username='test08'

--测试姓名为空，删test09
delete from users where username='test09'

--测试两个密码不一致，删test10、姓名注册两个密码不一致
delete from info where name='注册两个密码不一致用户'
delete from users where username='test10'

--重复注册，写test11、重复注册用户
delete from info where id=7
delete from users where id=7
insert into users(id, username, password) values(7, 'test11', md5('123456'))
insert into info(id, name) values(7, '重复注册用户')