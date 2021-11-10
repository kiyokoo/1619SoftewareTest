package com.diary.db.service.impl;

import com.diary.db.mapper.DiaryMapper;
import com.diary.db.model.Diary;
import com.diary.db.service.IDiaryService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * 日记服务层实现类
 */
@Component
@Transactional
public class DiaryServiceImpl implements IDiaryService {

    @Resource
    private DiaryMapper diaryMapper;

    //查询所有日记信息
    public List<Diary> findAll(){
        return diaryMapper.findAll();
    }

    //查询个人日记信息
    @Override
    public List<Diary> findByAuthor(String author) {
        return diaryMapper.findByAuthor(author);
    }

    //通过id查询日记信息
    @Override
    public Diary findById(int id) {
        return diaryMapper.findById(id);
    }

    //保存新日记信息
    @Override
    public void addDiary(Diary diary) {
        diaryMapper.addDiary(diary);
    }

    //批量删除日记
    @Override
    public void batchDeleteDiary(String[] diaryIds) {
        diaryMapper.batchDeleteDiary(diaryIds);
    }
}
