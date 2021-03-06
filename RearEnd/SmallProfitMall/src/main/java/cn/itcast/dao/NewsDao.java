package cn.itcast.dao;

import cn.itcast.domain.news.News;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

/**
 * @author Kite
 * @date 2020/3/28
 */
@Repository
public interface NewsDao {
    /**
     * 查询消息
     * @param userId 用户id
     * @param state 消息状态
     * @param currentPage 查询开始页
     * @param pageSize 每页查询的数量
     * @return 消息集合
     */
    public List<News> fendNews(@Param("userId")String userId,@Param("state")Integer state,@Param("currentPage")Integer currentPage,@Param("pageSize")Integer pageSize);

    /**
     * 查询总记录数
     * @param userId
     * @return 总记录数
     */
    public Integer fendTotal(@Param("userId")String userId);

    /**
     * 用户未读消息数量
     * @param userId 用户id
     * @return  未读消息数量
     */
    public Integer unreadQuantity(@Param("userId")String userId);

    /**
     * 修改消息状态
     * @param userId 用户id
     * @param contentId 消息id 消息id为0则代表修改所有未读消息已读
     * @return
     */
    public Integer updateNewsStatus(@Param("userId")String userId,@Param("contentId")Integer contentId);

    /**
     * 新增消息
     * @param news 消息对象
     * @return
     */
    public void addNews(News news);

    /**
     * 修改消息内容
     * @param newsContent 消息内容
     * @param userId 用户id
     * @param orderId 订单id
     * @return
     */
    public Integer updateNewsContent(@Param("newsContent") String newsContent, @Param("userId")String userId, @Param("orderId")String orderId);

    /**
     * 查询指定消息
     * @param contentId 消息id
     * @return
     */
    public News fenNewsById(Integer contentId);

}
