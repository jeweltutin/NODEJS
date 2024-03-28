import Order from "../models/Order.model.js";
import OrderItem from "../models/OrderItem.model.js";
import Product from "../models/Product.model.js";


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
    //console.log(orderedItemsId.orderItems[0]);

    //const productPrice = await Order.findById(orderId).populate({ path: 'orderItems', populate: 'product' });

    var sum = 0;
    for(var i=0; i<inputOrderItems.length; i++){
       const productPrice = await Product.findById(inputOrderItems[i].product).select('price');
       var totalPrice = productPrice.price * (inputOrderItems[i].quantity);
        //console.log(productPrice.price * inputOrderItems[i].quantity);
        sum += totalPrice; 
        console.log(totalPrice);
        //console.log(typeof productPrice.price);    
    }
    //res.json(sum);

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
                    totalPrice: sum,
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

/* const deleteOrder = async (req, res) => {
    const orderDeleted = await Order.findByIdAndDelete({
        _id: req.params.id
    });

    if (orderDeleted) {
        await OrderItem.deleteMany({
            _id: { $in: orderDeleted.orderItems }
        })
        res.status(200).json({
            success: true,
            msg: 'Order Deleted successfully!',
            data: orderDeleted,
        });
    } else {
        res.status(400).json({
            success: false,
            msg: 'Please Try again later!',
            data: [],
        });
    }
}
 */

const deleteOrder = async (req, res) => {
    Order.findByIdAndRemove(req.params.id).then(async order => {
        if (order) {
            await order.orderItems.map(async orderItem => {
                await OrderItem.findByIdAndRemove(orderItem)
            })
            return res.status(200).json({ success: true, message: 'the order is deleted!' })
        } else {
            return res.status(404).json({ success: false, message: "order not found!" })
        }
    }).catch(err => {
        return res.status(500).json({ success: false, error: err })
    })
}


export { createOrder, getOrders, getOrder, editOrderStatus, editOrder, deleteOrder }