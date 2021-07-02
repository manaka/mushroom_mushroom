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

    const selectChanged = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {cap_shape_id: event.target.value as number })
    };
    const capSurfaceChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {cap_surface_id: event.target.value as number })
    };
    const capColorChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {cap_color_id: event.target.value as number })
    };
    const odorChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {odor_id: event.target.value as number })
    };
    const gillAttachmentChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {gill_attachment_id: event.target.value as number })
    };
    const gillSpacingChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {gill_spacing_id: event.target.value as number })
    };
    const gillSizeChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        props.filterChanged(1, {gill_size_id: event.target.value as number })
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
                                  value={props.filters.cup_shape_id} handleChange={selectChanged}/>
                </ListItem>
                <ListItem button key={'cap_surfaces'}>
                    <BaseSelector dictionary={props.dictionaries.cap_surfaces} name={'cap_surface_id'} humanName={'Cap Surface'}
                                  value={props.filters.cup_surface_id} handleChange={capSurfaceChange}/>

                </ListItem>
                <ListItem button key={'cap_color'}>
                    <BaseSelector dictionary={props.dictionaries.colors} name={'cap_color_id'} humanName={'Cap Color'}
                                  value={props.filters.cap_color_id} handleChange={capColorChange}/>

                </ListItem>
                <ListItem button key={'odor'}>
                    <BaseSelector dictionary={props.dictionaries.odors} name={'odor_id'} humanName={'Odor'}
                                  value={props.filters.odor_id} handleChange={odorChange}/>

                </ListItem>
                <ListItem button key={'gill_attachment'}>
                    <BaseSelector dictionary={props.dictionaries.gill_attachments} name={'gill_attachment_id'} humanName={'Gill Attachment'}
                                  value={props.filters.gill_attachment_id} handleChange={gillAttachmentChange}/>

                </ListItem>
                <ListItem button key={'gill_spacing'}>
                    <BaseSelector dictionary={props.dictionaries.gill_spacings} name={'gill_spacing_id'} humanName={'Gill Spacing'}
                                  value={props.filters.gill_spacing_id} handleChange={gillSpacingChange}/>

                </ListItem>
                <ListItem button key={'gill_size_id'}>
                    <BaseSelector dictionary={props.dictionaries.gill_spacings} name={'gill_size_id'} humanName={'Gill Size'}
                                  value={props.filters.gill_size_id} handleChange={gillSizeChange}/>

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
