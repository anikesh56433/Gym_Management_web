<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>GYM</title>
        
        <link rel="stylesheet" 
            href="https://use.fontawesome.com/releases/v6.0.0/css/all.css" 
            integrity="sha384-3B6NwesSXE7YJlcLI9RpRqGf2p/EgVH8BgoKTaUrmKNDkHPStTQ3EyoYjCGXaOTS" 
            crossorigin="anonymous"
        />
      <style >
      :root {
    --red: #f9032f;
    --black: #000;
    --white: #fff;

}

*{
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
}

.navbar{
    background: var(--black);
    height: 60px;
    padding: 0.5rem calc((100vw - 1200px) / 2);
    display: flex;
    justify-content: space-between;
    align-items: center;
    position: relative;

}

.navbar__logo{
    color: var(--white);
    text-decoration: none;
    padding-left: 1rem;
    font-size: 1.5rem;
}

.navbar__link{
    color: var(--white);
    text-decoration: none;
    padding: 0rem 1rem;
    
}

.navbar__link:hover {
    color:var(--red);
}

@media screen and (max-width: 768px){

    body.active{
        overflow-y: hidden;
        overflow-x: hidden;
    }

    .navbar__link{
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .navbar__menu{
        display: grid;
        grid-template-columns: 1fr;
        grid-template-rows: repeat(4, 100px);
        position: absolute;
        width: 100%;
        top: -1000px;
    }

    .navbar__menu.active{
        top: 100%;
        opacity: 1;
        z-index: 99;
        height: 100vh;
        font-size: 1.5rem;
        background: var(--black);
    }

    .navbar__toggle .bar{
        width: 25px;
        height: 3px;
        margin: 5px auto;
        transition: all 0.3s ease-in-out;
        background:var(--white);
        display: block;
        cursor: pointer;
        
    }

    #mobile-menu{
        position: absolute;
        top: 15%;
        right: 5%;
        transform: translate(5%, 20%);
    } 
    
    #mobile-menu.is-active .bar:nth-child(2){
        opacity: 0;
    }

    #mobile-menu.is-active .bar:nth-child(1){
        transform: translateY(8px) rotate(45deg);
}

    #mobile-menu.is-active .bar:nth-child(3){
        transform: translateY(-8px) rotate(-45deg);
    }
    
    
    
}

/*hero section*/
.hero{
    background: url('./images/image2.jpg');
    height: 100vh;
    background-position: center;
    background-size: cover;
    padding: 0.5rem calc((100vw - 1200px) / 2);
    display: flex;
    justify-content: flex-start;
    align-items: center;
}

.hero__content{
    color: var(--white);
    padding: 3rem 1rem;
    line-height: 1;
}

.hero__content h1{
    font-size: clamp(3rem, 8vw, 7rem);
    text-transform: uppercase;
    margin-bottom: 0.5rem;
    
}

.hero__content p{
    font-size: clamp(1rem, 4vw, 2.5rem);
    margin-bottom: 3rem;
    
}


.button{
    padding: 1rem 3rem;
    border: none;
    background: var(--red);
    color: var(--white);
    font-size: 1rem;
    cursor: pointer;
    outline: none;
    transition: 0.3s ease;
    text-decoration: none;
    border-radius: 4px;
}
.button:hover{
    background: var(--black);
}

/*servcies section*/

.services{
    padding: 8rem calc((100vw - 1200px) / 2);

}

.services__container{
    display: grid;
    grid-template-columns: 1fr 1fr;
    padding: 1rem;

}

.services__img{
    width: 100%;
    height: 100%;
}

.topline{
    color: var(--red);
    text-transform: uppercase;
    font-weight: bold;
    margin-bottom: 0.5 rem;
}

.services__heading{
    margin-bottom: 1rem;
    font-size: clamp(2rem, 6vw, 3 rem);
}

.services__features{
    list-style: none;
}

.services__feature{
    margin-bottom: 1.5rem;
    font-size: clamp(1rem, 5vw, 1.2rem);
}

.fa-check-circle{
    margin-right: 0.5rem;
    color: var(--red);
}

@media screen and (max-width: 768px){
    .services__container{
        grid-template-columns: 1fr;
    }
}

/*Membership section*/

.memberships{
    background: var(--black);
    color: var(--white);
    padding: 6rem calc((100vw - 1100px) / 2);
    text-align: center;
}

.memberships h1{
    margin-bottom: 1rem;
    font-size: clamp(2rem, 5vw, 3rem);
    padding: 0 1rem;
}

