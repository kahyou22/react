import { useState } from "react";

import "./css/BoxOfficeCard.css";

function BoxOfficeCard({ data }) {
  const [liked, setLiked] = useState(false);
  const [count, setCount] = useState(data.like);

  // // k 단위 변환
  const formatCount = (num) => {
    return num >= 1000 ? (num / 1000).toFixed(1) + "k" : num;
  };

  const handleClick = () => {
    const newLiked = !liked;
    const newCount = newLiked ? count + 1 : count - 1;
    setLiked(newLiked);
    setCount(newCount);
  };

  return (
    <div className="box_office_card">
      <div className="inner">
        <div className="front">
          <span className="rank">{data.rank}</span>
          <div className="poster">
            <img src={data.poster} alt={data.title} />
          </div>
          <div className="screen_type">
            {data.screenTypes.map((src) => (
              <img src={src} alt="Screen Types" />
            ))}
          </div>
          <div className="grade">
            <img src={data.grade} alt={data.age} />
          </div>
        </div>
        <div className="back">
          <p>{data.description}</p>
          <div className="score">
            관람평<span>{data.score}</span>
          </div>
        </div>
      </div>
      <div className="btn">
        <button type="button" className={`like`} onClick={handleClick}>
          <i className={(liked ? "fa-solid" : "fa-regular") + " fa-heart"}></i>
          {formatCount(count)}
        </button>
        <a
          href="https://www.megabox.co.kr/booking"
          className="reservation_link"
        >
          예매
        </a>
      </div>
    </div>
  );
}

export default BoxOfficeCard;
