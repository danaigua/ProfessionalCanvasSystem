package com.job.dao;

import com.job.pojo.Feedback;

import java.util.List;

public interface IFeedbackDao {
    List<Feedback> userFeedbackListByteStatusIsFalse();
    int userFeedbackAdd(Feedback feedback);
}
