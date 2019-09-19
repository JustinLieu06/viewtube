import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { Link } from 'react-router-dom';

const NavBarTop = props => {
  return (
    <div className="top-nav">
      {/* <div className="hamburger" onClick={props.openModal}>
        <i className="fas fa-bars"></i>
      </div> */}
      <div>
        {props.otherNav}
        <Link to={`/`}><div className="viewtube-icon"><i className="fab fa-youtube fa-rotate-180 fa-2x"></i></div></Link>
        <Link to={`/`}><div className="nav-viewtube">ViewTube</div></Link>
      </div>
      
      {/* PUT SEARCH HERE */}
      <form className="search-form">
        <div className="input-button-wrapper">
          <div className="input-search-wrapper">
            <input type="text" placeholder="Search" className="input-search"/>
          </div>
          <div className="search-button-wrapper">
            <button onClick="" className="search-button"><i class="fas fa-search"></i></button>
          </div>
        </div>
      </form>
      
      <GreetingContainer />
    </div>
  );
}

export default NavBarTop;