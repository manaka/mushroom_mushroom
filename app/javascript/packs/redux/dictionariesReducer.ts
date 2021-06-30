import {DictType} from "../types";
import {dictionariesAPI} from "../api/api";
import {BaseThunkType, InferActionsTypes} from "./store";

type initStateType = DictType & {currentPage: number}
let initialState:initStateType = {
    cap_shapes: [],
    cap_surfaces: [],
    colors: [],
    odors: [],
    gill_attachments: [],
    gill_spacings: [],
    gill_sizes: [],
    currentPage: 1
}

const dictionariesReducer = (state = initialState, action: ActionsTypes): InitialState => {
    switch (action.type) {
        case 'MD/SEARCH/SET_CURRENT_PAGE': {
            return {...state, currentPage: action.currentPage}
        }
        default:
            return state
    }
}

export const actions = {
    setCurrentPage: (currentPage: number) => ({type: 'MD/SEARCH/SET_CURRENT_PAGE', currentPage} as const),
}

export default dictionariesReducer

export type InitialState = typeof initialState
type ActionsTypes = InferActionsTypes<typeof actions>
type ThunkType = BaseThunkType<ActionsTypes>
