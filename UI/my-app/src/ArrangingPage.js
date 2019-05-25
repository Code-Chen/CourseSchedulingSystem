import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, Switch, Select,message} from 'antd';
import ApplicationTeacher from './ApplicationTeacher';
import axios from "axios";

import './CollegeRole.css'

const FormItem = Form.Item;

const columns = [
    {title: '序号', dataIndex: 'id',},
    {title: '学期', dataIndex: 'semester',},
    {title: '学院', dataIndex: 'collegeno',},
    {title: '班级', dataIndex: 'classno',},
    {title: '课程', dataIndex: 'courseno',},
    {title: '课程属性', dataIndex: 'courseattr',},
    {title: '人数', dataIndex: 'studentnumber',},
    {title: '周学时', dataIndex: 'weeksnumber',},
    {title: '周数', dataIndex: 'weekssum',},
    {title: '是否固定', dataIndex: 'isfix',},
    {title: '固定时间', dataIndex: 'classtime',},
];

class ArrangingPage extends PureComponent {
    state = {tableData:[],semesterList:[]};

    componentWillMount() {
        axios.post('/querySemester').then((res) => {
            if (res.data.code === '1') {
                this.setState({semesterList:res.data.data})
            }
        });
        this.getTableData({})
    }

    getTableData=(data)=>{
        axios.post('/queryClassTask',data ).then((res) => {
            if (res.data.code === '1') {
                res.data.data.forEach(a=>{
                    if (a.isfix === '1') {
                        a.isfix = '否'
                    } else {
                        a.isfix = '是'
                    }
                });
                this.setState({tableData:res.data.data});
            }
        });
    };

    arrangeClick=()=>{
        const {form} = this.props;

        axios.post('/classScheduling',{semester:form.getFieldsValue().semester}).then((res) => {
            if (res.data.code === '1') {
                message.success('排课成功');
                this.props.history.push({pathname: 'allCollegeRole'});
            }else{
                message.error('排课失败！')
            }
        });
    };

    render() {
        const {form} = this.props;
        const {tableData,semesterList}=this.state;

        const options=(
            semesterList.map(a=><Select.Option key={a}>{a}</Select.Option>)
        );
        return (
            <ApplicationTeacher>
                <Form
                    className="ant-advanced-search-form"
                    onSubmit={this.handleSearch}
                >
                    <Row gutter={24}>
                        <Col span={8}>
                            <FormItem label='选择学年'>
                                {form.getFieldDecorator('semester', {})(<Select allowClear style={{width:200}}>{options}</Select>)}
                            </FormItem>
                        </Col>
                        <FormItem>
                            <Button type='primary' onClick={this.arrangeClick}>开始排课</Button>
                        </FormItem>
                    </Row>
                    <Table columns={columns} dataSource={tableData} bordered/>
                </Form>
            </ApplicationTeacher>
        )
    }
}

const ArrangPage = Form.create()(ArrangingPage);

export default ArrangPage;