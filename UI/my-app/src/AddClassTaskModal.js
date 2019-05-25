import React, {PureComponent} from 'react';
import {Form,Modal,Input,Switch,message} from 'antd';
import axios from "axios/index";

class AddClassTaskModal extends PureComponent{
    onOk=()=>{
        this.props.form.validateFields((err, values) => {
            let data={...values};
            if(values.isfix){
                data={...values,isfix:2}
            }else{
                data={...values,isfix:1}
            }

            axios.post('/saveClassTask', {...data}).then((res) => {
                if (res.data.code === '1') {message.success('添加成功！')}
            });
        })
    };

    render(){
        const {visible,onOk,onCancel,form}=this.props;
        return (
            <Modal visible={visible} onOk={this.onOk} onCancel={onCancel}>
                <Form>
                    <Form.Item label='学期'>
                        {form.getFieldDecorator('semester', {
                            rules: [{
                                required: true,
                                message: '请填写学期！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='班级'>
                        {form.getFieldDecorator('classno', {
                            rules: [{
                                required: true,
                                message: '请填写班级！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='课程'>
                        {form.getFieldDecorator('courseno', {
                            rules: [{
                                required: true,
                                message: '请填写课程！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='课程属性'>
                        {form.getFieldDecorator('courseattr', {
                            rules: [{
                                required: true,
                                message: '请填写课程属性！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='人数'>
                        {form.getFieldDecorator('studentnumber', {
                            rules: [{
                                required: true,
                                message: '请填写人数！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='周学时'>
                        {form.getFieldDecorator('weekssum', {
                            rules: [{
                                required: true,
                                message: '请填写周学时！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='周数'>
                        {form.getFieldDecorator('weeksnumber', {
                            rules: [{
                                required: true,
                                message: '请填写周数！'
                            }],
                        })(
                            <Input/>)}
                    </Form.Item>
                    <Form.Item label='是否固定'>
                        {form.getFieldDecorator('isfix', {
                            rules: [{
                                required: true,
                                message: '请选择是否固定！'
                            }],
                        })(
                            <Switch />)}
                    </Form.Item>
                    <Form.Item label='固定时间'>
                        {form.getFieldDecorator('classtime', {
                            rules: [{
                                required: true,
                                message: '请填写固定时间！'
                            }],
                        })(
                            <Input />)}
                    </Form.Item>
                </Form>
            </Modal>
        )
    }
}

export default Form.create()(AddClassTaskModal);