import React, { useEffect, useState } from "react";
import axios from "axios";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
} from "@mui/material";
import CreateUser from "./Create.jsx";

const Customer = () => {
  const [customers, setCustomers] = useState([]);

  const fetchCustomers = async () => {
    try {
      const response = await axios.get("http://localhost:3003/api/customers");
      setCustomers(response.data);
    } catch (error) {
      console.error("Error fetching customers:", error);
    }
  };

  useEffect(() => {
    fetchCustomers();
  }, []);

  const refetchData = () => {
    fetchCustomers();
  };

  return (
    <>
      <CreateUser callback={refetchData} />
      <TableContainer component={Paper}>
        <Table aria-label="customer table">
          <TableHead>
            <TableRow>
              <TableCell>Customer ID</TableCell>
              <TableCell>Account ID</TableCell>
              <TableCell>First Name</TableCell>
              <TableCell>Last Name</TableCell>
              <TableCell>Email</TableCell>
              <TableCell>Contact Info</TableCell>
              <TableCell>City</TableCell>
              <TableCell>Address Line 1</TableCell>
              <TableCell>Zipcode</TableCell>
            </TableRow>
          </TableHead>
          <TableBody>
            {customers.map((customer) => (
              <TableRow key={customer.CustomerID}>
                <TableCell>{customer.CustomerID}</TableCell>
                <TableCell>{customer.AccountID}</TableCell>
                <TableCell>{customer.FirstName}</TableCell>
                <TableCell>{customer.LastName}</TableCell>
                <TableCell>{customer.Email}</TableCell>
                <TableCell>{customer.ContactInfo}</TableCell>
                <TableCell>{customer.City}</TableCell>
                <TableCell>{customer.AddressLine1}</TableCell>
                <TableCell>{customer.Zipcode}</TableCell>
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </TableContainer>
    </>
  );
};

export default Customer;
