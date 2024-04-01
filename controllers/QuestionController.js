import { PrismaClient } from "@prisma/client";
import path from 'path';

const prisma = new PrismaClient();

const home = async (req, res) => {
  try {
    const categories = ['Tout', 'Generale', 'Technologie', 'Politique', 'Sport'];
    let questions = await prisma.question.findMany({
      orderBy: {
        questionId: 'desc'
      }
    });
    res.render('home', { categories, questions, activeCategory: 'Tout' });
  } catch (error) {
    console.log(error);
    return res.render('500.ejs');
  }
};

const addQuestions = async (req, res) => {
  try {
    switch (req.method) {
      case "GET": {
        return res.render('addQuestion.ejs', { error: undefined });
      }
      case 'POST': {
        const { username, question, category, description } = req.body;
        let error = null;
        let data = {
          username: username
        };
        if (!username.trim()) {
          error = 'please add an username';
        }
        if (question) {
          data.question = question.trim();
        } 
        if (category) {
          data.category = category.trim();
        }
        if (description) {
          data.description = description.trim();
        }
        const { avatar } = req.files;
        let newFilename = 'IMG-' + Date.now() + path.extname(avatar.name);
        avatar.mv(`public/images/${newFilename}`, (error) => {
          if (error) {
            console.log(error);
          }
        });
        data.avatar = newFilename;

        if (!error) {
          await prisma.question.create({
            data: data
          });
          return res.redirect('/');
        } else {
          return res.render('addQuestion.ejs', { error });
        }
      }
      default:
        throw new Error('invalid http method');
    }
  } catch (error) {
    console.log(error);
    return res.render('500.ejs');
  }
};

const deleteQuestion = async (req, res) => {
  const questionId = req.params.questionId;

  await prisma.answer.deleteMany({
    where: {
      questionId: parseInt(questionId)
    }
  });
  await prisma.question.delete({
    where: {
      questionId: parseInt(questionId)
    }
  });
  res.redirect('/');
};

const viewQuestion = async (req, res) => {
  const questionId = req.params.questionId;
  const question = await prisma.question.findUnique({
    where: {
      questionId: parseInt(questionId)
    },
    include: {
      answers: true
    }
  });
  res.render('viewQuestion.ejs', { question });
};

const category = async (req, res) => {
  const categories = ['Tout', 'Generale', 'Technologie', 'Politique', 'Sport'];
  const { category } = req.params;
  let questions = await prisma.question.findMany({ where: { category } });
  res.render('home', { categories, questions, activeCategory: category });
};

const searchQuestion = async (request, response) => {
  const query = request.query.q;
  const data = await prisma.question.findMany({
    orderBy: {
      questionId: 'asc'
    }
  });
  let resultats = data.filter(objet => objet.question.includes(query));
  return response.render('searchQuestion.ejs', { query: query, data: resultats, activeCategory: null });
};

export { home, addQuestions, viewQuestion, category, searchQuestion, deleteQuestion };
