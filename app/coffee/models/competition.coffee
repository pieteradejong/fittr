'use strict'

mongoose = require 'mongoose'

CompetitionSchema = new mongoose.Schema(
  
  startDate:
    type: Date
    default: Date.now

  endDate:
    type: Date
    default: Date.now

  criterium:
    type: String

  groups:
    [{
      type: mongoose.Schema.ObjectId, 
      ref: 'Group', 
      score: Number,
      index: true
    }]

  ranking:
    [{
      ranking: Number,
      type: mongoose.Schema.ObjectId, 
      ref: 'Group', 
      index: true
    }]

  prize:
    type: String
    
)

module.exports = mongoose.model 'Competition', CompetitionSchema
