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

accountRouter.get("/", getAllAccounts);
accountRouter.get("/getAccountbyId", getAccountById);
accountRouter.post("/", createAccount);

export default accountRouter;
