<div>
<!--添加网站运行时间-->
<span>小破站已经在风雨中度过了</span>
<span id="timeDate">载入天数...</span>
<span id="times">载入时分秒...</span>
<script>
    function createtime() {
        const startTime = '06/30/2023 00:00:00',
            start = new Date(startTime)
        let mill = new Date() - start,
            seconds = Math.floor(mill / 1000),
            mins = Math.floor(seconds / 60),
            hours = Math.floor(mins / 60),
            days = Math.floor(hours / 24)
        const time = {
            seconds: seconds - mins * 60,
            mins: mins - hours * 60,
            hours: hours - days * 24,
        }
        for (const k in time) {
            time[k] = `${time[k]}`.padStart(2, '0')
        }
        document.getElementById("timeDate").innerHTML = ` ${days} 天`
        document.getElementById("times").innerHTML = ` ${time.hours} 小时 ${time.mins} 分 ${time.seconds} 秒`
    }
    setInterval(createtime, 500)
</script>
</div>
