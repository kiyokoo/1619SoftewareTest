package com.diary.db.service;

import com.diary.db.model.Diary;

import java.util.List;

/**
 * 日记服务层接口
 */
public interface IDiaryService {
    List<Diary> findAll();
    List<Diary> findByAuthor(String author);
    Diary findById(int id);
    void addDiary(Diary diary);
    void batchDeleteDiary(String[] diaryIds);
}
