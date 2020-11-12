package com.wanhao.shardingjdbc;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.wanhao.shardingjdbc.bean.Course;
import com.wanhao.shardingjdbc.bean.SystemDict;
import com.wanhao.shardingjdbc.bean.User;
import com.wanhao.shardingjdbc.mapper.CourseMapper;
import com.wanhao.shardingjdbc.mapper.SystemDictMapper;
import com.wanhao.shardingjdbc.mapper.UserMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ShardingJdbcApplicationTests {
    @Autowired
    private CourseMapper courseMapper;

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private SystemDictMapper dictMapper;

    @Test
    public void addDict() {
        SystemDict udict = new SystemDict();
        udict.setUstatus("a");
        udict.setUvalue("已启用");
        dictMapper.insert(udict);
    }

    //删除操作
    @Test
    public void deleteDict() {
        QueryWrapper<SystemDict>  wrapper = new QueryWrapper<>();
        //设置userid值
        wrapper.eq("dictid",465191484111454209L);
        dictMapper.delete(wrapper);
    }


    @Test
    public void addUserDb() {
        User user = new User();
        user.setUsername("admin");
        user.setUstatus("a");
        userMapper.insert(user);
    }

    //查询操作
    @Test
    public void findUserDb() {
        QueryWrapper<User>  wrapper = new QueryWrapper<>();
        //设置userid值
        wrapper.eq("user_id",533320755018989569L);
        User user = userMapper.selectOne(wrapper);
        System.out.println(user);
    }

    //添加操作
    @Test
    public void addCourseDb() {
        for (int i = 0; i < 10; i++) {
            Course course = new Course();
            course.setCname("javademo1");
            //分库根据user_id
            course.setUserId(Long.valueOf(i));
            course.setCstatus("Normal1");
            courseMapper.insert(course);
        }

    }

    //查询操作
    @Test
    public void findCourseDb() {
        QueryWrapper<Course> wrapper = new QueryWrapper<>();
        //设置userid值
        //wrapper.eq("user_id", 1L);
        //设置cid值
        //wrapper.eq("cid", 465162909769531393L);
        List<Course> courses = courseMapper.selectList(wrapper);
        System.out.println(courses);
    }

    /**
     * 添加课程的方法
     */
    @Test
    public void addCourse() {
        for (int i = 1; i <= 10; i++) {
            Course course = new Course();
            course.setCname("java" + i);
            course.setUserId(100L);
            course.setCstatus("Normal" + i);
            courseMapper.insert(course);
        }
    }

    /**
     * 查询课程的方法
     */
    @Test
    public void findCourse() {
        QueryWrapper<Course> wrapper = new QueryWrapper<>();
        wrapper.eq("cid", 533228157801594880L);
        Course course = courseMapper.selectOne(wrapper);
        System.out.println(course);
    }


}
