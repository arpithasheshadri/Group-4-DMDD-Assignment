import express from "express";
import { Account } from "../index.js";

const accountRouter = express.Router();

export const getAllAccounts = async (req, res) => {
  try {
    const accounts = await Account.findAll();
    res.json(accounts);
  } catch (error) {
    console.error("Error fetching accounts:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const getAccountById = async (req, res) => {
  const accountId = req.query.id;
  try {
    const account = await Account.findOne({
      where: { AccountID: accountId },
    });
    if (!account) {
      res.status(404).json({ error: "Account not found" });
    } else {
      res.json(account);
    }
  } catch (error) {
    console.error("Error fetching account:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

export const createAccount = async (req, res) => {
  const { AccountID, Username, Password } = req.body;
  try {
    const account = await Account.findOne({
      where: { AccountID: AccountID },
    });

    if (account) {
      res.status(400).json({ error: "Account already exists" });
      return;
    }

    const newAccount = await Account.create({ AccountID, Username, Password });
    res.status(201).json(newAccount);
  } catch (error) {
    console.error("Error creating account:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};

const updateAccount = async (req, res) => {
  const {
    AccountID, Username, Password
  } = req.body;
  try {
    const account = await Account.findOne({
      where: { AccountID: AccountID },
    });
    if (!account) {
      res.status(404).json({ error: "Account not found" });
    } else {
      await account.update({
        Username,
        Password
      });
      res.json(account);
    }
  } catch (error) {
    console.error("Error updating account:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
};


export const deleteAccount = async (req, res) => {
  const accountId = req.params.id;
  try {
    // Find the customer by ID
    const account = await Account.findByPk(accountId);

    if (!account) {
      return res.status(404).json({ message: 'Account not found' });
    }

    // Delete the customer
    await account.destroy();

    // Send a success response
    res.status(200).json({ message: 'Account deleted successfully' });
  } catch (error) {
    console.error('Error deleting account:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
};

accountRouter.get("/", getAllAccounts);
accountRouter.get("/getAccountbyId", getAccountById);
accountRouter.post("/", createAccount);
accountRouter.put("/:id", updateAccount);
accountRouter.delete("/:id", deleteAccount);

export default accountRouter;
