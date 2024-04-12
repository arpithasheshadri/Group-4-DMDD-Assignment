import express from "express";
import { Customer } from "../index.js";

const databaseRouter = express.Router();

export const getUserDetails = async (req, res) => {
  try {
    const customers = await Customer.findAll();
    res.json(customers);
  } catch (error) {
    console.error("Error fetching customers:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const getSelectedUserDetails = async (req, res) => {
  const CustomerID = req.query.id;

  try {
    const customer = await Customer.findOne({
      where: { CustomerID: CustomerID },
    });
    if (!customer) {
      res.status(404).json({ error: "Customer not found" });
    } else {
      res.json(customer);
    }
  } catch (error) {
    console.error("Error fetching customer:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const updateUser = async (req, res) => {
  const {
    CustomerID,
    AccountID,
    FirstName,
    LastName,
    Email,
    ContactInfo,
    City,
    AddressLine1,
    Zipcode,
  } = req.body;
  try {
    const customer = await Customer.findOne({
      where: { CustomerID: CustomerID },
    });
    if (!customer) {
      res.status(404).json({ error: "Customer not found" });
    } else {
      await customer.update({
        AccountID,
        FirstName,
        LastName,
        Email,
        ContactInfo,
        City,
        AddressLine1,
        Zipcode,
      });
      res.json(customer);
    }
  } catch (error) {
    console.error("Error updating customer:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const createUser = async (req, res) => {
  const {
    AccountID,
    CustomerID,
    FirstName,
    LastName,
    Email,
    ContactInfo,
    City,
    AddressLine1,
    Zipcode,
  } = req.body;
  try {
    const newCustomer = await Customer.create({
      AccountID,
      CustomerID,
      FirstName,
      LastName,
      Email,
      ContactInfo,
      City,
      AddressLine1,
      Zipcode,
    });
    res.status(201).json(newCustomer);
  } catch (error) {
    console.error("Error creating customer:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

databaseRouter.route("/").get(getUserDetails);
databaseRouter.route("/getUser").get(getSelectedUserDetails);
databaseRouter.post("/", createUser);
databaseRouter.put("/", updateUser);

export default databaseRouter;
