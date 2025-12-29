@extends('layout')

@section('title', 'Inventory Management')

@section('content')
<div class="container-fluid">
    <div class="d-flex justify-content-between mb-4 mt-4">
        <div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-style1">
                    <li class="breadcrumb-item">
                        <a href="{{ url('home') }}">Home</a>
                    </li>
                    <li class="breadcrumb-item active">Inventory Management</li>
                </ol>
            </nav>
        </div>
        <div class="d-flex align-items-center gap-2">
            <!-- Ownership Switch -->
            <div class="btn-group" role="group">
                <a href="?ownership=all" class="btn {{ $ownership == 'all' ? 'btn-primary' : 'btn-outline-primary' }}">All</a>
                <a href="?ownership=office" class="btn {{ $ownership == 'office' ? 'btn-primary' : 'btn-outline-primary' }}">Office</a>
                <a href="?ownership=user" class="btn {{ $ownership == 'user' ? 'btn-primary' : 'btn-outline-primary' }}">User</a>
            </div>

            <a href="{{ url('inventory-management/export/pdf') }}?ownership={{ $ownership }}" target="_blank" class="btn btn-sm btn-outline-danger">
                <i class="bx bxs-file-pdf"></i> Export PDF
            </a>

            <button type="button" class="btn btn-sm btn-outline-primary" data-bs-toggle="modal" data-bs-target="#categoryModal">
                <i class="bx bx-folder-plus"></i> Manage Categories
            </button>
            <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#itemModal" id="btn-add-item">
                <i class="bx bx-plus"></i> Add Item
            </button>
        </div>
    </div>

    <!-- Stats Widget -->
    <div class="row mb-4">
        <div class="col-md-3">
            <div class="card bg-primary text-white">
                <div class="card-body">
                    <h6 class="text-white">Total Items</h6>
                    <h3 class="text-white">{{ $items->count() }}</h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
             <!-- Modified Stats related to condition or removed Low Stock visual if desired, but Low Stock logic removed from items. Replacing with 'Condition: Good' count for example or just Total Value. -->
            <div class="card bg-warning text-white">
                <div class="card-body">
                    <h6 class="text-white">Good Condition</h6>
                    <h3 class="text-white">{{ $items->where('condition', 'good')->count() }}</h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card bg-success text-white">
                <div class="card-body">
                    <h6 class="text-white">Active Assets Value (Buy)</h6>
                    <h3 class="text-white">{{ number_format($items->whereNotIn('condition', ['sold', 'lost'])->sum(function($i){ return $i->quantity * $i->price_purchase; }), 2) }}</h3>
                </div>
            </div>
        </div>
         <div class="col-md-3">
            <div class="card bg-info text-white">
                <div class="card-body">
                    <h6 class="text-white">Realized Revenue (Sold)</h6>
                    <h3 class="text-white">{{ number_format($items->where('condition', 'sold')->sum(function($i){ return $i->quantity * $i->price_sale; }), 2) }}</h3>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered table-striped" 
                       id="inventory-table"
                       data-toggle="table"
                       data-loading-template="loadingTemplate"
                       data-url=""
                       data-icons-prefix="bx"
                       data-icons="icons"
                       data-show-refresh="true"
                       data-total-field="total"
                       data-trim-on-search="false"
                       data-data-field="rows"
                       data-page-list="[5, 10, 20, 50, 100, 200]"
                       data-search="true"
                       data-side-pagination="client"
                       data-pagination="true">
                    <thead>
                        <tr>
                            <th data-sortable="true">Name</th>
                            <th data-sortable="true">Condition</th>
                            <th data-sortable="true">Ownership</th>
                            <th data-sortable="true">Category</th>
                            <th data-sortable="true">Stock</th>
                            <th data-sortable="true">Price (Buy)</th>
                            <th data-sortable="true">Price (Sell)</th>
                            <th data-sortable="false">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($items as $item)
                        <tr>
                            <td>
                                <span class="fw-bold">{{ $item->name }}</span>
                                <div class="small text-muted">{{ $item->sku }}</div>
                            </td>
                            <td>
                                <span class="badge bg-label-info">{{ ucfirst($item->condition) }}</span>
                            </td>
                            <td>
                                @if($item->ownership_type == 'office')
                                    <span class="badge bg-label-primary">Office</span>
                                @else
                                    <span class="badge bg-label-warning">User</span>
                                    @if($item->owner)
                                        <div class="small">{{ $item->owner->first_name }} {{ $item->owner->last_name }}</div>
                                    @endif
                                @endif
                            </td>
                            <td>
                                @if($item->category)
                                    <span class="badge bg-{{ $item->category->color }}">{{ $item->category->name }}</span>
                                @else
                                    <span class="text-muted">Uncategorized</span>
                                @endif
                            </td>
                            <td>
                                <span class="fw-bold fs-6">
                                    {{ $item->quantity }} {{ $item->unit }}
                                </span>
                            </td>
                            <td>{{ number_format($item->price_purchase, 2) }}</td>
                            <td>
                                @if($item->condition === 'sold')
                                    {{ number_format($item->price_sale, 2) }}
                                @else
                                    <span class="text-muted">-</span>
                                @endif
                            </td>
                            <td>
                                <button class="btn btn-sm btn-icon btn-outline-success btn-adjust-stock" 
                                        data-id="{{ $item->id }}" 
                                        data-name="{{ $item->name }}"
                                        data-bs-toggle="tooltip" 
                                        title="Adjust Stock">
                                    <i class="bx bx-transfer-alt"></i>
                                </button>
                                <button class="btn btn-sm btn-icon btn-outline-primary btn-edit-item" 
                                        data-id="{{ $item->id }}" 
                                        data-bs-toggle="tooltip" 
                                        title="Edit">
                                    <i class="bx bx-edit"></i>
                                </button>
                                <button class="btn btn-sm btn-icon btn-outline-danger btn-delete-item" 
                                        data-id="{{ $item->id }}" 
                                        data-bs-toggle="tooltip" 
                                        title="Delete">
                                    <i class="bx bx-trash"></i>
                                </button>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Category Modal -->
