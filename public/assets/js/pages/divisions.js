
'use strict';
function queryParams(p) {
    return {
        page: p.offset / p.limit + 1,
        limit: p.limit,
        sort: p.sort,
        order: p.order,
        offset: p.offset,
        search: p.search
    };
}


window.icons = {
    refresh: 'bx-refresh',
    toggleOn: 'bx-toggle-right',
    toggleOff: 'bx-toggle-left'
}

function loadingTemplate(message) {
    return '<i class="bx bx-loader-alt bx-spin bx-flip-vertical" ></i>'
}

$(document).on('click', '.edit-division', function () {
    var id = $(this).data('id');
    $('#edit_division_modal').modal('show');
    $.ajax({
        url: baseUrl + '/divisions/get/' + id,
        type: 'get',
        headers: {
            'X-CSRF-TOKEN': $('input[name="_token"]').attr('value')
        },
        dataType: 'json',
        success: function (response) {
            $('#division_id').val(response.division.id);
            $('#division_title').val(response.division.title);
        },

    });
});
