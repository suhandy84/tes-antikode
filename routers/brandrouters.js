const express=require('express')
const {BrandControllers}=require('../controllers')
const router=express.Router()

router.get('/allbrand',BrandControllers.allbrand)
router.post('/addbrand',BrandControllers.addbrand)
router.delete('/deletebrand/:id',BrandControllers.deletebrand)
router.put('/editbrand/:id',BrandControllers.editbrand)



module.exports=router