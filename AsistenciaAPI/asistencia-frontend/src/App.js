import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import { Container, CssBaseline } from "@mui/material";
import Home from "./Home";
import AgregarAsociado from "./AgregarAsociado";

const App = () => {
    return (
        <Router>
            <CssBaseline />
            <Container maxWidth="lg">
                <Routes>
                    <Route path="/" element={<Home />} />
                    <Route path="/agregar" element={<AgregarAsociado />} />
                </Routes>
            </Container>
        </Router>
    );
};

export default App;