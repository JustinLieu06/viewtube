import React from 'react';
import VideoIndexItem from './video_index_item';

class VideoIndex extends React.Component {
  componentDidMount() {
    this.props.fetchVideos();
  }

  render(){

    let videos = this.props.videos.map((video, index) => (
      <VideoIndexItem key={index} video={video} />
    ));

    // for (let i = videos.length - 1; i > 0; i--){
    //   const j = Math.floor(Math.random() * (i+1));
    //   [videos[i], videos[j]] = [videos[j], videos[i]];
    // }
    
    return (
      <div className="video-index-outer-wrapper">
        <div className="recommended">Recommended</div>
        <ul className="video-index-wrapper">
          {videos}
        </ul>
      </div>
    );
  }
}

export default VideoIndex;