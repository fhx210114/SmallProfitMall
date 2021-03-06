package cn.itcast.service;

import cn.itcast.domain.footprint.Footprint;

import java.util.List;

public interface FootprintService {
    /**
     * 添加足迹
     * @param footprint 足迹对象
     * @return
     */
    public int addFootprint(Footprint footprint);

    /**
     * 查询足迹
     * @param userId 用户id
     * @param currentPage 当前页
     * @param pageSize 查询多少页
     * @return 足迹集合
     */
    List<Footprint> fendFootprint(String userId, Integer currentPage, Integer pageSize);

    /**
     * 查询足迹数量
     * @param userId
     * @return
     */
    public  Integer[]  fendTotalPage(String userId,Integer pageSize);

    /**
     * 删除足迹
     * @param userId 用户id
     * @param footprintId 足迹id
     * @param deleteAll 是否为删除全部 true为删除全部 false为删除单个
     * @return
     */
    Integer deleteFootprint(String userId, Integer footprintId,Boolean deleteAll);
}
