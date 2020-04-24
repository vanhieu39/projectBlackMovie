$(function () {

    var violet = '#DF99CA',
        red = '#F0404C',
        green = '#7CF29C',
        blue = '#4680ff';


    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //

    var LINECHART = $('#lineChart1');
    var myLineChart = new Chart(LINECHART, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    ticks: {
                        max: 50,
                        min: 0
                    },
                    display: false
                }]
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [{
                label: "Page Visitors",
                fill: true,
                lineTension: 0.4,
                backgroundColor: "transparent",
                borderColor: green,
                pointBorderColor: green,
                pointHoverBackgroundColor: green,
                borderCapStyle: 'butt',
                borderDash: [],
                borderDashOffset: 0.0,
                borderJoinStyle: 'miter',
                borderWidth: 3,
                pointBackgroundColor: "#fff",
                pointBorderWidth: 5,
                pointHoverRadius: 5,
                pointHoverBorderColor: "#fff",
                pointHoverBorderWidth: 1,
                pointRadius: 0,
                pointHitRadius: 1,
                data: [20, 14, 21, 15, 22, 8, 18, 13, 21, 13, 17, 13, 20, 15],
                spanGaps: false
            }]
        }
    });


    // ------------------------------------------------------- //
    // Line Chart
    // ------------------------------------------------------ //

    var LINECHART = $('#lineChart2');
    var myLineChart = new Chart(LINECHART, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    ticks: {
                        max: 50,
                        min: 0
                    },
                    display: false
                }]
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [{
                label: "Page Visitors",
                fill: true,
                lineTension: 0.4,
                backgroundColor: "transparent",
                borderColor: blue,
                pointBorderColor: blue,
                pointHoverBackgroundColor: blue,
                borderCapStyle: 'butt',
                borderDash: [],
                borderDashOffset: 0.0,
                borderJoinStyle: 'miter',
                borderWidth: 3,
                pointBackgroundColor: "#fff",
                pointBorderWidth: 5,
                pointHoverRadius: 5,
                pointHoverBorderColor: "#fff",
                pointHoverBorderWidth: 1,
                pointRadius: 0,
                pointHitRadius: 1,
                data: [20, 14, 21, 15, 22, 8, 18, 13, 21, 13, 17, 13, 20, 15],
                spanGaps: false
            }]
        }
    });


    // ------------------------------------------------------- //
    // Line Chart 3
    // ------------------------------------------------------ //

    var LINECHART = $('#lineChart3');
    var myLineChart = new Chart(LINECHART, {
        type: 'line',
        options: {
            scales: {
                xAxes: [{
                    display: false
                }],
                yAxes: [{
                    ticks: {
                        max: 50,
                        min: 0
                    },
                    display: false
                }]
            },
            legend: {
                display: false
            }
        },
        data: {
            labels: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
            datasets: [{
                label: "Page Visitors",
                fill: true,
                lineTension: 0.4,
                backgroundColor: "transparent",
                borderColor: red,
                pointBorderColor: red,
                pointHoverBackgroundColor: red,
                borderCapStyle: 'butt',
                borderDash: [],
                borderDashOffset: 0.0,
                borderJoinStyle: 'miter',
                borderWidth: 3,
                pointBackgroundColor: "#fff",
                pointBorderWidth: 5,
                pointHoverRadius: 5,
                pointHoverBorderColor: "#fff",
                pointHoverBorderWidth: 1,
                pointRadius: 0,
                pointHitRadius: 1,
                data: [20, 14, 21, 15, 22, 8, 18, 13, 21, 13, 17, 13, 20, 15],
                spanGaps: false
            }]
        }
    });


    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHART = $('#pieChartHome1');
    var value1 = $('#countmovieinput').val();
    var myPieChart = new Chart(PIECHART, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false
            }
        },
        data: {
            labels: [
                "Total",
                "Second",
                "Third"
            ],
            datasets: [{
            	data: [value1, 0],
                borderWidth: [0, 0],
                backgroundColor: [
                	violet,
                    "#eee",
                ],
                hoverBackgroundColor: [
                	violet,
                    "#eee",
                ]
            }]
        }
    });


    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHART = $('#pieChartHome2');
    var value2 = $('#countactorinput').val();
    var value2woman = $('#countwomenactorinput').val();
    var myPieChart = new Chart(PIECHART, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false
            }
        },
        data: {
            labels: [
                "Man",
                "Woman",
            ],
            datasets: [{
            	data: [value2 - value2woman, value2woman],
                borderWidth: [0, 0],
                backgroundColor: [
                    blue,
                    "#eee"
                ],
                hoverBackgroundColor: [
                    blue,
                    "#eee"
                ]
            }]
        }
    });


    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHART = $('#pieChartHome3');
    var value3 = $('#countloginput').val();
    var myPieChart = new Chart(PIECHART, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false
            }
        },
        data: {
            labels: [
                "Total",
                "Second"
            ],
            datasets: [{
            	data: [value3, 0],
                borderWidth: [0, 0],
                backgroundColor: [
                	red,
                    "#eee"
                ],
                hoverBackgroundColor: [
                	red,
                    "#eee"
                ]
            }]
        }
    });


    // ------------------------------------------------------- //
    // Pie Chart
    // ------------------------------------------------------ //
    var PIECHART = $('#pieChartHome4');
    var value4 = $('#countdirectorsinput').val();
    var value4woman = $('#countwomendirectorsinput').val();
    var myPieChart = new Chart(PIECHART, {
        type: 'doughnut',
        options: {
            cutoutPercentage: 90,
            legend: {
                display: false
            }
        },
        data: {
            labels: [
                "Man",
                "Woman"
            ],
            datasets: [{
            	data: [value4 - value4woman, value4woman],
                borderWidth: [0, 0],
                backgroundColor: [
                	green,
                    "#eee"
                ],
                hoverBackgroundColor: [
                	green,
                    "#eee"
                ]
            }]
        }
    });


});