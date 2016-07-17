@extends("layouts.app")

@section("content")
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-xs-10 col-xs-offset-1">
                <ul class="list-group">
                    @foreach($spends as $spend)
                        <li class="list-group-item">
                            <span class="label label-default">{{$spend->money}}</span> | {{$spend->description}}
                            <span><a href="{{action("SpendController@delete", ["id" => $spend->id])}}"><span class="glyphicon glyphicon-trash pull-right"></span></a></span>
                        </li>
                    @endforeach
                </ul>
                {!! $spends->render() !!}
                <form method="GET" action="{{url("spends/add")}}">
                    <div class="form-group">
                        <label for="money">money</label>
                        <input type="number" id="money" name="spend[money]" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="description">description</label>
                        <input type="text" id="description" name="spend[description]" class="form-control">
                    </div>
                    <button class="btn btn-default">add</button>
                </form>
            </div>
        </div>
    </div>
@endsection