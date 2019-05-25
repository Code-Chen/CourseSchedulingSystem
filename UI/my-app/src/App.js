import React, {Component} from 'react';
import {BrowserRouter, Route, Switch} from 'react-router-dom';
import Login from './Login';
import CollegeRole from './CollegeRole';
import ApplicationManage from './ApplicationManage';
import ClassTask from './ClassTask';
import ClassPlan from './ClassPlan';
import Teacher from './Teacher';
import ApplicationTeacher from './ApplicationTeacher';
import ArrangeTeaching from './ArrangeTeaching';
import AllCollegeRole from './AllCollegeRole';
import TeachBuildInfo from './TeachBuildInfo';
import ArrangingPage from './ArrangingPage';

class App extends Component {
    render() {
        return (
            <BrowserRouter>
                <Switch>
                    <Route exact path="/" component={Login}/>
                </Switch>
                <Switch>
                    <Route exact path="/app" component={ApplicationManage}/>
                    <Route exact path="/collegeRole" component={CollegeRole}/>
                    <Route exact path="/classTask" component={ClassTask}/>
                    <Route exact path="/classPlan" component={ClassPlan}/>
                    <Route exact path="/teacher" component={Teacher}/>
                </Switch>
                <Switch>
                    <Route exact path="/applicationTeacher" component={ApplicationTeacher}/>
                    <Route exact path="/arrangeTeaching" component={ArrangeTeaching}/>
                    <Route exact path="/allCollegeRole" component={AllCollegeRole}/>
                    <Route exact path="/arrangingPage" component={ArrangingPage}/>
                </Switch>
            </BrowserRouter>
        );
    }
}

export default App;