<div class="modal fade" id="categoryModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Manage Categories</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="category-form">
                    @csrf
                    <div class="mb-3">
                        <label class="form-label">Category Name</label>
                        <input type="text" class="form-control" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Color Label</label>
                        <select class="form-select" name="color">
                            <option value="primary">Primary (Blue)</option>
                            <option value="secondary">Secondary (Grey)</option>
                            <option value="success">Success (Green)</option>
                            <option value="danger">Danger (Red)</option>
                            <option value="warning">Warning (Yellow)</option>
                            <option value="info">Info (Cyan)</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Create Category</button>
                </form>
                <hr>
                <h6>Existing Categories</h6>
                <ul class="list-group" id="category-list">
                    @foreach($categories as $cat)
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <span><span class="badge bg-{{ $cat->color }} me-2">&nbsp;</span> {{ $cat->name }}</span>
                            <button class="btn btn-sm btn-danger btn-delete-category" data-id="{{ $cat->id }}">&times;</button>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Item Modal -->
<div class="modal fade" id="itemModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="itemModalLabel">Add Inventory Item</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="item-form">
                    @csrf
                    <input type="hidden" name="id" id="item_id">
                    
                    <!-- Ownership Section -->
                    <div class="mb-3 p-3 bg-light rounded">
                        <label class="form-label d-block fw-bold">Item Ownership</label>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="ownership_type" id="own_office" value="office" checked>
                            <label class="form-check-label" for="own_office">Office (Kantor)</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="ownership_type" id="own_user" value="user">
                            <label class="form-check-label" for="own_user">User (Pegawai)</label>
                        </div>
                        
                        <div class="mt-3 d-none" id="user_select_container">
                            <label class="form-label">Select User</label>
                            <select class="form-select" name="owner_user_id" id="item_owner_id">
                                <option value="">-- Select Owner --</option>
                                @foreach($users as $u)
                                    <option value="{{ $u->id }}">{{ $u->first_name }} {{ $u->last_name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Name <span class="text-danger">*</span></label>
                            <input type="text" class="form-control" name="name" id="item_name" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Condition</label>
                             <select class="form-select" name="condition" id="item_condition">
                                <option value="good">Good (Baik)</option>
                                <option value="damaged">Damaged (Rusak)</option>
                                <option value="sold">Sold (Terjual)</option>
                                <option value="lost">Lost (Hilang)</option>
                                <option value="maintenance">Maintenance (Perbaikan)</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                         <div class="col-md-4 mb-3">
                            <label class="form-label">SKU</label>
                            <input type="text" class="form-control" name="sku" id="item_sku">
                        </div>
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Category</label>
                            <select class="form-select" name="category_id" id="item_category">
                                <option value="">Select Category</option>
                                @foreach($categories as $cat)
                                    <option value="{{ $cat->id }}">{{ $cat->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Unit</label>
                            <input type="text" class="form-control" name="unit" id="item_unit" value="pcs" list="unit_suggestions">
                            <datalist id="unit_suggestions">
                                <option value="pcs">
                                <option value="kg">
                                <option value="box">
                                <option value="liter">
                            </datalist>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Purchase Price</label>
                            <input type="number" step="0.01" class="form-control" name="price_purchase" id="item_price_purchase" value="0">
                        </div>
                        <div class="col-md-4 mb-3 d-none" id="container_price_sale">
                            <label class="form-label">Selling Price</label>
                            <input type="number" step="0.01" class="form-control" name="price_sale" id="item_price_sale" value="0">
                        </div>
                        <div class="col-md-4 mb-3">
                            <label class="form-label">Initial Quantity</label>
                            <input type="number" step="1" class="form-control" name="quantity" id="item_quantity" value="0">
                            <small class="text-muted d-none" id="qty_edit_notice">Quantity managed via stock adjustments.</small>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <textarea class="form-control" name="description" id="item_description" rows="2"></textarea>
                    </div>

                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary" id="btn-save-item">Save Item</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Stock Adjustment Modal -->
<div class="modal fade" id="stockModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Adjust Stock</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form id="stock-form">
                    @csrf
                    <input type="hidden" name="id" id="stock_item_id">
                    <p class="mb-2 fw-bold" id="stock_item_name_display"></p>
                    
                    <div class="mb-3">
                        <label class="form-label">Action</label>
                        <div class="btn-group w-100" role="group">
                             <input type="radio" class="btn-check" name="type" id="stock_in" value="IN" checked>
                             <label class="btn btn-outline-success" for="stock_in">IN (+)</label>

                             <input type="radio" class="btn-check" name="type" id="stock_out" value="OUT">
                             <label class="btn btn-outline-danger" for="stock_out">OUT (-)</label>
                        </div>
                    </div>
                    
                    <div class="mb-3">
                        <label class="form-label">Quantity</label>
                        <input type="number" step="0.01" class="form-control" name="quantity" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Notes</label>
                        <input type="text" class="form-control" name="notes" placeholder="Reason (e.g. Purchase, Sale)">
                    </div>

                    <button type="submit" class="btn btn-primary w-100">Update Stock</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    // --- CSRF Setup ---
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    // Toggle Owner Select
    $('input[name="ownership_type"]').on('change', function() {
        if ($(this).val() === 'user') {
            $('#user_select_container').removeClass('d-none');
            $('#item_owner_id').prop('required', true);
        } else {
            $('#user_select_container').addClass('d-none');
            $('#item_owner_id').prop('required', false).val('');
        }
    });

    // Toggle Selling Price based on Condition
    $('#item_condition').on('change', function() {
        if ($(this).val() === 'sold') {
            $('#container_price_sale').removeClass('d-none');
        } else {
            $('#container_price_sale').addClass('d-none');
            $('#item_price_sale').val(0); // Reset if hidden
        }
    });

    // --- Create/Edit Item ---
    $('#btn-add-item').on('click', function() {
        $('#item-form')[0].reset();
        $('#item_id').val('');
        $('#itemModalLabel').text('Add Inventory Item');
        $('#item_quantity').prop('disabled', false).closest('.col-md-4').show(); 
        $('#qty_edit_notice').addClass('d-none');
        
        // Reset ownership logic
        $('#own_office').prop('checked', true).trigger('change');
        // Reset condition logic
        $('#item_condition').val('good').trigger('change');
    });

    // Save Item
    $('#item-form').on('submit', function(e) {
        e.preventDefault();
        let id = $('#item_id').val();
        let url = id ? '/inventory-management/update/' + id : '/inventory-management/store';
        let method = id ? 'PUT' : 'POST';

        $.ajax({
            url: url,
            method: method,
            data: $(this).serialize(),
            success: function(res) {
                if (res.error) {
                    toastr.error(res.message);
                } else {
                    toastr.success(res.message);
                    $('#itemModal').modal('hide');
                    location.reload(); 
                }
            },
            error: function(xhr) {
                if(xhr.responseJSON && xhr.responseJSON.message) {
                     toastr.error('Error: ' + xhr.responseJSON.message);
                } else {
                     toastr.error('Error saving item.');
                }
            }
        });
    });

    // Edit Item
    $(document).on('click', '.btn-edit-item', function() {
        let id = $(this).data('id');
        $.get('/inventory-management/get/' + id, function(res) {
            $('#item_id').val(res.id);
            $('#item_name').val(res.name);
            $('#item_sku').val(res.sku);
            $('#item_category').val(res.category_id);
            $('#item_unit').val(res.unit);
            $('#item_price_purchase').val(res.price_purchase);
            $('#item_price_sale').val(res.price_sale);
            $('#item_description').val(res.description);
            $('#item_condition').val(res.condition).trigger('change');
            
            // Set Ownership
            if (res.ownership_type === 'user') {
                $('#own_user').prop('checked', true).trigger('change');
                $('#item_owner_id').val(res.owner_user_id);
            } else {
                $('#own_office').prop('checked', true).trigger('change');
            }

            // Disable quantity edit in update mode
            $('#item_quantity').val(res.quantity).prop('disabled', true);
            $('#qty_edit_notice').removeClass('d-none');

            $('#itemModalLabel').text('Edit Inventory Item');
            $('#itemModal').modal('show');
        });
    });

    // Delete Item
    $(document).on('click', '.btn-delete-item', function() {
        if(!confirm('Are you sure? This will delete transactions history too.')) return;
        let id = $(this).data('id');
        $.ajax({
            url: '/inventory-management/delete/' + id,
            method: 'DELETE',
            success: function(res) {
                toastr.success(res.message);
                location.reload();
            }
        });
    });

    // --- Category Management ---
    $('#category-form').on('submit', function(e) {
        e.preventDefault();
        $.post('/inventory-management/categories/store', $(this).serialize(), function(res) {
            toastr.success(res.message);
            location.reload();
        });
    });

    $(document).on('click', '.btn-delete-category', function() {
        if(!confirm('Delete this category? Items will become uncategorized.')) return;
        let id = $(this).data('id');
        $.ajax({
            url: '/inventory-management/categories/delete/' + id,
            method: 'DELETE',
            success: function(res) {
                toastr.success(res.message);
                location.reload();
            }
        });
    });

    // --- Stock Adjustment ---
    $(document).on('click', '.btn-adjust-stock', function() {
        let id = $(this).data('id');
        let name = $(this).data('name');
        $('#stock_item_id').val(id);
        $('#stock_item_name_display').text('Adjusting: ' + name);
        $('#stock-form')[0].reset();
        $('#stockModal').modal('show');
    });

    $('#stock-form').on('submit', function(e) {
        e.preventDefault();
        let id = $('#stock_item_id').val();
        $.post('/inventory-management/stock/' + id, $(this).serialize(), function(res) {
            if (res.error) {
                toastr.error(res.message);
            } else {
                toastr.success(res.message);
                $('#stockModal').modal('hide');
                location.reload();
            }
        });
    });

</script>
@endsection
