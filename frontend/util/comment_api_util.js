export const createComment = (video_id, comment) => (
  $.ajax({
    url: `/api/videos/${video_id}/comments`,
    type: `POST`,
    data: {comment}
  })
);

export const createComment = id => (
  $.ajax({
    url: `/api/comments/${id}`,
    type: `DELETE`
  })
);