<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MyAppGNI.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/Index.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
        <div id="carouselExampleCaptions" class="carousel slide carousel-fade m-0 p-0" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="3"
                aria-label="Slide 4"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/sliderImages/image1.jpeg" class="d-block w-100" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <h5>Prime Location</h5>
                    <p>
                        Our institute is located on a prime location with ample public
                        transport facilities.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/sliderImages/image2.jpeg" class="d-block w-100" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <h5>Latest Technology</h5>
                    <p>
                        We provide best infrastructure to our students to stretch thier
                        ability to learn.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/sliderImages/image3.jpeg" class="d-block w-100" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <h5>Employment Focus</h5>
                    <p>
                        Our target is to guide the students in such a way that they can
                        get a good job.
                    </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="images/sliderImages/image4.jpeg" class="d-block w-100" alt="..." />
                <div class="carousel-caption d-none d-md-block">
                    <h5>Personalised Attention</h5>
                    <p>
                        We make our batchs in such a way that every student should get proper attention and time.
                    </p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev d-sm-none" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div id="services" class="row bg-light">
        <div class="col-sm-12 pt-3 display-3 text-center">Our Services</div>
    </div>
    <div class="row bg-light p-3 serviceSec">
        <div class="col col-lg-3 col-md-6 col-sm-12" data-aos="flip-up" data-aos-offset="200"
            data-aos-easing="ease-in-sine" data-aos-duration="1000">
            <div class="card">
                <img src="Images/computerLearn.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="pt-2 text-danger">Computer Courses</h5>
                    <p class="card-text">
                        We provide best harware and software training along with
                        programming languages to help you in landing a good job.
                    </p>
                    <a href="#" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col col-lg-3 col-md-6 col-sm-12" data-aos="flip-right" data-aos-offset="200"
            data-aos-easing="ease-in-sine" data-aos-duration="1000">
            <div class="card">
                <img src="Images/accounting.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="pt-2 text-danger">Accounts & Tally</h5>
                    <p class="card-text">
                        Learn managing personal accounts and firm's account manually and
                        in tally to work as a trained accounts professional.
                    </p>
                    <a href="#" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col col-lg-3 col-md-6 col-sm-12" data-aos="flip-left" data-aos-offset="200"
            data-aos-easing="ease-in-sine" data-aos-duration="1000">
            <div class="card">
                <img src="Images/stitchTailor.jpg" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="pt-2 text-danger">Stitching & Tailoring</h5>
                    <p class="card-text">
                        Professional coaching in dress designing, cutting and tailoring
                        both India & Western along with boutique setup.
                    </p>
                    <a href="#" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
        <div class="col col-lg-3 col-md-6 col-sm-12" data-aos="flip-down" data-aos-offset="200"
            data-aos-easing="ease-in-sine" data-aos-duration="1000">
            <div class="card">
                <img src="Images/ielts.png" class="card-img-top" alt="..." />
                <div class="card-body">
                    <h5 class="pt-2 text-danger">IELTS Training</h5>
                    <p class="card-text">
                        IELTS coaching and practise on latest material from Cambridge
                        University. Daily One to One speaking with expert.
                    </p>
                    <a href="#" class="btn btn-primary">Details</a>
                </div>
            </div>
        </div>
    </div>

    <div id="whyus">
        <div class="row justify-content-center align-items-center" data-aos="fade-up-bottom" data-aos-offset="200"
            data-aos-easing="ease-in-sine" data-aos-duration="1000"
            style="background-color: rgba(0, 0, 0, 0.5); min-height: 400px">
            <div class="pt-3 display-6 text-white text-center">
                Why Guru Nanak Institute ?
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 p-1">
                <div class="d-flex flex-column justify-content-center align-items-center text-white">
                    <p class="display-1">30<sup>+</sup></p>
                    <p class="display-6">Courses</p>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 p-1">
                <div class="d-flex flex-column justify-content-center align-items-center text-white">
                    <p class="display-1">150<sup>+</sup></p>
                    <p class="display-6">Students</p>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 p-1">
                <div class="d-flex flex-column justify-content-center align-items-center text-white">
                    <p class="display-1">280<sup>+</sup></p>
                    <p class="display-6">Books</p>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 p-1">
                <div class="d-flex flex-column justify-content-center align-items-center text-white">
                    <p class="display-1">4.0<sup>+</sup></p>
                    <p class="display-6">Reviews</p>
                </div>
            </div>
        </div>
    </div>

    <div id="testimonials" class="p-3">
        <section>
            <div class="row d-flex justify-content-center">
                <div class="col-md-10 col-xl-8 text-center">
                    <h3 class="mb-4">Testimonials</h3>
                    <p class="mb-4 pb-2 mb-md-5 pb-md-0">
                        We have thousands of success stories in our pocket. Some of those are as follows.
                    </p>
                </div>
            </div>

            <div class="row text-center">
                <div class="col-md-4 mb-5 mb-md-0" data-aos="zoom-in" data-aos-offset="200"
                    data-aos-easing="ease-in-sine" data-aos-duration="1000">
                    <div class="d-flex justify-content-center mb-4">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(1).webp"
                            class="rounded-circle shadow-1-strong" width="150" height="150" />
                    </div>
                    <h5 class="mb-3">Sehajpal Kaur</h5>
                    <h6 class="text-primary mb-3">Student (CANADA)</h6>
                    <p class="px-xl-3">
                        <i class="fas fa-quote-left pe-2"></i>I was a computer student at GNI in 2022 before going to
                        Canada for higher studies.
                        The logics learned in the Institute are helping me a lot.
                    </p>
                    <ul class="list-unstyled d-flex justify-content-center mb-0">
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star-half-alt fa-sm text-warning"></i>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 mb-5 mb-md-0" data-aos="flip-left" data-aos-offset="200"
                    data-aos-easing="ease-in-sine" data-aos-duration="1000">
                    <div class="d-flex justify-content-center mb-4">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(2).webp"
                            class="rounded-circle shadow-1-strong" width="150" height="150" />
                    </div>
                    <h5 class="mb-3">Nidhi Khanna</h5>
                    <h6 class="text-primary mb-3">Graphic Designer</h6>
                    <p class="px-xl-3">
                        <i class="fas fa-quote-left pe-2"></i>I have completed my graphic designer course from GNI in
                        2022. Now, I am working as
                        graphic designer in a reputed company.
                    </p>
                    <ul class="list-unstyled d-flex justify-content-center mb-0">
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 mb-0" data-aos="zoom-in" data-aos-offset="200" data-aos-easing="ease-in-sine"
                    data-aos-duration="1000">
                    <div class="d-flex justify-content-center mb-4">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/Avatars/img%20(9).webp"
                            class="rounded-circle shadow-1-strong" width="150" height="150" />
                    </div>
                    <h5 class="mb-3">Rajan Mehra</h5>
                    <h6 class="text-primary mb-3">Accountant Freelancer</h6>
                    <p class="px-xl-3">
                        <i class="fas fa-quote-left pe-2"></i>The teachers at GNI are very talented. The way they taught
                        me was
                        very nice. I just started working after completion of my Accounting course.
                    </p>
                    <ul class="list-unstyled d-flex justify-content-center mb-0">
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-warning"></i>
                        </li>
                        <li>
                            <i class="far fa-star fa-sm text-warning"></i>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>

    <div id="about" class="row bg-dark">
        <div class="col-sm-12 pt-3 display-3 text-center text-white">
            About Us
        </div>
    </div>
    <div id="aboutSection" class="row bg-dark justify-content-around">
        <div class="col-xl-4 col-lg-5 col-md-6 col-sm-12 pb-5">
            <div id="certificateDiv" data-aos="flip-right" data-aos-offset="200" data-aos-easing="ease-in-sine"
                data-aos-duration="1000"></div>
        </div>
        <div class="col-xl-5 col-lg-7 col-md-6 col-sm-12">
            <p class="display-6 pt-1 text-white text-center">
                Guru Nanak Institute
            </p>
            <p class="text-white p-3 text-justify" data-aos="fade-up" data-aos-offset="200"
                data-aos-easing="ease-in-sine" data-aos-duration="1000">
                We, at Guru Nanak Institute, are delivering excellence in the field of IT since 2010.
                In 2022 we got our institute as an ISO certified institute upto January 2025 and our
                courses are approved from the regulatory body. These educational
                qualifications can be shown as experience and requirement in
                government and private jobs. We provide online verification of
                certificates to the accessing agencies to find fake certification and
                fast verification to save the time.
            </p>
        </div>
    </div>

    <div id="contact" class="row bg-light">
        <div class="col-sm-12 pt-3 display-3 text-center text-dark">
            Contact Us
        </div>
    </div>
    <div id="contactSection" class="row bg-light">

        <section class="mb-4">
            <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
            <p class="text-center w-responsive mx-auto mb-5">
                Do you have any questions? Please do not hesitate to contact us
                directly. Our team will come back to you within a matter of hours to
                help you.
            </p>

            <div class="row">
                <div class="col-md-8 mb-md-0 mb-5">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="name" class="">Your name</label>
                                    <input type="text" id="name" name="name" class="form-control" required />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="email" class="">Your email</label>
                                    <input type="email" id="email" name="email" class="form-control" required/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="md-form mb-0">
                                    <label for="subject" class="">Subject</label>
                                    <input type="text" id="subject" name="subject" class="form-control" required />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="md-form">
                                    <label for="message">Your message</label>
                                    <textarea type="text" id="message" name="message" rows="2"
                                        class="form-control md-textarea" required></textarea>
                                </div>
                            </div>
                        </div>

                    

                    <div class="mt-3 ms-3 text-md-left">
                        <asp:Button ID="btnSend" runat="server" CssClass="btn btn-warning" Text="Send" OnClick="btnSend_Click" />
                    </div>
                    <div id="msgStatus" runat="server" class="status"></div>
                </div>
                <div class="col-md-4 text-center">
                    <ul class="list-unstyled mb-0">
                        <li>
                            <i class="fas fa-map-marker-alt fa-2x"></i>
                            <p>Chohla Sahib, TarnTaran, 143408, Punjab, INDIA</p>
                        </li>

                        <li>
                            <i class="fas fa-phone mt-4 fa-2x"></i>
                            <p>+ 91 94178-35893</p>
                            <p>+ 91 99144-82821</p>
                        </li>

                        <li>
                            <i class="fas fa-envelope mt-4 fa-2x"></i>
                            <p>gni.chohlasahib@gmail.com</p>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
    </div>
    <script>
        document.getElementById("aHome").className = "nav-link active";
        
        
    
    </script>
</asp:Content>
