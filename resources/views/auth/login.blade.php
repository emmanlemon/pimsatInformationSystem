<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<section class="vh-100" style="background-color: #5096ff;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col col-xl-10">
          <div class="card" style="border-radius: 1rem;">
            <div class="row g-0">
              <div class="col-md-6 col-lg-5 d-none d-md-block">
                <img src="https://img.freepik.com/free-vector/flat-design-customer-support-concept-illustrated_52683-59662.jpg"
                  alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem; height:100%;" />
              </div>
              <div class="col-md-6 col-lg-7 d-flex align-items-center">
                <div class="card-body p-4 p-lg-5 text-black">
                  <form method="POST" action="{{ url('/auth') }}">
                    @csrf
                    <div class="d-flex align-items-center mb-3 pb-1">
                      <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                      <img src="https://scontent.fcrk2-2.fna.fbcdn.net/v/t39.30808-6/300282460_556486902928663_5614063142191300053_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeE7MVl_PSwEOF2JYhk-Jd3KZNeBTNegtF1k14FM16C0XZPusaxLn3EPrAuyYn6d4GElRzMu3RkP749m3nyu5ALe&_nc_ohc=iBPKb64d9HUAX_Z4UER&_nc_ht=scontent.fcrk2-2.fna&oh=00_AfBF8e0oSjyGSCZKoViNI3XfvT2jqcJrhg-kQ5FNOAQklw&oe=63E357B1"
                      alt="login form" class="img-fluid" style="width:100px; height: 100px;" />
                      <span class="h2 fw-bold mb-0" style="text-align:center;">PIMSAT<br>(San Carlos Campus)</span>
                    </div>
                    <div class="form-outline mb-4">
                      <input type="type" name="username"class="form-control form-control-lg" required/>
                      <label class="form-label" for="form2Example17">Input Your ID Number</label>
                    </div>
  
                    <div class="form-outline mb-4">
                      <input type="password" name="password" id="form2Example27" class="form-control form-control-lg" required/>
                      <label class="form-label" for="form2Example27">Password</label>
                    </div>
  
                    <div class="pt-1 mb-4">
                      <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                    </div>
                    @if(Session::has('fail'))
                    <div class="alert alert-danger">{{ Session::get('fail') }}</div>
                    @endif
{{--   
                    <a class="small text-muted" href="#!">Forgot password?</a>
                    <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!"
                        style="color: #393f81;">Register here</a></p> --}}
                    <a href="#!" class="small text-muted">Terms of use.</a>
                    <a href="#!" class="small text-muted">Privacy policy</a>
                  </form>
  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>