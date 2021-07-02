import {MushroomBaseType, MushroomType} from "../types";
import {searchAPI} from "../api/api";
import {BaseThunkType, InferActionsTypes} from "./store";

let filterState: MushroomBaseType = {
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

let initialState = {
    mushrooms: [] as Array<MushroomType>,
    filters: filterState,
    currentPage: 1,
    isLoading: true
}


const mushroomsReducer = (state = initialState, action: ActionsTypes): InitialState => {
    switch (action.type) {
        case 'MD/SHROOMS/SET_CURRENT_PAGE': {
            return {...state, currentPage: action.currentPage}
        }
        case 'MD/SHROOMS/SET_MUSHROOMS': {
            return {...state, mushrooms: action.mushrooms}
        }
        case 'MD/SHROOMS/SET_FILTERS': {
            return {...state, filters: {...state.filters , ...action.filters}}
        }
        default:
            return state
    }
}

export const actions = {
    setCurrentPage: (currentPage: number) => ({type: 'MD/SHROOMS/SET_CURRENT_PAGE', currentPage} as const),
    setMushrooms: (mushrooms: Array<MushroomType>) => ({type: 'MD/SHROOMS/SET_MUSHROOMS', mushrooms} as const),
    setFilters: (filters: MushroomBaseType) => ({type: 'MD/SHROOMS/SET_FILTERS', filters} as const),
}

export const filterChanged = (page: number, filters: MushroomBaseType): ThunkType => async (dispatch, getState) => {
        dispatch(actions.setFilters(filters))
        let data = await searchAPI.getResult(page, getState().mushrooms.filters)

        dispatch(actions.setMushrooms(data.mushrooms))
}


export default mushroomsReducer

export type InitialState = typeof initialState
type ActionsTypes = InferActionsTypes<typeof actions>
type ThunkType = BaseThunkType<ActionsTypes>
