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

export type MushroomBaseType = {
    edible: boolean
    cap_shape_id: number
    cap_surface_id: number
    cap_color_id: number
    bruises: boolean
    odor_id: number
    gill_attachment_id: number
    gill_spacing_id: number
    gill_size_id: number
}
export type MushroomType = { id: number, name: string } & MushroomBaseType

