import React, {FC, useEffect} from 'react';
import {createStyles, Theme, makeStyles} from '@material-ui/core/styles';
import CssBaseline from '@material-ui/core/CssBaseline';
import Filters from "./Filters";
import MyHeader from "./MyHeader";
import SearchContent from "./SearchContent";
import {AppStateType} from "./redux/store";
import {compose} from "redux";
import {connect} from "react-redux";
import {filterChanged} from "./redux/mushroomsReducer";
import {loadDictionaries} from "./redux/dictionariesReducer";

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
const Search:FC<PropsType> = (props) => {

    const classes = useStyles();

    useEffect(() => {
        console.log(props.dictionaries)
        if (!props.dictionaries || props.dictionaries.cap_shapes.length === 0) {
            console.log('First load of dict')
            props.loadDictionaries()
        }
        if (!props.mushrooms || props.mushrooms.length === 0) {
            props.filterChanged(1)()
        }

    }, []);

    return (
        <div className={classes.root}>
            <CssBaseline/>
            <MyHeader classes={classes}/>
            <Filters classes={classes} />
            <SearchContent classes={classes} dictionaries={props.dictionaries} mushrooms={props.mushrooms}  />
        </div>
    );
}

let mapStateToProps = (state: AppStateType) => {
    return ({
        filters: state.mushrooms.filters,
        mushrooms: state.mushrooms,
        dictionaries: state.dictionaries
    })
}

export default compose<React.ComponentType>(
    connect(mapStateToProps, {filterChanged, loadDictionaries})
)(Search);



// document.addEventListener('DOMContentLoaded', () => {
//     ReactDOM.render(
//         <Search/>,
//         document.getElementById('search_result'),
//     )
// });