<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GMSNET | Log in (ID)</title>
    <!-- Bootstrap 4 CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
  <section class="vh-100 d-flex align-items-center justify-content-center" style="background: url('{{ asset('img/network.jpg') }}') no-repeat center center fixed; background-size: cover;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-flex justify-content-center align-items-center">
                                <img src="{{ asset('img/logo.jpeg') }}" alt="login form" class="img-fluid" style="border-radius: 1rem; max-width: 80%;" />
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">
                                    <form action="{{ route('action-login') }}" method="post">
                                        @csrf
                                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Login ke akunmu</h5>
                                        <div class="form-outline mb-4">
                                            <input required name="email" type="email" id="form2Example17" class="form-control form-control-lg"  />
                                            <label class="form-label" for="form2Example17">Email address</label>
                                        </div>
                                        <div class="form-outline mb-4">
                                            <input required name="password" type="password" id="form2Example27" class="form-control form-control-lg" />
                                            <label class="form-label" for="form2Example27">Password</label>
                                        </div>
                                        <div class="pt-1 mb-4">
                                            <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>
                                        </div>
                                        {{-- <a class="small text-muted" href="#">Forgot password?</a>
                                        <p class="mb-5 pb-lg-2" style="color: #393f81;">Belum ada akun? <a href="#" style="color: #393f81;">Daftar Disini</a></p>
                                        <a href="#" class="small text-muted">Terms of use.</a>
                                        <a href="#" class="small text-muted">Privacy policy</a> --}}
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS, Popper.js, and jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>