import React from "react"
import PropTypes from "prop-types"
import CardDeck from 'react-bootstrap/CardDeck'
import Track from 'components/Track'
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'

class TrackArea extends React.Component {
  render () {
    return (
      <React.Fragment>
        <Container className="mt-3">
          <Row className="justify-content-md-center">
            <CardDeck className="card-area">
              { this.props.tracks.map((track, index) => {
                return <Track track={track} trackUrl={this.props.trackUrls[index]} coverImageUrl={this.props.coverImageUrls[index]} />
              })}
            </CardDeck>
          </Row>
        </Container>
      </React.Fragment>
    );
  }
}

TrackArea.propTypes = {
  tracks: PropTypes.array,
  trackUrls: PropTypes.array,
  coverImageUrls: PropTypes.array
};
export default TrackArea
