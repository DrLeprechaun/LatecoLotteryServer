package com.lateco.lotteryserver.controllers;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.lateco.lotteryserver.SequenceGeneration;

@RestController
public class SequenceController {
	
	@ExceptionHandler
	@CrossOrigin
    @RequestMapping("/getSequence")
    public int[] getSequence() {
        return SequenceGeneration.randomSequence();
    }

}
