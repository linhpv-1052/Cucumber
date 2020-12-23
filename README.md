#### Use on local
```
# Start ruby service
$ docker-compose run ruby bash
```

```
// Run all scenarios
$ cucumber

// Run scenario with tag is @test
$ cucumber --tags @test
```

#### Debugging on local
Install VNC Viewer in https://www.realvnc.com/en/connect/download/viewer/
Use VNC client and connect to http://localhost:5900 with password is `secret`

#### Conventions and Guidelines
`features/{feature_name}/*`: Define Features and Scenarios with Gherkin Syntax.

`features/step_definitions/*`: Define step_definitions. In step definitions should be call main actions from `pages` and assertion (should use Rspec assertion).

`features/pages/*`: Define class and implement actions on this page.

For interact with pages => Use https://github.com/teamcapybara/capybara#the-dsl

#### Report
For generate html-report:
```
$ cucumber -p html-report
```
