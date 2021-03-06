
import {RECEIVE_COMMENT, DELETE_COMMENT} from '../actions/comment_actions';
import { RECEIVE_ALL_VIDEOS, RECEIVE_VIDEO} from '../actions/video_actions';
// import merge from 'lodash/merge';

const commentsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  let newState = Object.assign({}, oldState);
  switch (action.type) {
    case RECEIVE_ALL_VIDEOS:
      return action.videos.comments ? action.videos.comments : newState;
    case RECEIVE_VIDEO:
      return action.video.video.comments ? action.video.video.comments : {};
    case RECEIVE_COMMENT:
      newState[action.comment.id] = action.comment;
      return newState;
    case DELETE_COMMENT:
      delete newState[action.commentId];
      return newState;
    default:
      return oldState;
  }
}

export default commentsReducer;