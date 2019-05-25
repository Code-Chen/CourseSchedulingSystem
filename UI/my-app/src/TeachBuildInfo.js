import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, Modal} from 'antd'
import axios from "axios/index";

import './CollegeRole.css'

const FormItem = Form.Item;

const columns = [
    {title: '序号', dataIndex: 'id',},
    {title: '教学楼编号', dataIndex: 'teachbuildno',},
    {title: '教学楼名称', dataIndex: 'teachbuildname',},
];

class TeachBuildInfo extends PureComponent {
    state = {tableData:[]};

    tableData=[];

    selectData={};

    getTableData = () => {

        axios.post('/queryTeachBuildInfo',{}).then((res) => {
            if (res.data.code === '1') {
                this.tableData = res.data.data;
            }
        });
    };

    selectDataHandle = (selectedRowKeys) => {
        this.selectData = selectedRowKeys;
    };

    render() {
        const {form, onCancel, visible, onOk} = this.props;

        if (Object.keys(this.tableData).length === 0 ) {
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
                    <Row><Col>
                        <FormItem>
                            <Button type='primary'>添加开课任务</Button>
                        </FormItem>
                    </Col></Row>
                    <Table columns={columns} rowSelection={rowSelectProp} dataSource={this.tableData} bordered/>
                </Form>
            </Modal>
        )
    }
}

export default Form.create()(TeachBuildInfo);