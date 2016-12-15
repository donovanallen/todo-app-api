require 'active_record'
require 'pg'

require_relative 'connection'
require_relative '../models/todo'

Todo.destroy_all

Todo.create([
  {
    title: "first todo",
    body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed."
  },
  {
    title: "second todo",
    body: "raddddd ipsum dolor sit amet, consectetur adipisicing elit, sed."
  },
  {
    title: "third todo",
    body: ";lakjdf;k ipsum dolor sit amet, consectetur adipisicing elit, sed."
  }
  ])
