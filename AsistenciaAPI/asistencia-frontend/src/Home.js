import React, { useEffect, useState } from "react";
import { Button, Typography, Paper, Table, TableBody, TableCell, TableContainer, TableHead, TableRow } from "@mui/material";
import { Link } from "react-router-dom";
import axios from "axios";

const Home = () => {
    const [asociados, setAsociados] = useState([]);

    // Obtener la lista de asociados
    useEffect(() => {
        const fetchAsociados = async () => {
            try {
                const response = await axios.get("https://localhost:7289/api/asociados");
                setAsociados(response.data);
            } catch (error) {
                console.error("Error al obtener asociados:", error);
            }
        };

        fetchAsociados();
    }, []);

    return (
        <div>
            <Typography variant="h3" align="center" gutterBottom sx={{ marginTop: 4, color: "#1976d2" }}>
                Lista de Asociados
            </Typography>
            <Button
                variant="contained"
                color="primary"
                component={Link}
                to="/agregar"
                sx={{ marginBottom: 4 }}
            >
                Agregar Asociado
            </Button>
            <TableContainer component={Paper}>
                <Table>
                    <TableHead>
                        <TableRow>
                            <TableCell>ID</TableCell>
                            <TableCell>Nombre</TableCell>
                            <TableCell>Cédula</TableCell>
                            <TableCell>Estatus</TableCell>
                            <TableCell>Estado</TableCell>
                            <TableCell>Correo</TableCell>
                            <TableCell>Teléfono</TableCell>
                            <TableCell>Acciones</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {asociados.map((asociado) => (
                            <TableRow key={asociado.id}>
                                <TableCell>{asociado.id}</TableCell>
                                <TableCell>{asociado.nombre}</TableCell>
                                <TableCell>{asociado.numeroCedula}</TableCell>
                                <TableCell>{asociado.estatus1}</TableCell>
                                <TableCell>{asociado.estado2}</TableCell>
                                <TableCell>{asociado.correo}</TableCell>
                                <TableCell>{asociado.telefono}</TableCell>
                                <TableCell>
                                    <Button variant="contained" color="error">
                                        Eliminar
                                    </Button>
                                </TableCell>
                            </TableRow>
                        ))}
                    </TableBody>
                </Table>
            </TableContainer>
        </div>
    );
};

export default Home;