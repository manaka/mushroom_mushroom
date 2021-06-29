import React from 'react';
import Drawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import Divider from '@material-ui/core/Divider';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
import InboxIcon from '@material-ui/icons/MoveToInbox';
import MailIcon from '@material-ui/icons/Mail';
import BaseSelector from "./BaseSelector";


export default function Filters(props) {
    const classes = props.classes

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
                    <ListItem button key={'capShape'}>
                        <BaseSelector />
                    </ListItem>
                    <ListItem button key={'capShape'}>
                        <BaseSelector />
                    </ListItem>

                </List>
            </Drawer>
    );
}