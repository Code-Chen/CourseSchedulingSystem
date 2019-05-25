import React, {PureComponent} from 'react';
import {Layout, Menu,Button} from 'antd';
import {Link} from 'react-router-dom';

const {
    Header, Content, Footer, Sider,
} = Layout;

class ApplicationManage extends PureComponent {
    state = {
        collapsed: false,
        itemId: []
    };

    componentDidMount() {
        if (this.props.history) {
            sessionStorage.setItem('id',this.props.history.location.collegeno);
            this.props.history.push({pathname: '/collegeRole'});
        }
    };

    onCollapse = (collapsed) => {
        console.log(collapsed);
        this.setState({collapsed});
    };

    render() {
        const {itemId} = this.state;

        return (
            <Layout style={{minHeight: '100vh',height: '100vh'}}>
                <Sider
                    collapsible
                    collapsed={this.state.collapsed}
                    onCollapse={this.onCollapse}
                >
                    <div style={{height: 30, width: 100, background: '#3f3a40', margin: '20px auto'}}/>
                    <Menu theme="dark" defaultSelectedKeys={itemId} mode="inline">
                        <Menu.Item key="1"><Link to='/collegeRole'
                                                 onClick={() => this.setState({itemId: ['1']})}>查询模块</Link></Menu.Item>
                        <Menu.Item key="2"><Link to='/classTask'
                                                 onClick={() => this.setState({itemId: ['2']})}>安排开课任务</Link></Menu.Item>
                    </Menu>
                </Sider>
                <Layout style={{overflow: 'hidden'}}>
                    <Header><Button><Link to='/'>退出</Link></Button></Header>
                    <Content style={{margin: '0 16px',overflow:'scroll'}}>
                        {this.props.children}
                    </Content>
                    <Footer style={{textAlign: 'center'}}>
                        Ant Design ©2018 Created by Ant UED
                    </Footer>
                </Layout>
            </Layout>
        );
    }
}

export default ApplicationManage;