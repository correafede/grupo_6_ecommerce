import React,{Component} from 'react';
import ChartRow from './ChartRow';

class Chart extends Component{
  constructor(){
      super()
      this.state= {
        tableRowsData: []
      }
  }

  componentDidMount(){

      fetch('/api/products')
      .then(response =>{
      return response.json()
      })
      .then(products =>{
      this.setState({tableRowsData: products.products})
      })
      .catch(error => console.log(error))
      }
  render(){
      return (
        /* <!-- DataTales Example --> */
        <div className="card shadow mb-4">
            <div className="card-body">
                <div className="table-responsive">
                    <table className="table table-bordered" id="dataTable" width="100%" cellSpacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Stock</th>
                                <th>Size</th>
                                <th>Category</th>
                                <th>Color</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Stock</th>
                                <th>Size</th>
                                <th>Category</th>
                                <th>Color</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            {
                            this.state.tableRowsData.map( ( row , i) => {
                                return <ChartRow { ...row} key={i}/>
                            })
                            }
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    )
  }
  

}
export default Chart;