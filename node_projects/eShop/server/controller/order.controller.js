import Order from "../models/Order.model.js";
import OrderItem from "../models/OrderItem.model.js";


const createOrder = async (req, res) => {
    const orderItemsIds = Promise.all(req.body.orderItems.map(async (orderItem) => {
        let newOrderItem = new OrderItem({
            quantity: orderItem.quantity,
            product: orderItem.product
        })
        newOrderItem = await newOrderItem.save();
        return newOrderItem._id;
    }));

    const orderItemsIdsResolved = await orderItemsIds;

    let order = new Order({
        orderItems: orderItemsIdsResolved,
        shippingAddress1: req.body.shippingAddress1,
        shippingAddress2: req.body.shippingAddress2,
        city: req.body.city,
        zip: req.body.zip,
        country: req.body.country,
        phone: req.body.phone,
        status: req.body.status,
        //totalPrice: totalPrice,
        totalPrice: req.body.totalPrice,
        user: req.body.user,
    })
    order = await order.save();

    if (!order)
        return res.status(400).send('the order cannot be created!')

    res.send(order);
}

const getOrders = async (req, res) => {
    //const orderList = await Order.find().populate('user', 'name').sort({'dateOrdered': -1});
    const orderList = await Order.find().populate('orderItems').populate('user', 'name email phone');

    if (!orderList) {
        res.status(500).json({ success: false })
    }
    res.send(orderList);
}

const getOrder = async (req, res) => {
    const order = await Order.findById(req.params.id)
        .populate('user', 'name')
        //.populate('orderItems');
        //.populate({ path: 'orderItems', populate: 'product' });
        .populate({
            path: 'orderItems', populate: {
                path: 'product', populate: 'category'
            }
        });
    if (!order) {
        res.status(500).json({ success: false })
    }
    res.send(order);
}

const editOrderStatus = async (req, res) => {
    const order = await Order.findByIdAndUpdate(
        req.params.id,
        { status: req.body.status },
        { new: true }
    )

    if (!order)
        return res.status(400).send('the order cannot be update!')

    res.send(order);
}

const editOrder = async (req, res) => {
    const orderId = req.params.id;
    let inputOrderItems = req.body.orderItems ? req.body.orderItems : [];
    const orderedItemsId = await Order.findById(orderId).select("orderItems");
    //console.log(orderedItemsId.orderItems.length);
    //console.log(orderedItemsId.orderItems);
    if (orderedItemsId.orderItems.length > 0) {
        const deletedItems = await OrderItem.deleteMany({ _id: { $in: orderedItemsId.orderItems } });
        /* res.status(200).json({
            success: true,
            msg: 'Items deleted from orderItems table',
            data: deletedItems
        }); */
        console.warn(deletedItems);
    } else {
        console.log("No Items found!");
    }

    //console.warn(orderItems);
    try {
        const itemIds = [];
        for (var i = 0; i < inputOrderItems.length; i++) {
            // console.log(inputOrderItems);
            const newItems = await OrderItem.create({
                quantity: inputOrderItems[i].quantity,
                product: inputOrderItems[i].product
            });
            //  const neworder=  await newItems.save();

            itemIds.push(newItems._id);

            /*   const orderEdited = await Order.findOneAndUpdate(
                  { _id: orderId },
                  { $push: { orderItems: newItems._id  } },
                  { new: true }
              ) 
              if (orderEdited) {
                  console.log("working");
              } else {
                  console.log("Not working");
              } */
        }

        //console.log(orderId);
        const orderEdited = await Order.findOneAndUpdate(
            { _id: orderId },
            {
                $set: {
                    orderItems: itemIds,
                    user: req.body.user,
                    phone: req.body.phone,
                    status: req.body.status,
                    zip: req.body.zip,
                    city: req.body.city,
                    country: req.body.country,
                    shippingAddress1: req.body.shippingAddress1,
                    shippingAddress2: req.body.shippingAddress2
                }
            },
            { new: true }
        )

        res.status(200).json({
            success: true,
            msg: 'Order successfully updated!',
            data: orderEdited
        });

    } catch (error) {
        res.status(401).json({
            success: false,
            msg: error,
            data: [],
        });
    }
}

export { createOrder, getOrders, getOrder, editOrderStatus, editOrder }