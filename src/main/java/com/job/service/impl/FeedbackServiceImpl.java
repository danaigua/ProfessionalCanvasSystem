package com.job.service.impl;

import com.job.dao.IFeedbackDao;
import com.job.service.IFeedbackService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("feedbackServiceImpl")
public class FeedbackServiceImpl implements IFeedbackService {
    @Resource
    private IFeedbackDao iFeedbackDao;
}
