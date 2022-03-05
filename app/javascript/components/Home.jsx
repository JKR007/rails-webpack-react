import React from 'react'
import { Layout } from 'antd'
import { Books } from './Books'
import { AppHeader } from './AppHeader'

const { Content, Footer } = Layout

export const Home = () => {
  return (
    <Layout className='layout'>
      <AppHeader />
      <Content style={{padding: '0 50px'}} >
        <div className='layout-content' style={{margin: '100px auto'}} >
          <h1>Books Catalog</h1>
          <Books />
        </div>
      </Content>
      <Footer style={{textAlign: 'center'}}>
        Dev. AbduQahhor ©{new Date().getFullYear()}
      </Footer>
    </Layout>
  )
}