import React, {PureComponent} from 'react';
import {Form, Table, Row, Col, Input, Button, Switch, message,TreeSelect} from 'antd';
import ApplicationManage from './ApplicationManage';
import ClassPlan from './ClassPlan'
import Teacher from './Teacher'
import axios from "axios";
import confirm from "antd/es/modal/confirm";

import './CollegeRole.css'

const FormItem = Form.Item;

const options = [
    {
        value: 'monday',
        title: '周一',
        key:'monday',
        children: [{value: '01' ,title:'1.2节',key: '01'},{value: '02',title: '3.4节',key: '02'},{value: '03',title: '5.6节',key: '03'},{value:'04',title:  '7.8节',key: '04'},{value: '05',title: '9.10节',key: '05',}],
    },
    {
        value:'tuesday' ,
        title: '周二',
        key: 'tuesday',
        children: [{value:  '06',title:'1.2节',key: '06',},{value: '07',title: '3.4节',key: '07'},{value: '08',title: '5.6节',key: '08',},{value:'09',title:  '7.8节',key: '09',},{value: '10',title: '9.10节',key: '10',}],
    },
    {
        value:  'wednesday',
        title:'周三',
        key: 'wednesday',
        children: [{value: '11',title: '1.2节',key: '11'},{value: '12',title: '3.4节',key: '12'},{value: '13',title: '5.6节',key: '13',},{value:'14',title:  '7.8节',key: '14',},{value: '15',title: '9.10节',key: '15',}],
},
    {
        value: 'thursday',
        title: '周四',
        key: 'thursday',
        children: [{value: '16',title: '1.2节',key: '16',},{value: '17',title: '3.4节',key: '17'},{value: '18',title: '5.6节',key: '18'},{value:'19',title:  '7.8节',key: '19',},{value: '20',title: '9.10节',key: '20',}],
    },
    {
        value:'friday' ,
        title: '周五',
        key: 'friday',
        children: [{value: '21',title: '1.2节',key: '21',},{value: '22',title: '3.4节',key: '22'},{value: '23',title: '5.6节',key: '23',},{value:'24',title:  '7.8节',key: '24',},{value: '25',title: '9.10节',key: '25',}],
    }
];

class ClassTask extends PureComponent {
    state = {tableData: [], addClassTaskVisible: false, teacherVisible: false, addTableItem: {}};

