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
                borderColor: 'rgb(34, 233, 150, 1)',
                data: candidateValues,},
                {
                label: 'All candidates',
                borderColor: 'rgba(86, 211, 255, 1)',
                data: meanValues
            }]
        },
        // Configuration options go here
        options: {
            scale: {
                ticks: {
                    suggestedMin: 0,
                    suggestedMax: 100,
                },
            },
            legend: {
                display: true,
                labels: {
                    fontSize: 17,
                }
            }
        }
    });
    }
};

export {graph};