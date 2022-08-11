import React from 'react';

function LastProduct(props){
    return(
        <React.Fragment>
           
            
        <div className="text-center" style={{width: 46 +'rem'}} >
            <img className="img-fluid px-3 px-sm-4 mt-3 mb-4"  style={{width: 13 +'rem'}}src={`/img/products/${props.image}`} alt='' />
        </div>
        <p><i className="fas fa-wine-bottle"></i> Cerveza {props.Nombre}</p>
        <p><i className="fas fa-wallet"></i> ${props.price}</p>
        <p><i className="fas fa-store"></i> {props.quantity} unidades</p>
        <p><i className="fas fa-tag"></i> {props.tags}</p>
        <a className="btn btn-danger" target="_blank" rel="nofollow" href="/">View product detail</a>
        </React.Fragment>
    )
}
export default LastProduct;