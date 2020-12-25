import React from "react"
import PropTypes from "prop-types"

class MusicPlayer extends React.Component {

  render () {
    return (
      <React.Fragment>
        <audio src={this.props.trackUrl} class="embed-responsive-item player" controls></audio>
      </React.Fragment>
    );
  }
}

MusicPlayer.propTypes = {
  trackUrl: PropTypes.string
};

export default MusicPlayer
