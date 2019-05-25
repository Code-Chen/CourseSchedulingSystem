import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, Modal} from 'antd';

import './CollegeRole.css'
import axios from "axios/index";

const FormItem = Form.Item;

class ClassPlan extends PureComponent {


    tableData=[];
    selectData = {};

    columns = [
        {title: '序号', dataIndex: 'id',},
        {title: '学期', dataIndex: 'semester',},
        {title: '班级', dataIndex: 'classno',render:(text,record)=>(record.classname)},
        {title: '课程', dataIndex: 'courseno',render:(text,record)=>(record.courseName)},
        {title: '课程属性', dataIndex: 'courseattr',},
        {title: '人数', dataIndex: 'studentnumber',},
        {title: '周学时', dataIndex: 'weeksnumber',},
        {title: '周数', dataIndex: 'weekssum',},
    ];

    getTableData = () => {
        const {collegeno} = this.props;

        axios.post('/queryTeachPlan', {collegeno}).then((res) => {
            if (res.data.code === '1') {
                this.tableData = res.data.data;
            }
        });
    };

    selectDataHandle = (selectedRowKeys) => {
        this.selectData = selectedRowKeys;
    };

    render() {
        const {form, onCancel, visible, onOk, collegeno} = this.props;

        if (collegeno) {
            this.getTableData()
        }

        const rowSelectProp = {
            type: 'radio',
            onSelect: this.selectDataHandle
        };

        return (
            <Modal visible={visible} width={800} onOk={() => onOk(this.selectData)} onCancel={onCancel}>
                <Form
                    className="ant-advanced-search-form"
                    onSubmit={this.handleSearch}
                >
                    <Row gutter={24}>
                        <Col span={8}>
                            <FormItem label='搜索关键字'>
                                {form.getFieldDecorator('password', {})(<Input/>)}
                            </FormItem>
                        </Col>
                        <Col span={8}>
                            <FormItem>
                                <Button type='primary'>搜索</Button>
                            </FormItem>
                        </Col>
                    </Row>
                    <Table
                        columns={this.columns}
                        dataSource={this.tableData}
                        rowSelection={rowSelectProp}
                        bordered/>
                </Form>
            </Modal>
        )
    }
}

const ClassTaskPage = Form.create()(ClassPlan);

export default ClassTaskPage;