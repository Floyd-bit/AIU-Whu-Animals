<template>
  <div class="hello">
    <div id="app">
      <wordcloud
        :data="defaultWords"
        nameKey="name"
        valueKey="value"
        :color="myColors"
        :showTooltip="false"
        :wordClick="wordClickHandler">
      </wordcloud>
    </div>
  </div>
</template>
<script>
/* eslint-disable */

import wordcloud from 'vue-wordcloud'
export default {
  name: 'Cloud',
  components: {
    wordcloud
  },
  methods: {
    wordClickHandler(name, value, vm) {
      console.log('wordClickHandler', name, value, vm);
    }
  },
  data() {
    return {
      myColors: ['#1f77b4', '#629fc9', '#94bedb', '#c9e0ef'],
      defaultWords: [{
        "name": "Cat",
        "value": 26
      },
        {
          "name": "fish",
          "value": 19
        },
        {
          "name": "things",
          "value": 18
        },
        {
          "name": "look",
          "value": 16
        },
        {
          "name": "two",
          "value": 15
        },
        {
          "name": "fun",
          "value": 9
        },
        {
          "name": "杰哥",
          "value": 20
        },
        {
          "name": "彬彬",
          "value": 19
        },
        {
          "name": "在劫难逃",
          "value": 5
        },
        {
          "name": "逃过一劫",
          "value": 19
        },
        {
          "name": "猫狗",
          "value": 23
        },
        {
          "name": "平时",
          "value": 1
        },
        {
          "name": "手动",
          "value": 9
        },
        {
          "name": "倒是",
          "value": 8
        }
      ]
    }
  }
}
</script>
