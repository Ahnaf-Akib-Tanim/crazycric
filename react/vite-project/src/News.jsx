import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import "./news.css";

function News() {
  const { news_id } = useParams();
  const [news, setNews] = useState(null);

  useEffect(() => {
    fetch(`http://localhost:3000/user/loggedin/news/${news_id}`)
      .then((res) => res.json())
      .then((data) => setNews(data));
  }, [news_id]);

  if (!news) return null;

  return (
    <div className="news-page">
      <img
        className="news-page-image"
        src={`http://localhost:3000/newsimage/${news.news_id}.jpg`}
        alt={news.title}
      />
      <div className="news-page-details">
        <p className="news-page-date">
          {new Date(news.news_date).toLocaleDateString()}
        </p>
        <h2 className="news-page-title">{news.title}</h2>
        <p className="news-page-description">{news.details}</p>
      </div>
    </div>
  );
}

export default News;
