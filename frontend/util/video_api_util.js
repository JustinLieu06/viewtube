export const fetchVideos = () => (
  $.ajax({
    url: `/api/videos`,
    type: `GET`,
  })
);

export const fetchVideo = id => (
  $.ajax({
    url: `/api/videos/${id}`,
    type: `GET`,
  })
);

export const createVideo = video => (
  $.ajax({
    url: `/api/videos`,
    type: `POST`,
    data: video,
    contentType: false,
    processData: false
  })
);

export const updateVideo = (video, formData) => {
  return (
  $.ajax({
    url: `/api/videos/${video.id}`,
    type: `PATCH`,
    data: formData,
    contentType: false,
    processData: false
  })
  )
};

export const deleteVideo = id => (
  $.ajax({
    url: `/api/videos/${id}`,
    type: `DELETE`,
  })
);

export const searchVideos = query => (
  $.ajax({
    url: `/api/search/${query}`,
    type: 'GET',
    data: { query }
  })
);