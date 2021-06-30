import React, {useEffect} from 'react';
import ReactDOM from 'react-dom'
import {createStyles, Theme, makeStyles} from '@material-ui/core/styles';
import CssBaseline from '@material-ui/core/CssBaseline';
import Filters from "./Filters";
import MyHeader from "./MyHeader";
import SearchContent from "./SearchContent";
import axios from "axios";

const drawerWidth = 240;

const useStyles = makeStyles((theme: Theme) =>
    createStyles({
        root: {
            display: 'flex',
        },
        appBar: {
            width: `calc(100% - ${drawerWidth}px)`,
            marginLeft: drawerWidth,
        },
        drawer: {
            width: drawerWidth,
            flexShrink: 0,
        },
        drawerPaper: {
            width: drawerWidth,
        },
        // necessary for content to be below app bar
        toolbar: theme.mixins.toolbar,
        content: {
            flexGrow: 1,
            backgroundColor: theme.palette.background.default,
            padding: theme.spacing(3),
        },
    }),
);

export default function Search() {
    const classes = useStyles();
    const [dictionaries, setDictionaries] = React.useState([]);
    const [mushrooms, setMushrooms] = React.useState([]);


    useEffect(() => {
        console.log(mushrooms)
        if (dictionaries.length === 0) {
            axios.get('http://localhost:3000/api/v1/dictionaries.json').then(response => {
                setDictionaries(response.data)
            })
        }
        if (mushrooms.length === 0) {
            axios.get('http://localhost:3000/api/v1/search.json').then(response => {
                setMushrooms(response.data)
            })
        }

    }, []);

    return (
        <div className={classes.root}>
            <CssBaseline/>
            <MyHeader classes={classes}/>
            <Filters classes={classes} dictionaries={dictionaries}/>
            <SearchContent classes={classes} dictionaries={dictionaries.dictionaries} mushrooms={mushrooms}  />
        </div>
    );
}

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Search/>,
        document.getElementById('search_result'),
    )
});