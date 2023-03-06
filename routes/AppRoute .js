import { Router } from "express"
import { answers, devoter, voter } from "../controllers/AnswerController.js";
import {   addQuestions, category,   deleteQuestion,   home, searchQuestion, viewQuestion} from "../controllers/QuestionController.js"


const AppRoute = Router()


AppRoute .get('/', home);
AppRoute .post('/', home);
AppRoute.get('/searchQ' , searchQuestion)
*
AppRoute .get('/questions', addQuestions);
AppRoute .post('/questions', addQuestions );
AppRoute .post('/answers', answers);
AppRoute .post('/voter' , voter )
AppRoute .post('/devoter' , devoter )
AppRoute .post('/questions/:questionId/delete' , deleteQuestion)
AppRoute .get('/questions/:questionId' , viewQuestion)
AppRoute.get('/category/:category', category)


export default AppRoute 
