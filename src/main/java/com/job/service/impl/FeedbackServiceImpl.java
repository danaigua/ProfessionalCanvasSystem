package com.job.service.impl;

import com.job.dao.IFeedbackDao;
import com.job.pojo.Feedback;
import com.job.service.IFeedbackService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("feedbackService")
public class FeedbackServiceImpl implements IFeedbackService {
    @Resource
    private IFeedbackDao iFeedbackDao;

    public List<Feedback> userFeedbackListByteStatusIsFalse() {
        return iFeedbackDao.userFeedbackListByteStatusIsFalse();
    }

    public int userFeedbackAdd(Feedback feedback) {
        return iFeedbackDao.userFeedbackAdd(feedback);
    }

    public Feedback selectByteFeedbackId(Feedback feedback) {
        return iFeedbackDao.selectByteFeedbackId(feedback);
    }
}
