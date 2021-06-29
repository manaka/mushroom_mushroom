import AppBar from "@material-ui/core/AppBar";
import Toolbar from "@material-ui/core/Toolbar";
import Typography from "@material-ui/core/Typography";
import React from "react";

export default function MyHeader(props) {
    const classes = props.classes
    return <AppBar position="fixed" className={classes.appBar}>
        <Toolbar>
            <Typography variant="h6" noWrap>
                Mushroom dataset
            </Typography>
        </Toolbar>
    </AppBar>

}