import React, {useState} from 'react';
import 'bootstrap/dist/css/bootstrap.min.css'
import {
  MDBCarousel,
  MDBCarouselItem,
} from 'mdb-react-ui-kit';

import {
  MDBFooter,
  MDBContainer,
  MDBCol,
  MDBRow,
  MDBBtn
} from 'mdb-react-ui-kit';

const Home=()=>
{

    return(
        <div>

<MDBCarousel showIndicators showControls fade>
      <MDBCarouselItem
        className='w-100 d-block'
        itemId={1}
        src='https://www.ecorentacar.com/wp-content/uploads/2019/03/Luxury-Fleet-Banner.jpg'
        alt='...'
      >
        <h5>First slide label</h5>
        <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
      </MDBCarouselItem>

      <MDBCarouselItem
        className='w-100 d-block'
        itemId={2}
        src='https://image4.slideserve.com/7735249/car-rental-system-l.jpg'
        alt='...'
      >
        <h5>Second slide label</h5>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
      </MDBCarouselItem>

      <MDBCarouselItem
        className='w-100 d-block'
        itemId={3}
        src='https://www.thekickassentrepreneur.com/wp-content/uploads/2022/06/handing-key.jpg'
        alt='...'
      >
        <h5>Third slide label</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </MDBCarouselItem>
    </MDBCarousel>

    <MDBFooter className='text-center text-white' style={{ backgroundColor: '#0a4275' }}>
      <MDBContainer className='p-4 pb-0'>
        <section className=''>
          <p className='d-flex justify-content-center align-items-center'>
            <span className='me-3'>Register for free</span>
            <MDBBtn type='button' outline color="light" rounded>
              Sign up!
            </MDBBtn>
          </p>
        </section>
      </MDBContainer>

      <div className='text-center p-3' style={{ backgroundColor: 'rgba(0, 0, 0, 0.2)' }}>
        © 2020 Copyright:
        <a className='text-white' href='https://mdbootstrap.com/'>
          MDBootstrap.com
        </a>
      </div>
    </MDBFooter>
      
  

        </div>

    )
}
export default Home;