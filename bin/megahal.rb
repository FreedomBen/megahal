#!/usr/bin/env ruby -KU
# encoding: UTF-8

require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'benchmark'

SENTENCES = [
  'The cat sat on the mat.',
  '"Hello, Dr. Watson", said Holmes.',
  'See the ümlaut!',
  '?is this a test',
  '有什么需要我帮你的？',
  'funbags',
  "(don't)",
  "[higgledy-piggeldy]",
  '???'
]

megahal = MegaHAL.new

puts Benchmark.realtime {
  SENTENCES.each do |sentence|
    puts megahal.observe(sentence)
  end
}
