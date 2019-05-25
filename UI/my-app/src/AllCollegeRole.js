import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, Menu, Select} from 'antd';
import ApplicationTeacher from './ApplicationTeacher';
import axios from "axios";

import './CollegeRole.css'

const FormItem = Form.Item;

const weekData=[
    {id:'01',week:'monday',festival:'1.2节'},{id:'02',week:'monday',festival:'3.4节'},{id:'03',week:'monday',festival:'5.6节'},{id:'04',week:'monday',festival:'7.8节'},{id:'05',week:'monday',festival:'9.10节'},
    {id:'06',week:'tuesday',festival:'1.2节'},{id:'07',week:'tuesday',festival:'3.4节'},{id:'08',week:'tuesday',festival:'5.6节'},{id:'09',week:'tuesday',festival:'7.8节'},{id:'10',week:'tuesday',festival:'9.10节'},
    {id:'11',week:'wednesday',festival:'1.2节'},{id:'12',week:'wednesday',festival:'3.4节'},{id:'13',week:'wednesday',festival:'5.6节'},{id:'14',week:'wednesday',festival:'7.8节'},{id:'15',week:'wednesday',festival:'9.10节'},
    {id:'16',week:'thursday',festival:'1.2节'},{id:'17',week:'thursday',festival:'3.4节'},{id:'18',week:'thursday',festival:'5.6节'},{id:'19',week:'thursday',festival:'7.8节'},{id:'20',week:'thursday',festival:'9.10节'},
    {id:'21',week:'friday',festival:'1.2节'},{id:'22',week:'friday',festival:'3.4节'},{id:'23',week:'friday',festival:'5.6节'},{id:'24',week:'friday',festival:'7.8节'},{id:'25',week:'friday',festival:'9.10节'},
];

class AllCollegeRole extends PureComponent {
    state = {tableData:[],filterTableData:[],course:[],currentMenu:null,semesterList:[]};

    columns = [
        {title: '节次/星期', dataIndex: 'week',},
        {title: '星期一', dataIndex: 'monday',},
        {title: '星期二', dataIndex: 'tuesday',},
        {title: '星期三', dataIndex: 'wednesday',},
        {title: '星期四', dataIndex: 'thursday',},
        {title: '星期五', dataIndex: 'friday',},
    ];

    getTableData=(data)=>{
        const tableData=[];
        const tableDataObj = {};
        const course=[];

        axios.post('/queryCoursePlan', data).then((res) => {
            if (res.data.code === '1') {
                res.data.data.forEach(a=>{
                    const week = weekData.find(b => b.id === a.classtime);
                    if (!tableDataObj[a.classno]) {
                        tableDataObj[a.classno] = [{
                            key: a.id,
                            id: a.id,
                            [week.week]: `${a.courseno}(${a.classroomno}室--${a.teacherno})`,
                            class: a.classno,
                            week: week.festival
                        }];
                    } else {
                        tableDataObj[a.classno].push({
                            key: a.id,
                            id: a.id,
                            [week.week]: `${a.courseno}(${a.classroomno}室--${a.teacherno})`,
                            class: a.classno,
                            week: week.festival
                        });
                    }

                    if (course.indexOf(a.classno) === -1)
                        course.push(a.classno);
                })
                const tableList = Object.keys(tableDataObj);

                tableList.forEach(a => {
                    tableData.push({week: '1.2节', class: a,key:'1.2节'+a}, {week: '3.4节', class: a,key:'3.4节'+a}, {week: '5.6节', class: a,key:'5.6节'+a}, {
                        week: '7.8节',
                        class: a,key:'7.8节'+a
                    }, {week: '9.10节', class: a,key:'9.10节'+a})
                });

                res.data.data.forEach(b => {
                    const findweek = weekData.find(w => w.id === b.classtime);
                    tableData.forEach(a => {
                        if (b.classno === a.class && findweek.festival === a.week) {
                            a[findweek.week] = `${b.courseno}(${b.classroomno}室--${b.teacherno})`;
                            a.id = b.id;
                        }
                    })
                });
            }
            console.log(tableData);
            this.setState({tableData,course,currentMenu:course[0]});
            this.handleCourseClick(course[0])
        });
    };

    componentDidMount() {
        axios.post('/querySemester').then((res) => {
            if (res.data.code === '1') {
                this.setState({semesterList:res.data.data})
            }
        });
        this.getTableData({});
    };

    handleCourseClick=(value)=>{
        const {tableData}=this.state;

        const filterTableData=tableData.filter(a=>a.class===value);
        this.setState({filterTableData,currentMenu:value});
    };

    handleSearch=()=>{
        const {form}=this.props;
        const collegeno=sessionStorage.getItem('id');
        let data={};
        if(form.getFieldsValue().condition&&form.getFieldsValue().semester){
            data={semester:form.getFieldsValue().semester,collegeno,condition:form.getFieldsValue().condition}
        }else if(form.getFieldsValue().condition){
            data={collegeno,condition:form.getFieldsValue().condition}
        }else if(form.getFieldsValue().semester){
            data={semester:form.getFieldsValue().semester,collegeno}
        }else{
            data={collegeno}
        }
        this.getTableData(data);
    };

    render() {
        const {form} = this.props;
        const {tableData,filterTableData,course,semesterList}=this.state;

        const options=(
            semesterList.map(a=><Select.Option key={a}>{a}</Select.Option>)
        );
        return (
            <ApplicationTeacher>
                <Form
                    className="ant-advanced-search-form"
                >
                    <Row gutter={24}>
                        <Col span={8}>
                            <FormItem label='选择学年'>
                                {form.getFieldDecorator('semester', {})(<Select allowClear style={{width:200}}>{options}</Select>)}
                            </FormItem>
                        </Col>
                        <Col span={8}>
                            <FormItem label='搜索'>
                                {form.getFieldDecorator('condition', {})(<Input/>)}
                            </FormItem>
                        </Col>
                        <Col span={8}>
                            <FormItem>
                                <Button type='primary' onClick={this.handleSearch}>搜索</Button>
                            </FormItem>
                        </Col>
                    </Row>
                    <Row>
                        <Col span={6}>
                            <Menu mode='inline'><Menu.SubMenu title='请选择班级' key='sub'>
                                {course&&course.map(a=>(<Menu.Item onClick={()=>this.handleCourseClick(a)} key={a}>{a}</Menu.Item>))}
                            </Menu.SubMenu>
                            </Menu>
                        </Col>
                        <Col span={16}><Table columns={this.columns} dataSource={filterTableData.length>0?filterTableData:tableData} bordered/></Col>
                    </Row>
                </Form>
            </ApplicationTeacher>
        )
    }
}

export default Form.create()(AllCollegeRole);