    columns = [
        {title: '序号', dataIndex: 'id',},
        {title: '学期', dataIndex: 'semester',},
        {title: '班级', dataIndex: 'classno',},
        {title: '课程', dataIndex: 'courseno',},
        {title: '课程属性', dataIndex: 'courseattr',},
        {title: '人数', dataIndex: 'studentnumber',},
        {title: '周学时', dataIndex: 'weeksnumber',},
        {title: '周数', dataIndex: 'weekssum',},
        {
            title: '是否固定',
            dataIndex: 'isfix',
            render: (text,record) => (record.id ? record.isfix : (<Switch onChange={(checked) => this.handleSwicthChange(checked)}/>))
        },
        {
            title: '固定时间',
            dataIndex: 'classtime',
            render: (text,record) => (
                record.isfix===true
                    ? (<TreeSelect treeCheckable={true} style={{width:120}} treeData={options} onChange={(e) => this.classTimeChange(e)}/>
                    ):record.classtime)
        },
        {
            title: '教师',
            dataIndex: 'teacherno',
            render:  (text,record) => (record.id ? record.teacherno :<Button onClick={() => {
                this.setState({teacherVisible: true})
            }}>{record.teacherno?record.teacherno: '选择教师'}</Button>)
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
        const collegeno = sessionStorage.getItem('id');
        this.requestData({collegeno});
    }

    handleSwicthChange = (checked) => {
        const {tableData, addTableItem} = this.state;

        tableData.forEach(a => {
            if (!a.id) {
                a.isfix = checked;
            }
        });

        const newAddTableItem = {...addTableItem, isfix: checked ? '2' : '1'};
        this.setState({addTableItem: newAddTableItem, tableData});
    };

    classTimeChange = (value) => {
        const {tableData, addTableItem} = this.state;
        tableData.forEach(a => {
            if (!a.id) {
                a.classtime = value;
            }
        });

        const newAddTableItem = {...addTableItem, classtime: value.toString().replace(/,/g,'')};
        this.setState({addTableItem: newAddTableItem, tableData});
    };

    requestData = (data) => {
        axios.post('/queryClassTask', data).then((res) => {
            if (res.data.code === '1') {
                res.data.data.forEach(a => {
                    if (a.isfix === '2') {
                        a.isfix = '是'
                    } else {
                        a.isfix = '否'
                    }
                });
                this.setState({tableData: res.data.data});
            }
        });
    };

    submitHandle = () => {
        const {addTableItem} = this.state;
        const collegeno = sessionStorage.getItem('id');
        if(!addTableItem.teacherno){
            message.error('教师必填！');
            return;
        }

        if (addTableItem.isfix === '2' && !addTableItem.classtime) {
            message.error('固定时间必填！')
        } else {
            axios.post('/saveClassTask', {...addTableItem}).then((res) => {
                if (res.data.code === '1') {
                    message.success('添加成功！');
                    this.requestData({collegeno});
                    this.setState({addTableItem:{}})
                }
            });
        }
    };

    deleteHandle = (record) => {
        const {tableData, addTableItem} = this.state;
        const collegeno = sessionStorage.getItem('id');

        const that=this;

        confirm({
        title: '删除吗',
        content: '确认删除吗',
        onOk() {
            if (!record.id) {
                const newTableData = tableData.find(a => a.id);
                that.setState({addTableItem:{}, tableData: newTableData});
            } else {
                axios.post('/deleteClassTask', {collegeno, id: record.id}).then((res) => {
                    if (res.data.code === '1') {
                        message.success('删除成功！');
                        that.requestData({collegeno});
                        that.setState({addTableItem:{}, tableData: res.data.data});
                    }
                });
            }
        },
        });

    };

    classPlanOnOk = (selectData) => {
        const {tableData} = this.state;

        if (Object.keys(selectData).length > 0) {
            let {id, classno,classname,courseno,courseName,...data} = selectData;
            tableData.splice(0,0,{classno:classname,courseno:courseName,...data});
            this.setState({addTableItem: {classno,courseno,...data}, addClassTaskVisible: false, tableData})
        }
    };

    teacherOnOk = (selectData) => {
        const {tableData, addTableItem} = this.state;

        if (Object.keys(selectData).length > 0) {
            let {teacherno,teachername, ...data} = selectData;

            tableData.forEach(a => {
                if (!a.id) {
                    a.teacherno = teachername;
                }
            });

            const newAddTableItem = {...addTableItem, teacherno: teacherno};

            this.setState({addTableItem: newAddTableItem, teacherVisible: false, tableData});
        }
    };

    handleSearch=()=>{
        const {form}=this.props;
        const collegeno=sessionStorage.getItem('id');
        let data={};
        if(form.getFieldsValue().condition){
            data={collegeno,condition:form.getFieldsValue().condition}
        }else{
            data={collegeno}
        }
        this.requestData(data);
    };

    render() {
        const {form} = this.props;
        const {tableData, addClassTaskVisible, teacherVisible, addTableItem} = this.state;

        const collegeno = sessionStorage.getItem('id');

        return (
            <ApplicationManage>
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
                    <Row><Col>
                        <FormItem>
                            <Button type='primary'
                                    onClick={() => this.setState({addClassTaskVisible: true})}
                                    disabled={Object.keys(addTableItem).length > 0 ? true : false}>添加开课任务</Button>
                        </FormItem>
                    </Col></Row>
                    <Table columns={this.columns} dataSource={tableData} bordered/>
                </Form>
                <ClassPlan visible={addClassTaskVisible} onOk={this.classPlanOnOk} collegeno={collegeno}
                           onCancel={() => this.setState({addClassTaskVisible: false})}/>
                <Teacher visible={teacherVisible} onOk={this.teacherOnOk} collegeno={collegeno}
                         onCancel={() => this.setState({teacherVisible: false})}/>
            </ApplicationManage>
        )
    }
}

const ClassTaskPage = Form.create()(ClassTask);

export default ClassTaskPage;