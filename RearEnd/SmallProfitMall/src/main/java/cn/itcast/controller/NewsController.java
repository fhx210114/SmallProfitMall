package cn.itcast.controller;

import cn.itcast.domain.news.News;
import cn.itcast.response.CommonCode;
import cn.itcast.response.QueryResponseResult;
import cn.itcast.response.QueryResult;
import cn.itcast.response.news.Page;
import cn.itcast.response.news.QueryResponseNews;
import cn.itcast.service.NewsService;
import cn.itcast.util.logic.TotalPages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

/**
 * @author Kite
 * @date 2020/3/29
 */

@Controller
@RequestMapping("/NewsController")
@ResponseBody
public class NewsController {
    @Autowired
    NewsService newsService;

    @Autowired
    WebSocket webSocket;
    /**
     * 查询所有消息
     * @return
     */
    @RequestMapping(value = "/findNews",method = RequestMethod.GET)
    public QueryResponseNews findNews(String userId,Integer state,Integer currentPage , Integer pageSize) {

        if (currentPage==0){
            currentPage =4;
        }

        //消息数据
        List<News> news = newsService.fendNews(userId,state,currentPage,pageSize);
        //总数量
        Integer total = newsService.fendTotal(userId);
        Page page = new Page();
        page.setNews(news);
        //总记录时
        page.setTotalCount(total);
        //总页数
        page.setTotalPage(TotalPages.totalPages(pageSize,total));
        return  new QueryResponseNews(CommonCode.SUCCESS,page);
    }

    /**
     * 查询未读消息数量
     * @param userId
     * @return
     */
    @RequestMapping(value = "/unreadQuantity",method = RequestMethod.GET)
    public QueryResponseResult unreadQuantity(String userId){
        QueryResult queryResult = new QueryResult();
        queryResult.setTotal(newsService.unreadQuantity(userId));
        return new QueryResponseResult(CommonCode.SUCCESS,queryResult);
    }

    /**
     * 修改全部已读
     * @param userId
     * @param contentId
     * @return
     */
    @RequestMapping(value = "/updateNewsStatus",method = RequestMethod.PUT)
    public QueryResponseResult updateNewsStatus(String userId,Integer contentId){
        Integer redis = newsService.updateNewsStatus(userId,contentId);
        if (redis!=0){
            return new  QueryResponseResult(CommonCode.SUCCESS,null);
        }else {
            return new  QueryResponseResult(CommonCode.FAIL,null);
        }
    }

    /**
     *
     * 发送消息测试
     * @param userId
     * @param msg
     * @throws IOException
     */
    @RequestMapping(value = "/close/{userId}/{msg}",method = RequestMethod.POST)
    public QueryResponseResult close(@PathVariable("userId")String userId,@PathVariable("msg")String msg) throws IOException {
        webSocket.sendMessage(userId,msg);

        return new QueryResponseResult(CommonCode.SUCCESS,null);
    }


}