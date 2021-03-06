import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import { Link } from 'react-router-dom';

class NavBarTop extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      search: ''
    }
    this.handleUpdate = this.handleUpdate.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount(){
    this.setState({search: ''})
    // this.props.searchVideos(this.props.match.params.query);
    window.scrollTo(0, 0);
  }

  // componentDidUpdate(prevProps){
  //   this.props.searchVideos(this.props.match.params.query);

  // }

  handleUpdate(e) {
    e.preventDefault();
    this.setState({
      search: e.currentTarget.value
    })
  }

  handleSubmit(e){
    e.preventDefault();
    // debugger
    if (this.state.search === '') {
      this.props.history.push(`/`);
    } else {
      this.props.history.push(`/search/${this.state.search}`);
    }
    // location.reload();
    
  }

  render(){
    return (
      <div className="top-nav">
        {/* <div className="hamburger" onClick={props.openModal}>
          <i className="fas fa-bars"></i>
        </div> */}
        <div>
          {this.props.otherNav}
          <Link to={`/`} style={{ textDecoration: 'none' }}><div className="viewtube-icon"><i className="fab fa-youtube fa-rotate-180 fa-2x"></i></div></Link>
          <Link to={`/`} style={{ textDecoration: 'none' }}><div className="nav-viewtube">ViewTube</div></Link>
        </div>
        
        {/* PUT SEARCH HERE */}
        <form className="search-form">
          <div className="input-button-wrapper">
            <div className="input-search-wrapper">
              <input 
                type="text" 
                placeholder="Search" 
                className="input-search" 
                onChange={this.handleUpdate} 
                value={this.state.search} 
              />
            </div>
            <div className="search-button-wrapper">
              <button onClick={this.handleSubmit} className="search-button"><i className="fas fa-search"></i></button>
            </div>
          </div>
        </form>
        
        <GreetingContainer />
      </div>
    );
  }
}

export default NavBarTop;