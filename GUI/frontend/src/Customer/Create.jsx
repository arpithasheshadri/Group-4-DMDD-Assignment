import React, { useState } from "react";
import axios from "axios";
import { TextField, Button, Grid, Typography, Paper } from "@mui/material";

const CreateCustomerForm = ({ callback }) => {
  const [customer, setCustomer] = useState({
    AccountID: "",
    CustomerID: "",
    FirstName: "",
    LastName: "",
    Email: "",
    ContactInfo: "",
    City: "",
    AddressLine1: "",
    Zipcode: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setCustomer((prevCustomer) => ({
      ...prevCustomer,
      [name]: value,
    }));
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(
        "http://localhost:3003/api/customers",
        customer
      );
      console.log("Customer created successfully:", response.data);
      setCustomer({
        AccountID: "",
        CustomerID: "",
        FirstName: "",
        LastName: "",
        Email: "",
        ContactInfo: "",
        City: "",
        AddressLine1: "",
        Zipcode: "",
      });
      callback();
    } catch (error) {
      console.error("Error creating customer:", error);
    }
  };

  return (
    <Grid container justifyContent="center">
      <Grid item xs={12} sm={8} md={6} lg={4}>
        <Paper elevation={3} sx={{ padding: 2 }}>
          <Typography variant="h5" align="center" gutterBottom>
            Create New Customer
          </Typography>
          <form onSubmit={handleSubmit}>
            <TextField
              name="AccountID"
              label="Account ID"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.AccountID}
              onChange={handleChange}
              required
            />
            <TextField
              name="CustomerID"
              label="Customer ID"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.CustomerID}
              onChange={handleChange}
              required
            />
            <TextField
              name="FirstName"
              label="First Name"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.FirstName}
              onChange={handleChange}
              required
            />
            <TextField
              name="LastName"
              label="Last Name"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.LastName}
              onChange={handleChange}
              required
            />
            <TextField
              name="Email"
              label="Email"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.Email}
              onChange={handleChange}
              required
            />
            <TextField
              name="ContactInfo"
              label="Contact Info"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.ContactInfo}
              onChange={handleChange}
              required
            />
            <TextField
              name="City"
              label="City"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.City}
              onChange={handleChange}
              required
            />
            <TextField
              name="AddressLine1"
              label="Address Line 1"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.AddressLine1}
              onChange={handleChange}
              required
            />
            <TextField
              name="Zipcode"
              label="Zipcode"
              variant="outlined"
              fullWidth
              margin="normal"
              value={customer.Zipcode}
              onChange={handleChange}
              required
            />
            <Button
              type="submit"
              variant="contained"
              color="primary"
              fullWidth
              sx={{ marginTop: 2 }}
            >
              Create Customer
            </Button>
          </form>
        </Paper>
      </Grid>
    </Grid>
  );
};

export default CreateCustomerForm;
