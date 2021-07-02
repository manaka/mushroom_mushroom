import {DictType} from "../types";
import {dictionariesAPI} from "../api/api";
import {BaseThunkType, InferActionsTypes} from "./store";

let initialState:DictType = {
    cap_shapes: [],
    cap_surfaces: [],
    colors: [],
    odors: [],
    gill_attachments: [],
    gill_spacings: [],
    gill_sizes: []
}

const dictionariesReducer = (state = initialState, action: ActionsTypes): InitialState => {
    switch (action.type) {
        case 'MD/DICT/SET_DICTIONARIES': {
            console.log('set dictionaries')
            return {...state, ...action.dict}
        }
        default:
            return state
    }
}

export const actions = {
    setDictionaries: (dict: DictType) => ({type: 'MD/DICT/SET_DICTIONARIES', dict} as const),
}

export const loadDictionaries = (): ThunkType => {
    return async (dispatch, getState) => {
        let data = await dictionariesAPI.getDict()
        console.log('loading dict')
        console.log(data.dictionaries)
        dispatch(actions.setDictionaries(data.dictionaries))
    }
}




export default dictionariesReducer

export type InitialState = typeof initialState
type ActionsTypes = InferActionsTypes<typeof actions>
type ThunkType = BaseThunkType<ActionsTypes>
