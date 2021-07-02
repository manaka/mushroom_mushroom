import React, {FC} from 'react';
import Drawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import Divider from '@material-ui/core/Divider';
import ListItem from '@material-ui/core/ListItem';
import BaseSelector from "./BaseSelector";
import {DictType, MushroomBaseType} from "./types";
import {AppStateType} from "./redux/store";
import {compose} from "redux";
import {connect} from "react-redux";
import {filterChanged} from "./redux/mushroomsReducer";
import {loadDictionaries} from "./redux/dictionariesReducer";


type PropsType = {
    classes: any
    filters: MushroomBaseType
    filterChanged: (pageNumber: number, filters: MushroomBaseType) => void

}

const Filters:FC<PropsType> = (props) => {

    const classes = props.classes

    const capShapeChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {cap_shape_id: event.target.value as number })
    };
    const capSurfaceChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {cap_surface_id: event.target.value as number })
    };

    if (props.dictionaries.size === 0) return <div>Loading</div>

    return (
        <Drawer
            className={classes.drawer}
            variant="permanent"
            classes={{
                paper: classes.drawerPaper,
            }}
            anchor="left"
        >
            <div className={classes.toolbar}/>
            <Divider/>
            <List>
                <ListItem button key={'cap_shape'}>
                    <BaseSelector dictionary={props.dictionaries.cap_shapes} name={'cap_shape_id'} humanName={'Cap Shape'}
                                  value={props.filters.cup_shape_id} handleChange={capShapeChange}/>
                </ListItem>
                <ListItem button key={'capShape2'}>
                    <BaseSelector dictionary={props.dictionaries.cap_surfaces} name={'cap_surface_id'} humanName={'Cap Surface'}
                                  value={props.filters.cup_surface_id} handleChange={capSurfaceChange}/>

                </ListItem>
                <ListItem button key={'capShape3'}>

                </ListItem>

            </List>
        </Drawer>
    );
}

// export default Filters
let mapStateToProps = (state: AppStateType) => {
    return ({
        filters: state.mushrooms.filters,
        dictionaries: state.dictionaries
    })
}

export default compose<React.ComponentType>(
    connect(mapStateToProps, {filterChanged})
)(Filters);
