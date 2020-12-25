@extends('client.layouts.master')

@section('title')
    {{\App\Models\Setting::first()->value('company_slogan')}}
@endsection

@section('style')

    @endsection

@section('content')

    <section style="margin-top: 0px;">
        <div class="container">
            <div class="padding15 marginTopBottom20">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="text-center">
                            <h2 class="paddingBottom20 marginBottom20"> Get in touch </h2>
                        </div>
                    </div>
                </div>
                <div class="row contactPage">
                    <div class="col-sm-6">
                        <div class="box-white single-block auto shadow padding20">
                            <div class="embed-responsive embed-responsive-16by9">
                                <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.693751878496!2d-73.90413788473145!3d40.74676377932813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25f1cc31296bd%3A0x511771f5336b33ee!2s39-06%2062nd%20St%2C%20Flushing%2C%20NY%2011377!5e0!3m2!1sen!2sus!4v1592971036221!5m2!1sen!2sus" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">
                                </iframe>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 contactList">
                        <div class="box-white padding20">
                            <h3>Please contact us in the following ways:</h3>
                            <ul>
                                <li>
                                    <span>Address: </span>
                                    {{$setting->address1}}
                                </li>
                                <li>Phone: <a href="tel:+8802-0000000"><strong>{{$setting->mobile_no1}}</strong></a></li>
                                <li>Mobile: <a href="fax:+8802-0000000"><strong>{{$setting->mobile_no2}}</strong></a></li>
                                <li>Email: <a href="cdn-cgi/l/email-protection.htm#8801700000000"><strong><span class="__cf_email__" data-cfemail="8801700000000">[{{$setting->email1}}]</span></strong>
                                    </a>,
                                    <a href="cdn-cgi/l/email-protection.htm#8801700000000"><strong><span class="__cf_email__" data-cfemail="8801700000000">[{{$setting->email2}}]</span></strong></a></li>

                                <li>Please read our <a href="{{url('/page/privacy-policy')}}" class="text-black"><strong>privacy policy</strong></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    @endsection


@section('script')

    @endsection