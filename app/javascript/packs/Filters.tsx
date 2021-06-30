import React from 'react';
import Drawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import Divider from '@material-ui/core/Divider';
import ListItem from '@material-ui/core/ListItem';
import BaseSelector from "./BaseSelector";


export default function Filters(props) {
    const classes = props.classes
    let dict = props.dictionaries
    return (
            <Drawer
                className={classes.drawer}
                variant="permanent"
                classes={{
                    paper: classes.drawerPaper,
                }}
                anchor="left"
            >
                <div className={classes.toolbar} />
                <Divider />
                <List>
                    <ListItem button key={'capShape'}>
                        <BaseSelector />
                    </ListItem>
                    <ListItem button key={'capShape2'}>
                        <BaseSelector />
                    </ListItem>
                    <ListItem button key={'capShape3'}>
                        <BaseSelector />
                    </ListItem>

                </List>
            </Drawer>
    );
}