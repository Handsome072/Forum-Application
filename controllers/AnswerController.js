import { PrismaClient } from "@prisma/client"
const prisma = new PrismaClient()
import path from 'path'



const answers = async (req, res) => {

    try {
    
            const { questionId, username, content} = req.body;
            let error = null
            let data = {
              username: username
            }
            if (content) {
              data.content = content.trim()
            } 
            if (!username.trim()) {
              error = 'please add an username'
            }
           
            const {avatar} = req.files
    
            let newFilename = 'IMG-' +Date.now()+path.extname(avatar.name);
       
        
            avatar.mv(`public/images/${newFilename}`, (error)=>{
                if(error){
                    console.log(error)
                }
            })
            data.avatar = newFilename

           
            const answerQuestion = await prisma.answer.create({
              data: {
                question: {
                  connect: {
                    questionId: parseInt(questionId),
                  },
                },
               ...data
              },
            });
            return res.redirect(`/questions/${answerQuestion.questionId}`)
          
        
          
      
    
      } catch (error) {
        return res.render('400.ejs')
      }
    
  };





  const voter = async (req, res) => {
    const { answerId } = req.body;
  
    await prisma.answer.update({
      where: {
        answerId: parseInt(answerId),
      },
      data: {
        voter: {
          increment: 1,
        },
      },
    });
    res.send('OK');
  };




  
  const devoter = async (req, res) => {
    const { answerId } = req.body;
  
    await prisma.answer.update({
      where: {
        answerId: parseInt(answerId),
      },
      data: {
        devoter: {
          increment: 1,
        },
      },
    });
    res.send('OK');
  };

  export {answers , voter, devoter}