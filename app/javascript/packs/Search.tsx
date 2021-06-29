import React from 'react';
import ReactDOM from 'react-dom'
import { createStyles, Theme, makeStyles } from '@material-ui/core/styles';
import CssBaseline from '@material-ui/core/CssBaseline';
import Typography from '@material-ui/core/Typography';
import Filters from "./Filters";
import MyHeader from "./MyHeader";
import SearchContent from "./SearchContent";

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

    return (
        <div className={classes.root}>
            <CssBaseline />
            <MyHeader classes={classes} />
            <Filters classes={classes} />
            <SearchContent classes={classes} />
        </div>
    );
}

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Search />,
        document.getElementById('search_result'),
    )
});