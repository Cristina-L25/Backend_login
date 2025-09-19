const jwt = require('jsonwebtoken');

function validarToken(req, res, next) {
    const token = req.headers['authorization']?.split(' ')[1]; // ojo: suele ir en minúscula
    if (!token) {
        return res.status(403).json({ message: 'token requerido' });
    }

    jwt.verify(token, process.env.JWT_SECRET || 'secreto', (err, decoded) => {
        if (err) return res.status(401).json({ message: 'token invalido' });

        req.user = decoded; // datos del usuario
        next();
    });
}
module.exports = validarToken;