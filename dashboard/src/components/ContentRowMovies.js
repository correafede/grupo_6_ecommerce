import React from 'react';
import SmallCard from './SmallCard';

/*  Cada set de datos es un objeto literal */

/* <!-- Movies in DB --> */

let moviesInDB = {
    title: 'Total products',
    color: 'primary', 
    cuantity: 58,
    icon: 'fa-wine-bottle'
}

/* <!-- Total awards --> */

let totalAwards = {
    title:' Total users', 
    color:'success', 
    cuantity: 5,
    icon:'fa-user'
}

/* <!-- Actors quantity --> */

let actorsQuantity = {
    title:'Total categories' ,
    color:'warning',
    cuantity:9,
    icon:'fa-tag'
}

let cartProps = [moviesInDB, totalAwards, actorsQuantity];

function ContentRowMovies(){
    return (
    
        <div className="row">
            
            {cartProps.map( (movie, i) => {

                return <SmallCard {...movie} key={i}/>
            
            })}

        </div>
    )
}

export default ContentRowMovies;