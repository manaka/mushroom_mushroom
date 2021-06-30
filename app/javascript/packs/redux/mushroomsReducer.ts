import {DictType, MushroomType} from "../types";
import {dictionariesAPI} from "../api/api";
import {BaseThunkType, InferActionsTypes} from "./store";

let initialState = {
    mushrooms: [] as Array<MushroomType>,
    currentPage: 1,
    isLoading: true
}

const mushroomsReducer = (state = initialState, action: ActionsTypes): InitialState => {
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

export default mushroomsReducer

export type InitialState = typeof initialState
type ActionsTypes = InferActionsTypes<typeof actions>
type ThunkType = BaseThunkType<ActionsTypes>
