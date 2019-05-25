import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, Modal} from 'antd';
import axios from "axios";

import './CollegeRole.css'

const FormItem = Form.Item;

class Teacher extends PureComponent {

    selectData = {};

    tableData = [];

    columns = [
        {title: '序号', dataIndex: 'id',},
        {title: '学院', dataIndex: 'collegeno',},
        {title: '教师编号', dataIndex: 'teacherno',},
        {title: '教师名', dataIndex: 'teachername',},
        {title: '年龄', dataIndex: 'age',},
        {title: '职称', dataIndex: 'title',},
    ];

    getTableData = () => {
        const {collegeno} = this.props;

        axios.post('/queryTeacherInfo', {collegeno}).then((res) => {
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

        if (Object.keys(this.tableData).length === 0 && collegeno) {
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
                            <FormItem label='搜索'>
                                {form.getFieldDecorator('password', {})(<Input/>)}
                            </FormItem>
                        </Col>
                        <Col span={8}>
                            <FormItem>
                                <Button type='primary'>搜索</Button>
                            </FormItem>
                        </Col>
                    </Row>
                    <Table columns={this.columns} dataSource={this.tableData}
                           rowSelection={rowSelectProp} bordered/>
                </Form>
            </Modal>
        )
    }
}

const TeacherPage = Form.create()(Teacher);

export default TeacherPage;