import React, { useEffect, useState } from "react";
import {
    Button,
    Typography,
    Paper,
    Table,
    TableBody,
    TableCell,
    TableContainer,
    TableHead,
    TableRow,
    Dialog,
    DialogTitle,
    DialogContent,
    DialogActions,
} from "@mui/material";
import axios from "axios";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const Asociados = () => {
    const [asociados, setAsociados] = useState([]);
    const [openDialog, setOpenDialog] = useState(false);
    const [asociadoAEliminar, setAsociadoAEliminar] = useState(null);

    // Obtener la lista de asociados
    useEffect(() => {
        fetchAsociados();
    }, []);

    const fetchAsociados = async () => {
        try {
            const response = await axios.get("https://localhost:7289/api/asociados");
            setAsociados(response.data);
        } catch (error) {
            console.error("Error al obtener asociados:", error);
            toast.error("Error al cargar la lista de asociados");
        }
    };

    // Abrir el diálogo de confirmación
    const handleAbrirDialogo = (id) => {
        setAsociadoAEliminar(id);
        setOpenDialog(true);
    };

    // Cerrar el diálogo de confirmación
    const handleCerrarDialogo = () => {
        setOpenDialog(false);
        setAsociadoAEliminar(null);
    };

    // Eliminar un asociado
    const handleEliminar = async () => {
        try {
            await axios.delete(`https://localhost:7289/api/asociados/${asociadoAEliminar}`);
            setAsociados(asociados.filter((asociado) => asociado.id !== asociadoAEliminar)); // Actualizar la lista
            toast.success("Asociado eliminado correctamente");
        } catch (error) {
            console.error("Error al eliminar asociado:", error);
            toast.error("No se pudo eliminar el asociado");
        } finally {
            handleCerrarDialogo(); // Cerrar el diálogo
        }
    };

    return (
        <div>
            <Typography variant="h3" align="center" gutterBottom sx={{ marginTop: 4, color: "#1976d2" }}>
                Lista de Asociados
            </Typography>
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
                                    <Button
                                        variant="contained"
                                        color="error"
                                        onClick={() => handleAbrirDialogo(asociado.id)}
                                    >
                                        Eliminar
                                    </Button>
                                </TableCell>
                            </TableRow>
                        ))}
                    </TableBody>
                </Table>
            </TableContainer>

            {/* Diálogo de confirmación */}
            <Dialog open={openDialog} onClose={handleCerrarDialogo}>
                <DialogTitle>Confirmar Eliminación</DialogTitle>
                <DialogContent>
                    ¿Estás seguro de que deseas eliminar este asociado?
                </DialogContent>
                <DialogActions>
                    <Button onClick={handleCerrarDialogo} color="primary">
                        Cancelar
                    </Button>
                    <Button onClick={handleEliminar} color="error">
                        Eliminar
                    </Button>
                </DialogActions>
            </Dialog>

            {/* Notificaciones */}
            <ToastContainer />
        </div>
    );
};

export default Asociados;
