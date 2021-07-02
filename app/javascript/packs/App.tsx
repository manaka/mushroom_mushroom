import React from "react";
import {Provider} from "react-redux";
import store from "./redux/store";
import Search from "./Search";
import ReactDOM from "react-dom";

const App: React.FC = () => {
    return (
        <Provider store={store}>
            <Search />
        </Provider>
    )

}

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <App />,
        document.getElementById('search_result'),
    )
});