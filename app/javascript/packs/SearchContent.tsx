import React from "react";
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import CheckIcon from '@material-ui/icons/Check';
import ClearIcon from '@material-ui/icons/Clear';

export default function SearchContent(props) {
    let classes = props.classes
    let rows = props.mushrooms.mushrooms
    let dict = props.dictionaries


    if (!dict || !rows || rows.length == 0 || dict.length == 0) return <div><br/><br/><br/><br/>No data</div>
    console.log('rows')
    console.log(rows)
    return <main className={classes.content}>
        <br/><br/><br/><br/>
        <Table size="small">
            <TableHead>
                <TableRow>
                    <TableCell>Name</TableCell>
                    <TableCell>Edible</TableCell>
                    <TableCell>Cap Shape</TableCell>
                    <TableCell>Cap Surface</TableCell>
                    <TableCell>Cap Color</TableCell>
                    <TableCell>Bruises</TableCell>
                    <TableCell>Odor</TableCell>
                    <TableCell>Gill Attachment</TableCell>
                    <TableCell>Gill Spacing</TableCell>
                    <TableCell>Gill Size</TableCell>
                </TableRow>
            </TableHead>
            <TableBody>
                {rows.map((row) => (
                    <TableRow key={row.id}>
                        <TableCell>{row.name}</TableCell>
                        <TableCell>{row.edible ? <CheckIcon/> : <ClearIcon/>}</TableCell>
                        <TableCell>{dict.cap_shapes.find(obj => {return obj.id === row.cap_shape_id}).name}</TableCell>
                        <TableCell>{dict.cap_surfaces.find(obj => {return obj.id === row.cap_surface_id}).name}</TableCell>
                        <TableCell>{dict.colors.find(obj => {return obj.id === row.cap_color_id}).name}</TableCell>
                        <TableCell>{row.bruises ? <CheckIcon/> : <ClearIcon/>}</TableCell>
                        <TableCell>{dict.odors.find(obj => {return obj.id === row.odor_id}).name}</TableCell>
                        <TableCell>{dict.gill_attachments.find(obj => {return obj.id === row.gill_attachment_id}).name}{row.gill_attachment_id}</TableCell>
                        <TableCell>{dict.gill_spacings.find(obj => {return obj.id === row.gill_spacing_id}).name}{row.gill_spacing_id}</TableCell>
                        <TableCell>{dict.gill_sizes.find(obj => {return obj.id === row.gill_size_id}).name}{row.gill_size_id}</TableCell>
                    </TableRow>
                ))}
            </TableBody>
        </Table>

    </main>

}