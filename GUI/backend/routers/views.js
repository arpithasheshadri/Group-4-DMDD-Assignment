import express from "express";
import { sequelizeConst } from "../index.js";

const viewRouter = express.Router();

const getOrderDetails = async (req, res) => {
  sequelizeConst
    .query("SELECT * FROM OrderDetails", {
      type: sequelizeConst.QueryTypes.SELECT,
    })
    .then((records) => {
      res.json(records);
    })
    .catch((error) => {
      res.status(500).json({ error: "Internal Server Error" });
    });
};

const ordersByBrand = async (req, res) => {
  sequelizeConst
    .query("SELECT * FROM OrdersByBrand", {
      type: sequelizeConst.QueryTypes.SELECT,
    })
    .then((records) => {
      res.json(records);
    })
    .catch((error) => {
      res.status(500).json({ error: "Internal Server Error" });
    });
};

const getBrandCount = async (req, res) => {
  sequelizeConst
    .query("SELECT * FROM BrandCount", {
      type: sequelizeConst.QueryTypes.SELECT,
    })
    .then((records) => {
      res.json(records);
    })
    .catch((error) => {
      res.status(500).json({ error: "Internal Server Error" });
    });
};

const getProductMaterialCount = async (req, res) => {
  sequelizeConst
    .query("SELECT * FROM ProductMaterialCount", {
      type: sequelizeConst.QueryTypes.SELECT,
    })
    .then((records) => {
      res.json(records);
    })
    .catch((error) => {
      res.status(500).json({ error: "Internal Server Error" });
    });
};

const getmaterialsOrdered = async (req, res) => {
  sequelizeConst
    .query("SELECT * FROM materialsOrdered", {
      type: sequelizeConst.QueryTypes.SELECT,
    })
    .then((records) => {
      res.json(records);
    })
    .catch((error) => {
      res.status(500).json({ error: "Internal Server Error" });
    });
};

viewRouter.get("/orderDetails", getOrderDetails);
viewRouter.get("/ordersByBrand", ordersByBrand);
viewRouter.get("/getBrandCount", getBrandCount);
viewRouter.get("/getProductMaterialCount", getProductMaterialCount);
viewRouter.get("/getmaterialsOrdered", getmaterialsOrdered);

export default viewRouter;
