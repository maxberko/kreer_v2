const graph = () => {
    const canva = document.getElementById('myChart');
    if (canva) { 
    const labels = JSON.parse(canva.dataset.labels);
    const meanValues = JSON.parse(canva.dataset.meanValues);
    const candidateValues = JSON.parse(canva.dataset.candidateValues);
    var ctx = canva.getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'radar',
        // The data for our dataset
        data: {
            labels: labels,
            datasets: [{
                label: 'This candidate',
                borderColor: 'rgb(38, 255, 6)',
                data: candidateValues,},
                {
                label: 'All candidates',
                borderColor: 'rgb(255, 99, 132)',
                data: meanValues
            }]
        },
        // Configuration options go here
        options: {}
    });
    }
};

export {graph};