import React, {FC} from 'react';
import { createStyles, makeStyles, Theme } from '@material-ui/core/styles';
import InputLabel from '@material-ui/core/InputLabel';
import MenuItem from '@material-ui/core/MenuItem';
import FormControl from '@material-ui/core/FormControl';
import Select from '@material-ui/core/Select';
import {DictCommonType} from "./Filters";

const useStyles = makeStyles((theme: Theme) =>
    createStyles({
        formControl: {
            margin: theme.spacing(1),
            minWidth: 120,
        },
        selectEmpty: {
            marginTop: theme.spacing(2),
        },
    }),
);

type PropsType = {
    name: string,
    humanName: string,
    value: number,
    dictionary: Array<DictCommonType>,
    handleChange: any
}

const BaseSelector:FC<PropsType> = (props) => {
    const classes = useStyles();

    return (
        <div>
            <FormControl className={classes.formControl}>
                <InputLabel id={props.name + '-label'}>{props.humanName}</InputLabel>
                <Select
                    labelId={props.name + '-label'}
                    id={props.name}
                    value={props.value}
                    onChange={props.handleChange}
                >
                    <MenuItem value="">
                        <em>None</em>
                    </MenuItem>
                    {props.dictionary && props.dictionary.map(item => <MenuItem value={item.id}>{item.name}</MenuItem>)}
                </Select>
                {/*<FormHelperText>Cap Shape</FormHelperText>*/}
            </FormControl>
        </div>
    );
}
export default BaseSelector