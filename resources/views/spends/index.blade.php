@extends("layouts.app")

@section("content")
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 col-xs-10 col-xs-offset-1">
                <div>
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#records" aria-controls="records" role="tab" data-toggle="tab">Records</a></li>
                        <li role="presentation"><a href="#summary" aria-controls="summary" role="tab" data-toggle="tab">Summary</a></li>
                    </ul>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="records">
                            <ul class="list-group">
                                @foreach($spends as $spend)
                                    <li class="list-group-item">
                                        <span class="label label-default">{{$spend->money}}</span> | {{$spend->description}}
                                        <span><a href="{{action("SpendController@delete", ["id" => $spend->id])}}"><span class="glyphicon glyphicon-trash pull-right"></span></a></span>
                                    </li>
                                @endforeach
                            </ul>
                            {!! $spends->render() !!}
                        </div>
                        <div role="tabpanel" class="tab-pane" id="summary">
                            <h1>Spends in this month-{{ date("F") }}</h1>
                            <graph url="spends/summary?type=day" type="line"></graph>

                            <h1>Compare last two months</h1>
                            <graph url="spends/summary?type=month" type="bar"></graph>
                        </div>
                    </div>
                </div>

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
    <script src="js/main.js"></script>
@endsection