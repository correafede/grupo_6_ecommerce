import React from 'react';
import ContentWrapper from './ContentWrapper';
import CategoriesInDb from './CategoriesInDb';
import LastProductInDb from './LastProductInDb';
import Chart from './Chart';
import NotFound from './NotFound';
import {Link, Route, Switch} from 'react-router-dom';
import SearchProducts from './SearchProducts';

function SideBar(){
    return(
        <React.Fragment>
            {/*<!-- Sidebar -->*/}
            <ul className="navbar-nav bg-gradient-secondary sidebar sidebar-dark accordion" id="accordionSidebar">

                {/*<!-- Sidebar - Brand -->*/}
                <a className="sidebar-brand d-flex align-items-center justify-content-center" href="/">
                    <div className="sidebar-brand-icon">
                        BIRRASHOP
                    </div>
                </a>

                {/*<!-- Divider -->*/}
                <hr className="sidebar-divider my-0"/>

                {/*<!-- Nav Item - Dashboard -->*/}
                <li className="nav-item active">
                    <Link className="nav-link" to="/">
                        <i className="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard - birrashop</span></Link>
                </li>

                {/*<!-- Divider -->*/}
                <hr className="sidebar-divider"/>
                <div className="sidebar-heading">Categorias</div>
                <li className="nav-item">
                <Link className="nav-link" to="/categories">
                        <i className="fas fa-fw fa-folder"></i>
                        <span>Categories</span>
                    </Link>
                </li>
                {/*<!-- Heading -->*/}
                <div className="sidebar-heading">Products</div>
                <li className="nav-item">
                <Link className="nav-link" to="/products">
                        <i className="fas fa-fw fa-table"></i>
                        <span>Products</span></Link>
                </li>
                
                <li className="nav-item">
                    <Link className="nav-link" to="/lastproduct">
                        <i className="fas fa-fw fa-chart-area"></i>
                        <span>Last added</span></Link>
                </li>
                <li className="nav-item">
                <Link className="nav-link" to="/search">
                        <i className="fas fa-fw fa-search"></i>
                        <span>Search products</span></Link>
                </li>
                {/*<!-- Divider -->*/}
                <hr className="sidebar-divider d-none d-md-block"/>
            </ul>
            {/*<!-- End of Sidebar -->*/}

            {/*<!-- End Microdesafio 2 -->*/}
            <Switch>
                <Route exact path="/">
                    <ContentWrapper />
                </Route>
                <Route path="/categories">
                    <CategoriesInDb />
                </Route>
                
                <Route path="/products">
                    <Chart />
                </Route>
                <Route path="/lastproduct">
                    <LastProductInDb />
                </Route>
                <Route path="/search">
                    <SearchProducts />
                </Route>
                <Route component={NotFound} />
            </Switch>
            {/*<!-- End Microdesafio 2 -->*/}
        </React.Fragment>
    )
}
export default SideBar;