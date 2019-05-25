import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, message} from 'antd';
import ApplicationTeacher from './ApplicationTeacher';
import axios from "axios/index";
import CollegeInfo from "./CollegeInfo";
import TeachBuildInfo from "./TeachBuildInfo";

import './CollegeRole.css'
import confirm from "antd/es/modal/confirm";

const FormItem = Form.Item;


class ArrangeTeaching extends PureComponent {
    state = {tableData:[],collegeVisible:false,teacherBuildVisible:false,addTableItem:{}};

    columns = [
        {title: '序号', dataIndex: 'id',},
        {title: '学院', dataIndex: 'collegeno',
            render:  (text,record) => (record.id ? record.collegeno :<Button onClick={() => {
                this.setState({collegeVisible: true})
            }}>{record.collegeno?record.collegeno: '选择学院'}</Button>)},
        {title: '教学楼', dataIndex: 'teachbuildno',
            render:  (text,record) => (record.id ? record.teachbuildno :<Button onClick={() => {
                this.setState({teacherBuildVisible: true})
            }}>{record.teachbuildno?record.teachbuildno: '选择教学楼'}</Button>)
        },
        {
            title: '操作', render: (text, record) => (record.id
                    ? (<Button onClick={() => this.deleteHandle(record)}>删除</Button>)
                    : (
                        <span>
                        <Button onClick={() => this.deleteHandle(record)}>删除</Button>
                        <Button onClick={() => this.submitHandle(record)}>保存</Button>
                    </span>
                    )
            ),
        },
    ];

    componentWillMount() {
        this.requestData({});
    }

    requestData = (data) => {
        axios.post('/queryLocationInfo', data).then((res) => {
            if (res.data.code === '1') {
                this.setState({tableData: res.data.data});
            }
        });
    };

    submitHandle = () => {
        const {addTableItem} = this.state;
        if(!addTableItem.teachbuildno){
            message.error('教学楼必填！');
            return;
        }
            axios.post('/saveLocationInfo', {...addTableItem}).then((res) => {
                if (res.data.code === '1') {
                    message.success('添加成功！');
                    this.requestData({});
                    this.setState({addTableItem:{}})
                }
            });
    };

    deleteHandle = (record) => {
        const {tableData} = this.state;

        const that=this;

        confirm({
            title: '删除吗',
            content: '确认删除吗',
            onOk() {
                if (!record.id) {
                    const newTableData = tableData.filter(a => a.id);
                    that.setState({addTableItem:{}, tableData: newTableData});
                } else {
                    axios.post('/deleteLocationInfo', {id: record.id}).then((res) => {
                        if (res.data.code === '1') {
                            message.success('删除成功！');
                            that.requestData({});
                            that.setState({addTableItem:{}, tableData: res.data.data});
                        }
                    });
                }
            },
        });

    };

    collegeInfoOnOk = (selectData) => {
        const {tableData} = this.state;

        if (Object.keys(selectData).length > 0) {
            let {collegeno,collegename, ...data} = selectData;
            console.log(collegeno,collegename);
            tableData.splice(0,0,{collegeno:collegename});
            this.setState({addTableItem: {collegeno}, collegeVisible: false, tableData})
        }
    };

    teacherOnOk = (selectData) => {
        const {tableData, addTableItem} = this.state;

        if (Object.keys(selectData).length > 0) {
            let {teachbuildno,teachbuildname, ...data} = selectData;

            tableData.forEach(a => {
                if (!a.id) {
                    a.teachbuildno = teachbuildname;
                }
            });

            const newAddTableItem = {...addTableItem, teachbuildno};

            this.setState({addTableItem: newAddTableItem, teacherBuildVisible: false, tableData});
        }
    };

    handleSearch=()=>{
        const {form}=this.props;
        let data={condition:form.getFieldsValue().condition};
        this.requestData(data);
    };

    render() {
        const {form} = this.props;
        const {tableData, collegeVisible, teacherBuildVisible, addTableItem} = this.state;

        return (
            <ApplicationTeacher>
                <Form
                    className="ant-advanced-search-form"
                >
                    <Row gutter={24}>
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
                    <FormItem>
                        <Button type='primary'
                                onClick={() => this.setState({collegeVisible: true})}
                                disabled={Object.keys(addTableItem).length > 0 ? true : false}>添加</Button>
                    </FormItem>
                    <Table columns={this.columns} dataSource={tableData} bordered/>
                    <CollegeInfo visible={collegeVisible} onOk={this.collegeInfoOnOk}
                               onCancel={() => this.setState({collegeVisible: false})}/>
                    <TeachBuildInfo visible={teacherBuildVisible} onOk={this.teacherOnOk}
                             onCancel={() => this.setState({teacherBuildVisible: false})}/>
                </Form>
            </ApplicationTeacher>
        )
    }
}

const ArrangeTeachingPage = Form.create()(ArrangeTeaching);

export default ArrangeTeachingPage;