import ReactDOM from 'react-dom'
import React, {FC} from "react";

type PropsType = {}
export const Search: FC<PropsType> = (props) => {

    return <div>Search goes here</div>
}


document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Search searchResults={[]} />,
        document.getElementById('search_result'),
    )
});