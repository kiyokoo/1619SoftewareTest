package com.diary.web;

import com.diary.db.model.Diary;
import com.diary.db.model.User;
import com.diary.db.service.IDiaryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class PageController {

    //实例化用户服务层日记对象
    @Resource
    private IDiaryService diaryService;

    /**
     * 进入主页
     * @param modelAndView
     * @return
     */
    @GetMapping(value = {"/","/index"})
    public ModelAndView index(HttpSession httpSession,ModelAndView modelAndView){
        User login = (User) httpSession.getAttribute("login");
        if (login == null){
            modelAndView.setView(new RedirectView("/login"));
        }else {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            modelAndView.addObject("time",simpleDateFormat.format(new Date()));     //request域内容 key-value
            modelAndView.addObject("diarys",diaryService.findByAuthor(login.getUsername()));    //  List<Diary>
            modelAndView.setViewName("index");
        }
        return modelAndView;
    }

    /**
     * 查看日记内容
     * @param id
     * @param modelAndView
     * @return
     */
    @GetMapping("/diary/{id}")      //www.baidu.com     {baidu}     /diary/10029
    public ModelAndView diaryContent(@PathVariable String id, ModelAndView modelAndView){
        modelAndView.addObject("diary",diaryService.findById(Integer.parseInt(id)));
        modelAndView.setViewName("diaryContent");
        return modelAndView;
    }

    /**
     * 进入写日记界面
     * @param modelAndView
     * @return
     */
    @GetMapping("/write")
    public ModelAndView writeDiary(HttpSession httpSession,ModelAndView modelAndView){
        User login = (User) httpSession.getAttribute("login");
        if (login == null){
            modelAndView.setView(new RedirectView("/login"));
        }else {
            modelAndView.setViewName("writeDiary");
        }
        return modelAndView;
    }

    /**
     * 写日记
     * @param modelAndView
     * @return
     */
    @PostMapping("/write")
    public ModelAndView writeDiary(@RequestParam(required = false) String title, @RequestParam(required = false) String content,
                                   HttpSession httpSession, ModelAndView modelAndView){
        User login = (User) httpSession.getAttribute("login");
        if (login == null){
            modelAndView.setView(new RedirectView("/login"));
            return modelAndView;
        }else if (title.isEmpty() || content.isEmpty()){
            modelAndView.setViewName("writeDiary");
            return modelAndView;
        }else {
            Diary diary = new Diary();
            diary.setAuthor(login.getUsername());
            diary.setTitle(title);
            diary.setContent(content);
            diary.setPublishTime(new Date());
            diaryService.addDiary(diary);
            modelAndView.setView(new RedirectView("/index"));
            return modelAndView;
        }
    }

    /**
     * 删除日记
     * @param diaryIds
     * @param modelAndView
     * @param httpSession
     * @return
     */
    @GetMapping("/delete")
    public ModelAndView deleteDiary(@RequestParam(required = false) String[] diaryIds, ModelAndView modelAndView, HttpSession httpSession){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        modelAndView.setViewName("deleteDiary");
        User user = (User) httpSession.getAttribute("login");
        if (user == null){
            modelAndView.setView(new RedirectView("/login"));
            return modelAndView;
        }else if (diaryIds == null){
            modelAndView.addObject("time",simpleDateFormat.format(new Date()));
            modelAndView.addObject("diarys",diaryService.findByAuthor(user.getUsername()));
        }else {
            diaryService.batchDeleteDiary(diaryIds);
            modelAndView.addObject("time",simpleDateFormat.format(new Date()));
            modelAndView.addObject("diarys",diaryService.findByAuthor(user.getUsername()));
        }
        return modelAndView;
    }

}
