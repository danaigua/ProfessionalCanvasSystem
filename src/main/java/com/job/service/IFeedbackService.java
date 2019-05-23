package com.job.service;

import com.job.pojo.Feedback;

import java.util.List;

public interface IFeedbackService {
    List<Feedback> userFeedbackListByteStatusIsFalse();
    int userFeedbackAdd(Feedback feedback);
    Feedback selectByteFeedbackId(Feedback feedback);
}
