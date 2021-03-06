import {useHistory, useLocation} from "react-router-dom";
import {
  Card,
  Col,
  Descriptions, List,
  PageHeader,
  Row, Space,
  Typography
} from "antd";
import React from "react";
import moment from "moment";
import {TIME_FORMAT} from "../../config/sysConfig";
import './order.less'

const {Text,Paragraph,Link } = Typography;

const OrderDetail = () => {
  const history = useHistory()
  let {orderDetail} = useLocation().state

  const {paymentWay,orderTime,orderId, deliveryTime, paymentTime, orderTotal,orderNote, userName, userId, productContents} = orderDetail
  const {name, phone, areas, detailedAddress, email} = orderDetail.orderAddress

  //商品状态
  const productState=(status)=>{
      switch (status) {
        case 1:
          return '待发货'
        case 2:
          return '待收货'
        case 3:
          return '已收货'
      }
  }

  return (
      <>
        <PageHeader
            ghost={false}
            onBack={() => history.push('/order')}
            title="订单详情"
        />
        <Card>
          <Descriptions column={2}>
            <Descriptions.Item label="订单号">
              <Paragraph copyable>{orderId}</Paragraph>
            </Descriptions.Item>
            <Descriptions.Item label="创建时间">
              {moment(orderTime).format(TIME_FORMAT)}
            </Descriptions.Item>
            <Descriptions.Item label="支付时间">
              {moment(paymentTime).format(TIME_FORMAT)}
            </Descriptions.Item>
            <Descriptions.Item label="总价">
              <Text mark strong> {`￥ ${orderTotal.toFixed(2)}`.replace(/\B(?=(\d{3})+(?!\d))/g,
                  ',')}</Text>
            </Descriptions.Item>
            <Descriptions.Item label="所属用户">
              <Paragraph copyable>{userName}</Paragraph>
            </Descriptions.Item>
            <Descriptions.Item label="所属用户ID">
              <Paragraph copyable>{userId}</Paragraph>
            </Descriptions.Item>
            <Descriptions.Item label="预计送达时间">
              {moment(deliveryTime).format(TIME_FORMAT)}
            </Descriptions.Item>
            <Descriptions.Item label="支付方式">
              {paymentWay===1?'钱包':'支付宝'}
            </Descriptions.Item>
            <Descriptions.Item label="订单备注">
              {orderNote}
            </Descriptions.Item>
            <Descriptions.Item label="地址">
              姓名: {name}<br/>
              电话: {phone}<br/>
              地址: {areas + detailedAddress}<br/>
              邮件: {email}
            </Descriptions.Item>
          </Descriptions>
            <List
                size="small"
                dataSource={productContents}
                renderItem={item => (
                    <div className="order-detail-product">
                      <Row>
                        <Col span={6}>
                          <img className="order-detail-product-img" title={item.productName} src={item.productImage}/>
                        </Col>
                        <Col span={17}>
                          <Link title={item.productName} href={`https://www.smallprofit.fhxasdsada.xyz/product?productId=${item.productId}`}>
                            <Paragraph ellipsis>
                              <Text type="secondary">商品名:</Text>
                              <Text strong className="order-detail-product-name-link">{item.productName}</Text>
                            </Paragraph>
                          </Link >
                          <Paragraph title={item.productConfiguration} ellipsis>
                            <Text type="secondary">商品配置:</Text>
                            <Text underline strong>{item.productConfiguration}</Text>
                          </Paragraph>
                          <Space size="middle">
                            <span>
                              <Text type="secondary">单价:</Text>
                              <Text mark strong>{`￥ ${item.productPrice.toFixed(2)}`.replace(/\B(?=(\d{3})+(?!\d))/g, ',')}</Text>
                            </span>
                            <span>
                              <Text type="secondary">数量:</Text>
                              <Text strong> {item.productQuantity}</Text>
                            </span>
                            <span>
                              <Text type="secondary">重量:</Text>
                              <Text strong> {item.productWeight}</Text>
                            </span>
                            <span>
                              <Text type="secondary">状态:</Text>
                              <Text underline strong> {productState(item.productState)}</Text>
                            </span>
                          </Space>
                        </Col>
                      </Row>
                    </div>
                )}
            />
        </Card>
      </>
  )
}

export default OrderDetail