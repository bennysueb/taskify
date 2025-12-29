<!DOCTYPE html>
<html>
<head>
    <title>{{ $title }}</title>
    <style>
        body { font-family: sans-serif; font-size: 12px; }
        table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #f2f2f2; }
        .header { text-align: center; margin-bottom: 30px; }
    </style>
</head>
<body>
    <div class="header">
        <h2>{{ $title }}</h2>
        <p>Date: {{ date('d M Y') }}</p>
    </div>

    <table>
        <thead>
            <tr>
                <th>Item Name</th>
                <th>SKU</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Ownership</th>
                <th>Quantity</th>
                <th>Price (Sale)</th>
            </tr>
        </thead>
        <tbody>
            @foreach($items as $item)
            <tr>
                <td>{{ $item->name }}</td>
                <td>{{ $item->sku }}</td>
                <td>{{ $item->category->name ?? '-' }}</td>
                <td>{{ ucfirst($item->condition) }}</td>
                <td>
                    {{ ucfirst($item->ownership_type) }} 
                    @if($item->ownership_type == 'user' && $item->owner)
                        ({{ $item->owner->first_name }} {{ $item->owner->last_name }})
                    @endif
                </td>
                <td>{{ $item->quantity }} {{ $item->unit }}</td>
                <td>{{ number_format($item->price_sale, 2) }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
