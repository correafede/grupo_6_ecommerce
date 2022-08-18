import React from 'react';


function ChartRow(props){
    return (
        <React.Fragment>
                <tr>
                    <td>{props.Nombre}</td>
                    <td>{props.price}</td>
                    <td>{props.discount}</td>
                    <td>{props.quantity}</td>
                    <td>{props.size.Nombre}</td>
                    <td>{props.category.Nombre}</td>
                    <td>{props.color.Nombre}</td>
                </tr>
                </React.Fragment>
            )
    }
    
        

export default ChartRow;