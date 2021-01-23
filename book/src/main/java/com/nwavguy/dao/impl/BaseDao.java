package com.nwavguy.dao.impl;

import com.nwavguy.utils.JdbcUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public abstract class BaseDao {

    // use DbUtils to run SQL query
    private QueryRunner queryRunner = new QueryRunner();

    /**
     * update method used to execute: Insert/Update/Delete command
     * @return -1, means update failed, or it will return the number of rows that has been affected
     */
    public int update(String sql,Object ... args){
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.update(connection,sql,args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JdbcUtils.close(connection);
        }
        return -1;
    }

    /**
     * execute sql query that returns one javabean
     * @param type type of returned object
     * @param sql  sql statement that is executed
     * @param args parameters corresponding to sql
     * @param <T>  generic type of returned object
     * @return
     */
    public <T> T queryForOne(Class<T> type, String sql,Object ... args) {
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection, sql, new BeanHandler<T>(type), args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JdbcUtils.close(connection);
        }
        return null;
    }

    /**
     * execute sql query that returns multiple javabeans
     * @param type type of returned object
     * @param sql  sql statement that is executed
     * @param args parameters corresponding to sql
     * @param <T>  generic type of returned object
     * @return
     */
    public <T> List<T> queryForList(Class<T> type, String sql, Object ... args) {
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection, sql, new BeanListHandler<T>(type), args);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            JdbcUtils.close(connection);
        }
        return null;
    }

    /**
     * execute sql query that returns a scalar
     * @param sql exectued sql query
     * @param args parameters corresponding to sql
     * @return
     */
    public Object queryForSingleValue(String sql, Object... args) {
        Connection connection = JdbcUtils.getConnection();
        try {
            return queryRunner.query(connection, sql, new ScalarHandler(), args);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

}
