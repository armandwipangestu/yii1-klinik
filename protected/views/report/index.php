<?php
/* @var $this ReportController */

$this->breadcrumbs = array(
    'Report',
);
?>

<div class="page-heading">
    <h3>Report Statistics</h3>
</div>
<div class="page-content">
    <section class="row">
        <div class="col-12 col-lg-9">
            <div class="row">
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon purple mb-2">
                                        <i class="iconly-boldUser1"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Total User</h6>
                                    <h6 class="font-extrabold mb-0"><?= $total_user; ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon blue mb-2">
                                        <i class="iconly-boldPassword"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Total Role</h6>
                                    <h6 class="font-extrabold mb-0"><?= $total_role; ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon green mb-2">
                                        <i class="iconly-boldLocation"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Total Region</h6>
                                    <h6 class="font-extrabold mb-0"><?= $total_region; ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-lg-3 col-md-6">
                    <div class="card">
                        <div class="card-body px-4 py-4-5">
                            <div class="row">
                                <div class="col-md-4 col-lg-12 col-xl-12 col-xxl-5 d-flex justify-content-start ">
                                    <div class="stats-icon red mb-2">
                                        <i class="iconly-boldAdd-User"></i>
                                    </div>
                                </div>
                                <div class="col-md-8 col-lg-12 col-xl-12 col-xxl-7">
                                    <h6 class="text-muted font-semibold">Total Patient</h6>
                                    <h6 class="font-extrabold mb-0"><?= $total_patient; ?></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Division</h4>
                        </div>
                        <div class="card-body">
                            <div id="chart-division"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Latest Ticket</h4>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-lg">
                                    <thead>
                                        <tr>
                                            <th>Patient</th>
                                            <th>Action</th>
                                            <th>Medication</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($recent_tickets as $recent_ticket) : ?>
                                            <tr>
                                                <td class="col-3">
                                                    <div class="d-flex align-items-center">
                                                        <div class="avatar avatar-md">
                                                            <img src="<?php echo Yii::app()->request->baseUrl; ?>/images/another_female.jpg" alt="Face 1">
                                                        </div>
                                                        <p class="font-bold ms-3 mb-0"><?= $recent_ticket->patient->name; ?></p>
                                                    </div>
                                                </td>
                                                <td class="col-auto">
                                                    <p class=" mb-0"><?= $recent_ticket->action->name; ?></p>
                                                </td>
                                                <td class="col-auto">
                                                    <p class=" mb-0"><?= $recent_ticket->medication->name; ?></p>
                                                </td>
                                                <td class="col-auto">
                                                    <p class=" mb-0"><?= $recent_ticket->ticket_status; ?></p>
                                                </td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-3">
            <div class="card">
                <div class="card-body py-4 px-4">
                    <div class="d-flex align-items-center">
                        <div class="avatar avatar-xl">
                            <img src="<?php echo Yii::app()->request->baseUrl; ?>/images/default_male.jpg" alt="Face 1">
                        </div>
                        <div class="ms-3 name">
                            <h5 class="font-bold"><?= Yii::app()->user->username; ?></h5>
                            <h6 class="text-muted mb-0"><?= Yii::app()->user->getState('role'); ?></h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h4>Recent Patient</h4>
                </div>
                <div class="card-content pb-4">
                    <?php foreach ($recent_users as $recent_user) : ?>
                        <div class="recent-message d-flex px-4 py-3">
                            <div class="avatar avatar-lg">
                                <img src="<?php echo Yii::app()->request->baseUrl; ?>/images/default_female.jpg" alt="Face 1">
                            </div>
                            <div class="name ms-4">
                                <h5 class="mb-1"><?= $recent_user->name; ?></h5>
                                <h6 class="text-muted mb-0"><?= $recent_user->gender; ?></h6>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h4>Patient Gender</h4>
                </div>
                <div class="card-body">
                    <div id="chart-user-gender"></div>
                </div>
            </div>
        </div>
    </section>
</div>

<script>
    const divisionNames = <?= $division_names ?>;
    const divisionTotals = <?= $division_totals ?>;

    const optionsDivision = {
        series: [{
            name: "Total",
            data: divisionTotals
        }],
        chart: {
            type: 'bar',
            height: 350,
            width: '100%'
        },
        plotOptions: {
            bar: {
                horizontal: false,
                columnWidth: '55%',
                endingShape: 'rounded'
            },
        },
        dataLabels: {
            enabled: false
        },
        xaxis: {
            categories: divisionNames,
        },
        colors: ["#435ebe"],
        legend: {
            position: "bottom",
        },
    };

    const chartDivision = new ApexCharts(
        document.querySelector("#chart-division"),
        optionsDivision
    );

    chartDivision.render();

    const getUserGender = <?= $user_gender ?>;

    const seriesDataUserGender = getUserGender.map((item) => {
        return parseInt(item.total);
    });

    const labelsUserGender = getUserGender.map((item) => {
        return item.gender === 'Male' ? 'Male' : 'Female';
    });

    const optionsUserGender = {
        series: seriesDataUserGender,
        labels: labelsUserGender,
        colors: ["#435ebe", "#55c6e8"],
        chart: {
            type: "donut",
            width: "100%",
            height: "350px",
        },
        legend: {
            position: "bottom",
        },
        plotOptions: {
            pie: {
                donut: {
                    size: "30%",
                },
            },
        },
    };

    const chartUserGender = new ApexCharts(
        document.querySelector("#chart-user-gender"),
        optionsUserGender
    );

    chartUserGender.render();
</script>