import React from 'react'

const SmartLayout = (props) => (
  <div>
    <h1>SmartLayout</h1>
    {props.children}
  </div>
)

SmartLayout.propTypes = {
  children: React.PropTypes.element
}

export default SmartLayout
