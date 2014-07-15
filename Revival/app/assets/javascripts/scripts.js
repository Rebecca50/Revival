// ************************************
// *********** Global Stuff ***********
// ************************************

// -- global Audio Vars --
var audioContext;
var arraybuffer;
var fftObject;
var audioSource;
var samples = 1024;

// -- global var for svg --
var svg;


// / ************************************
// // ********* Audio Handling ***********
// ************************************

function loadFile(mp3file) {
    var request = new XMLHttpRequest();
    request.open("GET", mp3file,true);
    request.responseType = "arraybuffer";
    request.onload = function() {
      audioContext.decodeAudioData(request.response, function(buffer) {
        audioBuffer = buffer;
        setAudioHandlers();
      });
    };
    request.send();
}


function setAudioHandlers() {

    var audioSource = audioContext.createBufferSource();
    audioSource.buffer = audioBuffer;
    fftObject = audioContext.createAnalyser();
    fftObject.fftSize = samples;
    audioSource.connect(fftObject);
    fftObject.connect(audioContext.destination);
    audioSource.noteOn(0); // Drop the needle (play audio)

    var data = new Uint8Array(samples);

    setInterval(function(){
      fftObject.getByteFrequencyData(data);
      d3Project(data);
    }, 10) // repeat rendering project -- DO I WANT THIS?
}


//*********************//
//****Data-Driven-Documents Domain*****//
//*********************//

Array.prototype.sample = function(){
var idx = Math.floor(this.length * Math.random());
return this[idx]
};
//see below for .sample corresponding random color 'fill' function


  function d3Project(data){
    //where data is just an array of numbers.

//select Entire SVG
// var svg = d3.select('svg');

//Need new circle? If so, build them!

var circles = svg.selectAll('circle')
                  .data(data)
                  .enter()//d3 makes a virtual node, so that I can know the number of elements. Are there enough?
                  .append('circle')
                    .attr('cy', '-100px')//brings down the 'rain'



//update the visualization with new data
var circles = svg.selectAll('circle')
                    .data(data)
                    .transition()//this line and the .duration create the circle's metamorphosis
                      .duration(500)
                    .attr('r', function(d){ return d+'px'})//this creates the initial dot/circle
                    .attr('cx', function(){ return (Math.random()*100) + '%' })
                    .attr('cy', function(){ return (Math.random()*100) + '%' })
                    .style('opacity', function(){ return Math.random() })
                    .style('fill', function(){return crayola.sample().hex});

                      // function(){ return crayola.sample().hex });
// NB.I want flashes not .samples.


//remove unneeded circles
// svg.selectAll('circle')
//                     .data(data)
//                     .exit()
//                     .remove();

return svg;


}

//**************************************//
//***And...testing, testing, 1, 2, 3****//
//**************************************//

window.onload = function(){

svg = d3.select('body')
  .append('svg')
  .attr('width', '100%')
  .attr('height', '100%')
  .style('border', '1px solid black');

  audioContext = new webkitAudioContext();
  loadFile('audio/oneVision.m4a');
}

  // setInterval(function(){
  //   projectData([5, 10, 15])
  // }, 500)



// }