.membership__desc{
    margin-bottom: 3rem;
    font-size: clamp(1rem, 3vw, 1.5rem);
    padding: 1rem;
}

.membership__wrapper{
    display:flex;
    justify-content: space-between;
    align-items: flex-start;
    padding: 1rem;
}
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
}

.image-gallery {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 10px;
    padding: 20px;
}

.image-gallery img {
    width: 100%;
    height: auto;
    display: block;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    animation: fadeIn 1.5s ease-in-out;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.image-gallery img:hover {
    transform: scale(1.1);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    animation: hoverAnimation 0.3s ease-in-out forwards;
}
    .image-gallery {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 10px;
            padding: 20px;
        }
        .image-gallery img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .image-description {
            font-size: 14px;
            margin-top: 5px;
            text-align: center;
        }

@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

@keyframes hoverAnimation {
    from {
        transform: scale(1);
    }
    to {
        transform: scale(1.1);
    }
}


.membership__card{
    padding: 2rem;
    min-height: 450px;
    width: 325px;
    background: var(--white);
    color: var(--black);
    border-radius: 10px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.membership__perks{
    min-height: 150px;

}

.membership__card p {
    margin-bottom: 1rem;
}

.card-icon{
    font-size: 3rem;
    margin-bottom: 2rem;
    color: var(--red);

}

.membership__card h3{
    font-size: clamp(1rem, 5vw, 2rem);
    margin-bottom: 2rem;
}

@media screen and (max-width: 1100px) {
    .membership__wrapper{
        flex-direction: column;
        align-items: center;

    }

    .membership__card{
        width: 90%;
        margin-bottom: 2rem;
    }
}

/* team section */

.team{
    padding: 8rem calc((100vw - 1100px) / 2 );
}

.team__wrapper{
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-template-rows: repeat(auto, 350px);
}

.team__card{
    margin: 1rem;
    border-radius: 10px;
    position: relative;
}

.team__text{
    padding: 1rem;
}
 
.team__text h1{
    margin-bottom: 1rem;
    font-size: 3rem;

}

.team__desc{
    font-size: clamp(1rem, 3vw, 1.3rem);
    line-height: 1.4;
}

.team__card p {
    position: absolute;
    bottom: 30px;
    color: var(--white);
    left: 25px;
    font-size: 3rem;
}

.team__img{
    width: 100%;
    height: 100%;
    border-radius: 10px;
}

.team__text:nth-child(1) {
    grid-row: 1 /3;
    grid-column: 2 /3;
}

.team__text:nth-child(2) {
    grid-row: 5 /6;
    grid-column: 1 /2;
}

.team__card:nth-child(3) {
    grid-row: 1 /3;
    grid-column: 1 /2;
}

.team__card:nth-child(4) {
    grid-row: 2 /4;
    grid-column: 2 /3;
}

.team__card:nth-child(5) {
    grid-row: 3 /5;
    grid-column: 1 /2;
}

.team__card:nth-child(6) {
    grid-row: 4 /6;
    grid-column: 2 /3;
}

@media screen and (max-width: 768px){
    .team__wrapper{
        grid-template-columns: 1fr;
        grid-template-rows: auto;
    }

    .team__text:nth-child(1) {
        grid-row: 1 /2;
        grid-column: 1 /2;
    }
    
    .team__text:nth-child(2) {
        grid-row: 6 /7;
        grid-column: 1 /2;
    }
    
    .team__card:nth-child(3) {
        grid-row: 3 /4;
        grid-column: 1 /2;
    }
    
    .team__card:nth-child(4) {
        grid-row: 4 /5;
        grid-column: 1 /2;
    }
    
    .team__card:nth-child(5) {
        grid-row: 5 /6;
        grid-column: 1 /2;
    }
    
    .team__card:nth-child(6) {
        grid-row: 2 /3;
        grid-column: 1 /2;
    }
}

/*form section*/

.email{
    background: url('./images/gym-3.jpg');
    background-size: cover;
    height: 450px;
    width: 100%;
    padding: 5rem calc((100vw - 1300px) / 2 );
    color: var(--white);
    display: flex;
    justify-content: center;
    align-items: center;
}

.email__content{
    display: flex;
    flex-direction: column;
    align-items: center;
}

.email__content h1{
    text-align: center;
    margin-bottom: 1rem;
    font-size: clamp(1rem, 5vw, 3rem);
    padding: 0 1rem;
}

.email__content p {
    text-align: center;
    font-size: clamp(1rem, 2.5vw, 1.5rem);
    padding: 0 1rem;
    margin-bottom: 2rem;

}

form{
    z-index: 10;
}

.form__wrap input {
    padding: 1rem 1.5rem;
    outline: none;
    width: 350px;
    height: 50px;
    border: none;
    margin-right: 1rem;
    border-radius: 4px;
}

@media screen and (max-width: 768px) {
    .form__wrap {
        display: flex;
        flex-direction: column;
        padding: 0 1rem;
    }
    .form__wrap input{
        margin-bottom: 1rem;
        width: 100;
        margin-right: 0;

    }

    button{
        width: 100%;
        min-width: 350px;

    }
}


@media screen and (max-width: 400px){
    button{
        width: 100%;
        min-width: 250px;

    }
}

/* footer section */

.footer{
    padding: 5rem calc((100vw - 1100px) / 2);
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    color: var(--white);
    background: var(--black)
}

.footer__desc{
    padding: 0 2rem;
}

.footer__desc h1{
    margin-bottom: 2rem;
    color: var(--red);
    font-size: 1.5rem;

}

.footer__desc p {
    margin-bottom: 1rem;

}

#phone{
    font-weight: bold;
    font-size: 1.2rem;

}

.footer__wrapper{
    display: grid;
    grid-template-columns: repeat(2, 1fr);
}

.footer__links{
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    padding: 1rem 2rem;
}
.footer__title{
    font-size: 14px;
    margin-bottom: 16px;

}

.footer__link {
    text-decoration: none;
    color: rgb(242, 242, 242);
    font-size: 14px;
    margin-bottom: 0.5rem;
    transition: 0.3s ease-in-out;
}
.footer__link:hover{
    color: var(--red);
}

@media screen and (max-width: 820px){
    .footer__wrapper{
        grid-template-columns: 1fr;
    }
}

@media screen and (max-width: 400px){
    .footer__desc{
        padding: 1rem;
    }

    .footer__links{
        padding: 1rem;
    }
}
      
  
      </style>
    </head>
    <body>
        <!-- Navigation bar-->
        <nav class="navbar">
            <a href="/" class="navbar__logo">SK GYM</a>
            <div class="navbar__toggle" id="mobile-menu">
                <span class="bar"></span>
                <span class="bar"></span>
                <span class="bar"></span>
            </div>
            <div class="navbar__menu">
                <a href="#Home" class="navbar__link">Home</a>
                 <a href="" class="navbar__link">Gellary</a>
                <a href="resistationPage.jsp" class="navbar__link">Resistation</a>
                <a href="loginPage.jsp" class="navbar__link">Login</a>
                <a href="profilePage.jsp" class="navbar__link">Profile</a>
            </div>
        </nav>
        <div class="hero">
            <div class="hero__image" style="background-image: url('https://example.com/image1.jpg');"></div>
            <div class="hero__image" style="background-image: url('https://example.com/image2.jpg');"></div>
            <div class="hero__image" style="background-image: url('https://example.com/image3.jpg');"></div>
            <div class="hero__content">
                <h1 class="animate-hero">SK GYM</h1>
                <p class="animate-hero">Join Now for Rs. 1000</p>
                <a href="resistationPage.jsp" class="button animate-hero">Get Started</a>
            </div>
        </div>
        
        <!-- services section-->
        <div class="services">
            <div class="services__container">
                <div>
                    <p class="topline animate-services">Features</p>
                    <h1 class="services__heading animate-services">What we offer</h1>
                    <div class="services__features">
                        <p class="services__feature animate-servicespoints">
                            <i class="fas fa-check-circle"></i>Group fitness classes
                        </p>   
                        <p class="services__feature animate-servicespoints">
                            <i class="fas fa-check-circle"></i>Personal Trainer session
                        </p> 
                        <p class="services__feature animate-servicespoints">
                            <i class="fas fa-check-circle"></i>Indoor pool
                        </p> 
                        <p class="services__feature animate-servicespoints">
                            <i class="fas fa-check-circle"></i>Steam Room and Sauna
                        </p> 
                        <p class="services__feature animate-servicespoints">
                            <i class="fas fa-check-circle"></i>Basketball court
                        </p> 
                        <p class="services__feature animate-servicespoints">
                            <i class="fas fa-check-circle"></i>Open 24/7
                        </p> 
                    </div>
                </div>
                <div>
                    <img src="./images/gym-2.jpg" alt="gym" class="services__img animate-img" />
                </div>
            </div>
        </div>
        <!-- Member ship section -->
        <div class="memberships">
            <h1 class="animate-membership">View Our Plans</h1>
            <p class="membership__desc animate-membership">Get started today and receive 25% off your first month</p>
            <div class="membership__wrapper">
                <div class="membership__card animate-card">
                    <div class="membership__title">
                        <i class="fas fa-dumbbell card-icon"></i>
                        <h3>Starter</h3>
                    </div>
                    <div class="membership__perks">
                        <p> Get Access to entire gym</p>
                        <p>Rs. 1000 per month</p>
                    </div>
                    <a href="resistationPage.jsp" class="button">Sign Up</a>
                </div>
                <div class="membership__card animate-card">
                    <div class="membership__title">
                        <i class="fas fa-bicycle card-icon"></i>
                        <h3>Silver</h3>
                    </div>
                    <div class="membership__perks">
                        <p> Get Access to entire gym</p>
                        <p> Group fitness classes</p>
                        <p>Rs. 1500 per month</p>
                    </div>
                    <a href="resistationPage.jsp" class="button">Sign Up</a>
                </div>
                <div class="membership__card animate-card">
                    <div class="membership__title">
                        <i class="fas fa-dumbbell card-icon"></i>
                        <h3>Gold</h3>
                    </div>
                    <div class="membership__perks">
                        <p> Get Access to entire gym</p>
                        <p> Group fitness classes</p>
                        <p> Private Personal Training</p>
                        <p>Rs. 2000 per month</p>
                    </div>
                    <a href="resistationPage.jsp" class="button">Sign Up</a>
                </div>
            </div>
        </div>
 <section class="image-gallery">
        <img src="https://c4.wallpaperflare.com/wallpaper/630/144/936/girl-model-blonde-sports-wallpaper-preview.jpg" alt="Model doing sports">
        <div class="image-description">Model doing sports</div>
        <img src="https://e1.pxfuel.com/desktop-wallpaper/240/888/desktop-wallpaper-fitness-man-women-muscles.jpg" alt="Fitness man and woman with muscles">
        <div class="image-description">Fitness man and woman with muscles</div>
      
        <img src="https://c4.wallpaperflare.com/wallpaper/809/537/291/abs-belly-body-dani-wallpaper-preview.jpg" alt="Abs workout">
        <div class="image-description">Abs workout</div>
        <img src="https://i.pinimg.com/736x/05/b9/09/05b909015e1d4bd421d4c889c266abf4.jpg" alt="Fitness woman">
        <div class="image-description">Fitness woman</div>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIcg20BvAhjUFY3mYtqJ_zAQbB3wYsZIWLdQ&s" alt="Athletic couple in the gym">
        <div class="image-description">Athletic couple in the gym</div>
        <img src="https://www.anytimefitness.co.in/wp-content/uploads/2023/04/Body-Workout.jpg" alt="Body workout">
        <div class="image-description">Body workout</div>
        <img src="https://cdn.muscleandstrength.com/sites/default/files/styles/800x500/public/lean_woman_doing_dumbbell_row.jpg?itok=eU6elx6n" alt="Woman doing dumbbell row">
        <div class="image-description">Woman doing dumbbell row</div>
        <img src="https://media.istockphoto.com/id/1849346655/photo/athletic-couple-using-medicine-balls-while-doing-sit-ups-during-sports-training-in-a-gym.jpg?s=1024x1024&w=is&k=20&c=HyZTA02B9KmUMO4Ejx0a7kY0gUMdrdFXoENpjK_E_RA=" alt="Athletes exercising with medicine balls">
        <div class="image-description">Athletes exercising with medicine balls</div>
        <img src="https://media.istockphoto.com/id/1307734053/photo/five-athletes-exercising-with-stability-balls-indoors.jpg?s=1024x1024&w=is&k=20&c=nUJ78cnj7PkFHmftYp1MX89DbOHjWwL8uOsHYkx368c=" alt="Athletes with stability balls">
        <div class="image-description">Athletes with stability balls</div>
        <img src="https://www.shutterstock.com/image-photo/portrait-handsome-young-muscular-middle-260nw-2075626996.jpg" alt="Muscular man in gym">
        <div class="image-description">Muscular man in gym</div>
        <img src="https://pixahive.com/wp-content/uploads/2021/04/Model-posing-in-the-gym-417157-pixahive.jpg" alt="Model posing in the gym">
        <div class="image-description">Model posing in the gym</div>
        <img src="https://img.freepik.com/premium-photo/image-fitness-girl-gym-perfect-sexy-body-sport-bodybuilding-concept-healthy-lifestyle-workout-motivation_392761-4742.jpg?w=360" alt="Fitness girl in gym">
        <div class="image-description">Fitness girl in gym</div>
        <img src="https://static.vecteezy.com/system/resources/previews/025/888/481/non_2x/beautiful-athletic-muscular-woman-pumps-up-the-muscles-by-one-arm-lifts-dumbbell-exercise-on-bench-in-fitness-gym-young-sport-girl-gains-strong-physical-muscle-well-by-weight-lifted-in-fitness-studio-photo.jpg" alt="Muscular woman lifting dumbbell">
        <div class="image-description">Muscular woman lifting dumbbell</div>
        <img src="https://i0.wp.com/post.healthline.com/wp-content/uploads/2023/02/female-dumbbells-1296x728-header-1296x729.jpg?w=1155&h=2268" alt="Female with dumbbells">
        <div class="image-description">Female with dumbbells</div>
        <img src="https://thumbs.dreamstime.com/z/sexy-athletic-girl-workout-gym-fitness-woman-doing-exercise-triceps-beautiful-buttocks-thong-146657864.jpg" alt="Athletic girl doing triceps exercise">
        <div class="image-description">Athletic girl doing triceps exercise</div>
        
       
    </section>        <!-- teams section -->
        <div class="team">
            <div class="team__wrapper">
                <div class="team__text animate-team">
                    <p class="topline">Private Coaching</p>
                    <h1>Meet our Trainers</h1>
                    <p class="team_desc">
                        All our personal trainers are well experienced.
                        Each trainer specializes in strength and mobility workouts.
                    </p>                   
                </div>
                <div class="team__text animate-team">
                    <p class="topline">Free Trail</p>
                    <h1>7 day trial</h1>
                    <p class="team_desc">
                        you can work with each trainer for up to 7 days to see if they are a good fit for your goals.
                    </p>                   
                </div>
                <div class="team__card animate-team">
                    <p>Shree Devi</p>
                    <img src="./images/person-1.jpg"  alt="person" class="team__img" />
                </div>
                <div class="team__card animate-team">
                    <p>Mousin Bhai</p>
                    <img src="./images/person-2.jpg" alt="person" class="team__img" />
                </div>
                <div class="team__card animate-team">
                    <p> Rani </p>
                    <img src="./images/person-3.jpg" alt="person" class="team__img" />
                </div>
                <div class="team__card animate-team">
                    <p>Ajju Bhaiya</p>
                    <img src="https://images.unsplash.com/photo-1577221084712-45b0445d2b00?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Z3ltfGVufDB8fDB8fHww" alt="person" class="team__img" />
                </div>

            </div>
        </div>
        <!-- email section-->
        <div class="email">
            <div class="email__content">
                <h1 class="animate-email">
                    Get Access to Members Only Perks
                </h1>
                <p class="animate-email">
                    Sign up for our newsletter below to get Rs. 1200 off your first training session

                </p>
                <form action="#">
                    <div class="form__wrap">
                        <label for="email">
                            <input type="email" placeholder="Enter your email" id="email">
                        </label>
                      
                        <a href="resistationPage.jsp" class="button">Sign up</a>
                    
                    </div>
                </form>                
            </div>
        </div>
        <!-- footer section-->
        <div class="footer">
            <div class="footer__wrapper">
                <div class="footer__desc">
                    <h1>SK Gym</h1>
                    <p>Luxury fitness gym located in downtown India</p>
                    <p id="phone">+91 8319143976 </p>
                          <p id="email">anikesh56433@gmail.com</p>
                </div>
                <div class="footer__links">
                    <div class="footer__title">Contact Us</div>
                    <a href="" class="footer__link">Contact</a>
                    <a href="" class="footer__link">Support</a>
                    <a href="" class="footer__link">Sponserships</a>
                </div>
            </div>
            <div class="footer__wrapper">
                <div class="footer__links">
                <h2 class="footer__title">Memberships</h2>
                <a class="footer__link" href="">Pricing</a>
                <a class="footer__link" href="">Plans</a>
                <a class="footer__link" href="">FAQ</a>
            </div>
            <div class="footer__links">
                <h2 class="footer__title">Social Media</h2>
                <a class="footer__link" target="_blank" href="https://www.instagram.com/i__am__ani__/?next=%2F">Instagram</a>
                <a class="footer__link" target="_blank" href="https://www.facebook.com/login/web/?email=8319143976&is_from_lara=1">Facebook</a>
                <a class="footer__link" target="_blank" href="https://www.youtube.com/">Youtube</a>
                <a class="footer__link" target="_blank" href="https://x.com/?lang=en&mx=2">Twitter</a>
            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>
        <script src="script.js"></script>
    </body>
</html>