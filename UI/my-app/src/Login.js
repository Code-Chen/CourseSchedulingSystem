import React, {Component} from 'react';
import {Form, Input, Button, Card, Radio, Select, message} from 'antd';
import axios from 'axios';

import 'antd/dist/antd.css';

const RadioGroup = Radio.Group;
const {Option} = Select;

class Login extends Component {

    componentDidMount() {
        axios.post('/queryCollegeInfo', null).then((res) => {
            if (res.data.code === '1') {
                this.college = res.data.data;
            }
        });
        sessionStorage.removeItem('id')
    };

    handleSubmit = () => {
        this.props.form.validateFields((err, values) => {
            if (!err) {
                axios.post('/userLogin', {
                    username: values.username,
                    password: values.password,
                    role: values.role,
                }).then((res) => {
                    if (res.data.code === '1') {
                        if (values.role === "2") {
                            this.props.history.push({pathname: 'app', collegeno: values.college});
                        } else {
                            this.props.history.push({ pathname: 'applicationTeacher' });
                        }
                    } else {
                        message.info(res.data.message)
                    }
                }).catch((err) => {
                    message.info(err);
                });
            }
        });
    };

    handleCancel = () => {
        this.props.form.resetFields();
    };

    render() {
        const {form} = this.props;

        const college = this.college ? this.college.map(a => (
            <Option value={a.collegeno} key={a.id}>{a.collegename}</Option>
        )) : null;

        return (
            <Card bordered style={{width: 500, height: 350, margin: '100px auto 0'}}>
                <Form labelCol={{span: 5}} wrapperCol={{span: 12}} onSubmit={this.handleSubmit}>
                    <Form.Item label="账号">
                        {form.getFieldDecorator('username', {
                            rules: [{
                                required: true,
                                message: '请填写账号！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label="密码">
                        {form.getFieldDecorator('password', {
                            rules: [{
                                required: true,
                                message: '请填写密码！'
                            }],
                        })(
                            <Input.Password/>)}
                    </Form.Item>
                    <Form.Item label='身份类型'>
                        {form.getFieldDecorator('role', {
                            rules: [{
                                required: true,
                                message: '请选择身份类型！'
                            }],
                        })(
                            <RadioGroup>
                                <Radio value='1'>教务处</Radio>
                                <Radio value="2">学院</Radio>
                            </RadioGroup>)}
                    </Form.Item>
                    <Form.Item label="学院名" style={form.getFieldsValue().role==='2'?{display:'block'}:{display:'none'}}>
                        {form.getFieldDecorator('college', {
                            rules:form.getFieldsValue().role==='2'? [{
                                required: true,
                                message: '请选择学院名！'
                            }]:[],
                        })(<Select>{college}</Select>)}
                    </Form.Item>
                    <Form.Item wrapperCol={{span: 12, offset: 5}}>
                        <Button style={{marginRight: 30}} onClick={this.handleCancel}>取消</Button>
                        <Button type="primary" onClick={this.handleSubmit}>登录</Button>
                    </Form.Item>
                </Form>
            </Card>
        );
    }
}

const LoginPage = Form.create()(Login);

export default LoginPage;
