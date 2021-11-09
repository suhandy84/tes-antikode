const express=require('express')
const {OutletControllers}=require('../controllers')
const router=express.Router()

router.get('/alloutlet',OutletControllers.alloutlet)
router.post('/addoutlet',OutletControllers.addoutlet)
router.delete('/deleteoutlet/:id',OutletControllers.deleteoutlet)
router.put('/editoutlet/:id',OutletControllers.editoutlet)



module.exports=router