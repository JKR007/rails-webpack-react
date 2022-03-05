import React from 'react'
import { Layout, Menu } from 'antd'

const { Header } = Layout
const { Item } = Menu

export const AppHeader = () => {
  return (
    <Header>
      <div className='logo' />
      <Menu theme='dark' mode='horizontal' defaultSelectedKeys={['0']}>
        <Item key='0'>Home</Item>
        <Item key='1'>Services</Item>
        <Item key='2'>Contact</Item>
      </Menu>
    </Header>
  )
}