@props(['tasks', 'statuses'])

@if ($tasks->count() > 0)
    <div class="alert alert-primary alert-dismissible" role="alert">
        <?= get_label('drag_drop_update_task_status', 'Drag and drop to update task status') . ' !' ?>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <div class="kanban-container d-flex card flex-row" style="overflow-x: auto;">
        @foreach ($statuses as $status)
        <div class="my-4 kanban-column" style="min-width: 300px;">
            <h4 class="fw-bold mx-4 my-2">{{$status->title}}</h4>
            <div class="row m-2 d-flex flex-column kanban-tasks" id="{{$status->slug}}" data-status="{{$status->id}}">
                @foreach ($tasks as $task)
                @if($task->status_id==$status->id)
                <x-kanban :task="$task" />
                @endif
                @endforeach
            </div>
        </div>
        @endforeach
    </div>
@else
    <?php
    $type = 'Tasks';
    ?>
    <x-empty-state-card :type="$type" />
@endif

<script>
    var statusArray = <?php echo json_encode($statuses); ?>;
</script>
<script src="{{asset('assets/js/pages/task-board.js')}}"></script>
