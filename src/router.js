import React from 'react'
import { Router, Route, IndexRoute, hashHistory, RouterContext } from 'react-router'
import SmartLayout from './theme/layouts/SmartLayout'
import SmartHome from './theme/templates/SmartHome'

const AppRouter = (props) => (
  <Router
    history={hashHistory}
    render={(props) => <RouterContext {...props}/>}
  >
    <Route path='/' component={SmartLayout}>
      <IndexRoute component={SmartHome}/>
    </Route>
  </Router>
)

export default AppRouter
