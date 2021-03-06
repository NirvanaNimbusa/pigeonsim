
$ ->
  scale = 15
  offset = 2
  
  window.SVG = SVG = $.parseXML(window.SVGData)
  rootGroup = $(SVG).find('svg > g')[0]
  charsSVG = $(rootGroup).children()
  chars = for charSVG in charsSVG
    paths = if charSVG.tagName is 'path' then [charSVG] else $(charSVG).children()
    for path in paths
      d = path.getAttribute('d')
      ds = d.split(/\s+/)
      coords = for c in ds when not isNaN(parseFloat(c))
        Math.round(parseFloat(c) / 7.085) * 0.5
  
  charsWithInputs = for char in chars
    canvas = $('<canvas width="140" height="90"></canvas>')
    input  = $('<input type="text" size="1" />')
    br     = $('<br />')
    ctx    = canvas[0].getContext('2d')
    for path in char
      ctx.beginPath()
      for x, i in path by 2
        y = path[i + 1]
        x *= scale; x += offset
        y *= scale; y += offset
        ctx.lineTo(x, y)
      ctx.stroke()
    $(document.body).append(canvas, input, br)
    {input, char}
    
  document.onclick = ->
    font = {}
    for {input, char} in charsWithInputs
      font[$(input).val()] = char
    console.log(JSON.stringify(font))
    
  

