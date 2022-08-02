import React, {useState, useEffect} from 'react';
import NorthEastIcon from '@mui/icons-material/NorthEast';
import SouthWestIcon from '@mui/icons-material/SouthWest';
import axios from 'axios';
import './CryptoApi.css';

function CryptoApi() {

  const url = 'https://api.coingecko.com/api/v3/coins/markets?vs_currency=eur&order=market_cap_desc&per_page=20&page=1&sparkline=false'

  const [data, setData] = useState(null)

  useEffect(() => {
    axios.get(url).then((response) => {
      setData(response.data)
    }).catch((error) => {
      console.log(error)
    })
  }, [])

  if (!data) return null
  //console.log(data)

  return (

    <div className="news">

        <div className="container">
            <div className="row">
                <div className="col-2">
                <div className="news-img">
                    <img src={data[0].image} alt='' />
                </div>

                <div>
                    <h4>{data[0].name}</h4>
                    <h4>${data[0].current_price.toLocaleString()}</h4>
                    <h4>{data[0].symbol}</h4>
                </div>

                {data[0].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                    <SouthWestIcon />
                    {data[0].price_change_percentage_24h.toFixed(2)}%
                    </span>
                    ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[0].price_change_percentage_24h.toFixed(2)}%
                    </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[1].image} alt='' />
                </div>

                <div>
                    <h4>{data[1].name}</h4>
                    <h4>${data[1].current_price.toLocaleString()}</h4>
                    <h4>{data[1].symbol}</h4>
                </div>

                {data[1].price_change_percentage_24h < 0 ? ( 
                    <span className="red" >
                        <SouthWestIcon />
                        {data[1].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[1].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[2].image} alt='' />
                </div>

                <div>
                    <h4>{data[2].name}</h4>
                    <h4>${data[2].current_price.toLocaleString()}</h4>
                    <h4>{data[2].symbol}</h4>
                </div>

                {data[2].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[2].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[2].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[3].image} alt='' />
                </div>

                <div>
                    <h4>{data[3].name}</h4>
                    <h4>${data[3].current_price.toLocaleString()}</h4>
                    <h4>{data[3].symbol}</h4>
                </div>

                {data[3].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[3].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[3].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[4].image} alt='' />
                </div>

                <div>
                    <h4>{data[4].name}</h4>
                    <h4>${data[4].current_price.toLocaleString()}</h4>
                    <h4>{data[4].symbol}</h4>
                </div>

                {data[4].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[4].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[4].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[5].image} alt='' />
                </div>

                <div>
                    <h4>{data[5].name}</h4>
                    <h4>${data[5].current_price.toLocaleString()}</h4>
                    <h4>{data[5].symbol}</h4>
                </div>

                {data[5].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[5].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[5].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[6].image} alt='' />
                </div>

                <div>
                    <h4>{data[6].name}</h4>
                    <h4>${data[6].current_price.toLocaleString()}</h4>
                    <h4>{data[6].symbol}</h4>
                </div>

                {data[6].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[6].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[6].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[7].image} alt='' />
                </div>

                <div>
                    <h4>{data[7].name}</h4>
                    <h4>${data[7].current_price.toLocaleString()}</h4>
                    <h4>{data[7].symbol}</h4>
                </div>

                {data[7].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[7].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[7].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[8].image} alt='' />
                </div>

                <div>
                    <h4>{data[8].name}</h4>
                    <h4>${data[8].current_price.toLocaleString()}</h4>
                    <h4>{data[8].symbol}</h4>
                </div>

                {data[8].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[8].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[8].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[9].image} alt='' />
                </div>

                <div>
                    <h4>{data[9].name}</h4>
                    <h4>${data[9].current_price.toLocaleString()}</h4>
                    <h4>{data[9].symbol}</h4>
                </div>

                {data[9].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[9].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[9].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>


                <div className="col-2">
                <div className="news-img">
                    <img src={data[10].image} alt='' />
                </div>

                <div>
                    <h4>{data[10].name}</h4>
                    <h4>${data[10].current_price.toLocaleString()}</h4>
                    <h4>{data[10].symbol}</h4>
                </div>

                {data[10].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[10].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[10].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[11].image} alt='' />
                </div>

                <div>
                    <h4>{data[11].name}</h4>
                    <h4>${data[11].current_price.toLocaleString()}</h4>
                    <h4>{data[11].symbol}</h4>
                </div>

                {data[11].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[11].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[11].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[12].image} alt='' />
                </div>

                <div>
                    <h4>{data[12].name}</h4>
                    <h4>${data[12].current_price.toLocaleString()}</h4>
                    <h4>{data[12].symbol}</h4>
                </div>

                {data[12].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[12].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[12].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[13].image} alt='' />
                </div>

                <div>
                    <h4>{data[13].name}</h4>
                    <h4>${data[13].current_price.toLocaleString()}</h4>
                    <h4>{data[14].symbol}</h4>
                </div>

                {data[14].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[14].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[14].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
                </div>

                <div className="col-2">
                <div className="news-img">
                    <img src={data[15].image} alt='' />
                </div>

                <div>
                    <h4>{data[15].name}</h4>
                    <h4>${data[15].current_price.toLocaleString()}</h4>
                    <h4>{data[15].symbol}</h4>
                </div>

                {data[15].price_change_percentage_24h < 0 ? ( 
                    <span className="red">
                        <SouthWestIcon />
                        {data[15].price_change_percentage_24h.toFixed(2)}%
                    </span>
                ): (
                    <span className="green">
                    <NorthEastIcon />
                    {data[15].price_change_percentage_24h.toFixed(2)}%
                </span>
                )}
            </div>

        </div>
      </div>
    </div>
  )
}

export default CryptoApi