window.onload = function () {
    var config = {
        // 大盒子的宽高
        width: 500,
        height: 500,
        img: 'img/carousel/backimg.jpg',
        gameDom: document.getElementById('game'),
        // 三行三列
        row: 3,
        col: 3
    }
    // 数据对象
    var computed = {
        num: config.col * config.row, // 小方块的数量
        w: config.width / config.col, // 每个小方块的宽度
        h: config.height / config.row // 每个小方块的高度
    }
    // 装小方块对象的数组，每个元素是一个对象，每个对象中记录了方块的
    // 最初的坐标、当前的坐标、dom元素、一些方法
    var squares = []

    setBlocks()
    generateGame()
    // 为全局变量blocks赋值

    function generateGame () {
        config.gameDom.style.width = config.width + 'px'
        config.gameDom.style.height = config.height + 'px'
        config.gameDom.style.border = '2px solid #8c8c8c'
        for (const item of squares) {
            if (!item.isEmpty) {
                config.gameDom.appendChild(item.dom)
            }
        }
    }
    function setBlocks () {
        var points = getPointsArray()// 返回的数组用来设置每个方块最初的位置
        var shuffledPoints = [...points]// 复制points数组，用来存放变化后每个小方块的位置
        shuffle(shuffledPoints) // 打乱每个小方块的位置
        for (var i = 0; i < points.length; i++) {
            const point = points[i]
            //  创建方块对象
            var square = {
                left: point.left,
                top: point.top,
                curLeft: shuffledPoints[i].left,
                curTop: shuffledPoints[i].top,
                dom: document.createElement('div'),
                update () {
                    this.dom.style.transition = 'all, .5s' // 设置延迟
                    this.dom.style.left = this.curLeft + 'px'// 设置当前的位置
                    this.dom.style.top = this.curTop + 'px'// 当前高度
                },
                isEmpty: i === points.length - 1,
                isCorrect () {
                    return this.curTop === this.top && this.curLeft === this.left
                }
            }
                square.dom.style.width = computed.w + 'px'// 设置宽高
                square.dom.style.height = computed.h + 'px'
                square.dom.style.position = 'absolute'
                square.dom.style.border = '1px solid #fff'
                square.dom.style.boxSizing = 'border-box'
                square.dom.style.background = `url("${config.img}")`// 模板字符串
                square.dom.style.cursor = 'pointer'
                square.dom.style.backgroundPosition = -square.left + 'px ' + -square.top + 'px'
                square.dom.block = square
                // 当小方块被点击时，如果与空白块相邻就交换位置
                square.dom.onclick = function () {
                    switchSquare(this.block)
                }
                square.update() // 初始化每个方块的位置
                squares.push(square)// 将每个小方块对象存入数组中
        }
    }
    function switchSquare (block) {
        // 找到空白块
        // ES6的数组扩展语法：数组实例find方法：找到第一个符合条件的数组成员
        var emptySquare = squares.find(function (index) {
            return index.isEmpty
        })
        // 判断是否相邻
        if (Math.abs(block.curLeft - emptySquare.curLeft) + (Math.abs(block.curTop - emptySquare.curTop)) !== computed.w) {
            return
        }
        // 交换
        var bLeft = block.curLeft// 先保存当前被点击方块的位置
        var bTop = block.curTop
        block.curLeft = emptySquare.curLeft// 再交换
        block.curTop = emptySquare.curTop
        emptySquare.curLeft = bLeft
        emptySquare.curTop = bTop
        // 更新点击方块与空白格的位置
        block.update()
        emptySquare.update()
        // 判断游戏结束
        if (isWin()) {
            setTimeout(() => {
                alert('游戏结束')
            }, 500)
        }
    }
    function isWin () {
        for (const s of squares) {
            if (!s.isCorrect()) {
                return false
            }
        }
        return true
    }
    function shuffle (arr) {
        for (var i = 0; i < arr.length - 1; i++) {
            var randomIndex = Math.floor(Math.random() * (arr.length - 1))
            var temp = arr[i]
            arr[i] = arr[randomIndex]
            arr[randomIndex] = temp
        }
    }
    function getPointsArray () {
        var arr = []
        for (var i = 0; i < computed.num; i++) {
            arr.push({
                left: (i % config.col) * computed.w,
                top: parseInt(i / config.col) * computed.h
            })
        }

        console.log(arr)
        return arr
    }
}
