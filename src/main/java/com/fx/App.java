package com.fx;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args ) throws IOException {
        InputStream inputStream= Resources.getResourceAsStream("mybatis-config.xml");
        SqlSessionFactory sqlSessionFactory= new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlSession= sqlSessionFactory.openSession();
        UserMapper userMapper= sqlSession.getMapper(UserMapper.class);
        User user= userMapper.getUserById(1);
        System.out.println(user);
        System.out.println(user.getRole());
        System.out.println("=================");
        //分步查询
        user=userMapper.getUserByIdStep(1);
        System.out.println(user);
        System.out.println(user.getRole());
        sqlSession.close();
    }
}
