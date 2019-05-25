import React, {PureComponent} from 'react';
import {Button, Layout, Menu} from 'antd';
import {Link} from 'react-router-dom';

const {
    Header, Content, Footer, Sider,
} = Layout;

class ApplicationTeacher extends PureComponent {
    state = {
        collapsed: false,
        itemId: []
    };

    componentDidMount() {
        if (this.props.history)
            this.props.history.push('arrangeTeaching')
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
                        <Menu.Item key="3"><Link to='allCollegeRole'
                                                 onClick={() => this.setState({itemId: ['3']})}>查询模块</Link></Menu.Item>
                        <Menu.Item key="1"><Link to='arrangeTeaching'
                                                 onClick={() => this.setState({itemId: ['1']})}>安排教学区域</Link></Menu.Item>
                        <Menu.Item key="4"><Link to='ArrangingPage'
                                                 onClick={() => this.setState({itemId: ['4']})}>排课页面</Link></Menu.Item>
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

export default ApplicationTeacher;