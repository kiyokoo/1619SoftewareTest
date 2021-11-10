package com.diary.db.mapper;

import com.diary.db.model.Diary;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 查询日记表操作
 */
@Mapper
@Repository
public interface DiaryMapper {

    //查询所有日记信息
    List<Diary> findAll();
    //查询个人日记信息
    List<Diary> findByAuthor(String author);
    //通过id查询日记信息
    Diary findById(int id);
    //保存新日记信息
    void addDiary(Diary diary);
    //批量删除日记
    void batchDeleteDiary(String[] diaryIds);

}
