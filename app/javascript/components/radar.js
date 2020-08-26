const graph = () => {
    if (document.getElementById('myChart')) {
        
    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
        // The type of chart we want to create
        type: 'radar',
        // The data for our dataset
        data: {
            labels: ['January', 'March', 'May', 'June', 'July'],
            datasets: [{
                label: 'This candidate',
                borderColor: 'rgb(38, 255, 6)',
                data: [10, 8, 2, 10, 6],},
                {
                label: 'All candidates',
                borderColor: 'rgb(255, 99, 132)',
                data: [0, 5, 2, 3, 6]
            }]
        },
        // Configuration options go here
        options: {}
    });
    }
};

export {graph};