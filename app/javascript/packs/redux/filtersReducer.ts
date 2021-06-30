import {DictType, MushroomBaseType, MushroomType} from "../types";
import {dictionariesAPI} from "../api/api";
import {BaseThunkType, InferActionsTypes} from "./store";

let initialState:MushroomBaseType = {
    edible: null,
    cap_shape_id: null,
    cap_surface_id: null,
    cap_color_id: null,
    bruises: null,
    odor_id: null,
    gill_attachment_id: null,
    gill_spacing_id: null,
    gill_size_id: null
}

const filtersReducer = (state = initialState, action: ActionsTypes): InitialState => {
    switch (action.type) {
        case 'MD/SEARCH/SET_CAP_SHAPE_ID': {
            return {...state, cap_shape_id: action.cap_shape_id}
        }
        default:
            return state
    }
}

export const actions = {
    setCupShape: (cap_shape_id: number) => ({type: 'MD/SEARCH/SET_CAP_SHAPE_ID', cap_shape_id} as const),
}

export default filtersReducer

export type InitialState = typeof initialState
type ActionsTypes = InferActionsTypes<typeof actions>
type ThunkType = BaseThunkType<ActionsTypes>
