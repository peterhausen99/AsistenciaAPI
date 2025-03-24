import React, { useState } from "react";
import {
    TextField,
    Button,
    Paper,
    Typography,
    Grid,
    MenuItem,
    Select,
    FormControl,
    InputLabel,
} from "@mui/material";
import { useNavigate } from "react-router-dom";
import axios from "axios";

const AgregarAsociado = () => {
    const [nuevoAsociado, setNuevoAsociado] = useState({
        nombre: "",
        numeroCedula: "",
        estatus1: "Activo", // Valor por defecto
        estado2: "Confirmado", // Valor por defecto
        correo: "",
        telefono: "",
    });

    const navigate = useNavigate();

    const handleChange = (e) => {
        const { name, value } = e.target;
        setNuevoAsociado({ ...nuevoAsociado, [name]: value });
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.post("https://localhost:7289/api/asociados", nuevoAsociado);
            alert("Asociado agregado correctamente");
            navigate("/"); // Redirigir a la pantalla principal
        } catch (error) {
            console.error("Error al agregar asociado:", error);
        }
    };

    return (
        <Paper elevation={3} sx={{ padding: 3, marginTop: 4 }}>
            <Typography variant="h5" align="center" gutterBottom>
                Agregar Nuevo Asociado
            </Typography>
            <form onSubmit={handleSubmit}>
                <Grid container spacing={2}>
                    <Grid item xs={12} sm={6}>
                        <TextField
                            fullWidth
                            label="Nombre"
                            name="nombre"
                            value={nuevoAsociado.nombre}
                            onChange={handleChange}
                            required
                        />
                    </Grid>
                    <Grid item xs={12} sm={6}>
                        <TextField
                            fullWidth
                            label="Cédula"
                            name="numeroCedula"
                            value={nuevoAsociado.numeroCedula}
                            onChange={handleChange}
                            required
                        />
                    </Grid>
                    <Grid item xs={12} sm={6}>
                        <FormControl fullWidth>
                            <InputLabel>Estatus 1</InputLabel>
                            <Select
                                name="estatus1"
                                value={nuevoAsociado.estatus1}
                                onChange={handleChange}
                                required
                            >
                                <MenuItem value="Activo">Activo</MenuItem>
                                <MenuItem value="Inactivo">Inactivo</MenuItem>
                            </Select>
                        </FormControl>
                    </Grid>
                    <Grid item xs={12} sm={6}>
                        <FormControl fullWidth>
                            <InputLabel>Estado 2</InputLabel>
                            <Select
                                name="estado2"
                                value={nuevoAsociado.estado2}
                                onChange={handleChange}
                                required
                            >
                                <MenuItem value="Confirmado">Confirmado</MenuItem>
                                <MenuItem value="No">No</MenuItem>
                            </Select>
                        </FormControl>
                    </Grid>
                    <Grid item xs={12} sm={6}>
                        <TextField
                            fullWidth
                            label="Correo"
                            name="correo"
                            type="email"
                            value={nuevoAsociado.correo}
                            onChange={handleChange}
                            required
                        />
                    </Grid>
                    <Grid item xs={12} sm={6}>
                        <TextField
                            fullWidth
                            label="Teléfono"
                            name="telefono"
                            value={nuevoAsociado.telefono}
                            onChange={handleChange}
                            required
                        />
                    </Grid>
                    <Grid item xs={12}>
                        <Button
                            type="submit"
                            variant="contained"
                            color="primary"
                            fullWidth
                            sx={{ marginTop: 2 }}
                        >
                            Agregar
                        </Button>
                    </Grid>
                </Grid>
            </form>
        </Paper>
    );
};

export default AgregarAsociado;