window.SVGData = '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" clip-rule="evenodd" stroke-miterlimit="10" viewBox="0 0 1715.28 818.76">
        <desc>SVG generated by Lineform</desc>
        <defs/>
        <g>
            <path d="M 0.00 14.17 L 14.17 14.17 L 28.35 28.35 L 28.35 56.69 L 14.17 56.69 L 0.00 42.52 L 14.17 28.35 L 28.35 28.35 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 0.00 L 0.00 56.69 L 14.17 56.69 L 28.35 42.52 L 28.35 28.35 L 14.17 14.17 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 28.35 14.17 L 14.17 14.17 L 0.00 28.35 L 0.00 42.52 L 14.17 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 28.35 0.00 L 28.35 56.69 L 14.17 56.69 L 0.00 42.52 L 0.00 28.35 L 14.17 14.17 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 42.52 L 42.52 28.35 L 28.35 14.17 L 14.17 14.17 L 0.00 28.35 L 0.00 42.52 L 14.17 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <g>
                <path d="M 0.00 70.87 L 0.00 28.35 L 14.17 14.17 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M -0.00 42.52 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <path d="M 28.35 42.52 L 28.35 14.17 L 14.17 14.17 L 0.00 28.35 L 0.00 42.52 L 28.35 42.52 L 28.35 56.69 L 14.17 70.87 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 0.00 L 0.00 56.69 M 28.35 56.69 L 28.35 28.35 L 14.17 14.17 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 14.17 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 14.17 14.17 L 14.17 56.69 L 0.00 70.87 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 28.35 14.17 L 0.00 28.35 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 14.17 L 14.17 42.52 L 28.35 14.17 L 42.52 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 28.35 L 14.17 14.17 L 28.35 14.17 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 28.35 L 0.00 42.52 L 14.17 56.69 L 28.35 42.52 L 28.35 28.35 L 14.17 14.17 Z M 0.00 28.35 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 70.87 L 0.00 14.17 L 14.17 14.17 L 28.35 28.35 L 28.35 42.52 L 14.17 56.69 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 28.35 70.87 L 28.35 14.17 L 14.17 14.17 L 0.00 28.35 L 0.00 42.52 L 14.17 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 28.35 L 14.17 14.17 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 28.35 14.17 L 14.17 14.17 L 0.00 28.35 L 28.35 42.52 L 14.17 56.69 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 42.52 L 14.17 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M -0.00 14.17 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 14.17 L 0.00 42.52 L 14.17 56.69 L 28.35 56.69 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 14.17 L 14.17 56.69 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 14.17 L 14.17 56.69 L 28.35 28.35 L 42.52 56.69 L 42.52 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <g>
                <path d="M 0.00 56.69 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 0.00 14.17 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <g>
                <path d="M 28.35 14.17 L 28.35 56.69 L 14.17 70.87 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 0.00 14.17 L 0.00 42.52 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <path d="M 0.00 14.17 L 28.35 14.17 L 0.00 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 14.17 L 14.17 0.00 L 28.35 14.17 L 0.00 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 0.00 L 28.35 0.00 L 0.00 28.35 L 28.35 42.52 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 42.52 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 14.17 14.17 L 14.17 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <path d="M 28.35 0.00 L 0.00 0.00 L 0.00 14.17 L 28.35 42.52 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 0.00 L 0.00 42.52 L 14.17 56.69 L 28.35 42.52 L 28.35 28.35 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 0.00 L 28.35 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 14.17 0.00 L 0.00 14.17 L 28.35 42.52 L 14.17 56.69 L 0.00 42.52 L 28.35 14.17 Z M 14.17 0.00 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 28.35 56.69 L 28.35 14.17 L 14.17 0.00 L 0.00 14.17 L 0.00 28.35 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <path d="M 0.00 14.17 L 0.00 42.52 L 14.17 56.69 L 28.35 42.52 L 28.35 14.17 L 14.17 0.00 Z M 0.00 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            <g>
                <path d="M 14.17 0.00 L 14.17 56.69 " stroke="#000000" stroke-width="3.46" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 28.35 0.00 L 28.35 56.69 " stroke="#000000" stroke-width="3.46" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 0.00 14.17 L 42.52 14.17 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 0.00 42.52 L 42.52 42.52 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <path d="M 28.35 42.52 L 28.35 14.17 L 14.17 28.35 L 28.35 42.52 L 42.52 56.69 L 42.52 0.00 L 14.17 0.00 L 0.00 28.35 L 14.17 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 0.00 L 14.17 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 14.17 42.52 L 0.00 70.87 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 42.52 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 14.17 0.00 L 0.00 0.00 L 0.00 56.69 L 14.17 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 14.17 0.00 L 14.17 56.69 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 42.52 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 14.17 -0.00 L 14.17 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 42.52 L 0.00 70.87 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 0.00 L 28.35 0.00 L 28.35 14.17 L 14.17 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 56.69 L 14.17 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 0.00 L 0.00 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 42.52 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 28.35 L 28.35 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 28.35 L 28.35 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 14.17 L 14.17 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 42.52 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 14.17 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 -0.00 L 14.17 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 56.69 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 14.17 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 42.52 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 28.35 28.35 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 28.35 0.00 L 0.00 28.35 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 14.17 L 14.17 0.00 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 28.35 14.17 L 14.17 14.17 L 0.00 28.35 L 28.35 42.52 L 14.17 56.69 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                <path d="M 14.17 0.00 L 14.17 70.87 " stroke="#000000" stroke-width="3.00" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 56.69 L 42.52 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 14.17 L 14.17 14.17 L 14.17 0.00 Z M 0.00 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 28.35 42.52 L 28.35 56.69 L 42.52 42.52 Z M 28.35 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 28.35 L 14.17 14.17 L 28.35 42.52 L 42.52 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 14.17 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 28.35 0.00 L 14.17 0.00 L 0.00 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 28.35 L 14.17 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 42.52 56.69 L 0.00 14.17 L 14.17 0.00 L 28.35 14.17 L 0.00 42.52 L 14.17 56.69 L 42.52 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 14.17 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 0.00 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 14.17 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 28.35 0.00 L 14.17 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 0.00 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 14.17 0.00 L 0.00 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 28.35 L 28.35 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 28.35 0.00 L 14.17 0.00 L 14.17 42.52 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 14.17 L 28.35 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 28.35 0.00 L 14.17 0.00 L 14.17 14.17 L 0.00 28.35 L 14.17 42.52 L 14.17 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 14.17 0.00 L 14.17 14.17 L 28.35 28.35 L 14.17 42.52 L 14.17 56.69 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 14.17 0.00 L 0.00 14.17 L 0.00 42.52 L 14.17 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 14.17 14.17 L 14.17 42.52 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 56.69 L 14.17 0.00 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 42.52 L 28.35 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 56.69 L 0.00 0.00 L 28.35 14.17 L 0.00 28.35 L 28.35 42.52 Z M 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 28.35 0.00 L 14.17 0.00 L 0.00 28.35 L 14.17 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 0.00 L 28.35 14.17 L 28.35 42.52 Z M 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 28.35 0.00 L 0.00 0.00 L 0.00 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 28.35 L 14.17 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 56.69 L 0.00 0.00 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 28.35 L 0.00 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 28.35 0.00 L 14.17 0.00 L 0.00 28.35 L 14.17 56.69 L 28.35 56.69 L 28.35 28.35 L 14.17 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 28.35 L 28.35 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 28.35 0.00 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 14.17 0.00 L 14.17 42.52 L 0.00 70.87 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 0.00 56.69 L 0.00 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 28.35 0.00 L 0.00 28.35 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 0.00 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 0.00 L 14.17 42.52 L 28.35 0.00 L 42.52 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 0.00 L 28.35 56.69 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 14.17 0.00 L 0.00 14.17 L 0.00 42.52 L 14.17 56.69 L 28.35 42.52 L 28.35 14.17 Z M 14.17 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 56.69 L 0.00 0.00 L 14.17 0.00 L 28.35 14.17 L 28.35 28.35 L 14.17 42.52 L 0.00 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 14.17 0.00 L 0.00 14.17 L 0.00 42.52 L 14.17 56.69 L 28.35 42.52 L 28.35 14.17 Z M 14.17 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 42.52 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 56.69 L 0.00 0.00 L 14.17 0.00 L 28.35 14.17 L 14.17 28.35 L 0.00 28.35 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 28.35 0.00 L 14.17 0.00 L 0.00 14.17 L 28.35 42.52 L 14.17 56.69 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 14.17 0.00 L 14.17 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 0.00 42.52 L 14.17 56.69 L 28.35 56.69 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 14.17 56.69 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <path d="M 0.00 0.00 L 14.17 56.69 L 28.35 14.17 L 42.52 56.69 L 42.52 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 0.00 0.00 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 56.69 L 28.35 0.00 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 0.00 L 14.17 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 28.35 0.00 L 0.00 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <path d="M 0.00 0.00 L 28.35 0.00 L 0.00 56.69 L 28.35 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            <g>
                <path d="M 14.17 14.17 L 28.35 0.00 L 56.69 0.00 L 70.87 14.17 L 70.87 42.52 L 56.69 56.69 L 28.35 56.69 L 14.17 42.52 Z M 14.17 14.17 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 28.35 L 85.04 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 28.35 L 70.87 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 0.00 42.52 L 70.87 42.52 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 28.35 14.17 L 42.52 28.35 L 28.35 42.52 L 42.52 56.69 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
            <g>
                <path d="M 0.00 7.09 L 14.17 -7.09 L 28.35 -7.09 L 42.52 7.09 L 42.52 21.26 L 28.35 35.43 L 14.17 35.43 L 0.00 21.26 Z M 0.00 7.09 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 42.52 7.09 L 56.69 -7.09 L 70.87 -7.09 L 85.04 7.09 L 85.04 21.26 L 70.87 35.43 L 56.69 35.43 L 42.52 21.26 Z M 42.52 7.09 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 85.04 7.09 L 99.21 -7.09 L 113.39 -7.09 L 127.56 7.09 L 127.56 21.26 L 113.39 35.43 L 99.21 35.43 L 85.04 21.26 Z M 85.04 7.09 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 21.26 28.35 L 35.43 14.17 L 49.61 14.17 L 63.78 28.35 L 63.78 42.52 L 49.61 56.69 L 35.43 56.69 L 21.26 42.52 Z M 21.26 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
                <path d="M 63.78 28.35 L 77.95 14.17 L 92.13 14.17 L 106.30 28.35 L 106.30 42.52 L 92.13 56.69 L 77.95 56.69 L 63.78 42.52 Z M 63.78 28.35 " stroke="#000000" stroke-width="3.00" fill="none"/>
            </g>
        </g>
    </svg>'