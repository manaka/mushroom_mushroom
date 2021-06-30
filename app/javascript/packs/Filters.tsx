import React, {FC} from 'react';
import Drawer from '@material-ui/core/Drawer';
import List from '@material-ui/core/List';
import Divider from '@material-ui/core/Divider';
import ListItem from '@material-ui/core/ListItem';
import BaseSelector from "./BaseSelector";

export type DictCommonType = {
    id: number,
    name: string
}
export type DictType = {
    cap_shapes: Array<DictCommonType>
    cap_surfaces: Array<DictCommonType>
    colors: Array<DictCommonType>
    odors: Array<DictCommonType>
    gill_attachments: Array<DictCommonType>
    gill_spacings: Array<DictCommonType>
    gill_sizes: Array<DictCommonType>
}

type PropsType = {
    classes: any
    dictionaries: DictType
}

const Filters:FC<PropsType> = (props) => {

    const classes = props.classes
    let dict = props.dictionaries
    const callSearchApi = () => {

    }

    const [cap_shape_id, setCapShape] = React.useState<number|null>(null);
    const [cap_surface_id, setCapSurface] = React.useState<number|null>(null);
    const capShapeChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        setCapShape(event.target.value as number);
    };
    const capSurfaceChange = (event: React.ChangeEvent<{ value: unknown }>) => {
        setCapSurface(event.target.value as number);
    };


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
                    <BaseSelector dictionary={dict.cap_shapes} name={'cap_shape_id'} humanName={'Cap Shape'}
                                  value={cap_shape_id} handleChange={capShapeChange}/>
                </ListItem>
                <ListItem button key={'capShape2'}>
                    <BaseSelector dictionary={dict.cap_surfaces} name={'cap_surface_id'} humanName={'Cap Surface'}
                                  value={cap_surface_id} handleChange={capSurfaceChange}/>

                </ListItem>
                <ListItem button key={'capShape3'}>

                </ListItem>

            </List>
        </Drawer>
    );
}
export default Filters
