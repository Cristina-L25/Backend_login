const express = require('express');
const RolesPermisosController = require('../controllers/roles_permisos.controller');

const router = express.Router();
const rolesPermisosController = new RolesPermisosController();

router.get('/', (req, res) => rolesPermisosController.obtenerRolesPermisos(req, res));
router.get('/rol/:idrol', (req, res) => rolesPermisosController.obtenerRolPermisosDeRol(req, res));
router.get('/:id', (req, res) => rolesPermisosController.obtenerRolPermisosDePermiso(req, res));
router.post('/', (req, res) => rolesPermisosController.agregarRolPermiso(req, res));
router.put('/:id', (req, res) => rolesPermisosController.actualizarRolPermiso(req, res));
router.delete('/:id', (req, res) => rolesPermisosController.eliminarRolPermiso(req, res));

module.exports = router;
