import React from "react"
import PropTypes from "prop-types"
import Row from 'react-bootstrap/Row'

class NavBar extends React.Component {
  render () {
    return (
      <React.Fragment>
        <Row className="header ml-3 my-5">
          <h1> {this.props.title} </h1>
        </Row>
      </React.Fragment>
    );
  }
}

NavBar.propTypes = {
  title: PropTypes.string
};
export default NavBar
