$(document).ready(function() {
    loadOrgChart();

    function loadOrgChart() {
        $.ajax({
            url: './actions/get_employees.php',
            type: 'GET',
            success: function(data) {
                const employees = JSON.parse(data);
                let html = '<div class="row">';
                employees.forEach(employee => {
                    html += `
                        <div class="col-md-3 text-center" style="background-color: ${employee.background_color}; margin: 10px;">
                            <img src="assets/images/${employee.profile_pic}" class="img-fluid rounded-circle" alt="${employee.name}">
                            <h3>${employee.name} ${employee.surname}</h3>
                            <p>${employee.position}</p>
                        </div>
                    `;
                });
                html += '</div>';
                $('#org-chart').html(html);
            }
        });
    }
});
