import React from 'react';
import './News.css';
import CryptoApi from '../../components/api_calls/CryptoApi';

function News() {
  return (
    <div>
      <div className="news">
        <CryptoApi />
      </div>
    </div>
  )
}

export default News