package com.heroku.runners;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = { "html:target/cucumber-heroku-report",
				"json:target/cucumber-heroku.json",
				"rerun:target/rerun.txt"
		},
		tags = "@smoke",
		features = {"src/test/resources/com/features"},
		glue="com/heroku/steps_definitions"
//		,dryRun =true
		)


public class SmokeTest_Runner {

}
