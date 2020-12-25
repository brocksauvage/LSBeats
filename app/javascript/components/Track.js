import React from "react"
import PropTypes from "prop-types"
import Card from "react-bootstrap/Card"
import MusicPlayer from "components/MusicPlayer"
import Col from 'react-bootstrap/Col'
import Placeholder from 'images/placeholder.jpeg'

class Track extends React.Component {
  render () {
    return (
      <React.Fragment>
        <Col md="4" className="mb-2">
          <Card className="track-card">
            <Card.Img variant="top" src={this.props.coverImageUrl ? this.props.coverImageUrl : Placeholder}/>
            <Card.Body>
              <Card.Title className="track-card-title">{this.props.track.title} </Card.Title>
            </Card.Body>
            <Card.Footer className="track-card-footer">
              <MusicPlayer trackUrl={this.props.trackUrl}/>
            </Card.Footer>
          </Card>
        </Col>
      </React.Fragment>
    );
  }
}

Track.propTypes = {
  track: PropTypes.object,
  trackUrl: PropTypes.string,
  coverImageUrl: PropTypes.string
};
export default Track
