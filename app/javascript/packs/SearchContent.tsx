import React from "react";
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';

function createData(id, name, edible, capShape, capSurface, capColor) {
    return { id, name, edible, capShape, capSurface, capColor };
}

const rows = [
    createData(0, 'Mushroom 1', true, 'bell', 'fibrous', 'brown'),
    createData(1, 'Mushroom 2', true, 'bell', 'fibrous', 'brown'),
    createData(2, 'Mushroom 3', true, 'bell', 'fibrous', 'brown'),
    createData(3, 'Mushroom 4', true, 'bell', 'fibrous', 'brown'),
    createData(4, 'Mushroom 5', true, 'bell', 'fibrous', 'brown'),
];

export default function SearchContent(props) {
    let classes = props.classes
    return <main className={classes.content}>
        <br/><br/><br/><br/>
        <Table size="small">
            <TableHead>
                <TableRow>
                    <TableCell>Name</TableCell>
                    <TableCell>Edible</TableCell>
                    <TableCell>Cap Shape</TableCell>
                    <TableCell>Cap Surface</TableCell>
                    <TableCell align="right">Cap Color</TableCell>
                </TableRow>
            </TableHead>
            <TableBody>
                {rows.map((row) => (
                    <TableRow key={row.id}>
                        <TableCell>{row.name}</TableCell>
                        <TableCell>{row.edible}</TableCell>
                        <TableCell>{row.capShape}</TableCell>
                        <TableCell>{row.capSurface}</TableCell>
                        <TableCell align="right">{row.capColor}</TableCell>
                    </TableRow>
                ))}
            </TableBody>
        </Table>

    </main>

}