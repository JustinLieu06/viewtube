import React from 'react';
import { connect } from 'react-redux';
import { Route, Redirect, withRouter } from 'react-router-dom';

const mapStateToProps = state => ({
  loggedIn: Boolean(state.session.id)
});

const Auth = ({ loggedIn, path, component: Component, exact }) => (
  <Route path={path} exact={exact} render={(props) => (
    loggedIn ? <Redirect to="/" /> : <Component {...props} />
  )} />
);

const Protected = ({ loggedIn, path, component: Component, exact }) => (
  <Route path={path} exact={exact} render={(props) => (
    loggedIn ? <Component {...props} /> : <Redirect to="/login" />
  )} />
);

export const AuthRoute = withRouter(connect(mapStateToProps)(Auth));
export const ProtectedRoute = withRouter(connect(mapStateToProps)(Protected));
