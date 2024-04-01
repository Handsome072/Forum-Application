import express from 'express';
import expressEjsLayouts from 'express-ejs-layouts';
import fileUpload from 'express-fileupload';
import path from 'path';
import AppRoute from './routes/AppRoute.js';

const app = express();

app.use(expressEjsLayouts);
app.use(fileUpload());
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.resolve('public')));
app.use('/', AppRoute);
app.set('view engine', 'ejs');
app.listen(4000, () => console.log('http://localhost:4000'));
