const mongoose = require("mongoose");
<<<<<<< HEAD
const ratingSchema = require("./rating");
=======
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf

const productSchema = mongoose.Schema({
  name: {
    type: String,
    required: true,
    trim: true,
  },
  description: {
    type: String,
    required: true,
    trim: true,
  },
  images: [
    {
      type: String,
      required: true,
    },
  ],
  quantity: {
    type: Number,
    required: true,
  },
  price: {
    type: Number,
    required: true,
  },
  category: {
    type: String,
    required: true,
  },
<<<<<<< HEAD
  ratings: [ratingSchema],
});

const Product = mongoose.model("Product", productSchema);
module.exports = { Product, productSchema };
=======
  // ratings: [ratingSchema],
});

const Product = mongoose.model("Product", productSchema);
module.exports = { Product, productSchema };
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
