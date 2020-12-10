@extends('layouts.vmsapp')

@section('title')
Create New News
@endsection

@section('style')
	<!-- for taging -->
	<link rel="stylesheet" href="{{asset('/tagging/css/jqueryui1.12.1-ui.css')}}">
	<link rel="stylesheet" href="{{asset('/tagging/css/jquery.tagit.css')}}">
	<link rel="stylesheet" href="{{asset('/tagging/css/tagit.ui-zendesk.css')}}">
@endsection


<!-- begin:: Content Head -->

@section('subheader')
	Create New News
@endsection

@section('subheader-action')
    @can('news-list')
        <a href="{{ route('news.index') }}" class="btn btn-success pull-right">
           Go News list
        </a>
    @endcan
@endsection

<!-- end:: Content Head -->

@section('content')

    <div class="kt-content  kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor" id="kt_content">

        <!-- begin:: Content Head -->


        <!-- end:: Content Head -->

        <!-- begin:: Content -->
        <div class="kt-container  kt-container--fluid  kt-grid__item kt-grid__item--fluid">

            <!--Begin::Row-->

            <div class="row justify-content-md-center justify-content-lg-center">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

            <div class="kt-portlet">
				{!! Form::open(array('route' => 'news.store','method'=>'POST','class'=>'kt-form kt-form--label-right','files'=>true)) !!}
										<div class="kt-portlet__head form-header">
											<div class="kt-portlet__head-label">
												<h3 class="kt-portlet__head-title">
													Create new News by fill up required field
												</h3>
											</div>
										</div>
										<!--begin::Form-->

											<div class="kt-portlet__body">
												 
												<div class="row">
													<div class="form-group col-md-7">
														<label for="example-text-input" class="col-form-label">Name<sup class="text-danger">*</sup></label>
														<div class="">
															{!! Form::text('title', $value=old('title'), array('placeholder' => 'News Title Here *','class' => 'form-control','required'=>true)) !!}

															@if ($errors->has('title'))
																<span class="help-block">
                                                            <strong class="text-danger">{{ $errors->first('title') }}</strong>
                                                    </span>
															@endif
														</div>
													</div>

													<div class="form-group col-md-3">
														<label for="example-text-input" class="col-form-label">Topic<sup class="text-danger">*</sup></label>
														<div class="">
															{!! Form::text('topic[]', $value=old('topic'), ['id'=>'topicField','placeholder' => 'News Topic Here *','class' => 'form-control','required'=>true,'style'=>'display:none',]) !!}

															<ul id="topicFieldUl"></ul>

															@if ($errors->has('topic'))
																<span class="help-block">
                                                            <strong class="text-danger">{{ $errors->first('topic') }}</strong>
                                                    </span>
															@endif
														</div>
													</div>
													<div class="form-group col-md-2">
														<label for="example-text-input" class="col-form-label">Published Status<sup class="text-danger">*</sup></label>
														<div class="">
															{!! Form::select('published_status', [\App\Models\News::PUBLISHED=>\App\Models\News::PUBLISHED,\App\Models\News::UNPUBLISHED=>\App\Models\News::UNPUBLISHED],[], ['placeholder' => 'Select One *','class' => 'form-control','required'=>true]) !!}

															@if ($errors->has('published_status'))
																<span class="help-block">
                                                            <strong class="text-danger">{{ $errors->first('published_status') }}</strong>
                                                    </span>
															@endif
														</div>
													</div>

												</div><!-- end row -->


												<div class="row">
													<div class="form-group col-md-10">
														<label for="example-text-input" class="col-form-label">News Details<sup class="text-danger">*</sup></label>
														<div class="">
															{!! Form::textArea('description', $value=old('description'), ['rows'=>8,'placeholder' => 'News Details Here ','class' => 'form-control textarea','required'=>false]) !!}

															@if ($errors->has('description'))
																<span class="help-block">
														<strong class="text-danger">{{ $errors->first('description') }}</strong>
												</span>
															@endif
														</div>
													</div>

													<div class="form-group col-md-2">
														<label for="example-text-input" class=" col-form-label">Feature Image</label>
														<div class="">

															<label class="slide_upload" for="file">
																<!--  -->

																<img id="image_load" src="{{asset('images/default/default.png')}}" style="width: 150px; height: 150px;cursor:pointer;border:2px dashed #260d53;">

															</label>
															<input id="file" style="display:none" name="feature_photo" type="file" onchange="photoLoad(this,this.id)" accept="image/*">


															@if ($errors->has('feature_photo'))
																<span class="help-block">
                                                            <strong class="text-danger">{{ $errors->first('feature_photo') }}</strong>
                                                    </span>
															@endif
														</div>
													</div>


												</div><!-- end row -->

									
											</div> <!--End kt-portlet__body -->


											<div class="kt-portlet__foot form-footer">
												<div class="kt-form__actions">
													<div class="row">
														<div class="col-2">
														</div>
														<div class="col-10">
															<button type="submit" class="btn btn-success">Submit</button>
															<button type="reset" class="btn btn-secondary pull-right">Cancel</button>
														</div>
													</div>
												</div>
											</div>

                                            {!! Form::close() !!}
									</div>
                            </div>
                        </div>
        </div>

            <!--End::Row-->

            <!--End::Dashboard 1-->
    </div>

        <!-- end:: Content -->

@endsection

@section('script')
	<script src="https://cloud.tinymce.com/stable/tinymce.min.js"></script>
	<script>
        tinymce.init({
            selector: '.textarea',
            menubar: false,
            theme: 'modern',
            plugins: 'image code link lists textcolor imagetools colorpicker ',
            browser_spellcheck: true,
            toolbar1: 'formatselect | bold italic strikethrough | link image | alignleft aligncenter alignright alignjustify  | numlist bullist outdent indent  | removeformat',
            // enable title field in the Image dialog
            image_title: true,
            setup: function (ed) {
                ed.on('keyup', function (e) {
                    var count = CountCharacters();
                    document.getElementById("character_count").innerHTML = "Characters: " + count;
                });
            }
        });
	</script>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="{{asset('/tagging/js/jquery-1.12.1-ui.min.js')}}"></script>
	<script src="{{asset('/tagging/js/tag-it.min.js')}}"></script>

	<script>

        $(function(){
            var country_list = ["Bangladesh","Barma","Bronai","Afghanistan"];
            //-------------------------------
            // Input field
            //-------------------------------
            $('#topicFieldUl').tagit({
                //availableTags: ["Afghanistan","Bantladesh"],
                // This will make Tag-it submit a single form value, as a comma-delimited field.
                singleField: true,
                singleFieldNode: $('#topicField'),
                allowSpaces: true,
                tagLimit:3,
                placeholderText:'Enter News Topics (Max 3)',
            });
        });
	</script>



	<script type="text/javascript">
        function photoLoad(input,image_load) {
            var target_image='#'+$('#'+image_load).prev().children().attr('id');

            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $(target_image).attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

	</script>

@endsection

<!-- Good -->





